#!/usr/bin/env bash

set -euo pipefail

main() {
  files=( "$@" )
  for file in "${files[@]}"; do
    go vet ./"$file"
  done
}

main "$@"
