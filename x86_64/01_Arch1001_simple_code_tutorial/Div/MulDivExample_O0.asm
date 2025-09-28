
MulDivExample.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	b8 ed c7 fe de       	mov    eax,0xdefec7ed
   9:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
   d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  11:	48 ba 1e ab c7 7e de 	movabs rdx,0xde7ec7ab1e
  18:	00 00 00 
  1b:	48 0f af c2          	imul   rax,rdx
  1f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  23:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  27:	48 ba a9 90 fb 36 e1 	movabs rdx,0xbb8f02e136fb90a9
  2e:	02 8f bb 
  31:	48 f7 e2             	mul    rdx
  34:	48 89 d0             	mov    rax,rdx
  37:	48 c1 e8 21          	shr    rax,0x21
  3b:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  3f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  43:	5d                   	pop    rbp
  44:	c3                   	ret
