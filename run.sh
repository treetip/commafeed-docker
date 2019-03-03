#!/bin/bash

set -euo pipefail

exec java \
  -Xms${JAVA_MEM:-512M} -Xmx${JAVA_MEM:-512M} \
  ${JAVA_OPTS:-} \
  -jar /commafeed/commafeed.jar server /commafeed/config.yml