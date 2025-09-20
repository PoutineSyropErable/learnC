
singleLocalVariable.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <func>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	c7 45 fc 1e ab a1 5c 	mov    DWORD PTR [rbp-0x4],0x5ca1ab1e
   b:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
   e:	5d                   	pop    rbp
   f:	c3                   	ret

0000000000000010 <main>:
  10:	55                   	push   rbp
  11:	48 89 e5             	mov    rbp,rsp
  14:	e8 00 00 00 00       	call   19 <main+0x9>
  19:	5d                   	pop    rbp
  1a:	c3                   	ret
