#!/bin/bash

set -e
set -o pipefail

export GPG_TTY=$(tty)

declare -a arr=(
  "jakartaee-8-archetype"
  "javaee-8-archetype"
  "javaee-8-jsf-archetype"
)

mvn release:prepare release:perform
