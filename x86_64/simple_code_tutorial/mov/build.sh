#!/usr/bin/env bash

# method 1
nasm_way() {
	nasm -f elf64 mov_test.asm -o mov_test.o # assemble
	gcc -no-pie mov_test.o -o mov_test_nasm  # link
}

# method 2
gcc_way() {

	gcc -no-pie -nostdlib mov_test.s -g -o mov_test
}

gcc_way
