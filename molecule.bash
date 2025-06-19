#!/bin/bash
set -e
NOCOLOR='\033[0m'
GREEN='\033[0;32m'
export DEFAULT_LOCAL_TMP=/tmp/jenkins/
env
python3 -m venv ~/.venv/ansible
source ~/.venv/ansible/bin/activate
pip install --upgrade pip
pip install ansible-core==2.17.12
pip install ansible-lint==25.6.1
pip install molecule==25.6.0
pip install molecule-plugins[podman]==23.7.0
mkdir -p "~/.ansible/collections"
find . -name requirements.yml -exec ansible-galaxy collection install -r {} --ignore-certs --collections-path "~/.ansible/collections" \;
find . -name requirements.txt -exec pip install --no-cache -r {} \;
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

rm -rf ~/.venv/ansible

exit 0