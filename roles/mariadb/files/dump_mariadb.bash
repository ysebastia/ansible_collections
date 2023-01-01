#!/bin/bash

pause="${1}"
rep_Src="/var/lib/mysql/"
path_backup="/var/lib/save/mariadb"
prefix="${path_backup}/DUMP_sql_$(date +%d)_"
suffix=".sql.bz2"
mois=$(date '+%m')

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:$PATH
export PATH

sleep $(( ( $RANDOM % ${pause} )  + 1 ))s

liste=$(ls -l "${rep_Src}" |grep -v schema | grep ^d | awk '{print $9}')
for nomDB in ${liste}
do
  nomDB=$(basename "${nomDB}")
  nomDB=${nomDB/\@002d@002d/--}
  nomDB=${nomDB/\@002d/-}
  nomDB=${nomDB/\@002b/+}
  fichier=${prefix}${nomDB}${suffix}
  mysqldump -u backup -h 127.0.0.1 --opt -BcQC "${nomDB}" | bzip2 -c -9 > "${fichier}"
  ls -sh "${fichier}"
done

fichier=${prefix}"alldatabases"${suffix}
mysqldump -u backup -h 127.0.0.1 --opt -AcQC | bzip2 -c -9 > "${fichier}"
ls -sh "${fichier}"
cp -f "${fichier}" "${prefix}alldatabases_m${mois}${suffix}"

find "${path_backup}" -type f -mtime +365 -delete

exit 0
