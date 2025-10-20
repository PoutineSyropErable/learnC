#!/usr/bin/env bash

set -eou pipefail

mkdir -p build

gcc -c binary_operation.c -o build/binary_operation.o
gcc -c string.c -o build/string.o
gcc -c descriptors.c -o build/descriptors.o

# using ld rather then gcc will fuck calls to libc
gcc build/binary_operation.o build/string.o build/descriptors.o -o descriptors

echo
./descriptors
