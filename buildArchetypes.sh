#!/bin/bash

set -e
set -o pipefail

declare -a arr=(
  "jakartaee-8-archetype"
  "javaee-8-archetype"
  "javaee-8-jsf-archetype"
  "java-testing-toolkit"
)

mvn install -Dgpg.skip
