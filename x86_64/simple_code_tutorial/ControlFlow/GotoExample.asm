
GotoExample.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	90                   	nop
   5:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # c <main+0xc>
   c:	48 89 c7             	mov    rdi,rax
   f:	e8 00 00 00 00       	call   14 <main+0x14>
  14:	b8 ce fa 1d b0       	mov    eax,0xb01dface
  19:	5d                   	pop    rbp
  1a:	c3                   	ret
