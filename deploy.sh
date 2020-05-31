#!/bin/bash

set -e
set -o pipefail

export GPG_TTY=$(tty)

declare -a arr=(
  "jakartaee-8-archetype"
  "javaee-8-archetype"  
  "javaee-8-jsf-archetype" 
)

for project in "${arr[@]}"
do
  mvn -f $project/pom.xml clean deploy
done