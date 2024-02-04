#!/bin/bash
set -e
for roledir in roles/*/molecule; do
    echo "Test ${roledir}"
    pushd "$(dirname "${roledir}")" || exit 2
    molecule test
    popd || exit 2
done

exit 0
