
IfExample2.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	c7 45 f8 ff ff ff ff 	mov    DWORD PTR [rbp-0x8],0xffffffff
   b:	c7 45 fc 02 00 00 00 	mov    DWORD PTR [rbp-0x4],0x2
  12:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  15:	3b 45 fc             	cmp    eax,DWORD PTR [rbp-0x4]
  18:	75 07                	jne    21 <main+0x21>
  1a:	b8 01 00 00 00       	mov    eax,0x1
  1f:	eb 23                	jmp    44 <main+0x44>
  21:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  24:	39 45 fc             	cmp    DWORD PTR [rbp-0x4],eax
  27:	73 07                	jae    30 <main+0x30>
  29:	b8 02 00 00 00       	mov    eax,0x2
  2e:	eb 14                	jmp    44 <main+0x44>
  30:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  33:	3b 45 fc             	cmp    eax,DWORD PTR [rbp-0x4]
  36:	73 07                	jae    3f <main+0x3f>
  38:	b8 03 00 00 00       	mov    eax,0x3
  3d:	eb 05                	jmp    44 <main+0x44>
  3f:	b8 ed a7 fe de       	mov    eax,0xdefea7ed
  44:	5d                   	pop    rbp
  45:	c3                   	ret
