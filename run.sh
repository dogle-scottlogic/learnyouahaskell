#!/usr/bin/env bash

set -eo pipefail

[[ -z "$1" ]] && echo "Usage: ./run.sh <path_to_hs_file e.g test.hs>" && exit 1

function run() {
    local file=$1
    local basename="${file%.*}"
    ghc -o compiled_file "$basename".hs
    ./compiled_file
    rm -rf ./compiled_file
    rm -rf "$basename".hi
    rm -rf "$basename".o
}

run $1
