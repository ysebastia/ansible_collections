#!/bin/bash

# virsh translates its output according to the system locale (e.g. "en cours
# d'execution" instead of "running" under fr_FR) : force C so domstate
# comparisons work reliably.
export LC_ALL=C

# Usage: ./vm-backup.bash <guest> [backup_dir] [norestart]
guest="${1}"
DIR="${2:-/var/lib/libvirt/backup}"
NORESTART="${3}"
SNAP_SIZE="${SNAP_SIZE:-50%ORIGIN}"
SNAP_SUFFIX="_bkpsnap"
SHUTDOWN_TIMEOUT=120

if [ -z "${guest}" ] ; then
        echo "missing guest argument"
        exit 1
fi

virsh dominfo "${guest}" &> /dev/null
if [[ ${?} -eq 1 ]]; then
        echo "${guest} is not a guest"
        exit 1
fi

mkdir -p "${DIR}"  &> /dev/null

echo "$(date) : ${guest}"
virsh dumpxml "${guest}" > "/tmp/${guest}.xml"
disks=$(grep "source dev" "/tmp/${guest}.xml" | awk '{print $2}')

was_running=0
if [ "$(virsh domstate "${guest}")" == "running" ]; then
        was_running=1
        echo "$(date) : stopping ${guest}"
        virsh shutdown "${guest}" &> /dev/null
        waited=0
        while [ "$(virsh domstate "${guest}")" != "shut off" ]; do
                sleep 2
                waited=$((waited + 2))
                if [ "${waited}" -ge "${SHUTDOWN_TIMEOUT}" ]; then
                        echo "$(date) : force stopping ${guest} (timeout ${SHUTDOWN_TIMEOUT}s)"
                        virsh destroy "${guest}" &> /dev/null
                        break
                fi
        done
fi

snap_ok=1
for l in ${disks}
do
        vg=$(echo "${l}" | awk -F '/' '{print $3}')
        lv=$(echo "${l}" | awk -F '/' '{print $4}'|sed "s/'//g")
        echo "$(date) : snapshot ${lv}${SNAP_SUFFIX}"
        lvcreate -s -n "${lv}${SNAP_SUFFIX}" -l "${SNAP_SIZE}" "/dev/${vg}/${lv}" &> /dev/null
        if [ ! -e "/dev/${vg}/${lv}${SNAP_SUFFIX}" ]; then
                echo "$(date) : FAILED snapshot ${lv}${SNAP_SUFFIX}"
                snap_ok=0
        fi
done

if [ "${was_running}" -eq 1 ]; then
        if [ "${NORESTART}" == "norestart" ]; then
                echo "$(date) : ${guest} left stopped (norestart option)"
        else
                echo "$(date) : restarting ${guest}"
                virsh start "${guest}" &> /dev/null
        fi
fi

if [ "${snap_ok}" -eq 0 ]; then
        echo "$(date) : aborting backup of ${guest} (snapshot failure)"
        exit 1
fi

for l in ${disks}
do
        vg=$(echo "${l}" | awk -F '/' '{print $3}')
        lv=$(echo "${l}" | awk -F '/' '{print $4}'|sed "s/'//g")
        snap="/dev/${vg}/${lv}${SNAP_SUFFIX}"
        used=$(lvs --noheading -o snap_percent "${snap}" 2>/dev/null | tr -d ' ')
        echo "$(date) : LVM -> ${lv}.raw"
        /usr/bin/qemu-img convert -f raw "${snap}" -O raw "${DIR}/${lv}.raw"
        if [ -n "${used}" ]; then
                echo "$(date) : snapshot ${lv}${SNAP_SUFFIX} filled at ${used}% (before removal)"
        fi
        echo "$(date) : removing snapshot ${lv}${SNAP_SUFFIX}"
        lvremove -f "${snap}" &> /dev/null
        echo ""
done
cp -f "/tmp/${guest}.xml" "${DIR}/${guest}.xml"
exit 0
