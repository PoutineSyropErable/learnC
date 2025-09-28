
ShiftExample1.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	c7 45 f4 05 00 00 00 	mov    DWORD PTR [rbp-0xc],0x5
   b:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
   e:	c1 e0 04             	shl    eax,0x4
  11:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
  14:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  17:	c1 e8 03             	shr    eax,0x3
  1a:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  1d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  20:	5d                   	pop    rbp
  21:	c3                   	ret
