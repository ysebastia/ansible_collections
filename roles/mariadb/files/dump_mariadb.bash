#!/bin/bash

pause="${1}"
path_source="/var/lib/mysql/"
path_backup="/var/lib/save/mariadb"
prefix="${path_backup}/DUMP_sql_$(date +%d)_"
suffix=".sql.bz2"
month=$(date '+%m')

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:$PATH
export PATH

if [ -z "${pause}" ] ; then
  pause=1
fi

sleep $(( ( RANDOM % pause )  + 1 ))s

find "${path_source}"* -type d ! -name '*schema' | awk -F '/' '{print $NF}'| while IFS= read -r database
do
  database=$(basename "${database}")
  database=${database/\@002d@002d/--}
  database=${database/\@002d/-}
  database=${database/\@002b/+}
  file=${prefix}${database}${suffix}
  mysqldump -u backup -h 127.0.0.1 --opt -BcQC "${database}" | bzip2 -c -9 > "${file}"
  ls -sh "${file}"
done

file=${prefix}"alldatabases"${suffix}
mysqldump -u backup -h 127.0.0.1 --opt -AcQC | bzip2 -c -9 > "${file}"
ls -sh "${file}"
cp -f "${file}" "${prefix}alldatabases_m${month}${suffix}"

find "${path_backup}" -type f -mtime +365 -delete

exit 0
