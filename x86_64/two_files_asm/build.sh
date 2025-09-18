#!/usr/bin/env bash

set -euo pipefail

gcc -c main.s -o build/main.o
gcc -c math_op.s -o build/math_op.o
ld build/main.o build/math_op.o -o build/main
build/main
