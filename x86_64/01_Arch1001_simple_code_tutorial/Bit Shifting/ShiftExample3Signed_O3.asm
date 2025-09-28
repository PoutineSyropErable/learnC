
ShiftExample3Signed.o:     file format elf64-x86-64


Disassembly of section .text.startup:

0000000000000000 <main>:
   0:	48 83 ec 08          	sub    rsp,0x8
   4:	48 8b 7e 08          	mov    rdi,QWORD PTR [rsi+0x8]
   8:	ba 0a 00 00 00       	mov    edx,0xa
   d:	31 f6                	xor    esi,esi
   f:	e8 00 00 00 00       	call   14 <main+0x14>
  14:	8d 14 c5 00 00 00 00 	lea    edx,[rax*8+0x0]
  1b:	85 d2                	test   edx,edx
  1d:	8d 42 0f             	lea    eax,[rdx+0xf]
  20:	0f 49 c2             	cmovns eax,edx
  23:	48 83 c4 08          	add    rsp,0x8
  27:	c1 f8 04             	sar    eax,0x4
  2a:	c3                   	ret
