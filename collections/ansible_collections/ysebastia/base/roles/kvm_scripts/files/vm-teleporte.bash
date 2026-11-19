#!/bin/bash

guest="${1}"
DST="${2}"

if [ -z "${guest}" ] ; then
        echo "missing guest argument"
        exit 1
fi

if [ -z "${DST}" ] ; then
        echo "missing target server"
        exit 1
fi

virsh dominfo "${guest}" &> /dev/null
if [[ ${?} -eq 1 ]]; then
        echo "${guest} is not a guest"
        exit 1
fi

virsh list | grep " ${guest}" &> /dev/null
if [[ ${?} -eq 0 ]]; then
        echo "${guest} must be stopped first"
        exit 1
fi

IFUP=$(/usr/bin/ssh -q "${DST}" "id root &> /dev/null && echo ${?}")
if [ -z "${IFUP}" ] ; then
        echo "cannot connect to ${DST}"
        exit 1
fi

VGD=$(/usr/bin/ssh "${DST}" "vgs --noheading -o vg_name | grep -v _r0 | sed 's/ //g' | grep -v vg_host")

echo "$(date) : ${guest} - START"
virsh dumpxml "${guest}" > "/tmp/${guest}.xml"
for l in $(grep "source dev" "/tmp/${guest}.xml" | awk '{print $2}')
do
        if [ "$(echo "${l}" | grep -c mapper)" -eq 0 ]; then
            vg=$(echo "${l}" | awk -F '/' '{print $3}')
            lv=$(echo "${l}" | awk -F '/' '{print $4}'|sed "s/'//g")
            # add a leading space before lv to make sure we match only the right VM
            # needed when LV names share the same suffix
            size=$(lvs --noheading -o lv_name,lv_size | grep " ${lv} " | awk '{print $2}')
            dev="/dev/${vg}/${lv}"
        else
            vg="mapper"
            lv="vm-$(echo "${l}" | awk -F '/' '{print $4}'|sed "s/'//g" | awk -F '_' '{print $NF}')"
            dev=$(echo "${l} " | awk -F  "'" '{print $2}')
            size=$(multipath -ll "${dev}" | grep "^size" |awk '{print $1}' | awk -F '=' '{print $2}')
        fi;
        ded="/dev/${VGD}/${lv}"

        echo "Source:      ${dev}"
        echo "Destination: ${ded}"
        echo "VG:          ${VGD}"
        echo "LV:          ${lv}"
        echo "Size:        ${size}"

    # Create the remote LV
        /usr/bin/ssh "${DST}" "lvcreate --yes -W y -n ${lv} -L${size} ${VGD} &> /dev/null"

        # Copy via an intermediate LVM raw file
        #echo "$(date) : LVM -> ${lv}.raw"
        #/usr/bin/qemu-img convert -f raw "${dev}" -O raw "/var/kvm/${lv}.raw"
        #echo "$(date) : SCP ${lv}.raw"
        #/usr/bin/scp -q "/var/kvm/${lv}.raw" "${DST}:/var/kvm/${lv}.raw"
        #echo "$(date) : RM ${lv}.raw"
        #/bin/rm "/var/kvm/${lv}.raw"
        #echo "$(date) : RAW -> ${lv}"
        #/usr/bin/ssh "${DST}" "/usr/bin/qemu-img convert -f raw /var/kvm/${lv}.raw -O raw ${ded}"
        #echo "$(date) : RM ${DST}"
        #/usr/bin/ssh "${DST}" "/bin/rm /var/kvm/${lv}.raw"

    # Direct copy via dd
    dd if="${dev}" bs=4096 | ssh "${DST}" "dd of=${ded} bs=4096"

        echo ""
        sed -i "s,${dev},${ded},g" "/tmp/${guest}.xml"
done

#cat "/tmp/${guest}.xml"
scp -q "/tmp/${guest}.xml" "${DST}:/etc/libvirt/qemu/${guest}.xml"
/usr/bin/ssh "${DST}" "/usr/bin/virsh define /etc/libvirt/qemu/${guest}.xml"

echo "$(date) : ${guest} - END"

if [ "${3}" == "start" ] ; then
  /usr/bin/ssh "${DST}" "/usr/bin/virsh autostart ${guest}"
  /usr/bin/ssh "${DST}" "/usr/bin/virsh start ${guest}"
fi
exit 0
