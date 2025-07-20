#!/bin/bash
set -e
pip install ansible-doctor==7.0.9
for collection in collections/ansible_collections/*/*/roles/; do
    echo "! ${collection}"
    pushd "$(dirname "${collection}")" || exit 2
    ansible-doctor -r -f roles/
    popd || exit 2
done

exit 0
