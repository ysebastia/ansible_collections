#!/bin/bash
path_backup="/var/lib/save/ldap"

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:$PATH
export PATH

ldapsearch -x -s base -b "" namingContexts -LLL | grep namingContexts: | awk '{print $NF}' | while IFS= read -r base
do
        file="${path_backup}/DUMP_ldap_$(date +%d)_${base}.ldif.bz2"
        /usr/bin/systemctl stop slapd
        slapcat -b "${base}" | bzip2 -c -9 > "${file}"
        /usr/bin/systemctl start slapd
        ls -sh "${file}"
done;

find "${path_backup}" -type f -mtime +365 -delete

exit 0
