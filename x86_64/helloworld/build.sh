#!/usr/bin/env bash

mkdir -p build

nasm -f elf64 hello.asm -o build/hello.o
ld build/hello.o -o build/hello
build/hello
