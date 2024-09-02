#!/usr/bin/env bash

set -eo pipefail

function run() {
    local file=$1
    ghc -o compiled_file "$file".hs
    ./compiled_file
    rm -rf ./compiled_file
    rm -rf "$file".hi
    rm -rf "$file".o
}

run $1
