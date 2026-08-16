#!/bin/bash

# Usage: ./vm-restore.bash <guest_name> <destination_vg> [backup_dir]
guest="${1}"
VGD="${2}" # Volume Group to restore the disks into
DIR="${3:-/var/lib/libvirt/backup}" # Must match the DIR used in vm-backup.bash

if [ -z "${guest}" ] || [ -z "${VGD}" ]; then
    echo "Usage: $0 <guest_name> <destination_vg> [backup_dir]"
    exit 1
fi

# 1. Check that the backup exists
if [ ! -f "${DIR}/${guest}.xml" ]; then
    echo "Error: configuration file ${DIR}/${guest}.xml not found."
    exit 1
fi

# 2. Check that the VM does not already exist on this host
virsh dominfo "${guest}" &> /dev/null
if [[ ${?} -eq 0 ]]; then
    echo "Error: guest ${guest} already exists on this host. Remove it before restoring."
    exit 1
fi

echo "$(date) : Starting restore of ${guest}"

# 3. Parse the backup XML file to find the disks
# Look for lines containing 'source dev' to identify the old LVM paths
disks=$(grep "source dev" "${DIR}/${guest}.xml" | awk -F "'" '{print $2}')

for dev_path in $disks
do
    # Extract the original LV name to find the matching .raw file
    lv_name=$(echo "${dev_path}" | awk -F '/' '{print $NF}')
    raw_file="${DIR}/${lv_name}.raw"

    if [ ! -f "${raw_file}" ]; then
        echo "Warning: image file ${raw_file} not found, skipping to next disk."
        continue
    fi

    # Compute the size needed for the new LV (based on the .raw file)
    # Round up to avoid sector-alignment errors
    size_bytes=$(stat -c%s "${raw_file}")
    size_mb=$((size_bytes / 1024 / 1024))

    echo "Restoring disk: ${lv_name} (${size_mb} MB)"

    # 4. Create the destination Logical Volume
    lvcreate -n "${lv_name}" -L "${size_mb}M" "${VGD}" --yes &> /dev/null
    new_dev="/dev/${VGD}/${lv_name}"

    # 5. Copy data from the RAW file to the LVM volume
    echo "Copying data..."
    qemu-img convert -f raw "${raw_file}" -O raw "${new_dev}"

    # 6. Update the disk path in the XML file
    # Replace the old path (e.g. /dev/old_vg/lv) with the new one (e.g. /dev/new_vg/lv)
    sed -i "s,${dev_path},${new_dev},g" "${DIR}/${guest}.xml"
done

# 7. Define the VM in KVM (--validate: checks the XML against the libvirt schema)
echo "Defining the virtual machine..."
virsh define --validate "${DIR}/${guest}.xml"

echo "$(date) : Restore of ${guest} complete."
exit 0
