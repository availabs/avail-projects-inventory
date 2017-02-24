#!/bin/bash


set -e

cd "$( dirname "${BASH_SOURCE[0]}" )"


SERVER=(
  demeter.availabs.org\
  fides.availabs.org\
  lor.availabs.org\
  mars.availabs.org\
  michael.availabs.org\
  prometheus.availabs.org\
  hermes.availabs.org\
)


for server in ${SERVER[@]}
do
  DIR="../servers/${server}/"

  mkdir -p "${DIR}"
  echo "# ${server}" > "${DIR}/README.md"
done
