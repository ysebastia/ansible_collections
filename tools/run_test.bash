#!/bin/bash
for roledir in roles/*/molecule; do
  echo "Test ${roledir}"
    pushd "$(dirname "${roledir}")" || exit 2
    molecule test
    if [ ! "${?}" -eq 0 ]; then
      molecule destroy
      echo "Erreur ${roledir}"
      exit 1
  fi;
    popd || exit 2
done

exit 0
