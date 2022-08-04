#!/bin/bash

# TODO: Due to the introduction of the parent POM, this deploy script currently fails

set -e
set -o pipefail

export GPG_TTY=$(tty)

declare -a arr=(
  "jakartaee-8-archetype"
  "javaee-8-archetype"
  "javaee-8-jsf-archetype"
)

for project in "${arr[@]}"; do
  ./mvnw -f $project/pom.xml release:prepare release:perform
done
