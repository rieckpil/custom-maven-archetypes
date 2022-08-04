#!/bin/bash

set -e
set -o pipefail

declare -a archetypes=(
  ["jakartaee8"]="jakartaee-8-archetype"
  ["javaee8"]="javaee-8-archetype"
  ["javaee8-jsf"]="javaee-8-jsf-archetype"
)

mkdir tmp
cd tmp

for project in "${!archetypes[@]}"; do

  ARCHETYPE_VERSION=$(../mvnw -q \
    -f "../${archetypes[$project]}/pom.xml" \
    -Dexec.executable=echo \
    -Dexec.args='${project.version}' \
    --non-recursive \
    exec:exec)

  ../mvnw archetype:generate \
    -DarchetypeGroupId=de.rieckpil.archetypes \
    -DarchetypeArtifactId="$project" \
    -DarchetypeVersion="$ARCHETYPE_VERSION"\
    -DgroupId=de.rieckpil.quickstarts \
    -DartifactId="$project-test"\
    -DinteractiveMode=false

  cd "$project-test"
  ./buildAndRun.sh
  timeout 30 bash -c 'while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' localhost:9080/health)" != "200" ]]; do sleep 1; done' || false
  docker stop $(docker ps -a -q)
  cd ..
  rm -rf "$project-test"
done
