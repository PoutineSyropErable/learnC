
TooManyParameters_O1.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <func>:
   ; esi = a 
   ; edi = b 
   ; edx = c 
   ; ecx = d
   ; r8d = e 
   0:	01 f7                	add    edi,esi   ; b+=a 
   2:	29 d7                	sub    edi,edx   ; b-=c; 

   ; use r not e, for 64 bits, because 64 bits address. lea is used for address math, but here, it's just a trick 
   ; to do math, and skip moving the result into eax 
   ; eax = rdi + rcx 
   ; eax = b + d; 
   4:	8d 04 0f             	lea    eax,[rdi+rcx*1]
   ; eax += e; 
   7:	44 29 c0             	sub    eax,r8d
   a:	c3                   	ret

000000000000000b <main>:
   b:	b8 ef ff ff ff       	mov    eax,0xffffffef
  10:	c3                   	ret

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	00 47 43             	add    BYTE PTR [rdi+0x43],al
   3:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   6:	28 47 4e             	sub    BYTE PTR [rdi+0x4e],al
   9:	55                   	push   rbp
   a:	29 20                	sub    DWORD PTR [rax],esp
   c:	31 35 2e 32 2e 31    	xor    DWORD PTR [rip+0x312e322e],esi        # 312e3240 <main+0x312e3235>
  12:	20 32                	and    BYTE PTR [rdx],dh
  14:	30 32                	xor    BYTE PTR [rdx],dh
  16:	35 30 38 31 33       	xor    eax,0x33313830
	...

Disassembly of section .note.gnu.property:

0000000000000000 <.note.gnu.property>:
   0:	04 00                	add    al,0x0
   2:	00 00                	add    BYTE PTR [rax],al
   4:	20 00                	and    BYTE PTR [rax],al
   6:	00 00                	add    BYTE PTR [rax],al
   8:	05 00 00 00 47       	add    eax,0x47000000
   d:	4e 55                	rex.WRX push rbp
   f:	00 02                	add    BYTE PTR [rdx],al
  11:	00 01                	add    BYTE PTR [rcx],al
  13:	c0 04 00 00          	rol    BYTE PTR [rax+rax*1],0x0
  17:	00 01                	add    BYTE PTR [rcx],al
  19:	00 00                	add    BYTE PTR [rax],al
  1b:	00 00                	add    BYTE PTR [rax],al
  1d:	00 00                	add    BYTE PTR [rax],al
  1f:	00 01                	add    BYTE PTR [rcx],al
  21:	00 01                	add    BYTE PTR [rcx],al
  23:	c0 04 00 00          	rol    BYTE PTR [rax+rax*1],0x0
  27:	00 01                	add    BYTE PTR [rcx],al
  29:	00 00                	add    BYTE PTR [rax],al
  2b:	00 00                	add    BYTE PTR [rax],al
  2d:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .eh_frame:

0000000000000000 <.eh_frame>:
   0:	14 00                	adc    al,0x0
   2:	00 00                	add    BYTE PTR [rax],al
   4:	00 00                	add    BYTE PTR [rax],al
   6:	00 00                	add    BYTE PTR [rax],al
   8:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
   b:	00 01                	add    BYTE PTR [rcx],al
   d:	78 10                	js     1f <.eh_frame+0x1f>
   f:	01 1b                	add    DWORD PTR [rbx],ebx
  11:	0c 07                	or     al,0x7
  13:	08 90 01 00 00 10    	or     BYTE PTR [rax+0x10000001],dl
  19:	00 00                	add    BYTE PTR [rax],al
  1b:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  1e:	00 00                	add    BYTE PTR [rax],al
  20:	00 00                	add    BYTE PTR [rax],al
  22:	00 00                	add    BYTE PTR [rax],al
  24:	0b 00                	or     eax,DWORD PTR [rax]
  26:	00 00                	add    BYTE PTR [rax],al
  28:	00 00                	add    BYTE PTR [rax],al
  2a:	00 00                	add    BYTE PTR [rax],al
  2c:	10 00                	adc    BYTE PTR [rax],al
  2e:	00 00                	add    BYTE PTR [rax],al
  30:	30 00                	xor    BYTE PTR [rax],al
  32:	00 00                	add    BYTE PTR [rax],al
  34:	00 00                	add    BYTE PTR [rax],al
  36:	00 00                	add    BYTE PTR [rax],al
  38:	06                   	(bad)
  39:	00 00                	add    BYTE PTR [rax],al
  3b:	00 00                	add    BYTE PTR [rax],al
  3d:	00 00                	add    BYTE PTR [rax],al
	...
