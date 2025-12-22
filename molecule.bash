#!/bin/bash
set -e
NOCOLOR='\033[0m'
GREEN='\033[0;32m'
export DEFAULT_LOCAL_TMP=/tmp/jenkins/
export PIPX_DEFAULT_PYTHON=/usr/bin/python3.12
export PATH=$HOME/.local/bin:$PATH
env
pipx install ansible-core==2.20.1
pipx install ansible-lint==25.12.2
pipx install molecule==25.12.0 
pipx inject molecule molecule-plugins[podman]==25.8.12
mkdir -p "~/.ansible/collections"
find . -name requirements.yml -exec ansible-galaxy collection install --force -r {} --ignore-certs --collections-path "~/.ansible/collections" \;
ansible-galaxy collection list


find . -name molecule.yml -print0 | 
    while IFS= read -r -d '' line; do
        dir_role=$(dirname "${line}")
        scenario=$(echo "${dir_role}" | awk -F '/' '{print $NF}')
		echo -e "| ${GREEN}Test ${dir_role}${NOCOLOR}"
        pushd "${dir_role}/../../" || exit 2
        molecule test -s "${scenario}"
        popd || exit 2
    done

rm -rf ~/.ansible/collections

exit 0