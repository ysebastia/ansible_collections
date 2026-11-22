#!/bin/bash
set -e
NOCOLOR='\033[0m'
GREEN='\033[0;32m'
export DEFAULT_LOCAL_TMP=/tmp/jenkins/
export PIPX_DEFAULT_PYTHON=/usr/bin/python3.12
export PATH=$HOME/.local/bin:$PATH

# Collections installed for this run only: a dedicated temporary directory,
# removed on exit, so running the script on a workstation never touches
# ~/.ansible/collections (and its symlinks to local collections).
ANSIBLE_COLLECTIONS_PATH=$(mktemp -d "${TMPDIR:-/tmp}/molecule-collections.XXXXXX")
export ANSIBLE_COLLECTIONS_PATH
trap 'rm -rf "${ANSIBLE_COLLECTIONS_PATH}"' EXIT

env
pipx install ansible-core==2.21.6
pipx install ansible-lint==26.6.0
pipx install molecule==26.11.0
pipx inject molecule molecule-plugins[podman]==26.11.0
find . -name requirements.yml -exec ansible-galaxy collection install --force -r {} --ignore-certs --collections-path "${ANSIBLE_COLLECTIONS_PATH}" \;
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

exit 0
