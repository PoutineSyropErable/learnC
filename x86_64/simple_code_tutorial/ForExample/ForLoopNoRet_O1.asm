
ForLoopNoRet.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	55                   	push   rbp
   1:	53                   	push   rbx
   2:	48 83 ec 08          	sub    rsp,0x8
   6:	bb 00 00 00 00       	mov    ebx,0x0
   b:	48 8d 2d 00 00 00 00 	lea    rbp,[rip+0x0]        # 12 <main+0x12>
  12:	89 de                	mov    esi,ebx
  14:	48 89 ef             	mov    rdi,rbp
  17:	b8 00 00 00 00       	mov    eax,0x0
  1c:	e8 00 00 00 00       	call   21 <main+0x21>
  21:	83 c3 01             	add    ebx,0x1
  24:	83 fb 0a             	cmp    ebx,0xa
  27:	75 e9                	jne    12 <main+0x12>
  29:	b8 00 00 00 00       	mov    eax,0x0
  2e:	48 83 c4 08          	add    rsp,0x8
  32:	5b                   	pop    rbx
  33:	5d                   	pop    rbp
  34:	c3                   	ret
