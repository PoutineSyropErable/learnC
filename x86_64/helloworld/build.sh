#!/usr/bin/env bash

mkdir -p build

nasm -f elf64 hello.asm -o build/hello.o -g -F dwarf
ld build/hello.o -o build/hello
gdb -tui build/hello
