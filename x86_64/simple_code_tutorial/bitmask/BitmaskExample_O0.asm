
BitmaskExample.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	c7 45 f8 01 13 00 00 	mov    DWORD PTR [rbp-0x8],0x1301
   b:	c7 45 fc 00 01 00 00 	mov    DWORD PTR [rbp-0x4],0x100
  12:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  15:	23 45 fc             	and    eax,DWORD PTR [rbp-0x4]
  18:	85 c0                	test   eax,eax
  1a:	74 07                	je     23 <main+0x23>
  1c:	b8 1e dd 70 00       	mov    eax,0x70dd1e
  21:	eb 05                	jmp    28 <main+0x28>
  23:	b8 07 07 00 00       	mov    eax,0x707
  28:	5d                   	pop    rbp
  29:	c3                   	ret
