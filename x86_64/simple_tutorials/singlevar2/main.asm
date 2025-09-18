
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <func3>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp

   4:	c7 45 fc 11 7a 00 00 	mov    DWORD PTR [rbp-0x4],0x7a11
   b:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]

   e:	5d                   	pop    rbp
   f:	c3                   	ret

0000000000000010 <func2>:
  10:	55                   	push   rbp
  11:	48 89 e5             	mov    rbp,rsp

  14:	48 83 ec 10          	sub    rsp,0x10
  18:	c7 45 fc 1e 7a 00 00 	mov    DWORD PTR [rbp-0x4],0x7a1e
  1f:	e8 00 00 00 00       	call   24 <func2+0x14>

  24:	c9                   	leave
  25:	c3                   	ret

0000000000000026 <func>:
  26:	55                   	push   rbp
  27:	48 89 e5             	mov    rbp,rsp

  2a:	e8 00 00 00 00       	call   2f <func+0x9>

  2f:	5d                   	pop    rbp
  30:	c3                   	ret

0000000000000031 <main>:
  31:	55                   	push   rbp
  32:	48 89 e5             	mov    rbp,rsp

  35:	e8 00 00 00 00       	call   3a <main+0x9>

  3a:	5d                   	pop    rbp
  3b:	c3                   	ret
