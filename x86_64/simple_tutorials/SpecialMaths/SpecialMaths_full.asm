
SpecialMaths:     file format elf64-x86-64


Disassembly of section .note.gnu.property:

0000000000000350 <.note.gnu.property>:
 350:	04 00                	add    al,0x0
 352:	00 00                	add    BYTE PTR [rax],al
 354:	30 00                	xor    BYTE PTR [rax],al
 356:	00 00                	add    BYTE PTR [rax],al
 358:	05 00 00 00 47       	add    eax,0x47000000
 35d:	4e 55                	rex.WRX push rbp
 35f:	00 02                	add    BYTE PTR [rdx],al
 361:	80 00 c0             	add    BYTE PTR [rax],0xc0
 364:	04 00                	add    al,0x0
 366:	00 00                	add    BYTE PTR [rax],al
 368:	01 00                	add    DWORD PTR [rax],eax
 36a:	00 00                	add    BYTE PTR [rax],al
 36c:	00 00                	add    BYTE PTR [rax],al
 36e:	00 00                	add    BYTE PTR [rax],al
 370:	01 00                	add    DWORD PTR [rax],eax
 372:	01 c0                	add    eax,eax
 374:	04 00                	add    al,0x0
 376:	00 00                	add    BYTE PTR [rax],al
 378:	01 00                	add    DWORD PTR [rax],eax
 37a:	00 00                	add    BYTE PTR [rax],al
 37c:	00 00                	add    BYTE PTR [rax],al
 37e:	00 00                	add    BYTE PTR [rax],al
 380:	02 00                	add    al,BYTE PTR [rax]
 382:	01 c0                	add    eax,eax
 384:	04 00                	add    al,0x0
 386:	00 00                	add    BYTE PTR [rax],al
 388:	01 00                	add    DWORD PTR [rax],eax
 38a:	00 00                	add    BYTE PTR [rax],al
 38c:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .note.gnu.build-id:

0000000000000390 <.note.gnu.build-id>:
 390:	04 00                	add    al,0x0
 392:	00 00                	add    BYTE PTR [rax],al
 394:	14 00                	adc    al,0x0
 396:	00 00                	add    BYTE PTR [rax],al
 398:	03 00                	add    eax,DWORD PTR [rax]
 39a:	00 00                	add    BYTE PTR [rax],al
 39c:	47                   	rex.RXB
 39d:	4e 55                	rex.WRX push rbp
 39f:	00 5e 6c             	add    BYTE PTR [rsi+0x6c],bl
 3a2:	ac                   	lods   al,BYTE PTR [rsi]
 3a3:	63 c2                	movsxd eax,edx
 3a5:	af                   	scas   eax,DWORD PTR [rdi]
 3a6:	b6 c9                	mov    dh,0xc9
 3a8:	eb 5e                	jmp    408 <_init-0xbf8>
 3aa:	f9                   	stc
 3ab:	d6                   	(bad)
 3ac:	f0 b2 b2             	lock mov dl,0xb2
 3af:	e5 bf                	in     eax,0xbf
 3b1:	d8 60 d9             	fsub   DWORD PTR [rax-0x27]

Disassembly of section .interp:

00000000000003b4 <.interp>:
 3b4:	2f                   	(bad)
 3b5:	6c                   	ins    BYTE PTR [rdi],dx
 3b6:	69 62 36 34 2f 6c 64 	imul   esp,DWORD PTR [rdx+0x36],0x646c2f34
 3bd:	2d 6c 69 6e 75       	sub    eax,0x756e696c
 3c2:	78 2d                	js     3f1 <_init-0xc0f>
 3c4:	78 38                	js     3fe <_init-0xc02>
 3c6:	36 2d 36 34 2e 73    	ss sub eax,0x732e3436
 3cc:	6f                   	outs   dx,DWORD PTR [rsi]
 3cd:	2e 32 00             	cs xor al,BYTE PTR [rax]

Disassembly of section .gnu.hash:

00000000000003d0 <.gnu.hash>:
 3d0:	01 00                	add    DWORD PTR [rax],eax
 3d2:	00 00                	add    BYTE PTR [rax],al
 3d4:	01 00                	add    DWORD PTR [rax],eax
 3d6:	00 00                	add    BYTE PTR [rax],al
 3d8:	01 00                	add    DWORD PTR [rax],eax
	...

Disassembly of section .dynsym:

00000000000003f0 <.dynsym>:
	...
 408:	06                   	(bad)
 409:	00 00                	add    BYTE PTR [rax],al
 40b:	00 12                	add    BYTE PTR [rdx],dl
	...
 41d:	00 00                	add    BYTE PTR [rax],al
 41f:	00 48 00             	add    BYTE PTR [rax+0x0],cl
 422:	00 00                	add    BYTE PTR [rax],al
 424:	20 00                	and    BYTE PTR [rax],al
	...
 436:	00 00                	add    BYTE PTR [rax],al
 438:	64 00 00             	add    BYTE PTR fs:[rax],al
 43b:	00 20                	add    BYTE PTR [rax],ah
	...
 44d:	00 00                	add    BYTE PTR [rax],al
 44f:	00 01                	add    BYTE PTR [rcx],al
 451:	00 00                	add    BYTE PTR [rax],al
 453:	00 12                	add    BYTE PTR [rdx],dl
	...
 465:	00 00                	add    BYTE PTR [rax],al
 467:	00 73 00             	add    BYTE PTR [rbx+0x0],dh
 46a:	00 00                	add    BYTE PTR [rax],al
 46c:	20 00                	and    BYTE PTR [rax],al
	...
 47e:	00 00                	add    BYTE PTR [rax],al
 480:	18 00                	sbb    BYTE PTR [rax],al
 482:	00 00                	add    BYTE PTR [rax],al
 484:	22 00                	and    al,BYTE PTR [rax]
	...

Disassembly of section .dynstr:

0000000000000498 <.dynstr>:
 498:	00 61 74             	add    BYTE PTR [rcx+0x74],ah
 49b:	6f                   	outs   dx,DWORD PTR [rsi]
 49c:	69 00 5f 5f 6c 69    	imul   eax,DWORD PTR [rax],0x696c5f5f
 4a2:	62 63 5f 73 74       	(bad)
 4a7:	61                   	(bad)
 4a8:	72 74                	jb     51e <_init-0xae2>
 4aa:	5f                   	pop    rdi
 4ab:	6d                   	ins    DWORD PTR [rdi],dx
 4ac:	61                   	(bad)
 4ad:	69 6e 00 5f 5f 63 78 	imul   ebp,DWORD PTR [rsi+0x0],0x78635f5f
 4b4:	61                   	(bad)
 4b5:	5f                   	pop    rdi
 4b6:	66 69 6e 61 6c 69    	imul   bp,WORD PTR [rsi+0x61],0x696c
 4bc:	7a 65                	jp     523 <_init-0xadd>
 4be:	00 6c 69 62          	add    BYTE PTR [rcx+rbp*2+0x62],ch
 4c2:	63 2e                	movsxd ebp,DWORD PTR [rsi]
 4c4:	73 6f                	jae    535 <_init-0xacb>
 4c6:	2e 36 00 47 4c       	cs ss add BYTE PTR [rdi+0x4c],al
 4cb:	49                   	rex.WB
 4cc:	42                   	rex.X
 4cd:	43 5f                	rex.XB pop r15
 4cf:	32 2e                	xor    ch,BYTE PTR [rsi]
 4d1:	32 2e                	xor    ch,BYTE PTR [rsi]
 4d3:	35 00 47 4c 49       	xor    eax,0x494c4700
 4d8:	42                   	rex.X
 4d9:	43 5f                	rex.XB pop r15
 4db:	32 2e                	xor    ch,BYTE PTR [rsi]
 4dd:	33 34 00             	xor    esi,DWORD PTR [rax+rax*1]
 4e0:	5f                   	pop    rdi
 4e1:	49 54                	rex.WB push r12
 4e3:	4d 5f                	rex.WRB pop r15
 4e5:	64 65 72 65          	fs gs jb 54e <_init-0xab2>
 4e9:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 4f0:	4d 
 4f1:	43 6c                	rex.XB ins BYTE PTR [rdi],dx
 4f3:	6f                   	outs   dx,DWORD PTR [rsi]
 4f4:	6e                   	outs   dx,BYTE PTR [rsi]
 4f5:	65 54                	gs push rsp
 4f7:	61                   	(bad)
 4f8:	62 6c 65 00 5f       	(bad)
 4fd:	5f                   	pop    rdi
 4fe:	67 6d                	ins    DWORD PTR [edi],dx
 500:	6f                   	outs   dx,DWORD PTR [rsi]
 501:	6e                   	outs   dx,BYTE PTR [rsi]
 502:	5f                   	pop    rdi
 503:	73 74                	jae    579 <_init-0xa87>
 505:	61                   	(bad)
 506:	72 74                	jb     57c <_init-0xa84>
 508:	5f                   	pop    rdi
 509:	5f                   	pop    rdi
 50a:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 50d:	54                   	push   rsp
 50e:	4d 5f                	rex.WRB pop r15
 510:	72 65                	jb     577 <_init-0xa89>
 512:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 519:	4d 
 51a:	43 6c                	rex.XB ins BYTE PTR [rdi],dx
 51c:	6f                   	outs   dx,DWORD PTR [rsi]
 51d:	6e                   	outs   dx,BYTE PTR [rsi]
 51e:	65 54                	gs push rsp
 520:	61                   	(bad)
 521:	62                   	.byte 0x62
 522:	6c                   	ins    BYTE PTR [rdi],dx
 523:	65                   	gs
	...

Disassembly of section .gnu.version:

0000000000000526 <.gnu.version>:
 526:	00 00                	add    BYTE PTR [rax],al
 528:	02 00                	add    al,BYTE PTR [rax]
 52a:	01 00                	add    DWORD PTR [rax],eax
 52c:	01 00                	add    DWORD PTR [rax],eax
 52e:	03 00                	add    eax,DWORD PTR [rax]
 530:	01 00                	add    DWORD PTR [rax],eax
 532:	03 00                	add    eax,DWORD PTR [rax]

Disassembly of section .gnu.version_r:

0000000000000538 <.gnu.version_r>:
 538:	01 00                	add    DWORD PTR [rax],eax
 53a:	02 00                	add    al,BYTE PTR [rax]
 53c:	27                   	(bad)
 53d:	00 00                	add    BYTE PTR [rax],al
 53f:	00 10                	add    BYTE PTR [rax],dl
 541:	00 00                	add    BYTE PTR [rax],al
 543:	00 00                	add    BYTE PTR [rax],al
 545:	00 00                	add    BYTE PTR [rax],al
 547:	00 75 1a             	add    BYTE PTR [rbp+0x1a],dh
 54a:	69 09 00 00 03 00    	imul   ecx,DWORD PTR [rcx],0x30000
 550:	31 00                	xor    DWORD PTR [rax],eax
 552:	00 00                	add    BYTE PTR [rax],al
 554:	10 00                	adc    BYTE PTR [rax],al
 556:	00 00                	add    BYTE PTR [rax],al
 558:	b4 91                	mov    ah,0x91
 55a:	96                   	xchg   esi,eax
 55b:	06                   	(bad)
 55c:	00 00                	add    BYTE PTR [rax],al
 55e:	02 00                	add    al,BYTE PTR [rax]
 560:	3d 00 00 00 00       	cmp    eax,0x0
 565:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rela.dyn:

0000000000000568 <.rela.dyn>:
 568:	d0 3d 00 00 00 00    	sar    BYTE PTR [rip+0x0],1        # 56e <_init-0xa92>
 56e:	00 00                	add    BYTE PTR [rax],al
 570:	08 00                	or     BYTE PTR [rax],al
 572:	00 00                	add    BYTE PTR [rax],al
 574:	00 00                	add    BYTE PTR [rax],al
 576:	00 00                	add    BYTE PTR [rax],al
 578:	30 11                	xor    BYTE PTR [rcx],dl
 57a:	00 00                	add    BYTE PTR [rax],al
 57c:	00 00                	add    BYTE PTR [rax],al
 57e:	00 00                	add    BYTE PTR [rax],al
 580:	d8 3d 00 00 00 00    	fdivr  DWORD PTR [rip+0x0]        # 586 <_init-0xa7a>
 586:	00 00                	add    BYTE PTR [rax],al
 588:	08 00                	or     BYTE PTR [rax],al
 58a:	00 00                	add    BYTE PTR [rax],al
 58c:	00 00                	add    BYTE PTR [rax],al
 58e:	00 00                	add    BYTE PTR [rax],al
 590:	e0 10                	loopne 5a2 <_init-0xa5e>
 592:	00 00                	add    BYTE PTR [rax],al
 594:	00 00                	add    BYTE PTR [rax],al
 596:	00 00                	add    BYTE PTR [rax],al
 598:	10 40 00             	adc    BYTE PTR [rax+0x0],al
 59b:	00 00                	add    BYTE PTR [rax],al
 59d:	00 00                	add    BYTE PTR [rax],al
 59f:	00 08                	add    BYTE PTR [rax],cl
 5a1:	00 00                	add    BYTE PTR [rax],al
 5a3:	00 00                	add    BYTE PTR [rax],al
 5a5:	00 00                	add    BYTE PTR [rax],al
 5a7:	00 10                	add    BYTE PTR [rax],dl
 5a9:	40 00 00             	rex add BYTE PTR [rax],al
 5ac:	00 00                	add    BYTE PTR [rax],al
 5ae:	00 00                	add    BYTE PTR [rax],al
 5b0:	c0 3f 00             	sar    BYTE PTR [rdi],0x0
 5b3:	00 00                	add    BYTE PTR [rax],al
 5b5:	00 00                	add    BYTE PTR [rax],al
 5b7:	00 06                	add    BYTE PTR [rsi],al
 5b9:	00 00                	add    BYTE PTR [rax],al
 5bb:	00 01                	add    BYTE PTR [rcx],al
	...
 5c5:	00 00                	add    BYTE PTR [rax],al
 5c7:	00 c8                	add    al,cl
 5c9:	3f                   	(bad)
 5ca:	00 00                	add    BYTE PTR [rax],al
 5cc:	00 00                	add    BYTE PTR [rax],al
 5ce:	00 00                	add    BYTE PTR [rax],al
 5d0:	06                   	(bad)
 5d1:	00 00                	add    BYTE PTR [rax],al
 5d3:	00 02                	add    BYTE PTR [rdx],al
	...
 5dd:	00 00                	add    BYTE PTR [rax],al
 5df:	00 d0                	add    al,dl
 5e1:	3f                   	(bad)
 5e2:	00 00                	add    BYTE PTR [rax],al
 5e4:	00 00                	add    BYTE PTR [rax],al
 5e6:	00 00                	add    BYTE PTR [rax],al
 5e8:	06                   	(bad)
 5e9:	00 00                	add    BYTE PTR [rax],al
 5eb:	00 03                	add    BYTE PTR [rbx],al
	...
 5f5:	00 00                	add    BYTE PTR [rax],al
 5f7:	00 d8                	add    al,bl
 5f9:	3f                   	(bad)
 5fa:	00 00                	add    BYTE PTR [rax],al
 5fc:	00 00                	add    BYTE PTR [rax],al
 5fe:	00 00                	add    BYTE PTR [rax],al
 600:	06                   	(bad)
 601:	00 00                	add    BYTE PTR [rax],al
 603:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 609 <_init-0x9f7>
 609:	00 00                	add    BYTE PTR [rax],al
 60b:	00 00                	add    BYTE PTR [rax],al
 60d:	00 00                	add    BYTE PTR [rax],al
 60f:	00 e0                	add    al,ah
 611:	3f                   	(bad)
 612:	00 00                	add    BYTE PTR [rax],al
 614:	00 00                	add    BYTE PTR [rax],al
 616:	00 00                	add    BYTE PTR [rax],al
 618:	06                   	(bad)
 619:	00 00                	add    BYTE PTR [rax],al
 61b:	00 06                	add    BYTE PTR [rsi],al
	...

Disassembly of section .rela.plt:

0000000000000628 <.rela.plt>:
 628:	00 40 00             	add    BYTE PTR [rax+0x0],al
 62b:	00 00                	add    BYTE PTR [rax],al
 62d:	00 00                	add    BYTE PTR [rax],al
 62f:	00 07                	add    BYTE PTR [rdi],al
 631:	00 00                	add    BYTE PTR [rax],al
 633:	00 04 00             	add    BYTE PTR [rax+rax*1],al
	...

Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 c1 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fc1]        # 3fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <atoi@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   QWORD PTR [rip+0x2fca]        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    QWORD PTR [rip+0x2fcc]        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001030 <atoi@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    QWORD PTR [rip+0x2fca]        # 4000 <atoi@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

0000000000001040 <_start>:
    1040:	f3 0f 1e fa          	endbr64
    1044:	31 ed                	xor    ebp,ebp
    1046:	49 89 d1             	mov    r9,rdx
    1049:	5e                   	pop    rsi
    104a:	48 89 e2             	mov    rdx,rsp
    104d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1051:	50                   	push   rax
    1052:	54                   	push   rsp
    1053:	45 31 c0             	xor    r8d,r8d
    1056:	31 c9                	xor    ecx,ecx
    1058:	48 8d 3d da 00 00 00 	lea    rdi,[rip+0xda]        # 1139 <main>
    105f:	ff 15 5b 2f 00 00    	call   QWORD PTR [rip+0x2f5b]        # 3fc0 <__libc_start_main@GLIBC_2.34>
    1065:	f4                   	hlt
    1066:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    106d:	00 00 00 
    1070:	48 8d 3d a1 2f 00 00 	lea    rdi,[rip+0x2fa1]        # 4018 <__TMC_END__>
    1077:	48 8d 05 9a 2f 00 00 	lea    rax,[rip+0x2f9a]        # 4018 <__TMC_END__>
    107e:	48 39 f8             	cmp    rax,rdi
    1081:	74 15                	je     1098 <_start+0x58>
    1083:	48 8b 05 3e 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f3e]        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    108a:	48 85 c0             	test   rax,rax
    108d:	74 09                	je     1098 <_start+0x58>
    108f:	ff e0                	jmp    rax
    1091:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1098:	c3                   	ret
    1099:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10a0:	48 8d 3d 71 2f 00 00 	lea    rdi,[rip+0x2f71]        # 4018 <__TMC_END__>
    10a7:	48 8d 35 6a 2f 00 00 	lea    rsi,[rip+0x2f6a]        # 4018 <__TMC_END__>
    10ae:	48 29 fe             	sub    rsi,rdi
    10b1:	48 89 f0             	mov    rax,rsi
    10b4:	48 c1 ee 3f          	shr    rsi,0x3f
    10b8:	48 c1 f8 03          	sar    rax,0x3
    10bc:	48 01 c6             	add    rsi,rax
    10bf:	48 d1 fe             	sar    rsi,1
    10c2:	74 14                	je     10d8 <_start+0x98>
    10c4:	48 8b 05 0d 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f0d]        # 3fd8 <_ITM_registerTMCloneTable@Base>
    10cb:	48 85 c0             	test   rax,rax
    10ce:	74 08                	je     10d8 <_start+0x98>
    10d0:	ff e0                	jmp    rax
    10d2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    10d8:	c3                   	ret
    10d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	80 3d 2d 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f2d],0x0        # 4018 <__TMC_END__>
    10eb:	75 33                	jne    1120 <_start+0xe0>
    10ed:	55                   	push   rbp
    10ee:	48 83 3d ea 2e 00 00 	cmp    QWORD PTR [rip+0x2eea],0x0        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    10f5:	00 
    10f6:	48 89 e5             	mov    rbp,rsp
    10f9:	74 0d                	je     1108 <_start+0xc8>
    10fb:	48 8b 3d 0e 2f 00 00 	mov    rdi,QWORD PTR [rip+0x2f0e]        # 4010 <__dso_handle>
    1102:	ff 15 d8 2e 00 00    	call   QWORD PTR [rip+0x2ed8]        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1108:	e8 63 ff ff ff       	call   1070 <_start+0x30>
    110d:	c6 05 04 2f 00 00 01 	mov    BYTE PTR [rip+0x2f04],0x1        # 4018 <__TMC_END__>
    1114:	5d                   	pop    rbp
    1115:	c3                   	ret
    1116:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    111d:	00 00 00 
    1120:	c3                   	ret
    1121:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1125:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    112c:	00 00 00 00 
    1130:	f3 0f 1e fa          	endbr64
    1134:	e9 67 ff ff ff       	jmp    10a0 <_start+0x60>

0000000000001139 <main>:
    1139:	55                   	push   rbp
    113a:	48 89 e5             	mov    rbp,rsp

    113d:	48 83 ec 20          	sub    rsp,0x20

    1141:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi ; int argc   	(4) 
    1144:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi ; char **argv	(8)
	# 0x20 is 32. 
	# 0x14 is 20
	# diff = 12. 
	; 	=== high addresses ===
	; [rbp+?]  <- caller's rbp / return address (not shown)
	; ...
	; [rbp-0x14]  argc       ; 4 bytes
	; [rbp-0x18]  padding    ; 4 bytes (to align argv)
	; [rbp-0x1C]  padding    ; 4 bytes
	; [rbp-0x20]  argv[0..3] ; lower 4 bytes of argv pointer
	; [rbp-0x24]  argv[4..7] ; upper 4 bytes of argv pointer

	; === low addresses ===
	; --------------------- Note on Endianness ---------------------
	; ==============   x_86_64 is little endian. ==============
	; if it was big endian: 

	; [rbp-0x20]  argv[4..7] ; upper 4 bytes of argv pointer
	; [rbp-0x24]  argv[0..3] ; lower 4 bytes of argv pointer
	; --------------------- Note on Endianness ---------------------


	; int main(int argc, char** argv) 
	; {
	; 	int a;
	; 	//reminder: atoi() converts an
	; 	//ASCII string to an integer
	; 	a = atoi(argv[1]);
	; 	return 2 * argc + a;
	; }



	; rax = &argv[1]
    1148:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20] ; argv
    114c:	48 83 c0 08          	add    rax,0x8 ; argv[1]
	

	; rax = argv[1]
    1150:	48 8b 00             	mov    rax,QWORD PTR [rax]

	
	; a = atoi(argv[1])
    1153:	48 89 c7             	mov    rdi,rax ; arg1 = argv[1]
    1156:	e8 d5 fe ff ff       	call   1030 <atoi@plt>
	; this will make eax/rax the result of it. So eax/rax = a

	; store the result (a) on memory
    115b:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
	; eax = argc; rax = argc; 
    115e:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]

	; edx = argc +argc ; exa = 2*argc
    1161:	8d 14 00             	lea    edx,[rax+rax*1]

	; get the result back from memory. (It was saved in an unnamed local variable)
    1164:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4] ; eax = a 

	; return 2*argc + a
    1167:	01 d0                	add    eax,edx ; eax (a) += 2*argc
    1169:	c9                   	leave
	# leave is equiv to "
	; mov rsp, rbp 
	; pop rbp

    116a:	c3                   	ret

Disassembly of section .fini:

000000000000116c <_fini>:
    116c:	f3 0f 1e fa          	endbr64
    1170:	48 83 ec 08          	sub    rsp,0x8
    1174:	48 83 c4 08          	add    rsp,0x8
    1178:	c3                   	ret

Disassembly of section .rodata:

0000000000002000 <_IO_stdin_used>:
    2000:	01 00                	add    DWORD PTR [rax],eax
    2002:	02 00                	add    al,BYTE PTR [rax]

Disassembly of section .eh_frame_hdr:

0000000000002004 <__GNU_EH_FRAME_HDR>:
    2004:	01 1b                	add    DWORD PTR [rbx],ebx
    2006:	03 3b                	add    edi,DWORD PTR [rbx]
    2008:	20 00                	and    BYTE PTR [rax],al
    200a:	00 00                	add    BYTE PTR [rax],al
    200c:	03 00                	add    eax,DWORD PTR [rax]
    200e:	00 00                	add    BYTE PTR [rax],al
    2010:	1c f0                	sbb    al,0xf0
    2012:	ff                   	(bad)
    2013:	ff 54 00 00          	call   QWORD PTR [rax+rax*1+0x0]
    2017:	00 3c f0             	add    BYTE PTR [rax+rsi*8],bh
    201a:	ff                   	(bad)
    201b:	ff                   	(bad)
    201c:	3c 00                	cmp    al,0x0
    201e:	00 00                	add    BYTE PTR [rax],al
    2020:	35 f1 ff ff 7c       	xor    eax,0x7cfffff1
    2025:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .eh_frame:

0000000000002028 <.eh_frame>:
    2028:	14 00                	adc    al,0x0
    202a:	00 00                	add    BYTE PTR [rax],al
    202c:	00 00                	add    BYTE PTR [rax],al
    202e:	00 00                	add    BYTE PTR [rax],al
    2030:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
    2033:	00 01                	add    BYTE PTR [rcx],al
    2035:	78 10                	js     2047 <__GNU_EH_FRAME_HDR+0x43>
    2037:	01 1b                	add    DWORD PTR [rbx],ebx
    2039:	0c 07                	or     al,0x7
    203b:	08 90 01 00 00 14    	or     BYTE PTR [rax+0x14000001],dl
    2041:	00 00                	add    BYTE PTR [rax],al
    2043:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    2046:	00 00                	add    BYTE PTR [rax],al
    2048:	f8                   	clc
    2049:	ef                   	out    dx,eax
    204a:	ff                   	(bad)
    204b:	ff 26                	jmp    QWORD PTR [rsi]
    204d:	00 00                	add    BYTE PTR [rax],al
    204f:	00 00                	add    BYTE PTR [rax],al
    2051:	44 07                	rex.R (bad)
    2053:	10 00                	adc    BYTE PTR [rax],al
    2055:	00 00                	add    BYTE PTR [rax],al
    2057:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
    205a:	00 00                	add    BYTE PTR [rax],al
    205c:	34 00                	xor    al,0x0
    205e:	00 00                	add    BYTE PTR [rax],al
    2060:	c0 ef ff             	shr    bh,0xff
    2063:	ff 20                	jmp    QWORD PTR [rax]
    2065:	00 00                	add    BYTE PTR [rax],al
    2067:	00 00                	add    BYTE PTR [rax],al
    2069:	0e                   	(bad)
    206a:	10 46 0e             	adc    BYTE PTR [rsi+0xe],al
    206d:	18 4a 0f             	sbb    BYTE PTR [rdx+0xf],cl
    2070:	0b 77 08             	or     esi,DWORD PTR [rdi+0x8]
    2073:	80 00 3f             	add    BYTE PTR [rax],0x3f
    2076:	1a 3b                	sbb    bh,BYTE PTR [rbx]
    2078:	2a 33                	sub    dh,BYTE PTR [rbx]
    207a:	24 22                	and    al,0x22
    207c:	00 00                	add    BYTE PTR [rax],al
    207e:	00 00                	add    BYTE PTR [rax],al
    2080:	1c 00                	sbb    al,0x0
    2082:	00 00                	add    BYTE PTR [rax],al
    2084:	5c                   	pop    rsp
    2085:	00 00                	add    BYTE PTR [rax],al
    2087:	00 b1 f0 ff ff 32    	add    BYTE PTR [rcx+0x32fffff0],dh
    208d:	00 00                	add    BYTE PTR [rax],al
    208f:	00 00                	add    BYTE PTR [rax],al
    2091:	41 0e                	rex.B (bad)
    2093:	10 86 02 43 0d 06    	adc    BYTE PTR [rsi+0x60d4302],al
    2099:	6d                   	ins    DWORD PTR [rdi],dx
    209a:	0c 07                	or     al,0x7
    209c:	08 00                	or     BYTE PTR [rax],al
    209e:	00 00                	add    BYTE PTR [rax],al
    20a0:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .note.ABI-tag:

00000000000020a4 <.note.ABI-tag>:
    20a4:	04 00                	add    al,0x0
    20a6:	00 00                	add    BYTE PTR [rax],al
    20a8:	10 00                	adc    BYTE PTR [rax],al
    20aa:	00 00                	add    BYTE PTR [rax],al
    20ac:	01 00                	add    DWORD PTR [rax],eax
    20ae:	00 00                	add    BYTE PTR [rax],al
    20b0:	47                   	rex.RXB
    20b1:	4e 55                	rex.WRX push rbp
    20b3:	00 00                	add    BYTE PTR [rax],al
    20b5:	00 00                	add    BYTE PTR [rax],al
    20b7:	00 04 00             	add    BYTE PTR [rax+rax*1],al
    20ba:	00 00                	add    BYTE PTR [rax],al
    20bc:	04 00                	add    al,0x0
    20be:	00 00                	add    BYTE PTR [rax],al
    20c0:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init_array:

0000000000003dd0 <.init_array>:
    3dd0:	30 11                	xor    BYTE PTR [rcx],dl
    3dd2:	00 00                	add    BYTE PTR [rax],al
    3dd4:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .fini_array:

0000000000003dd8 <.fini_array>:
    3dd8:	e0 10                	loopne 3dea <_DYNAMIC+0xa>
    3dda:	00 00                	add    BYTE PTR [rax],al
    3ddc:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynamic:

0000000000003de0 <_DYNAMIC>:
    3de0:	01 00                	add    DWORD PTR [rax],eax
    3de2:	00 00                	add    BYTE PTR [rax],al
    3de4:	00 00                	add    BYTE PTR [rax],al
    3de6:	00 00                	add    BYTE PTR [rax],al
    3de8:	27                   	(bad)
    3de9:	00 00                	add    BYTE PTR [rax],al
    3deb:	00 00                	add    BYTE PTR [rax],al
    3ded:	00 00                	add    BYTE PTR [rax],al
    3def:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
    3df2:	00 00                	add    BYTE PTR [rax],al
    3df4:	00 00                	add    BYTE PTR [rax],al
    3df6:	00 00                	add    BYTE PTR [rax],al
    3df8:	00 10                	add    BYTE PTR [rax],dl
    3dfa:	00 00                	add    BYTE PTR [rax],al
    3dfc:	00 00                	add    BYTE PTR [rax],al
    3dfe:	00 00                	add    BYTE PTR [rax],al
    3e00:	0d 00 00 00 00       	or     eax,0x0
    3e05:	00 00                	add    BYTE PTR [rax],al
    3e07:	00 6c 11 00          	add    BYTE PTR [rcx+rdx*1+0x0],ch
    3e0b:	00 00                	add    BYTE PTR [rax],al
    3e0d:	00 00                	add    BYTE PTR [rax],al
    3e0f:	00 19                	add    BYTE PTR [rcx],bl
    3e11:	00 00                	add    BYTE PTR [rax],al
    3e13:	00 00                	add    BYTE PTR [rax],al
    3e15:	00 00                	add    BYTE PTR [rax],al
    3e17:	00 d0                	add    al,dl
    3e19:	3d 00 00 00 00       	cmp    eax,0x0
    3e1e:	00 00                	add    BYTE PTR [rax],al
    3e20:	1b 00                	sbb    eax,DWORD PTR [rax]
    3e22:	00 00                	add    BYTE PTR [rax],al
    3e24:	00 00                	add    BYTE PTR [rax],al
    3e26:	00 00                	add    BYTE PTR [rax],al
    3e28:	08 00                	or     BYTE PTR [rax],al
    3e2a:	00 00                	add    BYTE PTR [rax],al
    3e2c:	00 00                	add    BYTE PTR [rax],al
    3e2e:	00 00                	add    BYTE PTR [rax],al
    3e30:	1a 00                	sbb    al,BYTE PTR [rax]
    3e32:	00 00                	add    BYTE PTR [rax],al
    3e34:	00 00                	add    BYTE PTR [rax],al
    3e36:	00 00                	add    BYTE PTR [rax],al
    3e38:	d8 3d 00 00 00 00    	fdivr  DWORD PTR [rip+0x0]        # 3e3e <_DYNAMIC+0x5e>
    3e3e:	00 00                	add    BYTE PTR [rax],al
    3e40:	1c 00                	sbb    al,0x0
    3e42:	00 00                	add    BYTE PTR [rax],al
    3e44:	00 00                	add    BYTE PTR [rax],al
    3e46:	00 00                	add    BYTE PTR [rax],al
    3e48:	08 00                	or     BYTE PTR [rax],al
    3e4a:	00 00                	add    BYTE PTR [rax],al
    3e4c:	00 00                	add    BYTE PTR [rax],al
    3e4e:	00 00                	add    BYTE PTR [rax],al
    3e50:	f5                   	cmc
    3e51:	fe                   	(bad)
    3e52:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3e55:	00 00                	add    BYTE PTR [rax],al
    3e57:	00 d0                	add    al,dl
    3e59:	03 00                	add    eax,DWORD PTR [rax]
    3e5b:	00 00                	add    BYTE PTR [rax],al
    3e5d:	00 00                	add    BYTE PTR [rax],al
    3e5f:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 3e65 <_DYNAMIC+0x85>
    3e65:	00 00                	add    BYTE PTR [rax],al
    3e67:	00 98 04 00 00 00    	add    BYTE PTR [rax+0x4],bl
    3e6d:	00 00                	add    BYTE PTR [rax],al
    3e6f:	00 06                	add    BYTE PTR [rsi],al
    3e71:	00 00                	add    BYTE PTR [rax],al
    3e73:	00 00                	add    BYTE PTR [rax],al
    3e75:	00 00                	add    BYTE PTR [rax],al
    3e77:	00 f0                	add    al,dh
    3e79:	03 00                	add    eax,DWORD PTR [rax]
    3e7b:	00 00                	add    BYTE PTR [rax],al
    3e7d:	00 00                	add    BYTE PTR [rax],al
    3e7f:	00 0a                	add    BYTE PTR [rdx],cl
    3e81:	00 00                	add    BYTE PTR [rax],al
    3e83:	00 00                	add    BYTE PTR [rax],al
    3e85:	00 00                	add    BYTE PTR [rax],al
    3e87:	00 8d 00 00 00 00    	add    BYTE PTR [rbp+0x0],cl
    3e8d:	00 00                	add    BYTE PTR [rax],al
    3e8f:	00 0b                	add    BYTE PTR [rbx],cl
    3e91:	00 00                	add    BYTE PTR [rax],al
    3e93:	00 00                	add    BYTE PTR [rax],al
    3e95:	00 00                	add    BYTE PTR [rax],al
    3e97:	00 18                	add    BYTE PTR [rax],bl
    3e99:	00 00                	add    BYTE PTR [rax],al
    3e9b:	00 00                	add    BYTE PTR [rax],al
    3e9d:	00 00                	add    BYTE PTR [rax],al
    3e9f:	00 15 00 00 00 00    	add    BYTE PTR [rip+0x0],dl        # 3ea5 <_DYNAMIC+0xc5>
	...
    3ead:	00 00                	add    BYTE PTR [rax],al
    3eaf:	00 03                	add    BYTE PTR [rbx],al
    3eb1:	00 00                	add    BYTE PTR [rax],al
    3eb3:	00 00                	add    BYTE PTR [rax],al
    3eb5:	00 00                	add    BYTE PTR [rax],al
    3eb7:	00 e8                	add    al,ch
    3eb9:	3f                   	(bad)
    3eba:	00 00                	add    BYTE PTR [rax],al
    3ebc:	00 00                	add    BYTE PTR [rax],al
    3ebe:	00 00                	add    BYTE PTR [rax],al
    3ec0:	02 00                	add    al,BYTE PTR [rax]
    3ec2:	00 00                	add    BYTE PTR [rax],al
    3ec4:	00 00                	add    BYTE PTR [rax],al
    3ec6:	00 00                	add    BYTE PTR [rax],al
    3ec8:	18 00                	sbb    BYTE PTR [rax],al
    3eca:	00 00                	add    BYTE PTR [rax],al
    3ecc:	00 00                	add    BYTE PTR [rax],al
    3ece:	00 00                	add    BYTE PTR [rax],al
    3ed0:	14 00                	adc    al,0x0
    3ed2:	00 00                	add    BYTE PTR [rax],al
    3ed4:	00 00                	add    BYTE PTR [rax],al
    3ed6:	00 00                	add    BYTE PTR [rax],al
    3ed8:	07                   	(bad)
    3ed9:	00 00                	add    BYTE PTR [rax],al
    3edb:	00 00                	add    BYTE PTR [rax],al
    3edd:	00 00                	add    BYTE PTR [rax],al
    3edf:	00 17                	add    BYTE PTR [rdi],dl
    3ee1:	00 00                	add    BYTE PTR [rax],al
    3ee3:	00 00                	add    BYTE PTR [rax],al
    3ee5:	00 00                	add    BYTE PTR [rax],al
    3ee7:	00 28                	add    BYTE PTR [rax],ch
    3ee9:	06                   	(bad)
    3eea:	00 00                	add    BYTE PTR [rax],al
    3eec:	00 00                	add    BYTE PTR [rax],al
    3eee:	00 00                	add    BYTE PTR [rax],al
    3ef0:	07                   	(bad)
    3ef1:	00 00                	add    BYTE PTR [rax],al
    3ef3:	00 00                	add    BYTE PTR [rax],al
    3ef5:	00 00                	add    BYTE PTR [rax],al
    3ef7:	00 68 05             	add    BYTE PTR [rax+0x5],ch
    3efa:	00 00                	add    BYTE PTR [rax],al
    3efc:	00 00                	add    BYTE PTR [rax],al
    3efe:	00 00                	add    BYTE PTR [rax],al
    3f00:	08 00                	or     BYTE PTR [rax],al
    3f02:	00 00                	add    BYTE PTR [rax],al
    3f04:	00 00                	add    BYTE PTR [rax],al
    3f06:	00 00                	add    BYTE PTR [rax],al
    3f08:	c0 00 00             	rol    BYTE PTR [rax],0x0
    3f0b:	00 00                	add    BYTE PTR [rax],al
    3f0d:	00 00                	add    BYTE PTR [rax],al
    3f0f:	00 09                	add    BYTE PTR [rcx],cl
    3f11:	00 00                	add    BYTE PTR [rax],al
    3f13:	00 00                	add    BYTE PTR [rax],al
    3f15:	00 00                	add    BYTE PTR [rax],al
    3f17:	00 18                	add    BYTE PTR [rax],bl
    3f19:	00 00                	add    BYTE PTR [rax],al
    3f1b:	00 00                	add    BYTE PTR [rax],al
    3f1d:	00 00                	add    BYTE PTR [rax],al
    3f1f:	00 fb                	add    bl,bh
    3f21:	ff                   	(bad)
    3f22:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3f25:	00 00                	add    BYTE PTR [rax],al
    3f27:	00 00                	add    BYTE PTR [rax],al
    3f29:	00 00                	add    BYTE PTR [rax],al
    3f2b:	08 00                	or     BYTE PTR [rax],al
    3f2d:	00 00                	add    BYTE PTR [rax],al
    3f2f:	00 fe                	add    dh,bh
    3f31:	ff                   	(bad)
    3f32:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3f35:	00 00                	add    BYTE PTR [rax],al
    3f37:	00 38                	add    BYTE PTR [rax],bh
    3f39:	05 00 00 00 00       	add    eax,0x0
    3f3e:	00 00                	add    BYTE PTR [rax],al
    3f40:	ff                   	(bad)
    3f41:	ff                   	(bad)
    3f42:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3f45:	00 00                	add    BYTE PTR [rax],al
    3f47:	00 01                	add    BYTE PTR [rcx],al
    3f49:	00 00                	add    BYTE PTR [rax],al
    3f4b:	00 00                	add    BYTE PTR [rax],al
    3f4d:	00 00                	add    BYTE PTR [rax],al
    3f4f:	00 f0                	add    al,dh
    3f51:	ff                   	(bad)
    3f52:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3f55:	00 00                	add    BYTE PTR [rax],al
    3f57:	00 26                	add    BYTE PTR [rsi],ah
    3f59:	05 00 00 00 00       	add    eax,0x0
    3f5e:	00 00                	add    BYTE PTR [rax],al
    3f60:	f9                   	stc
    3f61:	ff                   	(bad)
    3f62:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    3f65:	00 00                	add    BYTE PTR [rax],al
    3f67:	00 03                	add    BYTE PTR [rbx],al
	...

Disassembly of section .got:

0000000000003fc0 <.got>:
	...

Disassembly of section .got.plt:

0000000000003fe8 <_GLOBAL_OFFSET_TABLE_>:
    3fe8:	e0 3d                	loopne 4027 <_end+0x7>
	...
    3ffe:	00 00                	add    BYTE PTR [rax],al
    4000:	36 10 00             	ss adc BYTE PTR [rax],al
    4003:	00 00                	add    BYTE PTR [rax],al
    4005:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .data:

0000000000004008 <__data_start>:
	...

0000000000004010 <__dso_handle>:
    4010:	10 40 00             	adc    BYTE PTR [rax+0x0],al
    4013:	00 00                	add    BYTE PTR [rax],al
    4015:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   5:	28 47 4e             	sub    BYTE PTR [rdi+0x4e],al
   8:	55                   	push   rbp
   9:	29 20                	sub    DWORD PTR [rax],esp
   b:	31 35 2e 32 2e 31    	xor    DWORD PTR [rip+0x312e322e],esi        # 312e323f <_end+0x312df21f>
  11:	20 32                	and    BYTE PTR [rdx],dh
  13:	30 32                	xor    BYTE PTR [rdx],dh
  15:	35 30 38 31 33       	xor    eax,0x33313830
	...
