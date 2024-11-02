#!/bin/bash
COLLECTION_VERSION_SUFFIX=-devel
for collection_path in $(find . -name galaxy.yml);
do
    collection_name=$(grep "^name:" $collection_path | awk '{print $NF}')
    collection_namespace=$(grep "^namespace:" $collection_path | awk '{print $NF}')
    collection_version=$(grep "^version:" $collection_path | awk '{print $NF}')
    sed -i "s/^version: $collection_version/version: $collection_version$COLLECTION_VERSION_SUFFIX/g" $collection_path
    echo "COLLECTION_NAME=${collection_name}" > "build/vars.${collection_name}.env"
    echo "COLLECTION_NAMESPACE=${collection_namespace}" >> "build/vars.${collection_name}.env"
    echo "COLLECTION_VERSION=${collection_version}" >> "build/vars.${collection_name}.env"
    ansible-galaxy collection build $(dirname $collection_path) --output-path build --force
done
