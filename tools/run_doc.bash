#!/bin/bash
set -e
export PIPX_DEFAULT_PYTHON=/usr/bin/python3.12
export PATH=~/.local/bin:$PATH
pipx install ansible-doctor==8.1.0
for collection in collections/ansible_collections/*/*/roles/; do
    echo "! ${collection}"
    pushd "$(dirname "${collection}")" || exit 2
    ansible-doctor -r -f roles/
    popd || exit 2
done

exit 0
