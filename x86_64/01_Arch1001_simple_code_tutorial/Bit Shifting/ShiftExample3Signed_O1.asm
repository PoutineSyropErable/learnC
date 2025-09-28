
ShiftExample3Signed.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	48 83 ec 08          	sub    rsp,0x8

   4:	48 8b 7e 08          	mov    rdi,QWORD PTR [rsi+0x8]
   8:	ba 0a 00 00 00       	mov    edx,0xa
   d:	be 00 00 00 00       	mov    esi,0x0
  12:	e8 00 00 00 00       	call   17 <main+0x17>


  17:	8d 14 c5 00 00 00 00 	lea    edx,[rax*8+0x0]
  1e:	8d 42 0f             	lea    eax,[rdx+0xf]
  21:	85 d2                	test   edx,edx
  23:	0f 49 c2             	cmovns eax,edx
  26:	c1 f8 04             	sar    eax,0x4
  29:	48 83 c4 08          	add    rsp,0x8
  2d:	c3                   	ret
