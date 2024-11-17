#!/bin/bash
COLLECTION_VERSION_SUFFIX=-devel
while IFS= read -r -d '' collection_path
do
    collection_name=$(grep "^name:" "$collection_path" | awk '{print $NF}')
    collection_namespace=$(grep "^namespace:" "$collection_path" | awk '{print $NF}')
    collection_version=$(grep "^version:" "$collection_path" | awk '{print $NF}')
    sed -i "s/^version: $collection_version/version: $collection_version$COLLECTION_VERSION_SUFFIX/g" "$collection_path"
    echo "COLLECTION_NAME=${collection_name}" > "build/vars.${collection_name}.env"
    echo "COLLECTION_NAMESPACE=${collection_namespace}" >> "build/vars.${collection_name}.env"
    echo "COLLECTION_VERSION=${collection_version}" >> "build/vars.${collection_name}.env"
    ansible-galaxy collection build "$(dirname "$collection_path")" --output-path build --force
    sed -i "s/^version: $collection_version$COLLECTION_VERSION_SUFFIX/version: $collection_version/g" "$collection_path"
done < <(find . -name galaxy.yml -print0)
