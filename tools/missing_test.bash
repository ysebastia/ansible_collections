#!/bin/bash
find ./ -name converge.yml -print0 | while IFS= read -r -d '' m;
do
  # Check if tested roles exists
  for r in $(grep -E "^\s+name: " "${m}" | awk -F '"' '{print $2}')
  do
    if [ ! -d "roles/${r}" ]; then
      echo "${r} don't exist"
    fi
  done
done;

for r in $(find roles/* -maxdepth 0 -type d | grep -v molecule);
do
  role="$(echo "${r}" | awk -F '/' '{print $NF}')"
  if [ "$(find ./ -name converge.yml -exec grep -h "${role}" {} \; | grep -wc -E "^\s+name")" -eq 0 ]; then
    echo "Role ${role} not tested"
  fi;
done;

exit 0
