
TooManyParameters.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <func>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp

   4:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi ; a
   7:	89 75 e8             	mov    DWORD PTR [rbp-0x18],esi ; b
   a:	89 55 e4             	mov    DWORD PTR [rbp-0x1c],edx ; c 
   d:	89 4d e0             	mov    DWORD PTR [rbp-0x20],ecx ; d 
  10:	44 89 45 dc          	mov    DWORD PTR [rbp-0x24],r8d ;e

  14:	8b 55 ec             	mov    edx,DWORD PTR [rbp-0x14]
  17:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  1a:	01 d0                	add    eax,edx

  1c:	2b 45 e4             	sub    eax,DWORD PTR [rbp-0x1c]


  1f:	89 c2                	mov    edx,eax
  21:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  24:	01 d0                	add    eax,edx
  26:	2b 45 dc             	sub    eax,DWORD PTR [rbp-0x24]
  29:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  2c:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]

  2f:	5d                   	pop    rbp
  30:	c3                   	ret

0000000000000031 <main>:
  31:	55                   	push   rbp
  32:	48 89 e5             	mov    rbp,rsp

  ; func(0x11, 0x22, 0x33, 0x44, 0x55)
  35:	41 b8 55 00 00 00    	mov    r8d,0x55
  3b:	b9 44 00 00 00       	mov    ecx,0x44
  40:	ba 33 00 00 00       	mov    edx,0x33
  45:	be 22 00 00 00       	mov    esi,0x22
  4a:	bf 11 00 00 00       	mov    edi,0x11
  4f:	e8 00 00 00 00       	call   54 <main+0x23>

  54:	5d                   	pop    rbp
  55:	c3                   	ret

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	00 47 43             	add    BYTE PTR [rdi+0x43],al
   3:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   6:	28 47 4e             	sub    BYTE PTR [rdi+0x4e],al
   9:	55                   	push   rbp
   a:	29 20                	sub    DWORD PTR [rax],esp
   c:	31 35 2e 32 2e 31    	xor    DWORD PTR [rip+0x312e322e],esi        # 312e3240 <main+0x312e320f>
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
  13:	08 90 01 00 00 1c    	or     BYTE PTR [rax+0x1c000001],dl
  19:	00 00                	add    BYTE PTR [rax],al
  1b:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
  1e:	00 00                	add    BYTE PTR [rax],al
  20:	00 00                	add    BYTE PTR [rax],al
  22:	00 00                	add    BYTE PTR [rax],al
  24:	31 00                	xor    DWORD PTR [rax],eax
  26:	00 00                	add    BYTE PTR [rax],al
  28:	00 41 0e             	add    BYTE PTR [rcx+0xe],al
  2b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  31:	6c                   	ins    BYTE PTR [rdi],dx
  32:	0c 07                	or     al,0x7
  34:	08 00                	or     BYTE PTR [rax],al
  36:	00 00                	add    BYTE PTR [rax],al
  38:	1c 00                	sbb    al,0x0
  3a:	00 00                	add    BYTE PTR [rax],al
  3c:	3c 00                	cmp    al,0x0
  3e:	00 00                	add    BYTE PTR [rax],al
  40:	00 00                	add    BYTE PTR [rax],al
  42:	00 00                	add    BYTE PTR [rax],al
  44:	25 00 00 00 00       	and    eax,0x0
  49:	41 0e                	rex.B (bad)
  4b:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
  51:	60                   	(bad)
  52:	0c 07                	or     al,0x7
  54:	08 00                	or     BYTE PTR [rax],al
	...
