#!/bin/bash

set -eo pipefail

package() {
  mvn package
}

copy() {
  ls ./protocol-mapper/target
  mkdir -p ./docker/assets
  cp ./protocol-mapper/target/*.jar ./docker/assets/

  cp ./data-setup/src/main/bash/populate-data.sh ./docker/assets/
  cp ./data-setup/target/data-setup.jar ./docker/assets/
  cp ./data-setup/src/main/bash/populate-data.sh ./docker/assets/
}

buildx() {
    echo -e "\033[1mBuilding image: \033[32m${2}\033[1m\033[0m"
    docker buildx create --use >/dev/null

    echo docker buildx build --no-cache --force-rm --compress --load  -t "${1}" -t "${2}" -f "${3}" "${4}"
    docker buildx build --no-cache --force-rm --compress --load -t "${1}" -t "${2}" -f "${3}" "${4}"

   docker buildx stop
   docker buildx rm
}

build() {
    echo docker build --no-cache --force-rm --compress -t "${1}" -t "${2}" -f "${3}" "${4}"
    docker build --no-cache --force-rm --compress -t "${1}" -t "${2}" -f "${3}" "${4}"
}

echo Tag         : "${IMAGE}:latest"
echo Tag         : "${IMAGE}:${CE_TAG}"
echo Docker file : "${DOCKERFILE}"

echo "Packaging"
package

echo "Copying target file "
copy

echo "Build the actual image"
build "${IMAGE}:latest" "${IMAGE}:${CE_TAG}" "${DOCKERFILE}" "docker"
