#!/usr/bin/env bash

shellcheck "$@"

set -o errexit
set -o pipefail
set -o nounset

main() {
  go vet "$@"
}

main "$@"
