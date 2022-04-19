#!/bin/bash
##!/usr/bin/env bash
#
#set -o errexit   # abort on nonzero exitstatus
#set -o nounset   # abort on unbound variable
#set -o pipefail  # don't hide errors within pipes
#
#main() {
#  for dir in $(echo "$@"|xargs -n1 dirname|sort -u); do
#    go vet ./"$dir"
#  done
#}
#
#main "$@"

for DIR in $(echo "$@"|xargs -n1 dirname|sort -u); do
    go vet ./"$DIR"
done
