#!/bin/bash


set -e

cd "$( dirname "${BASH_SOURCE[0]}" )"


SITES=(
  aauth.availabs.org\
  api.availabs.org\
  ark.availabs.org\
  bds.availabs.org\
  blog.availabs.org\
  ch.availabs.org\
  charis.availabs.org\
  custom-query.dev.npmrds.availabs.org\
  dev.map21.availabs.org\
  dev.npmrds.availabs.org\
  dev.npmrds.v2.availabs.org\
  dev.wim.availabs.org\
  devtransit.availabs.org\
  dsio.availabs.org\
  freight.availabs.org\
  freightatlas.availabs.org\
  geocensus.availabs.org\
  gtfs.availabs.org\
  ii.availabs.org\
  map.mta.availabs.org\
  mesonet.availabs.org\
  njtransit.availabs.org\
  npmrds.availabs.org\
  npmrds.v2.availabs.org\
  padware.availabs.org\
  pg.npmrds.availabs.org\
  qcew.availabs.org\
  qwi.availabs.org\
  siri.mta.availabs.org\
  siri.mta.lirr.availabs.org\
  siri.mta.lline.availabs.org\
  siri.mta.statenisland.availabs.org\
  ssl-test.npmrds.availabs.org\
  stormevents.availabs.org\
  transmitter.availabs.org\
  wim.availabs.org\
  www.availabs.org\
  zbp.availabs.org\
  eea.availabs.org\
  map21.availabs.org\
)



for site in ${SERVER[@]}
do
  DIR="../servers/${site}/"

  mkdir -p "${DIR}"
  echo "# ${site}" > "${DIR}/README.md"
done
