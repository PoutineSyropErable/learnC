
bomb:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000318 <.interp>:
 318:	2f                   	(bad)
 319:	6c                   	ins    BYTE PTR [rdi],dx
 31a:	69 62 36 34 2f 6c 64 	imul   esp,DWORD PTR [rdx+0x36],0x646c2f34
 321:	2d 6c 69 6e 75       	sub    eax,0x756e696c
 326:	78 2d                	js     355 <_init-0xcab>
 328:	78 38                	js     362 <_init-0xc9e>
 32a:	36 2d 36 34 2e 73    	ss sub eax,0x732e3436
 330:	6f                   	outs   dx,DWORD PTR [rsi]
 331:	2e 32 00             	cs xor al,BYTE PTR [rax]

Disassembly of section .note.gnu.property:

0000000000000338 <.note.gnu.property>:
 338:	04 00                	add    al,0x0
 33a:	00 00                	add    BYTE PTR [rax],al
 33c:	10 00                	adc    BYTE PTR [rax],al
 33e:	00 00                	add    BYTE PTR [rax],al
 340:	05 00 00 00 47       	add    eax,0x47000000
 345:	4e 55                	rex.WRX push rbp
 347:	00 02                	add    BYTE PTR [rdx],al
 349:	00 00                	add    BYTE PTR [rax],al
 34b:	c0 04 00 00          	rol    BYTE PTR [rax+rax*1],0x0
 34f:	00 03                	add    BYTE PTR [rbx],al
 351:	00 00                	add    BYTE PTR [rax],al
 353:	00 00                	add    BYTE PTR [rax],al
 355:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .note.gnu.build-id:

0000000000000358 <.note.gnu.build-id>:
 358:	04 00                	add    al,0x0
 35a:	00 00                	add    BYTE PTR [rax],al
 35c:	14 00                	adc    al,0x0
 35e:	00 00                	add    BYTE PTR [rax],al
 360:	03 00                	add    eax,DWORD PTR [rax]
 362:	00 00                	add    BYTE PTR [rax],al
 364:	47                   	rex.RXB
 365:	4e 55                	rex.WRX push rbp
 367:	00 7d d1             	add    BYTE PTR [rbp-0x2f],bh
 36a:	66 a6                	data16 cmps BYTE PTR [rsi],BYTE PTR [rdi]
 36c:	6a cc                	push   0xffffffffffffffcc
 36e:	e5 2f                	in     eax,0x2f
 370:	c6                   	(bad)
 371:	10 3b                	adc    BYTE PTR [rbx],bh
 373:	bf 61 a0 c3 2b       	mov    edi,0x2bc3a061
 378:	7e 66                	jle    3e0 <_init-0xc20>
 37a:	78 41                	js     3bd <_init-0xc43>

Disassembly of section .note.ABI-tag:

000000000000037c <.note.ABI-tag>:
 37c:	04 00                	add    al,0x0
 37e:	00 00                	add    BYTE PTR [rax],al
 380:	10 00                	adc    BYTE PTR [rax],al
 382:	00 00                	add    BYTE PTR [rax],al
 384:	01 00                	add    DWORD PTR [rax],eax
 386:	00 00                	add    BYTE PTR [rax],al
 388:	47                   	rex.RXB
 389:	4e 55                	rex.WRX push rbp
 38b:	00 00                	add    BYTE PTR [rax],al
 38d:	00 00                	add    BYTE PTR [rax],al
 38f:	00 03                	add    BYTE PTR [rbx],al
 391:	00 00                	add    BYTE PTR [rax],al
 393:	00 02                	add    BYTE PTR [rdx],al
 395:	00 00                	add    BYTE PTR [rax],al
 397:	00 00                	add    BYTE PTR [rax],al
 399:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .gnu.hash:

00000000000003a0 <.gnu.hash>:
 3a0:	03 00                	add    eax,DWORD PTR [rax]
 3a2:	00 00                	add    BYTE PTR [rax],al
 3a4:	1e                   	(bad)
 3a5:	00 00                	add    BYTE PTR [rax],al
 3a7:	00 01                	add    BYTE PTR [rcx],al
 3a9:	00 00                	add    BYTE PTR [rax],al
 3ab:	00 06                	add    BYTE PTR [rsi],al
 3ad:	00 00                	add    BYTE PTR [rax],al
 3af:	00 00                	add    BYTE PTR [rax],al
 3b1:	01 a1 00 80 01 10    	add    DWORD PTR [rcx+0x10018000],esp
 3b7:	02 1e                	add    bl,BYTE PTR [rsi]
 3b9:	00 00                	add    BYTE PTR [rax],al
 3bb:	00 20                	add    BYTE PTR [rax],ah
 3bd:	00 00                	add    BYTE PTR [rax],al
 3bf:	00 00                	add    BYTE PTR [rax],al
 3c1:	00 00                	add    BYTE PTR [rax],al
 3c3:	00 28                	add    BYTE PTR [rax],ch
 3c5:	1d 8c 1c d1 65       	sbb    eax,0x65d11c8c
 3ca:	ce                   	(bad)
 3cb:	6d                   	ins    DWORD PTR [rdi],dx
 3cc:	66 55                	push   bp
 3ce:	61                   	(bad)
 3cf:	10 39                	adc    BYTE PTR [rcx],bh
 3d1:	f2                   	repnz
 3d2:	8b                   	.byte 0x8b
 3d3:	1c                   	.byte 0x1c

Disassembly of section .dynsym:

00000000000003d8 <.dynsym>:
	...
 3f0:	c7 00 00 00 12 00    	mov    DWORD PTR [rax],0x120000
	...
 406:	00 00                	add    BYTE PTR [rax],al
 408:	80 00 00             	add    BYTE PTR [rax],0x0
 40b:	00 12                	add    BYTE PTR [rdx],dl
	...
 41d:	00 00                	add    BYTE PTR [rax],al
 41f:	00 60 01             	add    BYTE PTR [rax+0x1],ah
 422:	00 00                	add    BYTE PTR [rax],al
 424:	20 00                	and    BYTE PTR [rax],al
	...
 436:	00 00                	add    BYTE PTR [rax],al
 438:	19 00                	sbb    DWORD PTR [rax],eax
 43a:	00 00                	add    BYTE PTR [rax],al
 43c:	12 00                	adc    al,BYTE PTR [rax]
	...
 44e:	00 00                	add    BYTE PTR [rax],al
 450:	57                   	push   rdi
 451:	00 00                	add    BYTE PTR [rax],al
 453:	00 12                	add    BYTE PTR [rdx],dl
	...
 465:	00 00                	add    BYTE PTR [rax],al
 467:	00 24 01             	add    BYTE PTR [rcx+rax*1],ah
 46a:	00 00                	add    BYTE PTR [rax],al
 46c:	12 00                	adc    al,BYTE PTR [rax]
	...
 47e:	00 00                	add    BYTE PTR [rax],al
 480:	5c                   	pop    rsp
 481:	00 00                	add    BYTE PTR [rax],al
 483:	00 12                	add    BYTE PTR [rdx],dl
	...
 495:	00 00                	add    BYTE PTR [rax],al
 497:	00 d5                	add    ch,dl
 499:	00 00                	add    BYTE PTR [rax],al
 49b:	00 12                	add    BYTE PTR [rdx],dl
	...
 4ad:	00 00                	add    BYTE PTR [rax],al
 4af:	00 e9                	add    cl,ch
 4b1:	00 00                	add    BYTE PTR [rax],al
 4b3:	00 12                	add    BYTE PTR [rdx],dl
	...
 4c5:	00 00                	add    BYTE PTR [rax],al
 4c7:	00 91 00 00 00 12    	add    BYTE PTR [rcx+0x12000000],dl
	...
 4dd:	00 00                	add    BYTE PTR [rax],al
 4df:	00 12                	add    BYTE PTR [rdx],dl
 4e1:	01 00                	add    DWORD PTR [rax],eax
 4e3:	00 12                	add    BYTE PTR [rdx],dl
	...
 4f5:	00 00                	add    BYTE PTR [rax],al
 4f7:	00 7a 00             	add    BYTE PTR [rdx+0x0],bh
 4fa:	00 00                	add    BYTE PTR [rax],al
 4fc:	12 00                	adc    al,BYTE PTR [rax]
	...
 50e:	00 00                	add    BYTE PTR [rax],al
 510:	50                   	push   rax
 511:	00 00                	add    BYTE PTR [rax],al
 513:	00 12                	add    BYTE PTR [rdx],dl
	...
 525:	00 00                	add    BYTE PTR [rax],al
 527:	00 db                	add    bl,bl
 529:	00 00                	add    BYTE PTR [rax],al
 52b:	00 12                	add    BYTE PTR [rdx],dl
	...
 53d:	00 00                	add    BYTE PTR [rax],al
 53f:	00 ab 00 00 00 12    	add    BYTE PTR [rbx+0x12000000],ch
	...
 555:	00 00                	add    BYTE PTR [rax],al
 557:	00 7c 01 00          	add    BYTE PTR [rcx+rax*1+0x0],bh
 55b:	00 20                	add    BYTE PTR [rax],ah
	...
 56d:	00 00                	add    BYTE PTR [rax],al
 56f:	00 73 00             	add    BYTE PTR [rbx+0x0],dh
 572:	00 00                	add    BYTE PTR [rax],al
 574:	12 00                	adc    al,BYTE PTR [rax]
	...
 586:	00 00                	add    BYTE PTR [rax],al
 588:	12 00                	adc    al,BYTE PTR [rax]
 58a:	00 00                	add    BYTE PTR [rax],al
 58c:	12 00                	adc    al,BYTE PTR [rax]
	...
 59e:	00 00                	add    BYTE PTR [rax],al
 5a0:	38 00                	cmp    BYTE PTR [rax],al
 5a2:	00 00                	add    BYTE PTR [rax],al
 5a4:	12 00                	adc    al,BYTE PTR [rax]
	...
 5b6:	00 00                	add    BYTE PTR [rax],al
 5b8:	20 00                	and    BYTE PTR [rax],al
 5ba:	00 00                	add    BYTE PTR [rax],al
 5bc:	12 00                	adc    al,BYTE PTR [rax]
	...
 5ce:	00 00                	add    BYTE PTR [rax],al
 5d0:	32 00                	xor    al,BYTE PTR [rax]
 5d2:	00 00                	add    BYTE PTR [rax],al
 5d4:	12 00                	adc    al,BYTE PTR [rax]
	...
 5e6:	00 00                	add    BYTE PTR [rax],al
 5e8:	2d 00 00 00 12       	sub    eax,0x12000000
	...
 5fd:	00 00                	add    BYTE PTR [rax],al
 5ff:	00 48 00             	add    BYTE PTR [rax+0x0],cl
 602:	00 00                	add    BYTE PTR [rax],al
 604:	12 00                	adc    al,BYTE PTR [rax]
	...
 616:	00 00                	add    BYTE PTR [rax],al
 618:	96                   	xchg   esi,eax
 619:	00 00                	add    BYTE PTR [rax],al
 61b:	00 12                	add    BYTE PTR [rdx],dl
	...
 62d:	00 00                	add    BYTE PTR [rax],al
 62f:	00 8b 01 00 00 20    	add    BYTE PTR [rbx+0x20000001],cl
	...
 645:	00 00                	add    BYTE PTR [rax],al
 647:	00 ef                	add    bh,ch
 649:	00 00                	add    BYTE PTR [rax],al
 64b:	00 12                	add    BYTE PTR [rdx],dl
	...
 65d:	00 00                	add    BYTE PTR [rax],al
 65f:	00 b9 00 00 00 12    	add    BYTE PTR [rcx+0x12000000],bh
	...
 675:	00 00                	add    BYTE PTR [rax],al
 677:	00 04 01             	add    BYTE PTR [rcx+rax*1],al
 67a:	00 00                	add    BYTE PTR [rax],al
 67c:	12 00                	adc    al,BYTE PTR [rax]
	...
 68e:	00 00                	add    BYTE PTR [rax],al
 690:	0b 00                	or     eax,DWORD PTR [rax]
 692:	00 00                	add    BYTE PTR [rax],al
 694:	12 00                	adc    al,BYTE PTR [rax]
	...
 6a6:	00 00                	add    BYTE PTR [rax],al
 6a8:	a4                   	movs   BYTE PTR [rdi],BYTE PTR [rsi]
 6a9:	00 00                	add    BYTE PTR [rax],al
 6ab:	00 11                	add    BYTE PTR [rcx],dl
 6ad:	00 1a                	add    BYTE PTR [rdx],bl
 6af:	00 60 56             	add    BYTE PTR [rax+0x56],ah
 6b2:	00 00                	add    BYTE PTR [rax],al
 6b4:	00 00                	add    BYTE PTR [rax],al
 6b6:	00 00                	add    BYTE PTR [rax],al
 6b8:	08 00                	or     BYTE PTR [rax],al
 6ba:	00 00                	add    BYTE PTR [rax],al
 6bc:	00 00                	add    BYTE PTR [rax],al
 6be:	00 00                	add    BYTE PTR [rax],al
 6c0:	f5                   	cmc
 6c1:	00 00                	add    BYTE PTR [rax],al
 6c3:	00 22                	add    BYTE PTR [rdx],ah
	...
 6d5:	00 00                	add    BYTE PTR [rax],al
 6d7:	00 6d 00             	add    BYTE PTR [rbp+0x0],ch
 6da:	00 00                	add    BYTE PTR [rax],al
 6dc:	11 00                	adc    DWORD PTR [rax],eax
 6de:	1a 00                	sbb    al,BYTE PTR [rax]
 6e0:	70 56                	jo     738 <_init-0x8c8>
 6e2:	00 00                	add    BYTE PTR [rax],al
 6e4:	00 00                	add    BYTE PTR [rax],al
 6e6:	00 00                	add    BYTE PTR [rax],al
 6e8:	08 00                	or     BYTE PTR [rax],al
 6ea:	00 00                	add    BYTE PTR [rax],al
 6ec:	00 00                	add    BYTE PTR [rax],al
 6ee:	00 00                	add    BYTE PTR [rax],al
 6f0:	ce                   	(bad)
 6f1:	00 00                	add    BYTE PTR [rax],al
 6f3:	00 11                	add    BYTE PTR [rcx],dl
 6f5:	00 1a                	add    BYTE PTR [rdx],bl
 6f7:	00 80 56 00 00 00    	add    BYTE PTR [rax+0x56],al
 6fd:	00 00                	add    BYTE PTR [rax],al
 6ff:	00 08                	add    BYTE PTR [rax],cl
 701:	00 00                	add    BYTE PTR [rax],al
 703:	00 00                	add    BYTE PTR [rax],al
 705:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynstr:

0000000000000708 <.dynstr>:
 708:	00 6c 69 62          	add    BYTE PTR [rcx+rbp*2+0x62],ch
 70c:	63 2e                	movsxd ebp,DWORD PTR [rsi]
 70e:	73 6f                	jae    77f <_init-0x881>
 710:	2e 36 00 73 6f       	cs ss add BYTE PTR [rbx+0x6f],dh
 715:	63 6b 65             	movsxd ebp,DWORD PTR [rbx+0x65]
 718:	74 00                	je     71a <_init-0x8e6>
 71a:	66 66 6c             	data16 data16 ins BYTE PTR [rdi],dx
 71d:	75 73                	jne    792 <_init-0x86e>
 71f:	68 00 73 74 72       	push   0x72747300
 724:	63 70 79             	movsxd esi,DWORD PTR [rax+0x79]
 727:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 72a:	70 72                	jo     79e <_init-0x862>
 72c:	69 6e 74 66 5f 63 68 	imul   ebp,DWORD PTR [rsi+0x74],0x68635f66
 733:	6b 00 65             	imul   eax,DWORD PTR [rax],0x65
 736:	78 69                	js     7a1 <_init-0x85f>
 738:	74 00                	je     73a <_init-0x8c6>
 73a:	66 6f                	outs   dx,WORD PTR [rsi]
 73c:	70 65                	jo     7a3 <_init-0x85d>
 73e:	6e                   	outs   dx,BYTE PTR [rsi]
 73f:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 742:	69 73 6f 63 39 39 5f 	imul   esi,DWORD PTR [rbx+0x6f],0x5f393963
 749:	73 73                	jae    7be <_init-0x842>
 74b:	63 61 6e             	movsxd esp,DWORD PTR [rcx+0x6e]
 74e:	66 00 63 6f          	data16 add BYTE PTR [rbx+0x6f],ah
 752:	6e                   	outs   dx,BYTE PTR [rsi]
 753:	6e                   	outs   dx,BYTE PTR [rsi]
 754:	65 63 74 00 73       	movsxd esi,DWORD PTR gs:[rax+rax*1+0x73]
 759:	69 67 6e 61 6c 00 70 	imul   esp,DWORD PTR [rdi+0x6e],0x70006c61
 760:	75 74                	jne    7d6 <_init-0x82a>
 762:	73 00                	jae    764 <_init-0x89c>
 764:	5f                   	pop    rdi
 765:	5f                   	pop    rdi
 766:	73 74                	jae    7dc <_init-0x824>
 768:	61                   	(bad)
 769:	63 6b 5f             	movsxd ebp,DWORD PTR [rbx+0x5f]
 76c:	63 68 6b             	movsxd ebp,DWORD PTR [rax+0x6b]
 76f:	5f                   	pop    rdi
 770:	66 61                	data16 (bad)
 772:	69 6c 00 73 74 64 69 	imul   ebp,DWORD PTR [rax+rax*1+0x73],0x6e696474
 779:	6e 
 77a:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
 77d:	72 74                	jb     7f3 <_init-0x80d>
 77f:	6f                   	outs   dx,DWORD PTR [rsi]
 780:	6c                   	ins    BYTE PTR [rdi],dx
 781:	00 66 67             	add    BYTE PTR [rsi+0x67],ah
 784:	65 74 73             	gs je  7fa <_init-0x806>
 787:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 78a:	65 72 72             	gs jb  7ff <_init-0x801>
 78d:	6e                   	outs   dx,BYTE PTR [rsi]
 78e:	6f                   	outs   dx,DWORD PTR [rsi]
 78f:	5f                   	pop    rdi
 790:	6c                   	ins    BYTE PTR [rdi],dx
 791:	6f                   	outs   dx,DWORD PTR [rsi]
 792:	63 61 74             	movsxd esp,DWORD PTR [rcx+0x74]
 795:	69 6f 6e 00 72 65 61 	imul   ebp,DWORD PTR [rdi+0x6e],0x61657200
 79c:	64 00 5f 5f          	add    BYTE PTR fs:[rdi+0x5f],bl
 7a0:	66 70 72             	data16 jo 815 <_init-0x7eb>
 7a3:	69 6e 74 66 5f 63 68 	imul   ebp,DWORD PTR [rsi+0x74],0x68635f66
 7aa:	6b 00 73             	imul   eax,DWORD PTR [rax],0x73
 7ad:	74 64                	je     813 <_init-0x7ed>
 7af:	6f                   	outs   dx,DWORD PTR [rsi]
 7b0:	75 74                	jne    826 <_init-0x7da>
 7b2:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 7b5:	6d                   	ins    DWORD PTR [rdi],dx
 7b6:	65 6d                	gs ins DWORD PTR [rdi],dx
 7b8:	6d                   	ins    DWORD PTR [rdi],dx
 7b9:	6f                   	outs   dx,DWORD PTR [rsi]
 7ba:	76 65                	jbe    821 <_init-0x7df>
 7bc:	5f                   	pop    rdi
 7bd:	63 68 6b             	movsxd ebp,DWORD PTR [rax+0x6b]
 7c0:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 7c3:	63 74 79 70          	movsxd esi,DWORD PTR [rcx+rdi*2+0x70]
 7c7:	65 5f                	gs pop rdi
 7c9:	62 5f 6c 6f 63       	(bad)
 7ce:	00 67 65             	add    BYTE PTR [rdi+0x65],ah
 7d1:	74 65                	je     838 <_init-0x7c8>
 7d3:	6e                   	outs   dx,BYTE PTR [rsi]
 7d4:	76 00                	jbe    7d6 <_init-0x82a>
 7d6:	73 74                	jae    84c <_init-0x7b4>
 7d8:	64 65 72 72          	fs gs jb 84e <_init-0x7b2>
 7dc:	00 61 6c             	add    BYTE PTR [rcx+0x6c],ah
 7df:	61                   	(bad)
 7e0:	72 6d                	jb     84f <_init-0x7b1>
 7e2:	00 67 65             	add    BYTE PTR [rdi+0x65],ah
 7e5:	74 68                	je     84f <_init-0x7b1>
 7e7:	6f                   	outs   dx,DWORD PTR [rsi]
 7e8:	73 74                	jae    85e <_init-0x7a2>
 7ea:	62 79 6e 61 6d       	(bad)
 7ef:	65 00 63 6c          	add    BYTE PTR gs:[rbx+0x6c],ah
 7f3:	6f                   	outs   dx,DWORD PTR [rsi]
 7f4:	73 65                	jae    85b <_init-0x7a5>
 7f6:	00 73 6c             	add    BYTE PTR [rbx+0x6c],dh
 7f9:	65 65 70 00          	gs gs jo 7fd <_init-0x803>
 7fd:	5f                   	pop    rdi
 7fe:	5f                   	pop    rdi
 7ff:	63 78 61             	movsxd edi,DWORD PTR [rax+0x61]
 802:	5f                   	pop    rdi
 803:	66 69 6e 61 6c 69    	imul   bp,WORD PTR [rsi+0x61],0x696c
 809:	7a 65                	jp     870 <_init-0x790>
 80b:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 80e:	73 70                	jae    880 <_init-0x780>
 810:	72 69                	jb     87b <_init-0x785>
 812:	6e                   	outs   dx,BYTE PTR [rsi]
 813:	74 66                	je     87b <_init-0x785>
 815:	5f                   	pop    rdi
 816:	63 68 6b             	movsxd ebp,DWORD PTR [rax+0x6b]
 819:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 81c:	6c                   	ins    BYTE PTR [rdi],dx
 81d:	69 62 63 5f 73 74 61 	imul   esp,DWORD PTR [rdx+0x63],0x6174735f
 824:	72 74                	jb     89a <_init-0x766>
 826:	5f                   	pop    rdi
 827:	6d                   	ins    DWORD PTR [rdi],dx
 828:	61                   	(bad)
 829:	69 6e 00 77 72 69 74 	imul   ebp,DWORD PTR [rsi+0x0],0x74697277
 830:	65 00 47 4c          	add    BYTE PTR gs:[rdi+0x4c],al
 834:	49                   	rex.WB
 835:	42                   	rex.X
 836:	43 5f                	rex.XB pop r15
 838:	32 2e                	xor    ch,BYTE PTR [rsi]
 83a:	33 00                	xor    eax,DWORD PTR [rax]
 83c:	47                   	rex.RXB
 83d:	4c                   	rex.WR
 83e:	49                   	rex.WB
 83f:	42                   	rex.X
 840:	43 5f                	rex.XB pop r15
 842:	32 2e                	xor    ch,BYTE PTR [rsi]
 844:	37                   	(bad)
 845:	00 47 4c             	add    BYTE PTR [rdi+0x4c],al
 848:	49                   	rex.WB
 849:	42                   	rex.X
 84a:	43 5f                	rex.XB pop r15
 84c:	32 2e                	xor    ch,BYTE PTR [rsi]
 84e:	33 2e                	xor    ebp,DWORD PTR [rsi]
 850:	34 00                	xor    al,0x0
 852:	47                   	rex.RXB
 853:	4c                   	rex.WR
 854:	49                   	rex.WB
 855:	42                   	rex.X
 856:	43 5f                	rex.XB pop r15
 858:	32 2e                	xor    ch,BYTE PTR [rsi]
 85a:	34 00                	xor    al,0x0
 85c:	47                   	rex.RXB
 85d:	4c                   	rex.WR
 85e:	49                   	rex.WB
 85f:	42                   	rex.X
 860:	43 5f                	rex.XB pop r15
 862:	32 2e                	xor    ch,BYTE PTR [rsi]
 864:	32 2e                	xor    ch,BYTE PTR [rsi]
 866:	35 00 5f 49 54       	xor    eax,0x54495f00
 86b:	4d 5f                	rex.WRB pop r15
 86d:	64 65 72 65          	fs gs jb 8d6 <_init-0x72a>
 871:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 878:	4d 
 879:	43 6c                	rex.XB ins BYTE PTR [rdi],dx
 87b:	6f                   	outs   dx,DWORD PTR [rsi]
 87c:	6e                   	outs   dx,BYTE PTR [rsi]
 87d:	65 54                	gs push rsp
 87f:	61                   	(bad)
 880:	62 6c 65 00 5f       	(bad)
 885:	5f                   	pop    rdi
 886:	67 6d                	ins    DWORD PTR [edi],dx
 888:	6f                   	outs   dx,DWORD PTR [rsi]
 889:	6e                   	outs   dx,BYTE PTR [rsi]
 88a:	5f                   	pop    rdi
 88b:	73 74                	jae    901 <_init-0x6ff>
 88d:	61                   	(bad)
 88e:	72 74                	jb     904 <_init-0x6fc>
 890:	5f                   	pop    rdi
 891:	5f                   	pop    rdi
 892:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 895:	54                   	push   rsp
 896:	4d 5f                	rex.WRB pop r15
 898:	72 65                	jb     8ff <_init-0x701>
 89a:	67 69 73 74 65 72 54 	imul   esi,DWORD PTR [ebx+0x74],0x4d547265
 8a1:	4d 
 8a2:	43 6c                	rex.XB ins BYTE PTR [rdi],dx
 8a4:	6f                   	outs   dx,DWORD PTR [rsi]
 8a5:	6e                   	outs   dx,BYTE PTR [rsi]
 8a6:	65 54                	gs push rsp
 8a8:	61                   	(bad)
 8a9:	62                   	.byte 0x62
 8aa:	6c                   	ins    BYTE PTR [rdi],dx
 8ab:	65                   	gs
	...

Disassembly of section .gnu.version:

00000000000008ae <.gnu.version>:
 8ae:	00 00                	add    BYTE PTR [rax],al
 8b0:	02 00                	add    al,BYTE PTR [rax]
 8b2:	02 00                	add    al,BYTE PTR [rax]
 8b4:	00 00                	add    BYTE PTR [rax],al
 8b6:	02 00                	add    al,BYTE PTR [rax]
 8b8:	02 00                	add    al,BYTE PTR [rax]
 8ba:	02 00                	add    al,BYTE PTR [rax]
 8bc:	03 00                	add    eax,DWORD PTR [rax]
 8be:	02 00                	add    al,BYTE PTR [rax]
 8c0:	02 00                	add    al,BYTE PTR [rax]
 8c2:	02 00                	add    al,BYTE PTR [rax]
 8c4:	02 00                	add    al,BYTE PTR [rax]
 8c6:	02 00                	add    al,BYTE PTR [rax]
 8c8:	02 00                	add    al,BYTE PTR [rax]
 8ca:	02 00                	add    al,BYTE PTR [rax]
 8cc:	04 00                	add    al,0x0
 8ce:	00 00                	add    BYTE PTR [rax],al
 8d0:	02 00                	add    al,BYTE PTR [rax]
 8d2:	02 00                	add    al,BYTE PTR [rax]
 8d4:	05 00 04 00 02       	add    eax,0x2000400
 8d9:	00 02                	add    BYTE PTR [rdx],al
 8db:	00 02                	add    BYTE PTR [rdx],al
 8dd:	00 04 00             	add    BYTE PTR [rax+rax*1],al
 8e0:	00 00                	add    BYTE PTR [rax],al
 8e2:	02 00                	add    al,BYTE PTR [rax]
 8e4:	06                   	(bad)
 8e5:	00 04 00             	add    BYTE PTR [rax+rax*1],al
 8e8:	02 00                	add    al,BYTE PTR [rax]
 8ea:	02 00                	add    al,BYTE PTR [rax]
 8ec:	02 00                	add    al,BYTE PTR [rax]
 8ee:	02 00                	add    al,BYTE PTR [rax]
 8f0:	02 00                	add    al,BYTE PTR [rax]

Disassembly of section .gnu.version_r:

00000000000008f8 <.gnu.version_r>:
 8f8:	01 00                	add    DWORD PTR [rax],eax
 8fa:	05 00 01 00 00       	add    eax,0x100
 8ff:	00 10                	add    BYTE PTR [rax],dl
 901:	00 00                	add    BYTE PTR [rax],al
 903:	00 00                	add    BYTE PTR [rax],al
 905:	00 00                	add    BYTE PTR [rax],al
 907:	00 13                	add    BYTE PTR [rbx],dl
 909:	69 69 0d 00 00 06 00 	imul   ebp,DWORD PTR [rcx+0xd],0x60000
 910:	2a 01                	sub    al,BYTE PTR [rcx]
 912:	00 00                	add    BYTE PTR [rax],al
 914:	10 00                	adc    BYTE PTR [rax],al
 916:	00 00                	add    BYTE PTR [rax],al
 918:	17                   	(bad)
 919:	69 69 0d 00 00 05 00 	imul   ebp,DWORD PTR [rcx+0xd],0x50000
 920:	34 01                	xor    al,0x1
 922:	00 00                	add    BYTE PTR [rax],al
 924:	10 00                	adc    BYTE PTR [rax],al
 926:	00 00                	add    BYTE PTR [rax],al
 928:	74 19                	je     943 <_init-0x6bd>
 92a:	69 09 00 00 04 00    	imul   ecx,DWORD PTR [rcx],0x40000
 930:	3e 01 00             	ds add DWORD PTR [rax],eax
 933:	00 10                	add    BYTE PTR [rax],dl
 935:	00 00                	add    BYTE PTR [rax],al
 937:	00 14 69             	add    BYTE PTR [rcx+rbp*2],dl
 93a:	69 0d 00 00 03 00 4a 	imul   ecx,DWORD PTR [rip+0x30000],0x14a        # 30944 <_end+0x2ac14>
 941:	01 00 00 
 944:	10 00                	adc    BYTE PTR [rax],al
 946:	00 00                	add    BYTE PTR [rax],al
 948:	75 1a                	jne    964 <_init-0x69c>
 94a:	69 09 00 00 02 00    	imul   ecx,DWORD PTR [rcx],0x20000
 950:	54                   	push   rsp
 951:	01 00                	add    DWORD PTR [rax],eax
 953:	00 00                	add    BYTE PTR [rax],al
 955:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .rela.dyn:

0000000000000958 <.rela.dyn>:
 958:	f8                   	clc
 959:	4c 00 00             	rex.WR add BYTE PTR [rax],r8b
 95c:	00 00                	add    BYTE PTR [rax],al
 95e:	00 00                	add    BYTE PTR [rax],al
 960:	08 00                	or     BYTE PTR [rax],al
 962:	00 00                	add    BYTE PTR [rax],al
 964:	00 00                	add    BYTE PTR [rax],al
 966:	00 00                	add    BYTE PTR [rax],al
 968:	40 14 00             	rex adc al,0x0
 96b:	00 00                	add    BYTE PTR [rax],al
 96d:	00 00                	add    BYTE PTR [rax],al
 96f:	00 00                	add    BYTE PTR [rax],al
 971:	4d 00 00             	rex.WRB add BYTE PTR [r8],r8b
 974:	00 00                	add    BYTE PTR [rax],al
 976:	00 00                	add    BYTE PTR [rax],al
 978:	08 00                	or     BYTE PTR [rax],al
 97a:	00 00                	add    BYTE PTR [rax],al
 97c:	00 00                	add    BYTE PTR [rax],al
 97e:	00 00                	add    BYTE PTR [rax],al
 980:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
 983:	00 00                	add    BYTE PTR [rax],al
 985:	00 00                	add    BYTE PTR [rax],al
 987:	00 08                	add    BYTE PTR [rax],cl
 989:	50                   	push   rax
 98a:	00 00                	add    BYTE PTR [rax],al
 98c:	00 00                	add    BYTE PTR [rax],al
 98e:	00 00                	add    BYTE PTR [rax],al
 990:	08 00                	or     BYTE PTR [rax],al
 992:	00 00                	add    BYTE PTR [rax],al
 994:	00 00                	add    BYTE PTR [rax],al
 996:	00 00                	add    BYTE PTR [rax],al
 998:	08 50 00             	or     BYTE PTR [rax+0x0],dl
 99b:	00 00                	add    BYTE PTR [rax],al
 99d:	00 00                	add    BYTE PTR [rax],al
 99f:	00 28                	add    BYTE PTR [rax],ch
 9a1:	51                   	push   rcx
 9a2:	00 00                	add    BYTE PTR [rax],al
 9a4:	00 00                	add    BYTE PTR [rax],al
 9a6:	00 00                	add    BYTE PTR [rax],al
 9a8:	08 00                	or     BYTE PTR [rax],al
 9aa:	00 00                	add    BYTE PTR [rax],al
 9ac:	00 00                	add    BYTE PTR [rax],al
 9ae:	00 00                	add    BYTE PTR [rax],al
 9b0:	40 51                	rex push rcx
 9b2:	00 00                	add    BYTE PTR [rax],al
 9b4:	00 00                	add    BYTE PTR [rax],al
 9b6:	00 00                	add    BYTE PTR [rax],al
 9b8:	30 51 00             	xor    BYTE PTR [rcx+0x0],dl
 9bb:	00 00                	add    BYTE PTR [rax],al
 9bd:	00 00                	add    BYTE PTR [rax],al
 9bf:	00 08                	add    BYTE PTR [rax],cl
 9c1:	00 00                	add    BYTE PTR [rax],al
 9c3:	00 00                	add    BYTE PTR [rax],al
 9c5:	00 00                	add    BYTE PTR [rax],al
 9c7:	00 60 51             	add    BYTE PTR [rax+0x51],ah
 9ca:	00 00                	add    BYTE PTR [rax],al
 9cc:	00 00                	add    BYTE PTR [rax],al
 9ce:	00 00                	add    BYTE PTR [rax],al
 9d0:	48 51                	rex.W push rcx
 9d2:	00 00                	add    BYTE PTR [rax],al
 9d4:	00 00                	add    BYTE PTR [rax],al
 9d6:	00 00                	add    BYTE PTR [rax],al
 9d8:	08 00                	or     BYTE PTR [rax],al
 9da:	00 00                	add    BYTE PTR [rax],al
 9dc:	00 00                	add    BYTE PTR [rax],al
 9de:	00 00                	add    BYTE PTR [rax],al
 9e0:	c0 51 00 00          	rcl    BYTE PTR [rcx+0x0],0x0
 9e4:	00 00                	add    BYTE PTR [rax],al
 9e6:	00 00                	add    BYTE PTR [rax],al
 9e8:	50                   	push   rax
 9e9:	51                   	push   rcx
 9ea:	00 00                	add    BYTE PTR [rax],al
 9ec:	00 00                	add    BYTE PTR [rax],al
 9ee:	00 00                	add    BYTE PTR [rax],al
 9f0:	08 00                	or     BYTE PTR [rax],al
 9f2:	00 00                	add    BYTE PTR [rax],al
 9f4:	00 00                	add    BYTE PTR [rax],al
 9f6:	00 00                	add    BYTE PTR [rax],al
 9f8:	80 51 00 00          	adc    BYTE PTR [rcx+0x0],0x0
 9fc:	00 00                	add    BYTE PTR [rax],al
 9fe:	00 00                	add    BYTE PTR [rax],al
 a00:	68 51 00 00 00       	push   0x51
 a05:	00 00                	add    BYTE PTR [rax],al
 a07:	00 08                	add    BYTE PTR [rax],cl
 a09:	00 00                	add    BYTE PTR [rax],al
 a0b:	00 00                	add    BYTE PTR [rax],al
 a0d:	00 00                	add    BYTE PTR [rax],al
 a0f:	00 a0 51 00 00 00    	add    BYTE PTR [rax+0x51],ah
 a15:	00 00                	add    BYTE PTR [rax],al
 a17:	00 70 51             	add    BYTE PTR [rax+0x51],dh
 a1a:	00 00                	add    BYTE PTR [rax],al
 a1c:	00 00                	add    BYTE PTR [rax],al
 a1e:	00 00                	add    BYTE PTR [rax],al
 a20:	08 00                	or     BYTE PTR [rax],al
 a22:	00 00                	add    BYTE PTR [rax],al
 a24:	00 00                	add    BYTE PTR [rax],al
 a26:	00 00                	add    BYTE PTR [rax],al
 a28:	e0 51                	loopne a7b <_init-0x585>
 a2a:	00 00                	add    BYTE PTR [rax],al
 a2c:	00 00                	add    BYTE PTR [rax],al
 a2e:	00 00                	add    BYTE PTR [rax],al
 a30:	88 51 00             	mov    BYTE PTR [rcx+0x0],dl
 a33:	00 00                	add    BYTE PTR [rax],al
 a35:	00 00                	add    BYTE PTR [rax],al
 a37:	00 08                	add    BYTE PTR [rax],cl
 a39:	00 00                	add    BYTE PTR [rax],al
 a3b:	00 00                	add    BYTE PTR [rax],al
 a3d:	00 00                	add    BYTE PTR [rax],al
 a3f:	00 b0 50 00 00 00    	add    BYTE PTR [rax+0x50],dh
 a45:	00 00                	add    BYTE PTR [rax],al
 a47:	00 90 51 00 00 00    	add    BYTE PTR [rax+0x51],dl
 a4d:	00 00                	add    BYTE PTR [rax],al
 a4f:	00 08                	add    BYTE PTR [rax],cl
 a51:	00 00                	add    BYTE PTR [rax],al
 a53:	00 00                	add    BYTE PTR [rax],al
 a55:	00 00                	add    BYTE PTR [rax],al
 a57:	00 70 50             	add    BYTE PTR [rax+0x50],dh
 a5a:	00 00                	add    BYTE PTR [rax],al
 a5c:	00 00                	add    BYTE PTR [rax],al
 a5e:	00 00                	add    BYTE PTR [rax],al
 a60:	a8 51                	test   al,0x51
 a62:	00 00                	add    BYTE PTR [rax],al
 a64:	00 00                	add    BYTE PTR [rax],al
 a66:	00 00                	add    BYTE PTR [rax],al
 a68:	08 00                	or     BYTE PTR [rax],al
 a6a:	00 00                	add    BYTE PTR [rax],al
 a6c:	00 00                	add    BYTE PTR [rax],al
 a6e:	00 00                	add    BYTE PTR [rax],al
 a70:	10 50 00             	adc    BYTE PTR [rax+0x0],dl
 a73:	00 00                	add    BYTE PTR [rax],al
 a75:	00 00                	add    BYTE PTR [rax],al
 a77:	00 b0 51 00 00 00    	add    BYTE PTR [rax+0x51],dh
 a7d:	00 00                	add    BYTE PTR [rax],al
 a7f:	00 08                	add    BYTE PTR [rax],cl
 a81:	00 00                	add    BYTE PTR [rax],al
 a83:	00 00                	add    BYTE PTR [rax],al
 a85:	00 00                	add    BYTE PTR [rax],al
 a87:	00 d0                	add    al,dl
 a89:	50                   	push   rax
 a8a:	00 00                	add    BYTE PTR [rax],al
 a8c:	00 00                	add    BYTE PTR [rax],al
 a8e:	00 00                	add    BYTE PTR [rax],al
 a90:	c8 51 00 00          	enter  0x51,0x0
 a94:	00 00                	add    BYTE PTR [rax],al
 a96:	00 00                	add    BYTE PTR [rax],al
 a98:	08 00                	or     BYTE PTR [rax],al
 a9a:	00 00                	add    BYTE PTR [rax],al
 a9c:	00 00                	add    BYTE PTR [rax],al
 a9e:	00 00                	add    BYTE PTR [rax],al
 aa0:	30 50 00             	xor    BYTE PTR [rax+0x0],dl
 aa3:	00 00                	add    BYTE PTR [rax],al
 aa5:	00 00                	add    BYTE PTR [rax],al
 aa7:	00 d0                	add    al,dl
 aa9:	51                   	push   rcx
 aaa:	00 00                	add    BYTE PTR [rax],al
 aac:	00 00                	add    BYTE PTR [rax],al
 aae:	00 00                	add    BYTE PTR [rax],al
 ab0:	08 00                	or     BYTE PTR [rax],al
 ab2:	00 00                	add    BYTE PTR [rax],al
 ab4:	00 00                	add    BYTE PTR [rax],al
 ab6:	00 00                	add    BYTE PTR [rax],al
 ab8:	90                   	nop
 ab9:	50                   	push   rax
 aba:	00 00                	add    BYTE PTR [rax],al
 abc:	00 00                	add    BYTE PTR [rax],al
 abe:	00 00                	add    BYTE PTR [rax],al
 ac0:	e8 51 00 00 00       	call   b16 <_init-0x4ea>
 ac5:	00 00                	add    BYTE PTR [rax],al
 ac7:	00 08                	add    BYTE PTR [rax],cl
 ac9:	00 00                	add    BYTE PTR [rax],al
 acb:	00 00                	add    BYTE PTR [rax],al
 acd:	00 00                	add    BYTE PTR [rax],al
 acf:	00 50 50             	add    BYTE PTR [rax+0x50],dl
 ad2:	00 00                	add    BYTE PTR [rax],al
 ad4:	00 00                	add    BYTE PTR [rax],al
 ad6:	00 00                	add    BYTE PTR [rax],al
 ad8:	f0 51                	lock push rcx
 ada:	00 00                	add    BYTE PTR [rax],al
 adc:	00 00                	add    BYTE PTR [rax],al
 ade:	00 00                	add    BYTE PTR [rax],al
 ae0:	08 00                	or     BYTE PTR [rax],al
 ae2:	00 00                	add    BYTE PTR [rax],al
 ae4:	00 00                	add    BYTE PTR [rax],al
 ae6:	00 00                	add    BYTE PTR [rax],al
 ae8:	f0 50                	lock push rax
 aea:	00 00                	add    BYTE PTR [rax],al
 aec:	00 00                	add    BYTE PTR [rax],al
 aee:	00 00                	add    BYTE PTR [rax],al
 af0:	08 52 00             	or     BYTE PTR [rdx+0x0],dl
 af3:	00 00                	add    BYTE PTR [rax],al
 af5:	00 00                	add    BYTE PTR [rax],al
 af7:	00 08                	add    BYTE PTR [rax],cl
 af9:	00 00                	add    BYTE PTR [rax],al
 afb:	00 00                	add    BYTE PTR [rax],al
 afd:	00 00                	add    BYTE PTR [rax],al
 aff:	00 10                	add    BYTE PTR [rax],dl
 b01:	52                   	push   rdx
 b02:	00 00                	add    BYTE PTR [rax],al
 b04:	00 00                	add    BYTE PTR [rax],al
 b06:	00 00                	add    BYTE PTR [rax],al
 b08:	18 52 00             	sbb    BYTE PTR [rdx+0x0],dl
 b0b:	00 00                	add    BYTE PTR [rax],al
 b0d:	00 00                	add    BYTE PTR [rax],al
 b0f:	00 08                	add    BYTE PTR [rax],cl
 b11:	00 00                	add    BYTE PTR [rax],al
 b13:	00 00                	add    BYTE PTR [rax],al
 b15:	00 00                	add    BYTE PTR [rax],al
 b17:	00 20                	add    BYTE PTR [rax],ah
 b19:	52                   	push   rdx
 b1a:	00 00                	add    BYTE PTR [rax],al
 b1c:	00 00                	add    BYTE PTR [rax],al
 b1e:	00 00                	add    BYTE PTR [rax],al
 b20:	28 52 00             	sub    BYTE PTR [rdx+0x0],dl
 b23:	00 00                	add    BYTE PTR [rax],al
 b25:	00 00                	add    BYTE PTR [rax],al
 b27:	00 08                	add    BYTE PTR [rax],cl
 b29:	00 00                	add    BYTE PTR [rax],al
 b2b:	00 00                	add    BYTE PTR [rax],al
 b2d:	00 00                	add    BYTE PTR [rax],al
 b2f:	00 30                	add    BYTE PTR [rax],dh
 b31:	52                   	push   rdx
 b32:	00 00                	add    BYTE PTR [rax],al
 b34:	00 00                	add    BYTE PTR [rax],al
 b36:	00 00                	add    BYTE PTR [rax],al
 b38:	38 52 00             	cmp    BYTE PTR [rdx+0x0],dl
 b3b:	00 00                	add    BYTE PTR [rax],al
 b3d:	00 00                	add    BYTE PTR [rax],al
 b3f:	00 08                	add    BYTE PTR [rax],cl
 b41:	00 00                	add    BYTE PTR [rax],al
 b43:	00 00                	add    BYTE PTR [rax],al
 b45:	00 00                	add    BYTE PTR [rax],al
 b47:	00 40 52             	add    BYTE PTR [rax+0x52],al
 b4a:	00 00                	add    BYTE PTR [rax],al
 b4c:	00 00                	add    BYTE PTR [rax],al
 b4e:	00 00                	add    BYTE PTR [rax],al
 b50:	48 52                	rex.W push rdx
 b52:	00 00                	add    BYTE PTR [rax],al
 b54:	00 00                	add    BYTE PTR [rax],al
 b56:	00 00                	add    BYTE PTR [rax],al
 b58:	08 00                	or     BYTE PTR [rax],al
 b5a:	00 00                	add    BYTE PTR [rax],al
 b5c:	00 00                	add    BYTE PTR [rax],al
 b5e:	00 00                	add    BYTE PTR [rax],al
 b60:	10 51 00             	adc    BYTE PTR [rcx+0x0],dl
 b63:	00 00                	add    BYTE PTR [rax],al
 b65:	00 00                	add    BYTE PTR [rax],al
 b67:	00 60 52             	add    BYTE PTR [rax+0x52],ah
 b6a:	00 00                	add    BYTE PTR [rax],al
 b6c:	00 00                	add    BYTE PTR [rax],al
 b6e:	00 00                	add    BYTE PTR [rax],al
 b70:	08 00                	or     BYTE PTR [rax],al
 b72:	00 00                	add    BYTE PTR [rax],al
 b74:	00 00                	add    BYTE PTR [rax],al
 b76:	00 00                	add    BYTE PTR [rax],al
 b78:	69 33 00 00 00 00    	imul   esi,DWORD PTR [rbx],0x0
 b7e:	00 00                	add    BYTE PTR [rax],al
 b80:	68 52 00 00 00       	push   0x52
 b85:	00 00                	add    BYTE PTR [rax],al
 b87:	00 08                	add    BYTE PTR [rax],cl
 b89:	00 00                	add    BYTE PTR [rax],al
 b8b:	00 00                	add    BYTE PTR [rax],al
 b8d:	00 00                	add    BYTE PTR [rax],al
 b8f:	00 83 33 00 00 00    	add    BYTE PTR [rbx+0x33],al
 b95:	00 00                	add    BYTE PTR [rax],al
 b97:	00 70 52             	add    BYTE PTR [rax+0x52],dh
 b9a:	00 00                	add    BYTE PTR [rax],al
 b9c:	00 00                	add    BYTE PTR [rax],al
 b9e:	00 00                	add    BYTE PTR [rax],al
 ba0:	08 00                	or     BYTE PTR [rax],al
 ba2:	00 00                	add    BYTE PTR [rax],al
 ba4:	00 00                	add    BYTE PTR [rax],al
 ba6:	00 00                	add    BYTE PTR [rax],al
 ba8:	9d                   	popf
 ba9:	33 00                	xor    eax,DWORD PTR [rax]
 bab:	00 00                	add    BYTE PTR [rax],al
 bad:	00 00                	add    BYTE PTR [rax],al
 baf:	00 d8                	add    al,bl
 bb1:	4f 00 00             	rex.WRXB add BYTE PTR [r8],r8b
 bb4:	00 00                	add    BYTE PTR [rax],al
 bb6:	00 00                	add    BYTE PTR [rax],al
 bb8:	06                   	(bad)
 bb9:	00 00                	add    BYTE PTR [rax],al
 bbb:	00 03                	add    BYTE PTR [rbx],al
	...
 bc5:	00 00                	add    BYTE PTR [rax],al
 bc7:	00 e0                	add    al,ah
 bc9:	4f 00 00             	rex.WRXB add BYTE PTR [r8],r8b
 bcc:	00 00                	add    BYTE PTR [rax],al
 bce:	00 00                	add    BYTE PTR [rax],al
 bd0:	06                   	(bad)
 bd1:	00 00                	add    BYTE PTR [rax],al
 bd3:	00 0b                	add    BYTE PTR [rbx],cl
	...
 bdd:	00 00                	add    BYTE PTR [rax],al
 bdf:	00 e8                	add    al,ch
 be1:	4f 00 00             	rex.WRXB add BYTE PTR [r8],r8b
 be4:	00 00                	add    BYTE PTR [rax],al
 be6:	00 00                	add    BYTE PTR [rax],al
 be8:	06                   	(bad)
 be9:	00 00                	add    BYTE PTR [rax],al
 beb:	00 10                	add    BYTE PTR [rax],dl
	...
 bf5:	00 00                	add    BYTE PTR [rax],al
 bf7:	00 f0                	add    al,dh
 bf9:	4f 00 00             	rex.WRXB add BYTE PTR [r8],r8b
 bfc:	00 00                	add    BYTE PTR [rax],al
 bfe:	00 00                	add    BYTE PTR [rax],al
 c00:	06                   	(bad)
 c01:	00 00                	add    BYTE PTR [rax],al
 c03:	00 19                	add    BYTE PTR [rcx],bl
	...
 c0d:	00 00                	add    BYTE PTR [rax],al
 c0f:	00 f8                	add    al,bh
 c11:	4f 00 00             	rex.WRXB add BYTE PTR [r8],r8b
 c14:	00 00                	add    BYTE PTR [rax],al
 c16:	00 00                	add    BYTE PTR [rax],al
 c18:	06                   	(bad)
 c19:	00 00                	add    BYTE PTR [rax],al
 c1b:	00 1f                	add    BYTE PTR [rdi],bl
	...
 c25:	00 00                	add    BYTE PTR [rax],al
 c27:	00 60 56             	add    BYTE PTR [rax+0x56],ah
 c2a:	00 00                	add    BYTE PTR [rax],al
 c2c:	00 00                	add    BYTE PTR [rax],al
 c2e:	00 00                	add    BYTE PTR [rax],al
 c30:	05 00 00 00 1e       	add    eax,0x1e000000
	...
 c3d:	00 00                	add    BYTE PTR [rax],al
 c3f:	00 70 56             	add    BYTE PTR [rax+0x56],dh
 c42:	00 00                	add    BYTE PTR [rax],al
 c44:	00 00                	add    BYTE PTR [rax],al
 c46:	00 00                	add    BYTE PTR [rax],al
 c48:	05 00 00 00 20       	add    eax,0x20000000
	...
 c55:	00 00                	add    BYTE PTR [rax],al
 c57:	00 80 56 00 00 00    	add    BYTE PTR [rax+0x56],al
 c5d:	00 00                	add    BYTE PTR [rax],al
 c5f:	00 05 00 00 00 21    	add    BYTE PTR [rip+0x21000000],al        # 21000c65 <_end+0x20ffaf35>
	...

Disassembly of section .rela.plt:

0000000000000c70 <.rela.plt>:
 c70:	10 4f 00             	adc    BYTE PTR [rdi+0x0],cl
 c73:	00 00                	add    BYTE PTR [rax],al
 c75:	00 00                	add    BYTE PTR [rax],al
 c77:	00 07                	add    BYTE PTR [rdi],al
 c79:	00 00                	add    BYTE PTR [rax],al
 c7b:	00 01                	add    BYTE PTR [rcx],al
	...
 c85:	00 00                	add    BYTE PTR [rax],al
 c87:	00 18                	add    BYTE PTR [rax],bl
 c89:	4f 00 00             	rex.WRXB add BYTE PTR [r8],r8b
 c8c:	00 00                	add    BYTE PTR [rax],al
 c8e:	00 00                	add    BYTE PTR [rax],al
 c90:	07                   	(bad)
 c91:	00 00                	add    BYTE PTR [rax],al
 c93:	00 02                	add    BYTE PTR [rdx],al
	...
 c9d:	00 00                	add    BYTE PTR [rax],al
 c9f:	00 20                	add    BYTE PTR [rax],ah
 ca1:	4f 00 00             	rex.WRXB add BYTE PTR [r8],r8b
 ca4:	00 00                	add    BYTE PTR [rax],al
 ca6:	00 00                	add    BYTE PTR [rax],al
 ca8:	07                   	(bad)
 ca9:	00 00                	add    BYTE PTR [rax],al
 cab:	00 04 00             	add    BYTE PTR [rax+rax*1],al
	...
 cb6:	00 00                	add    BYTE PTR [rax],al
 cb8:	28 4f 00             	sub    BYTE PTR [rdi+0x0],cl
 cbb:	00 00                	add    BYTE PTR [rax],al
 cbd:	00 00                	add    BYTE PTR [rax],al
 cbf:	00 07                	add    BYTE PTR [rdi],al
 cc1:	00 00                	add    BYTE PTR [rax],al
 cc3:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # cc9 <_init-0x337>
 cc9:	00 00                	add    BYTE PTR [rax],al
 ccb:	00 00                	add    BYTE PTR [rax],al
 ccd:	00 00                	add    BYTE PTR [rax],al
 ccf:	00 30                	add    BYTE PTR [rax],dh
 cd1:	4f 00 00             	rex.WRXB add BYTE PTR [r8],r8b
 cd4:	00 00                	add    BYTE PTR [rax],al
 cd6:	00 00                	add    BYTE PTR [rax],al
 cd8:	07                   	(bad)
 cd9:	00 00                	add    BYTE PTR [rax],al
 cdb:	00 06                	add    BYTE PTR [rsi],al
	...
 ce5:	00 00                	add    BYTE PTR [rax],al
 ce7:	00 38                	add    BYTE PTR [rax],bh
 ce9:	4f 00 00             	rex.WRXB add BYTE PTR [r8],r8b
 cec:	00 00                	add    BYTE PTR [rax],al
 cee:	00 00                	add    BYTE PTR [rax],al
 cf0:	07                   	(bad)
 cf1:	00 00                	add    BYTE PTR [rax],al
 cf3:	00 07                	add    BYTE PTR [rdi],al
	...
 cfd:	00 00                	add    BYTE PTR [rax],al
 cff:	00 40 4f             	add    BYTE PTR [rax+0x4f],al
 d02:	00 00                	add    BYTE PTR [rax],al
 d04:	00 00                	add    BYTE PTR [rax],al
 d06:	00 00                	add    BYTE PTR [rax],al
 d08:	07                   	(bad)
 d09:	00 00                	add    BYTE PTR [rax],al
 d0b:	00 08                	add    BYTE PTR [rax],cl
	...
 d15:	00 00                	add    BYTE PTR [rax],al
 d17:	00 48 4f             	add    BYTE PTR [rax+0x4f],cl
 d1a:	00 00                	add    BYTE PTR [rax],al
 d1c:	00 00                	add    BYTE PTR [rax],al
 d1e:	00 00                	add    BYTE PTR [rax],al
 d20:	07                   	(bad)
 d21:	00 00                	add    BYTE PTR [rax],al
 d23:	00 09                	add    BYTE PTR [rcx],cl
	...
 d2d:	00 00                	add    BYTE PTR [rax],al
 d2f:	00 50 4f             	add    BYTE PTR [rax+0x4f],dl
 d32:	00 00                	add    BYTE PTR [rax],al
 d34:	00 00                	add    BYTE PTR [rax],al
 d36:	00 00                	add    BYTE PTR [rax],al
 d38:	07                   	(bad)
 d39:	00 00                	add    BYTE PTR [rax],al
 d3b:	00 0a                	add    BYTE PTR [rdx],cl
	...
 d45:	00 00                	add    BYTE PTR [rax],al
 d47:	00 58 4f             	add    BYTE PTR [rax+0x4f],bl
 d4a:	00 00                	add    BYTE PTR [rax],al
 d4c:	00 00                	add    BYTE PTR [rax],al
 d4e:	00 00                	add    BYTE PTR [rax],al
 d50:	07                   	(bad)
 d51:	00 00                	add    BYTE PTR [rax],al
 d53:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
	...
 d5e:	00 00                	add    BYTE PTR [rax],al
 d60:	60                   	(bad)
 d61:	4f 00 00             	rex.WRXB add BYTE PTR [r8],r8b
 d64:	00 00                	add    BYTE PTR [rax],al
 d66:	00 00                	add    BYTE PTR [rax],al
 d68:	07                   	(bad)
 d69:	00 00                	add    BYTE PTR [rax],al
 d6b:	00 0d 00 00 00 00    	add    BYTE PTR [rip+0x0],cl        # d71 <_init-0x28f>
 d71:	00 00                	add    BYTE PTR [rax],al
 d73:	00 00                	add    BYTE PTR [rax],al
 d75:	00 00                	add    BYTE PTR [rax],al
 d77:	00 68 4f             	add    BYTE PTR [rax+0x4f],ch
 d7a:	00 00                	add    BYTE PTR [rax],al
 d7c:	00 00                	add    BYTE PTR [rax],al
 d7e:	00 00                	add    BYTE PTR [rax],al
 d80:	07                   	(bad)
 d81:	00 00                	add    BYTE PTR [rax],al
 d83:	00 0e                	add    BYTE PTR [rsi],cl
	...
 d8d:	00 00                	add    BYTE PTR [rax],al
 d8f:	00 70 4f             	add    BYTE PTR [rax+0x4f],dh
 d92:	00 00                	add    BYTE PTR [rax],al
 d94:	00 00                	add    BYTE PTR [rax],al
 d96:	00 00                	add    BYTE PTR [rax],al
 d98:	07                   	(bad)
 d99:	00 00                	add    BYTE PTR [rax],al
 d9b:	00 0f                	add    BYTE PTR [rdi],cl
	...
 da5:	00 00                	add    BYTE PTR [rax],al
 da7:	00 78 4f             	add    BYTE PTR [rax+0x4f],bh
 daa:	00 00                	add    BYTE PTR [rax],al
 dac:	00 00                	add    BYTE PTR [rax],al
 dae:	00 00                	add    BYTE PTR [rax],al
 db0:	07                   	(bad)
 db1:	00 00                	add    BYTE PTR [rax],al
 db3:	00 11                	add    BYTE PTR [rcx],dl
	...
 dbd:	00 00                	add    BYTE PTR [rax],al
 dbf:	00 80 4f 00 00 00    	add    BYTE PTR [rax+0x4f],al
 dc5:	00 00                	add    BYTE PTR [rax],al
 dc7:	00 07                	add    BYTE PTR [rdi],al
 dc9:	00 00                	add    BYTE PTR [rax],al
 dcb:	00 12                	add    BYTE PTR [rdx],dl
	...
 dd5:	00 00                	add    BYTE PTR [rax],al
 dd7:	00 88 4f 00 00 00    	add    BYTE PTR [rax+0x4f],cl
 ddd:	00 00                	add    BYTE PTR [rax],al
 ddf:	00 07                	add    BYTE PTR [rdi],al
 de1:	00 00                	add    BYTE PTR [rax],al
 de3:	00 13                	add    BYTE PTR [rbx],dl
	...
 ded:	00 00                	add    BYTE PTR [rax],al
 def:	00 90 4f 00 00 00    	add    BYTE PTR [rax+0x4f],dl
 df5:	00 00                	add    BYTE PTR [rax],al
 df7:	00 07                	add    BYTE PTR [rdi],al
 df9:	00 00                	add    BYTE PTR [rax],al
 dfb:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
	...
 e06:	00 00                	add    BYTE PTR [rax],al
 e08:	98                   	cwde
 e09:	4f 00 00             	rex.WRXB add BYTE PTR [r8],r8b
 e0c:	00 00                	add    BYTE PTR [rax],al
 e0e:	00 00                	add    BYTE PTR [rax],al
 e10:	07                   	(bad)
 e11:	00 00                	add    BYTE PTR [rax],al
 e13:	00 15 00 00 00 00    	add    BYTE PTR [rip+0x0],dl        # e19 <_init-0x1e7>
 e19:	00 00                	add    BYTE PTR [rax],al
 e1b:	00 00                	add    BYTE PTR [rax],al
 e1d:	00 00                	add    BYTE PTR [rax],al
 e1f:	00 a0 4f 00 00 00    	add    BYTE PTR [rax+0x4f],ah
 e25:	00 00                	add    BYTE PTR [rax],al
 e27:	00 07                	add    BYTE PTR [rdi],al
 e29:	00 00                	add    BYTE PTR [rax],al
 e2b:	00 16                	add    BYTE PTR [rsi],dl
	...
 e35:	00 00                	add    BYTE PTR [rax],al
 e37:	00 a8 4f 00 00 00    	add    BYTE PTR [rax+0x4f],ch
 e3d:	00 00                	add    BYTE PTR [rax],al
 e3f:	00 07                	add    BYTE PTR [rdi],al
 e41:	00 00                	add    BYTE PTR [rax],al
 e43:	00 17                	add    BYTE PTR [rdi],dl
	...
 e4d:	00 00                	add    BYTE PTR [rax],al
 e4f:	00 b0 4f 00 00 00    	add    BYTE PTR [rax+0x4f],dh
 e55:	00 00                	add    BYTE PTR [rax],al
 e57:	00 07                	add    BYTE PTR [rdi],al
 e59:	00 00                	add    BYTE PTR [rax],al
 e5b:	00 18                	add    BYTE PTR [rax],bl
	...
 e65:	00 00                	add    BYTE PTR [rax],al
 e67:	00 b8 4f 00 00 00    	add    BYTE PTR [rax+0x4f],bh
 e6d:	00 00                	add    BYTE PTR [rax],al
 e6f:	00 07                	add    BYTE PTR [rdi],al
 e71:	00 00                	add    BYTE PTR [rax],al
 e73:	00 1a                	add    BYTE PTR [rdx],bl
	...
 e7d:	00 00                	add    BYTE PTR [rax],al
 e7f:	00 c0                	add    al,al
 e81:	4f 00 00             	rex.WRXB add BYTE PTR [r8],r8b
 e84:	00 00                	add    BYTE PTR [rax],al
 e86:	00 00                	add    BYTE PTR [rax],al
 e88:	07                   	(bad)
 e89:	00 00                	add    BYTE PTR [rax],al
 e8b:	00 1b                	add    BYTE PTR [rbx],bl
	...
 e95:	00 00                	add    BYTE PTR [rax],al
 e97:	00 c8                	add    al,cl
 e99:	4f 00 00             	rex.WRXB add BYTE PTR [r8],r8b
 e9c:	00 00                	add    BYTE PTR [rax],al
 e9e:	00 00                	add    BYTE PTR [rax],al
 ea0:	07                   	(bad)
 ea1:	00 00                	add    BYTE PTR [rax],al
 ea3:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
	...
 eae:	00 00                	add    BYTE PTR [rax],al
 eb0:	d0 4f 00             	ror    BYTE PTR [rdi+0x0],1
 eb3:	00 00                	add    BYTE PTR [rax],al
 eb5:	00 00                	add    BYTE PTR [rax],al
 eb7:	00 07                	add    BYTE PTR [rdi],al
 eb9:	00 00                	add    BYTE PTR [rax],al
 ebb:	00 1d 00 00 00 00    	add    BYTE PTR [rip+0x0],bl        # ec1 <_init-0x13f>
 ec1:	00 00                	add    BYTE PTR [rax],al
 ec3:	00 00                	add    BYTE PTR [rax],al
 ec5:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fd9]        # 4fe8 <__gmon_start__>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 da 3e 00 00    	push   QWORD PTR [rip+0x3eda]        # 4f00 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 db 3e 00 00 	bnd jmp QWORD PTR [rip+0x3edb]        # 4f08 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nop    DWORD PTR [rax]
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <.plt>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <.plt>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	68 07 00 00 00       	push   0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <.plt>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	68 08 00 00 00       	push   0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <.plt>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	68 09 00 00 00       	push   0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <.plt>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	68 0a 00 00 00       	push   0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <.plt>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	68 0b 00 00 00       	push   0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <.plt>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	68 0c 00 00 00       	push   0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <.plt>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64
    1104:	68 0d 00 00 00       	push   0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <.plt>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64
    1114:	68 0e 00 00 00       	push   0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <.plt>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64
    1124:	68 0f 00 00 00       	push   0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <.plt>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64
    1134:	68 10 00 00 00       	push   0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <.plt>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64
    1144:	68 11 00 00 00       	push   0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <.plt>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64
    1154:	68 12 00 00 00       	push   0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <.plt>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64
    1164:	68 13 00 00 00       	push   0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <.plt>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64
    1174:	68 14 00 00 00       	push   0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <.plt>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64
    1184:	68 15 00 00 00       	push   0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <.plt>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64
    1194:	68 16 00 00 00       	push   0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <.plt>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64
    11a4:	68 17 00 00 00       	push   0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <.plt>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64
    11b4:	68 18 00 00 00       	push   0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <.plt>
    11bf:	90                   	nop

Disassembly of section .plt.got:

00000000000011c0 <__cxa_finalize@plt>:
    11c0:	f3 0f 1e fa          	endbr64
    11c4:	f2 ff 25 2d 3e 00 00 	bnd jmp QWORD PTR [rip+0x3e2d]        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

00000000000011d0 <getenv@plt>:
    11d0:	f3 0f 1e fa          	endbr64
    11d4:	f2 ff 25 35 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d35]        # 4f10 <getenv@GLIBC_2.2.5>
    11db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000011e0 <__errno_location@plt>:
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	f2 ff 25 2d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d2d]        # 4f18 <__errno_location@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000011f0 <strcpy@plt>:
    11f0:	f3 0f 1e fa          	endbr64
    11f4:	f2 ff 25 25 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d25]        # 4f20 <strcpy@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001200 <puts@plt>:
    1200:	f3 0f 1e fa          	endbr64
    1204:	f2 ff 25 1d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d1d]        # 4f28 <puts@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001210 <write@plt>:
    1210:	f3 0f 1e fa          	endbr64
    1214:	f2 ff 25 15 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d15]        # 4f30 <write@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001220 <__stack_chk_fail@plt>:
    1220:	f3 0f 1e fa          	endbr64
    1224:	f2 ff 25 0d 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d0d]        # 4f38 <__stack_chk_fail@GLIBC_2.4>
    122b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001230 <alarm@plt>:
    1230:	f3 0f 1e fa          	endbr64
    1234:	f2 ff 25 05 3d 00 00 	bnd jmp QWORD PTR [rip+0x3d05]        # 4f40 <alarm@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001240 <close@plt>:
    1240:	f3 0f 1e fa          	endbr64
    1244:	f2 ff 25 fd 3c 00 00 	bnd jmp QWORD PTR [rip+0x3cfd]        # 4f48 <close@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001250 <read@plt>:
    1250:	f3 0f 1e fa          	endbr64
    1254:	f2 ff 25 f5 3c 00 00 	bnd jmp QWORD PTR [rip+0x3cf5]        # 4f50 <read@GLIBC_2.2.5>
    125b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001260 <fgets@plt>:
    1260:	f3 0f 1e fa          	endbr64
    1264:	f2 ff 25 ed 3c 00 00 	bnd jmp QWORD PTR [rip+0x3ced]        # 4f58 <fgets@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001270 <signal@plt>:
    1270:	f3 0f 1e fa          	endbr64
    1274:	f2 ff 25 e5 3c 00 00 	bnd jmp QWORD PTR [rip+0x3ce5]        # 4f60 <signal@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001280 <gethostbyname@plt>:
    1280:	f3 0f 1e fa          	endbr64
    1284:	f2 ff 25 dd 3c 00 00 	bnd jmp QWORD PTR [rip+0x3cdd]        # 4f68 <gethostbyname@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001290 <__memmove_chk@plt>:
    1290:	f3 0f 1e fa          	endbr64
    1294:	f2 ff 25 d5 3c 00 00 	bnd jmp QWORD PTR [rip+0x3cd5]        # 4f70 <__memmove_chk@GLIBC_2.3.4>
    129b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000012a0 <strtol@plt>:
    12a0:	f3 0f 1e fa          	endbr64
    12a4:	f2 ff 25 cd 3c 00 00 	bnd jmp QWORD PTR [rip+0x3ccd]        # 4f78 <strtol@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000012b0 <fflush@plt>:
    12b0:	f3 0f 1e fa          	endbr64
    12b4:	f2 ff 25 c5 3c 00 00 	bnd jmp QWORD PTR [rip+0x3cc5]        # 4f80 <fflush@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000012c0 <__isoc99_sscanf@plt>:
    12c0:	f3 0f 1e fa          	endbr64
    12c4:	f2 ff 25 bd 3c 00 00 	bnd jmp QWORD PTR [rip+0x3cbd]        # 4f88 <__isoc99_sscanf@GLIBC_2.7>
    12cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000012d0 <__printf_chk@plt>:
    12d0:	f3 0f 1e fa          	endbr64
    12d4:	f2 ff 25 b5 3c 00 00 	bnd jmp QWORD PTR [rip+0x3cb5]        # 4f90 <__printf_chk@GLIBC_2.3.4>
    12db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000012e0 <fopen@plt>:
    12e0:	f3 0f 1e fa          	endbr64
    12e4:	f2 ff 25 ad 3c 00 00 	bnd jmp QWORD PTR [rip+0x3cad]        # 4f98 <fopen@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000012f0 <exit@plt>:
    12f0:	f3 0f 1e fa          	endbr64
    12f4:	f2 ff 25 a5 3c 00 00 	bnd jmp QWORD PTR [rip+0x3ca5]        # 4fa0 <exit@GLIBC_2.2.5>
    12fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001300 <connect@plt>:
    1300:	f3 0f 1e fa          	endbr64
    1304:	f2 ff 25 9d 3c 00 00 	bnd jmp QWORD PTR [rip+0x3c9d]        # 4fa8 <connect@GLIBC_2.2.5>
    130b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001310 <__fprintf_chk@plt>:
    1310:	f3 0f 1e fa          	endbr64
    1314:	f2 ff 25 95 3c 00 00 	bnd jmp QWORD PTR [rip+0x3c95]        # 4fb0 <__fprintf_chk@GLIBC_2.3.4>
    131b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001320 <sleep@plt>:
    1320:	f3 0f 1e fa          	endbr64
    1324:	f2 ff 25 8d 3c 00 00 	bnd jmp QWORD PTR [rip+0x3c8d]        # 4fb8 <sleep@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001330 <__ctype_b_loc@plt>:
    1330:	f3 0f 1e fa          	endbr64
    1334:	f2 ff 25 85 3c 00 00 	bnd jmp QWORD PTR [rip+0x3c85]        # 4fc0 <__ctype_b_loc@GLIBC_2.3>
    133b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001340 <__sprintf_chk@plt>:
    1340:	f3 0f 1e fa          	endbr64
    1344:	f2 ff 25 7d 3c 00 00 	bnd jmp QWORD PTR [rip+0x3c7d]        # 4fc8 <__sprintf_chk@GLIBC_2.3.4>
    134b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001350 <socket@plt>:
    1350:	f3 0f 1e fa          	endbr64
    1354:	f2 ff 25 75 3c 00 00 	bnd jmp QWORD PTR [rip+0x3c75]        # 4fd0 <socket@GLIBC_2.2.5>
    135b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001360 <_start>:
    1360:	f3 0f 1e fa          	endbr64
    1364:	31 ed                	xor    ebp,ebp
    1366:	49 89 d1             	mov    r9,rdx
    1369:	5e                   	pop    rsi
    136a:	48 89 e2             	mov    rdx,rsp
    136d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1371:	50                   	push   rax
    1372:	54                   	push   rsp
    1373:	4c 8d 05 06 17 00 00 	lea    r8,[rip+0x1706]        # 2a80 <__libc_csu_fini>
    137a:	48 8d 0d 8f 16 00 00 	lea    rcx,[rip+0x168f]        # 2a10 <__libc_csu_init>
    1381:	48 8d 3d c1 00 00 00 	lea    rdi,[rip+0xc1]        # 1449 <main>
    1388:	ff 15 52 3c 00 00    	call   QWORD PTR [rip+0x3c52]        # 4fe0 <__libc_start_main@GLIBC_2.2.5>
    138e:	f4                   	hlt
    138f:	90                   	nop

0000000000001390 <deregister_tm_clones>:
    1390:	48 8d 3d c9 42 00 00 	lea    rdi,[rip+0x42c9]        # 5660 <stdout@GLIBC_2.2.5>
    1397:	48 8d 05 c2 42 00 00 	lea    rax,[rip+0x42c2]        # 5660 <stdout@GLIBC_2.2.5>
    139e:	48 39 f8             	cmp    rax,rdi
    13a1:	74 15                	je     13b8 <deregister_tm_clones+0x28>
    13a3:	48 8b 05 2e 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c2e]        # 4fd8 <_ITM_deregisterTMCloneTable>
    13aa:	48 85 c0             	test   rax,rax
    13ad:	74 09                	je     13b8 <deregister_tm_clones+0x28>
    13af:	ff e0                	jmp    rax
    13b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    13b8:	c3                   	ret
    13b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000013c0 <register_tm_clones>:
    13c0:	48 8d 3d 99 42 00 00 	lea    rdi,[rip+0x4299]        # 5660 <stdout@GLIBC_2.2.5>
    13c7:	48 8d 35 92 42 00 00 	lea    rsi,[rip+0x4292]        # 5660 <stdout@GLIBC_2.2.5>
    13ce:	48 29 fe             	sub    rsi,rdi
    13d1:	48 89 f0             	mov    rax,rsi
    13d4:	48 c1 ee 3f          	shr    rsi,0x3f
    13d8:	48 c1 f8 03          	sar    rax,0x3
    13dc:	48 01 c6             	add    rsi,rax
    13df:	48 d1 fe             	sar    rsi,1
    13e2:	74 14                	je     13f8 <register_tm_clones+0x38>
    13e4:	48 8b 05 05 3c 00 00 	mov    rax,QWORD PTR [rip+0x3c05]        # 4ff0 <_ITM_registerTMCloneTable>
    13eb:	48 85 c0             	test   rax,rax
    13ee:	74 08                	je     13f8 <register_tm_clones+0x38>
    13f0:	ff e0                	jmp    rax
    13f2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    13f8:	c3                   	ret
    13f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001400 <__do_global_dtors_aux>:
    1400:	f3 0f 1e fa          	endbr64
    1404:	80 3d 7d 42 00 00 00 	cmp    BYTE PTR [rip+0x427d],0x0        # 5688 <completed.8060>
    140b:	75 2b                	jne    1438 <__do_global_dtors_aux+0x38>
    140d:	55                   	push   rbp
    140e:	48 83 3d e2 3b 00 00 	cmp    QWORD PTR [rip+0x3be2],0x0        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1415:	00 
    1416:	48 89 e5             	mov    rbp,rsp
    1419:	74 0c                	je     1427 <__do_global_dtors_aux+0x27>
    141b:	48 8b 3d e6 3b 00 00 	mov    rdi,QWORD PTR [rip+0x3be6]        # 5008 <__dso_handle>
    1422:	e8 99 fd ff ff       	call   11c0 <__cxa_finalize@plt>
    1427:	e8 64 ff ff ff       	call   1390 <deregister_tm_clones>
    142c:	c6 05 55 42 00 00 01 	mov    BYTE PTR [rip+0x4255],0x1        # 5688 <completed.8060>
    1433:	5d                   	pop    rbp
    1434:	c3                   	ret
    1435:	0f 1f 00             	nop    DWORD PTR [rax]
    1438:	c3                   	ret
    1439:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001440 <frame_dummy>:
    1440:	f3 0f 1e fa          	endbr64
    1444:	e9 77 ff ff ff       	jmp    13c0 <register_tm_clones>

0000000000001449 <main>:
    1449:	f3 0f 1e fa          	endbr64
    144d:	53                   	push   rbx
    144e:	83 ff 01             	cmp    edi,0x1
    1451:	0f 84 f8 00 00 00    	je     154f <main+0x106>
    1457:	48 89 f3             	mov    rbx,rsi
    145a:	83 ff 02             	cmp    edi,0x2
    145d:	0f 85 21 01 00 00    	jne    1584 <main+0x13b>
    1463:	48 8b 7e 08          	mov    rdi,QWORD PTR [rsi+0x8]
    1467:	48 8d 35 96 1b 00 00 	lea    rsi,[rip+0x1b96]        # 3004 <_IO_stdin_used+0x4>
    146e:	e8 6d fe ff ff       	call   12e0 <fopen@plt>
    1473:	48 89 05 1e 42 00 00 	mov    QWORD PTR [rip+0x421e],rax        # 5698 <infile>
    147a:	48 85 c0             	test   rax,rax
    147d:	0f 84 df 00 00 00    	je     1562 <main+0x119>
    1483:	e8 a9 06 00 00       	call   1b31 <initialize_bomb>
    1488:	48 8d 3d f9 1b 00 00 	lea    rdi,[rip+0x1bf9]        # 3088 <_IO_stdin_used+0x88>
    148f:	e8 6c fd ff ff       	call   1200 <puts@plt>
    1494:	48 8d 3d 2d 1c 00 00 	lea    rdi,[rip+0x1c2d]        # 30c8 <_IO_stdin_used+0xc8>
    149b:	e8 60 fd ff ff       	call   1200 <puts@plt>
    14a0:	e8 b1 07 00 00       	call   1c56 <read_line>
    14a5:	48 89 c7             	mov    rdi,rax
    14a8:	e8 fa 00 00 00       	call   15a7 <phase_1>
    14ad:	e8 ec 08 00 00       	call   1d9e <phase_defused>
    14b2:	48 8d 3d 3f 1c 00 00 	lea    rdi,[rip+0x1c3f]        # 30f8 <_IO_stdin_used+0xf8>
    14b9:	e8 42 fd ff ff       	call   1200 <puts@plt>
    14be:	e8 93 07 00 00       	call   1c56 <read_line>
    14c3:	48 89 c7             	mov    rdi,rax
    14c6:	e8 00 01 00 00       	call   15cb <phase_2>
    14cb:	e8 ce 08 00 00       	call   1d9e <phase_defused>
    14d0:	48 8d 3d 66 1b 00 00 	lea    rdi,[rip+0x1b66]        # 303d <_IO_stdin_used+0x3d>
    14d7:	e8 24 fd ff ff       	call   1200 <puts@plt>
    14dc:	e8 75 07 00 00       	call   1c56 <read_line>
    14e1:	48 89 c7             	mov    rdi,rax
    14e4:	e8 50 01 00 00       	call   1639 <phase_3>
    14e9:	e8 b0 08 00 00       	call   1d9e <phase_defused>
    14ee:	48 8d 3d 66 1b 00 00 	lea    rdi,[rip+0x1b66]        # 305b <_IO_stdin_used+0x5b>
    14f5:	e8 06 fd ff ff       	call   1200 <puts@plt>
    14fa:	e8 57 07 00 00       	call   1c56 <read_line>
    14ff:	48 89 c7             	mov    rdi,rax
    1502:	e8 44 02 00 00       	call   174b <phase_4>
    1507:	e8 92 08 00 00       	call   1d9e <phase_defused>
    150c:	48 8d 3d 15 1c 00 00 	lea    rdi,[rip+0x1c15]        # 3128 <_IO_stdin_used+0x128>
    1513:	e8 e8 fc ff ff       	call   1200 <puts@plt>
    1518:	e8 39 07 00 00       	call   1c56 <read_line>
    151d:	48 89 c7             	mov    rdi,rax
    1520:	e8 9f 02 00 00       	call   17c4 <phase_5>
    1525:	e8 74 08 00 00       	call   1d9e <phase_defused>
    152a:	48 8d 3d 39 1b 00 00 	lea    rdi,[rip+0x1b39]        # 306a <_IO_stdin_used+0x6a>
    1531:	e8 ca fc ff ff       	call   1200 <puts@plt>
    1536:	e8 1b 07 00 00       	call   1c56 <read_line>
    153b:	48 89 c7             	mov    rdi,rax
    153e:	e8 18 03 00 00       	call   185b <phase_6>
    1543:	e8 56 08 00 00       	call   1d9e <phase_defused>
    1548:	b8 00 00 00 00       	mov    eax,0x0
    154d:	5b                   	pop    rbx
    154e:	c3                   	ret
    154f:	48 8b 05 1a 41 00 00 	mov    rax,QWORD PTR [rip+0x411a]        # 5670 <stdin@GLIBC_2.2.5>
    1556:	48 89 05 3b 41 00 00 	mov    QWORD PTR [rip+0x413b],rax        # 5698 <infile>
    155d:	e9 21 ff ff ff       	jmp    1483 <main+0x3a>
    1562:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
    1566:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
    1569:	48 8d 35 96 1a 00 00 	lea    rsi,[rip+0x1a96]        # 3006 <_IO_stdin_used+0x6>
    1570:	bf 01 00 00 00       	mov    edi,0x1
    1575:	e8 56 fd ff ff       	call   12d0 <__printf_chk@plt>
    157a:	bf 08 00 00 00       	mov    edi,0x8
    157f:	e8 6c fd ff ff       	call   12f0 <exit@plt>
    1584:	48 8b 16             	mov    rdx,QWORD PTR [rsi]
    1587:	48 8d 35 95 1a 00 00 	lea    rsi,[rip+0x1a95]        # 3023 <_IO_stdin_used+0x23>
    158e:	bf 01 00 00 00       	mov    edi,0x1
    1593:	b8 00 00 00 00       	mov    eax,0x0
    1598:	e8 33 fd ff ff       	call   12d0 <__printf_chk@plt>
    159d:	bf 08 00 00 00       	mov    edi,0x8
    15a2:	e8 49 fd ff ff       	call   12f0 <exit@plt>

00000000000015a7 <phase_1>:
    15a7:	f3 0f 1e fa          	endbr64
    15ab:	48 83 ec 08          	sub    rsp,0x8
    15af:	48 8d 35 9a 1b 00 00 	lea    rsi,[rip+0x1b9a]        # 3150 <_IO_stdin_used+0x150>
    15b6:	e8 16 05 00 00       	call   1ad1 <strings_not_equal>
    15bb:	85 c0                	test   eax,eax
    15bd:	75 05                	jne    15c4 <phase_1+0x1d>
    15bf:	48 83 c4 08          	add    rsp,0x8
    15c3:	c3                   	ret
    15c4:	e8 1c 06 00 00       	call   1be5 <explode_bomb>
    15c9:	eb f4                	jmp    15bf <phase_1+0x18>

00000000000015cb <phase_2>:
    15cb:	f3 0f 1e fa          	endbr64
    15cf:	55                   	push   rbp
    15d0:	53                   	push   rbx
    15d1:	48 83 ec 28          	sub    rsp,0x28
    15d5:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    15dc:	00 00 
    15de:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    15e3:	31 c0                	xor    eax,eax
    15e5:	48 89 e6             	mov    rsi,rsp
    15e8:	e8 24 06 00 00       	call   1c11 <read_six_numbers>
    15ed:	83 3c 24 01          	cmp    DWORD PTR [rsp],0x1
    15f1:	75 0a                	jne    15fd <phase_2+0x32>
    15f3:	48 89 e3             	mov    rbx,rsp
    15f6:	48 8d 6c 24 14       	lea    rbp,[rsp+0x14]
    15fb:	eb 15                	jmp    1612 <phase_2+0x47>
    15fd:	e8 e3 05 00 00       	call   1be5 <explode_bomb>
    1602:	eb ef                	jmp    15f3 <phase_2+0x28>
    1604:	e8 dc 05 00 00       	call   1be5 <explode_bomb>
    1609:	48 83 c3 04          	add    rbx,0x4
    160d:	48 39 eb             	cmp    rbx,rbp
    1610:	74 0b                	je     161d <phase_2+0x52>
    1612:	8b 03                	mov    eax,DWORD PTR [rbx]
    1614:	01 c0                	add    eax,eax
    1616:	39 43 04             	cmp    DWORD PTR [rbx+0x4],eax
    1619:	74 ee                	je     1609 <phase_2+0x3e>
    161b:	eb e7                	jmp    1604 <phase_2+0x39>
    161d:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    1622:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    1629:	00 00 
    162b:	75 07                	jne    1634 <phase_2+0x69>
    162d:	48 83 c4 28          	add    rsp,0x28
    1631:	5b                   	pop    rbx
    1632:	5d                   	pop    rbp
    1633:	c3                   	ret
    1634:	e8 e7 fb ff ff       	call   1220 <__stack_chk_fail@plt>

0000000000001639 <phase_3>:
    1639:	f3 0f 1e fa          	endbr64
    163d:	48 83 ec 18          	sub    rsp,0x18
    1641:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1648:	00 00 
    164a:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    164f:	31 c0                	xor    eax,eax
    1651:	48 8d 4c 24 04       	lea    rcx,[rsp+0x4]
    1656:	48 89 e2             	mov    rdx,rsp
    1659:	48 8d 35 af 1c 00 00 	lea    rsi,[rip+0x1caf]        # 330f <array.3471+0x14f>
    1660:	e8 5b fc ff ff       	call   12c0 <__isoc99_sscanf@plt>
    1665:	83 f8 01             	cmp    eax,0x1
    1668:	7e 1e                	jle    1688 <phase_3+0x4f>
    166a:	83 3c 24 07          	cmp    DWORD PTR [rsp],0x7
    166e:	0f 87 90 00 00 00    	ja     1704 <phase_3+0xcb>
    1674:	8b 04 24             	mov    eax,DWORD PTR [rsp]
    1677:	48 8d 15 22 1b 00 00 	lea    rdx,[rip+0x1b22]        # 31a0 <_IO_stdin_used+0x1a0>
    167e:	48 63 04 82          	movsxd rax,DWORD PTR [rdx+rax*4]
    1682:	48 01 d0             	add    rax,rdx
    1685:	3e ff e0             	notrack jmp rax
    1688:	e8 58 05 00 00       	call   1be5 <explode_bomb>
    168d:	eb db                	jmp    166a <phase_3+0x31>
    168f:	b8 74 02 00 00       	mov    eax,0x274
    1694:	2d 4c 02 00 00       	sub    eax,0x24c
    1699:	05 b0 02 00 00       	add    eax,0x2b0
    169e:	83 e8 7e             	sub    eax,0x7e
    16a1:	83 c0 7e             	add    eax,0x7e
    16a4:	83 e8 7e             	sub    eax,0x7e
    16a7:	83 c0 7e             	add    eax,0x7e
    16aa:	83 e8 7e             	sub    eax,0x7e
    16ad:	83 3c 24 05          	cmp    DWORD PTR [rsp],0x5
    16b1:	7f 06                	jg     16b9 <phase_3+0x80>
    16b3:	39 44 24 04          	cmp    DWORD PTR [rsp+0x4],eax
    16b7:	74 05                	je     16be <phase_3+0x85>
    16b9:	e8 27 05 00 00       	call   1be5 <explode_bomb>
    16be:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    16c3:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    16ca:	00 00 
    16cc:	75 42                	jne    1710 <phase_3+0xd7>
    16ce:	48 83 c4 18          	add    rsp,0x18
    16d2:	c3                   	ret
    16d3:	b8 00 00 00 00       	mov    eax,0x0
    16d8:	eb ba                	jmp    1694 <phase_3+0x5b>
    16da:	b8 00 00 00 00       	mov    eax,0x0
    16df:	eb b8                	jmp    1699 <phase_3+0x60>
    16e1:	b8 00 00 00 00       	mov    eax,0x0
    16e6:	eb b6                	jmp    169e <phase_3+0x65>
    16e8:	b8 00 00 00 00       	mov    eax,0x0
    16ed:	eb b2                	jmp    16a1 <phase_3+0x68>
    16ef:	b8 00 00 00 00       	mov    eax,0x0
    16f4:	eb ae                	jmp    16a4 <phase_3+0x6b>
    16f6:	b8 00 00 00 00       	mov    eax,0x0
    16fb:	eb aa                	jmp    16a7 <phase_3+0x6e>
    16fd:	b8 00 00 00 00       	mov    eax,0x0
    1702:	eb a6                	jmp    16aa <phase_3+0x71>
    1704:	e8 dc 04 00 00       	call   1be5 <explode_bomb>
    1709:	b8 00 00 00 00       	mov    eax,0x0
    170e:	eb 9d                	jmp    16ad <phase_3+0x74>
    1710:	e8 0b fb ff ff       	call   1220 <__stack_chk_fail@plt>

0000000000001715 <func4>:
    1715:	f3 0f 1e fa          	endbr64
    1719:	53                   	push   rbx
    171a:	89 d0                	mov    eax,edx
    171c:	29 f0                	sub    eax,esi
    171e:	89 c3                	mov    ebx,eax
    1720:	c1 eb 1f             	shr    ebx,0x1f
    1723:	01 c3                	add    ebx,eax
    1725:	d1 fb                	sar    ebx,1
    1727:	01 f3                	add    ebx,esi
    1729:	39 fb                	cmp    ebx,edi
    172b:	7f 06                	jg     1733 <func4+0x1e>
    172d:	7c 10                	jl     173f <func4+0x2a>
    172f:	89 d8                	mov    eax,ebx
    1731:	5b                   	pop    rbx
    1732:	c3                   	ret
    1733:	8d 53 ff             	lea    edx,[rbx-0x1]
    1736:	e8 da ff ff ff       	call   1715 <func4>
    173b:	01 c3                	add    ebx,eax
    173d:	eb f0                	jmp    172f <func4+0x1a>
    173f:	8d 73 01             	lea    esi,[rbx+0x1]
    1742:	e8 ce ff ff ff       	call   1715 <func4>
    1747:	01 c3                	add    ebx,eax
    1749:	eb e4                	jmp    172f <func4+0x1a>

000000000000174b <phase_4>:
    174b:	f3 0f 1e fa          	endbr64
    174f:	48 83 ec 18          	sub    rsp,0x18
    1753:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    175a:	00 00 
    175c:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    1761:	31 c0                	xor    eax,eax
    1763:	48 8d 4c 24 04       	lea    rcx,[rsp+0x4]
    1768:	48 89 e2             	mov    rdx,rsp
    176b:	48 8d 35 9d 1b 00 00 	lea    rsi,[rip+0x1b9d]        # 330f <array.3471+0x14f>
    1772:	e8 49 fb ff ff       	call   12c0 <__isoc99_sscanf@plt>
    1777:	83 f8 02             	cmp    eax,0x2
    177a:	75 06                	jne    1782 <phase_4+0x37>
    177c:	83 3c 24 0e          	cmp    DWORD PTR [rsp],0xe
    1780:	76 05                	jbe    1787 <phase_4+0x3c>
    1782:	e8 5e 04 00 00       	call   1be5 <explode_bomb>
    1787:	ba 0e 00 00 00       	mov    edx,0xe
    178c:	be 00 00 00 00       	mov    esi,0x0
    1791:	8b 3c 24             	mov    edi,DWORD PTR [rsp]
    1794:	e8 7c ff ff ff       	call   1715 <func4>
    1799:	83 f8 0a             	cmp    eax,0xa
    179c:	75 07                	jne    17a5 <phase_4+0x5a>
    179e:	83 7c 24 04 0a       	cmp    DWORD PTR [rsp+0x4],0xa
    17a3:	74 05                	je     17aa <phase_4+0x5f>
    17a5:	e8 3b 04 00 00       	call   1be5 <explode_bomb>
    17aa:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    17af:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    17b6:	00 00 
    17b8:	75 05                	jne    17bf <phase_4+0x74>
    17ba:	48 83 c4 18          	add    rsp,0x18
    17be:	c3                   	ret
    17bf:	e8 5c fa ff ff       	call   1220 <__stack_chk_fail@plt>

00000000000017c4 <phase_5>:
    17c4:	f3 0f 1e fa          	endbr64
    17c8:	48 83 ec 18          	sub    rsp,0x18
    17cc:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    17d3:	00 00 
    17d5:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    17da:	31 c0                	xor    eax,eax
    17dc:	48 8d 4c 24 04       	lea    rcx,[rsp+0x4]
    17e1:	48 89 e2             	mov    rdx,rsp
    17e4:	48 8d 35 24 1b 00 00 	lea    rsi,[rip+0x1b24]        # 330f <array.3471+0x14f>
    17eb:	e8 d0 fa ff ff       	call   12c0 <__isoc99_sscanf@plt>
    17f0:	83 f8 01             	cmp    eax,0x1
    17f3:	7e 5a                	jle    184f <phase_5+0x8b>
    17f5:	8b 04 24             	mov    eax,DWORD PTR [rsp]
    17f8:	83 e0 0f             	and    eax,0xf
    17fb:	89 04 24             	mov    DWORD PTR [rsp],eax
    17fe:	83 f8 0f             	cmp    eax,0xf
    1801:	74 32                	je     1835 <phase_5+0x71>
    1803:	b9 00 00 00 00       	mov    ecx,0x0
    1808:	ba 00 00 00 00       	mov    edx,0x0
    180d:	48 8d 35 ac 19 00 00 	lea    rsi,[rip+0x19ac]        # 31c0 <array.3471>
    1814:	83 c2 01             	add    edx,0x1
    1817:	48 98                	cdqe
    1819:	8b 04 86             	mov    eax,DWORD PTR [rsi+rax*4]
    181c:	01 c1                	add    ecx,eax
    181e:	83 f8 0f             	cmp    eax,0xf
    1821:	75 f1                	jne    1814 <phase_5+0x50>
    1823:	c7 04 24 0f 00 00 00 	mov    DWORD PTR [rsp],0xf
    182a:	83 fa 0f             	cmp    edx,0xf
    182d:	75 06                	jne    1835 <phase_5+0x71>
    182f:	39 4c 24 04          	cmp    DWORD PTR [rsp+0x4],ecx
    1833:	74 05                	je     183a <phase_5+0x76>
    1835:	e8 ab 03 00 00       	call   1be5 <explode_bomb>
    183a:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    183f:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    1846:	00 00 
    1848:	75 0c                	jne    1856 <phase_5+0x92>
    184a:	48 83 c4 18          	add    rsp,0x18
    184e:	c3                   	ret
    184f:	e8 91 03 00 00       	call   1be5 <explode_bomb>
    1854:	eb 9f                	jmp    17f5 <phase_5+0x31>
    1856:	e8 c5 f9 ff ff       	call   1220 <__stack_chk_fail@plt>

000000000000185b <phase_6>:
    185b:	f3 0f 1e fa          	endbr64
    185f:	41 56                	push   r14
    1861:	41 55                	push   r13
    1863:	41 54                	push   r12
    1865:	55                   	push   rbp
    1866:	53                   	push   rbx
    1867:	48 83 ec 60          	sub    rsp,0x60
    186b:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1872:	00 00 
    1874:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
    1879:	31 c0                	xor    eax,eax
    187b:	49 89 e5             	mov    r13,rsp
    187e:	4c 89 ee             	mov    rsi,r13
    1881:	e8 8b 03 00 00       	call   1c11 <read_six_numbers>
    1886:	41 be 01 00 00 00    	mov    r14d,0x1
    188c:	49 89 e4             	mov    r12,rsp
    188f:	eb 28                	jmp    18b9 <phase_6+0x5e>
    1891:	e8 4f 03 00 00       	call   1be5 <explode_bomb>
    1896:	eb 30                	jmp    18c8 <phase_6+0x6d>
    1898:	48 83 c3 01          	add    rbx,0x1
    189c:	83 fb 05             	cmp    ebx,0x5
    189f:	7f 10                	jg     18b1 <phase_6+0x56>
    18a1:	41 8b 04 9c          	mov    eax,DWORD PTR [r12+rbx*4]
    18a5:	39 45 00             	cmp    DWORD PTR [rbp+0x0],eax
    18a8:	75 ee                	jne    1898 <phase_6+0x3d>
    18aa:	e8 36 03 00 00       	call   1be5 <explode_bomb>
    18af:	eb e7                	jmp    1898 <phase_6+0x3d>
    18b1:	49 83 c6 01          	add    r14,0x1
    18b5:	49 83 c5 04          	add    r13,0x4
    18b9:	4c 89 ed             	mov    rbp,r13
    18bc:	41 8b 45 00          	mov    eax,DWORD PTR [r13+0x0]
    18c0:	83 e8 01             	sub    eax,0x1
    18c3:	83 f8 05             	cmp    eax,0x5
    18c6:	77 c9                	ja     1891 <phase_6+0x36>
    18c8:	41 83 fe 05          	cmp    r14d,0x5
    18cc:	7f 05                	jg     18d3 <phase_6+0x78>
    18ce:	4c 89 f3             	mov    rbx,r14
    18d1:	eb ce                	jmp    18a1 <phase_6+0x46>
    18d3:	be 00 00 00 00       	mov    esi,0x0
    18d8:	8b 0c b4             	mov    ecx,DWORD PTR [rsp+rsi*4]
    18db:	b8 01 00 00 00       	mov    eax,0x1
    18e0:	48 8d 15 19 39 00 00 	lea    rdx,[rip+0x3919]        # 5200 <node1>
    18e7:	83 f9 01             	cmp    ecx,0x1
    18ea:	7e 0b                	jle    18f7 <phase_6+0x9c>
    18ec:	48 8b 52 08          	mov    rdx,QWORD PTR [rdx+0x8]
    18f0:	83 c0 01             	add    eax,0x1
    18f3:	39 c8                	cmp    eax,ecx
    18f5:	75 f5                	jne    18ec <phase_6+0x91>
    18f7:	48 89 54 f4 20       	mov    QWORD PTR [rsp+rsi*8+0x20],rdx
    18fc:	48 83 c6 01          	add    rsi,0x1
    1900:	48 83 fe 06          	cmp    rsi,0x6
    1904:	75 d2                	jne    18d8 <phase_6+0x7d>
    1906:	48 8b 5c 24 20       	mov    rbx,QWORD PTR [rsp+0x20]
    190b:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
    1910:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
    1914:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
    1919:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
    191d:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
    1922:	48 89 42 08          	mov    QWORD PTR [rdx+0x8],rax
    1926:	48 8b 54 24 40       	mov    rdx,QWORD PTR [rsp+0x40]
    192b:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
    192f:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
    1934:	48 89 42 08          	mov    QWORD PTR [rdx+0x8],rax
    1938:	48 c7 40 08 00 00 00 	mov    QWORD PTR [rax+0x8],0x0
    193f:	00 
    1940:	bd 05 00 00 00       	mov    ebp,0x5
    1945:	eb 09                	jmp    1950 <phase_6+0xf5>
    1947:	48 8b 5b 08          	mov    rbx,QWORD PTR [rbx+0x8]
    194b:	83 ed 01             	sub    ebp,0x1
    194e:	74 11                	je     1961 <phase_6+0x106>
    1950:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
    1954:	8b 00                	mov    eax,DWORD PTR [rax]
    1956:	39 03                	cmp    DWORD PTR [rbx],eax
    1958:	7d ed                	jge    1947 <phase_6+0xec>
    195a:	e8 86 02 00 00       	call   1be5 <explode_bomb>
    195f:	eb e6                	jmp    1947 <phase_6+0xec>
    1961:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
    1966:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    196d:	00 00 
    196f:	75 0d                	jne    197e <phase_6+0x123>
    1971:	48 83 c4 60          	add    rsp,0x60
    1975:	5b                   	pop    rbx
    1976:	5d                   	pop    rbp
    1977:	41 5c                	pop    r12
    1979:	41 5d                	pop    r13
    197b:	41 5e                	pop    r14
    197d:	c3                   	ret
    197e:	e8 9d f8 ff ff       	call   1220 <__stack_chk_fail@plt>

0000000000001983 <fun7>:
    1983:	f3 0f 1e fa          	endbr64
    1987:	48 85 ff             	test   rdi,rdi
    198a:	74 32                	je     19be <fun7+0x3b>
    198c:	48 83 ec 08          	sub    rsp,0x8
    1990:	8b 17                	mov    edx,DWORD PTR [rdi]
    1992:	39 f2                	cmp    edx,esi
    1994:	7f 0c                	jg     19a2 <fun7+0x1f>
    1996:	b8 00 00 00 00       	mov    eax,0x0
    199b:	75 12                	jne    19af <fun7+0x2c>
    199d:	48 83 c4 08          	add    rsp,0x8
    19a1:	c3                   	ret
    19a2:	48 8b 7f 08          	mov    rdi,QWORD PTR [rdi+0x8]
    19a6:	e8 d8 ff ff ff       	call   1983 <fun7>
    19ab:	01 c0                	add    eax,eax
    19ad:	eb ee                	jmp    199d <fun7+0x1a>
    19af:	48 8b 7f 10          	mov    rdi,QWORD PTR [rdi+0x10]
    19b3:	e8 cb ff ff ff       	call   1983 <fun7>
    19b8:	8d 44 00 01          	lea    eax,[rax+rax*1+0x1]
    19bc:	eb df                	jmp    199d <fun7+0x1a>
    19be:	b8 ff ff ff ff       	mov    eax,0xffffffff
    19c3:	c3                   	ret

00000000000019c4 <secret_phase>:
    19c4:	f3 0f 1e fa          	endbr64
    19c8:	53                   	push   rbx
    19c9:	e8 88 02 00 00       	call   1c56 <read_line>
    19ce:	48 89 c7             	mov    rdi,rax
    19d1:	ba 0a 00 00 00       	mov    edx,0xa
    19d6:	be 00 00 00 00       	mov    esi,0x0
    19db:	e8 c0 f8 ff ff       	call   12a0 <strtol@plt>
    19e0:	48 89 c3             	mov    rbx,rax
    19e3:	8d 40 ff             	lea    eax,[rax-0x1]
    19e6:	3d e8 03 00 00       	cmp    eax,0x3e8
    19eb:	77 26                	ja     1a13 <secret_phase+0x4f>
    19ed:	89 de                	mov    esi,ebx
    19ef:	48 8d 3d 2a 37 00 00 	lea    rdi,[rip+0x372a]        # 5120 <n1>
    19f6:	e8 88 ff ff ff       	call   1983 <fun7>
    19fb:	83 f8 05             	cmp    eax,0x5
    19fe:	75 1a                	jne    1a1a <secret_phase+0x56>
    1a00:	48 8d 3d 71 17 00 00 	lea    rdi,[rip+0x1771]        # 3178 <_IO_stdin_used+0x178>
    1a07:	e8 f4 f7 ff ff       	call   1200 <puts@plt>
    1a0c:	e8 8d 03 00 00       	call   1d9e <phase_defused>
    1a11:	5b                   	pop    rbx
    1a12:	c3                   	ret
    1a13:	e8 cd 01 00 00       	call   1be5 <explode_bomb>
    1a18:	eb d3                	jmp    19ed <secret_phase+0x29>
    1a1a:	e8 c6 01 00 00       	call   1be5 <explode_bomb>
    1a1f:	eb df                	jmp    1a00 <secret_phase+0x3c>

0000000000001a21 <sig_handler>:
    1a21:	f3 0f 1e fa          	endbr64
    1a25:	50                   	push   rax
    1a26:	58                   	pop    rax
    1a27:	48 83 ec 08          	sub    rsp,0x8
    1a2b:	48 8d 3d ce 17 00 00 	lea    rdi,[rip+0x17ce]        # 3200 <array.3471+0x40>
    1a32:	e8 c9 f7 ff ff       	call   1200 <puts@plt>
    1a37:	bf 03 00 00 00       	mov    edi,0x3
    1a3c:	e8 df f8 ff ff       	call   1320 <sleep@plt>
    1a41:	48 8d 35 7a 18 00 00 	lea    rsi,[rip+0x187a]        # 32c2 <array.3471+0x102>
    1a48:	bf 01 00 00 00       	mov    edi,0x1
    1a4d:	b8 00 00 00 00       	mov    eax,0x0
    1a52:	e8 79 f8 ff ff       	call   12d0 <__printf_chk@plt>
    1a57:	48 8b 3d 02 3c 00 00 	mov    rdi,QWORD PTR [rip+0x3c02]        # 5660 <stdout@GLIBC_2.2.5>
    1a5e:	e8 4d f8 ff ff       	call   12b0 <fflush@plt>
    1a63:	bf 01 00 00 00       	mov    edi,0x1
    1a68:	e8 b3 f8 ff ff       	call   1320 <sleep@plt>
    1a6d:	48 8d 3d 56 18 00 00 	lea    rdi,[rip+0x1856]        # 32ca <array.3471+0x10a>
    1a74:	e8 87 f7 ff ff       	call   1200 <puts@plt>
    1a79:	bf 10 00 00 00       	mov    edi,0x10
    1a7e:	e8 6d f8 ff ff       	call   12f0 <exit@plt>

0000000000001a83 <invalid_phase>:
    1a83:	f3 0f 1e fa          	endbr64
    1a87:	50                   	push   rax
    1a88:	58                   	pop    rax
    1a89:	48 83 ec 08          	sub    rsp,0x8
    1a8d:	48 89 fa             	mov    rdx,rdi
    1a90:	48 8d 35 3b 18 00 00 	lea    rsi,[rip+0x183b]        # 32d2 <array.3471+0x112>
    1a97:	bf 01 00 00 00       	mov    edi,0x1
    1a9c:	b8 00 00 00 00       	mov    eax,0x0
    1aa1:	e8 2a f8 ff ff       	call   12d0 <__printf_chk@plt>
    1aa6:	bf 08 00 00 00       	mov    edi,0x8
    1aab:	e8 40 f8 ff ff       	call   12f0 <exit@plt>

0000000000001ab0 <string_length>:
    1ab0:	f3 0f 1e fa          	endbr64
    1ab4:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
    1ab7:	74 12                	je     1acb <string_length+0x1b>
    1ab9:	b8 00 00 00 00       	mov    eax,0x0
    1abe:	48 83 c7 01          	add    rdi,0x1
    1ac2:	83 c0 01             	add    eax,0x1
    1ac5:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
    1ac8:	75 f4                	jne    1abe <string_length+0xe>
    1aca:	c3                   	ret
    1acb:	b8 00 00 00 00       	mov    eax,0x0
    1ad0:	c3                   	ret

0000000000001ad1 <strings_not_equal>:
    1ad1:	f3 0f 1e fa          	endbr64
    1ad5:	41 54                	push   r12
    1ad7:	55                   	push   rbp
    1ad8:	53                   	push   rbx
    1ad9:	48 89 fb             	mov    rbx,rdi
    1adc:	48 89 f5             	mov    rbp,rsi
    1adf:	e8 cc ff ff ff       	call   1ab0 <string_length>
    1ae4:	41 89 c4             	mov    r12d,eax
    1ae7:	48 89 ef             	mov    rdi,rbp
    1aea:	e8 c1 ff ff ff       	call   1ab0 <string_length>
    1aef:	89 c2                	mov    edx,eax
    1af1:	b8 01 00 00 00       	mov    eax,0x1
    1af6:	41 39 d4             	cmp    r12d,edx
    1af9:	75 31                	jne    1b2c <strings_not_equal+0x5b>
    1afb:	0f b6 13             	movzx  edx,BYTE PTR [rbx]
    1afe:	84 d2                	test   dl,dl
    1b00:	74 1e                	je     1b20 <strings_not_equal+0x4f>
    1b02:	b8 00 00 00 00       	mov    eax,0x0
    1b07:	38 54 05 00          	cmp    BYTE PTR [rbp+rax*1+0x0],dl
    1b0b:	75 1a                	jne    1b27 <strings_not_equal+0x56>
    1b0d:	48 83 c0 01          	add    rax,0x1
    1b11:	0f b6 14 03          	movzx  edx,BYTE PTR [rbx+rax*1]
    1b15:	84 d2                	test   dl,dl
    1b17:	75 ee                	jne    1b07 <strings_not_equal+0x36>
    1b19:	b8 00 00 00 00       	mov    eax,0x0
    1b1e:	eb 0c                	jmp    1b2c <strings_not_equal+0x5b>
    1b20:	b8 00 00 00 00       	mov    eax,0x0
    1b25:	eb 05                	jmp    1b2c <strings_not_equal+0x5b>
    1b27:	b8 01 00 00 00       	mov    eax,0x1
    1b2c:	5b                   	pop    rbx
    1b2d:	5d                   	pop    rbp
    1b2e:	41 5c                	pop    r12
    1b30:	c3                   	ret

0000000000001b31 <initialize_bomb>:
    1b31:	f3 0f 1e fa          	endbr64
    1b35:	48 83 ec 08          	sub    rsp,0x8
    1b39:	48 8d 35 e1 fe ff ff 	lea    rsi,[rip+0xfffffffffffffee1]        # 1a21 <sig_handler>
    1b40:	bf 02 00 00 00       	mov    edi,0x2
    1b45:	e8 26 f7 ff ff       	call   1270 <signal@plt>
    1b4a:	48 83 c4 08          	add    rsp,0x8
    1b4e:	c3                   	ret

0000000000001b4f <initialize_bomb_solve>:
    1b4f:	f3 0f 1e fa          	endbr64
    1b53:	c3                   	ret

0000000000001b54 <blank_line>:
    1b54:	f3 0f 1e fa          	endbr64
    1b58:	55                   	push   rbp
    1b59:	53                   	push   rbx
    1b5a:	48 83 ec 08          	sub    rsp,0x8
    1b5e:	48 89 fd             	mov    rbp,rdi
    1b61:	0f b6 5d 00          	movzx  ebx,BYTE PTR [rbp+0x0]
    1b65:	84 db                	test   bl,bl
    1b67:	74 1e                	je     1b87 <blank_line+0x33>
    1b69:	e8 c2 f7 ff ff       	call   1330 <__ctype_b_loc@plt>
    1b6e:	48 83 c5 01          	add    rbp,0x1
    1b72:	48 0f be db          	movsx  rbx,bl
    1b76:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1b79:	f6 44 58 01 20       	test   BYTE PTR [rax+rbx*2+0x1],0x20
    1b7e:	75 e1                	jne    1b61 <blank_line+0xd>
    1b80:	b8 00 00 00 00       	mov    eax,0x0
    1b85:	eb 05                	jmp    1b8c <blank_line+0x38>
    1b87:	b8 01 00 00 00       	mov    eax,0x1
    1b8c:	48 83 c4 08          	add    rsp,0x8
    1b90:	5b                   	pop    rbx
    1b91:	5d                   	pop    rbp
    1b92:	c3                   	ret

0000000000001b93 <skip>:
    1b93:	f3 0f 1e fa          	endbr64
    1b97:	55                   	push   rbp
    1b98:	53                   	push   rbx
    1b99:	48 83 ec 08          	sub    rsp,0x8
    1b9d:	48 8d 2d fc 3a 00 00 	lea    rbp,[rip+0x3afc]        # 56a0 <input_strings>
    1ba4:	48 63 05 e5 3a 00 00 	movsxd rax,DWORD PTR [rip+0x3ae5]        # 5690 <num_input_strings>
    1bab:	48 8d 3c 80          	lea    rdi,[rax+rax*4]
    1baf:	48 c1 e7 04          	shl    rdi,0x4
    1bb3:	48 01 ef             	add    rdi,rbp
    1bb6:	48 8b 15 db 3a 00 00 	mov    rdx,QWORD PTR [rip+0x3adb]        # 5698 <infile>
    1bbd:	be 50 00 00 00       	mov    esi,0x50
    1bc2:	e8 99 f6 ff ff       	call   1260 <fgets@plt>
    1bc7:	48 89 c3             	mov    rbx,rax
    1bca:	48 85 c0             	test   rax,rax
    1bcd:	74 0c                	je     1bdb <skip+0x48>
    1bcf:	48 89 c7             	mov    rdi,rax
    1bd2:	e8 7d ff ff ff       	call   1b54 <blank_line>
    1bd7:	85 c0                	test   eax,eax
    1bd9:	75 c9                	jne    1ba4 <skip+0x11>
    1bdb:	48 89 d8             	mov    rax,rbx
    1bde:	48 83 c4 08          	add    rsp,0x8
    1be2:	5b                   	pop    rbx
    1be3:	5d                   	pop    rbp
    1be4:	c3                   	ret

0000000000001be5 <explode_bomb>:
    1be5:	f3 0f 1e fa          	endbr64
    1be9:	50                   	push   rax
    1bea:	58                   	pop    rax
    1beb:	48 83 ec 08          	sub    rsp,0x8
    1bef:	48 8d 3d ed 16 00 00 	lea    rdi,[rip+0x16ed]        # 32e3 <array.3471+0x123>
    1bf6:	e8 05 f6 ff ff       	call   1200 <puts@plt>
    1bfb:	48 8d 3d ea 16 00 00 	lea    rdi,[rip+0x16ea]        # 32ec <array.3471+0x12c>
    1c02:	e8 f9 f5 ff ff       	call   1200 <puts@plt>
    1c07:	bf 08 00 00 00       	mov    edi,0x8
    1c0c:	e8 df f6 ff ff       	call   12f0 <exit@plt>

0000000000001c11 <read_six_numbers>:
    1c11:	f3 0f 1e fa          	endbr64
    1c15:	48 83 ec 08          	sub    rsp,0x8
    1c19:	48 89 f2             	mov    rdx,rsi
    1c1c:	48 8d 4e 04          	lea    rcx,[rsi+0x4]
    1c20:	48 8d 46 14          	lea    rax,[rsi+0x14]
    1c24:	50                   	push   rax
    1c25:	48 8d 46 10          	lea    rax,[rsi+0x10]
    1c29:	50                   	push   rax
    1c2a:	4c 8d 4e 0c          	lea    r9,[rsi+0xc]
    1c2e:	4c 8d 46 08          	lea    r8,[rsi+0x8]
    1c32:	48 8d 35 ca 16 00 00 	lea    rsi,[rip+0x16ca]        # 3303 <array.3471+0x143>
    1c39:	b8 00 00 00 00       	mov    eax,0x0
    1c3e:	e8 7d f6 ff ff       	call   12c0 <__isoc99_sscanf@plt>
    1c43:	48 83 c4 10          	add    rsp,0x10
    1c47:	83 f8 05             	cmp    eax,0x5
    1c4a:	7e 05                	jle    1c51 <read_six_numbers+0x40>
    1c4c:	48 83 c4 08          	add    rsp,0x8
    1c50:	c3                   	ret
    1c51:	e8 8f ff ff ff       	call   1be5 <explode_bomb>

0000000000001c56 <read_line>:
    1c56:	f3 0f 1e fa          	endbr64
    1c5a:	48 83 ec 08          	sub    rsp,0x8
    1c5e:	b8 00 00 00 00       	mov    eax,0x0
    1c63:	e8 2b ff ff ff       	call   1b93 <skip>
    1c68:	48 85 c0             	test   rax,rax
    1c6b:	74 6f                	je     1cdc <read_line+0x86>
    1c6d:	8b 35 1d 3a 00 00    	mov    esi,DWORD PTR [rip+0x3a1d]        # 5690 <num_input_strings>
    1c73:	48 63 c6             	movsxd rax,esi
    1c76:	48 8d 14 80          	lea    rdx,[rax+rax*4]
    1c7a:	48 c1 e2 04          	shl    rdx,0x4
    1c7e:	48 8d 05 1b 3a 00 00 	lea    rax,[rip+0x3a1b]        # 56a0 <input_strings>
    1c85:	48 01 c2             	add    rdx,rax
    1c88:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
    1c8f:	b8 00 00 00 00       	mov    eax,0x0
    1c94:	48 89 d7             	mov    rdi,rdx
    1c97:	f2 ae                	repnz scas al,BYTE PTR [rdi]
    1c99:	48 f7 d1             	not    rcx
    1c9c:	48 83 e9 01          	sub    rcx,0x1
    1ca0:	83 f9 4e             	cmp    ecx,0x4e
    1ca3:	0f 8f ab 00 00 00    	jg     1d54 <read_line+0xfe>
    1ca9:	83 e9 01             	sub    ecx,0x1
    1cac:	48 63 c9             	movsxd rcx,ecx
    1caf:	48 63 c6             	movsxd rax,esi
    1cb2:	48 8d 04 80          	lea    rax,[rax+rax*4]
    1cb6:	48 c1 e0 04          	shl    rax,0x4
    1cba:	48 89 c7             	mov    rdi,rax
    1cbd:	48 8d 05 dc 39 00 00 	lea    rax,[rip+0x39dc]        # 56a0 <input_strings>
    1cc4:	48 01 f8             	add    rax,rdi
    1cc7:	c6 04 08 00          	mov    BYTE PTR [rax+rcx*1],0x0
    1ccb:	83 c6 01             	add    esi,0x1
    1cce:	89 35 bc 39 00 00    	mov    DWORD PTR [rip+0x39bc],esi        # 5690 <num_input_strings>
    1cd4:	48 89 d0             	mov    rax,rdx
    1cd7:	48 83 c4 08          	add    rsp,0x8
    1cdb:	c3                   	ret
    1cdc:	48 8b 05 8d 39 00 00 	mov    rax,QWORD PTR [rip+0x398d]        # 5670 <stdin@GLIBC_2.2.5>
    1ce3:	48 39 05 ae 39 00 00 	cmp    QWORD PTR [rip+0x39ae],rax        # 5698 <infile>
    1cea:	74 1b                	je     1d07 <read_line+0xb1>
    1cec:	48 8d 3d 40 16 00 00 	lea    rdi,[rip+0x1640]        # 3333 <array.3471+0x173>
    1cf3:	e8 d8 f4 ff ff       	call   11d0 <getenv@plt>
    1cf8:	48 85 c0             	test   rax,rax
    1cfb:	74 20                	je     1d1d <read_line+0xc7>
    1cfd:	bf 00 00 00 00       	mov    edi,0x0
    1d02:	e8 e9 f5 ff ff       	call   12f0 <exit@plt>
    1d07:	48 8d 3d 07 16 00 00 	lea    rdi,[rip+0x1607]        # 3315 <array.3471+0x155>
    1d0e:	e8 ed f4 ff ff       	call   1200 <puts@plt>
    1d13:	bf 08 00 00 00       	mov    edi,0x8
    1d18:	e8 d3 f5 ff ff       	call   12f0 <exit@plt>
    1d1d:	48 8b 05 4c 39 00 00 	mov    rax,QWORD PTR [rip+0x394c]        # 5670 <stdin@GLIBC_2.2.5>
    1d24:	48 89 05 6d 39 00 00 	mov    QWORD PTR [rip+0x396d],rax        # 5698 <infile>
    1d2b:	b8 00 00 00 00       	mov    eax,0x0
    1d30:	e8 5e fe ff ff       	call   1b93 <skip>
    1d35:	48 85 c0             	test   rax,rax
    1d38:	0f 85 2f ff ff ff    	jne    1c6d <read_line+0x17>
    1d3e:	48 8d 3d d0 15 00 00 	lea    rdi,[rip+0x15d0]        # 3315 <array.3471+0x155>
    1d45:	e8 b6 f4 ff ff       	call   1200 <puts@plt>
    1d4a:	bf 00 00 00 00       	mov    edi,0x0
    1d4f:	e8 9c f5 ff ff       	call   12f0 <exit@plt>
    1d54:	48 8d 3d e3 15 00 00 	lea    rdi,[rip+0x15e3]        # 333e <array.3471+0x17e>
    1d5b:	e8 a0 f4 ff ff       	call   1200 <puts@plt>
    1d60:	8b 05 2a 39 00 00    	mov    eax,DWORD PTR [rip+0x392a]        # 5690 <num_input_strings>
    1d66:	8d 50 01             	lea    edx,[rax+0x1]
    1d69:	89 15 21 39 00 00    	mov    DWORD PTR [rip+0x3921],edx        # 5690 <num_input_strings>
    1d6f:	48 98                	cdqe
    1d71:	48 6b c0 50          	imul   rax,rax,0x50
    1d75:	48 8d 15 24 39 00 00 	lea    rdx,[rip+0x3924]        # 56a0 <input_strings>
    1d7c:	48 be 2a 2a 2a 74 72 	movabs rsi,0x636e7572742a2a2a
    1d83:	75 6e 63 
    1d86:	48 bf 61 74 65 64 2a 	movabs rdi,0x2a2a2a64657461
    1d8d:	2a 2a 00 
    1d90:	48 89 34 02          	mov    QWORD PTR [rdx+rax*1],rsi
    1d94:	48 89 7c 02 08       	mov    QWORD PTR [rdx+rax*1+0x8],rdi
    1d99:	e8 47 fe ff ff       	call   1be5 <explode_bomb>

0000000000001d9e <phase_defused>:
    1d9e:	f3 0f 1e fa          	endbr64
    1da2:	48 83 ec 78          	sub    rsp,0x78
    1da6:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1dad:	00 00 
    1daf:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
    1db4:	31 c0                	xor    eax,eax
    1db6:	83 3d d3 38 00 00 06 	cmp    DWORD PTR [rip+0x38d3],0x6        # 5690 <num_input_strings>
    1dbd:	74 15                	je     1dd4 <phase_defused+0x36>
    1dbf:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
    1dc4:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    1dcb:	00 00 
    1dcd:	75 73                	jne    1e42 <phase_defused+0xa4>
    1dcf:	48 83 c4 78          	add    rsp,0x78
    1dd3:	c3                   	ret
    1dd4:	48 8d 4c 24 0c       	lea    rcx,[rsp+0xc]
    1dd9:	48 8d 54 24 08       	lea    rdx,[rsp+0x8]
    1dde:	4c 8d 44 24 10       	lea    r8,[rsp+0x10]
    1de3:	48 8d 35 6f 15 00 00 	lea    rsi,[rip+0x156f]        # 3359 <array.3471+0x199>
    1dea:	48 8d 3d 9f 39 00 00 	lea    rdi,[rip+0x399f]        # 5790 <input_strings+0xf0>
    1df1:	e8 ca f4 ff ff       	call   12c0 <__isoc99_sscanf@plt>
    1df6:	83 f8 03             	cmp    eax,0x3
    1df9:	74 0e                	je     1e09 <phase_defused+0x6b>
    1dfb:	48 8d 3d 96 14 00 00 	lea    rdi,[rip+0x1496]        # 3298 <array.3471+0xd8>
    1e02:	e8 f9 f3 ff ff       	call   1200 <puts@plt>
    1e07:	eb b6                	jmp    1dbf <phase_defused+0x21>
    1e09:	48 8d 7c 24 10       	lea    rdi,[rsp+0x10]
    1e0e:	48 8d 35 4d 15 00 00 	lea    rsi,[rip+0x154d]        # 3362 <array.3471+0x1a2>
    1e15:	e8 b7 fc ff ff       	call   1ad1 <strings_not_equal>
    1e1a:	85 c0                	test   eax,eax
    1e1c:	75 dd                	jne    1dfb <phase_defused+0x5d>
    1e1e:	48 8d 3d 13 14 00 00 	lea    rdi,[rip+0x1413]        # 3238 <array.3471+0x78>
    1e25:	e8 d6 f3 ff ff       	call   1200 <puts@plt>
    1e2a:	48 8d 3d 2f 14 00 00 	lea    rdi,[rip+0x142f]        # 3260 <array.3471+0xa0>
    1e31:	e8 ca f3 ff ff       	call   1200 <puts@plt>
    1e36:	b8 00 00 00 00       	mov    eax,0x0
    1e3b:	e8 84 fb ff ff       	call   19c4 <secret_phase>
    1e40:	eb b9                	jmp    1dfb <phase_defused+0x5d>
    1e42:	e8 d9 f3 ff ff       	call   1220 <__stack_chk_fail@plt>

0000000000001e47 <sigalrm_handler>:
    1e47:	f3 0f 1e fa          	endbr64
    1e4b:	50                   	push   rax
    1e4c:	58                   	pop    rax
    1e4d:	48 83 ec 08          	sub    rsp,0x8
    1e51:	b9 00 00 00 00       	mov    ecx,0x0
    1e56:	48 8d 15 5b 15 00 00 	lea    rdx,[rip+0x155b]        # 33b8 <array.3471+0x1f8>
    1e5d:	be 01 00 00 00       	mov    esi,0x1
    1e62:	48 8b 3d 17 38 00 00 	mov    rdi,QWORD PTR [rip+0x3817]        # 5680 <stderr@GLIBC_2.2.5>
    1e69:	b8 00 00 00 00       	mov    eax,0x0
    1e6e:	e8 9d f4 ff ff       	call   1310 <__fprintf_chk@plt>
    1e73:	bf 01 00 00 00       	mov    edi,0x1
    1e78:	e8 73 f4 ff ff       	call   12f0 <exit@plt>

0000000000001e7d <rio_readlineb>:
    1e7d:	41 56                	push   r14
    1e7f:	41 55                	push   r13
    1e81:	41 54                	push   r12
    1e83:	55                   	push   rbp
    1e84:	53                   	push   rbx
    1e85:	48 89 f5             	mov    rbp,rsi
    1e88:	48 83 fa 01          	cmp    rdx,0x1
    1e8c:	0f 86 90 00 00 00    	jbe    1f22 <rio_readlineb+0xa5>
    1e92:	48 89 fb             	mov    rbx,rdi
    1e95:	4c 8d 74 16 ff       	lea    r14,[rsi+rdx*1-0x1]
    1e9a:	41 bd 01 00 00 00    	mov    r13d,0x1
    1ea0:	4c 8d 67 10          	lea    r12,[rdi+0x10]
    1ea4:	eb 54                	jmp    1efa <rio_readlineb+0x7d>
    1ea6:	e8 35 f3 ff ff       	call   11e0 <__errno_location@plt>
    1eab:	83 38 04             	cmp    DWORD PTR [rax],0x4
    1eae:	75 53                	jne    1f03 <rio_readlineb+0x86>
    1eb0:	ba 00 20 00 00       	mov    edx,0x2000
    1eb5:	4c 89 e6             	mov    rsi,r12
    1eb8:	8b 3b                	mov    edi,DWORD PTR [rbx]
    1eba:	e8 91 f3 ff ff       	call   1250 <read@plt>
    1ebf:	89 c2                	mov    edx,eax
    1ec1:	89 43 04             	mov    DWORD PTR [rbx+0x4],eax
    1ec4:	85 c0                	test   eax,eax
    1ec6:	78 de                	js     1ea6 <rio_readlineb+0x29>
    1ec8:	85 c0                	test   eax,eax
    1eca:	74 40                	je     1f0c <rio_readlineb+0x8f>
    1ecc:	4c 89 63 08          	mov    QWORD PTR [rbx+0x8],r12
    1ed0:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
    1ed4:	0f b6 08             	movzx  ecx,BYTE PTR [rax]
    1ed7:	48 83 c0 01          	add    rax,0x1
    1edb:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
    1edf:	83 ea 01             	sub    edx,0x1
    1ee2:	89 53 04             	mov    DWORD PTR [rbx+0x4],edx
    1ee5:	48 83 c5 01          	add    rbp,0x1
    1ee9:	88 4d ff             	mov    BYTE PTR [rbp-0x1],cl
    1eec:	80 f9 0a             	cmp    cl,0xa
    1eef:	74 3c                	je     1f2d <rio_readlineb+0xb0>
    1ef1:	41 83 c5 01          	add    r13d,0x1
    1ef5:	4c 39 f5             	cmp    rbp,r14
    1ef8:	74 30                	je     1f2a <rio_readlineb+0xad>
    1efa:	8b 53 04             	mov    edx,DWORD PTR [rbx+0x4]
    1efd:	85 d2                	test   edx,edx
    1eff:	7e af                	jle    1eb0 <rio_readlineb+0x33>
    1f01:	eb cd                	jmp    1ed0 <rio_readlineb+0x53>
    1f03:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
    1f0a:	eb 05                	jmp    1f11 <rio_readlineb+0x94>
    1f0c:	b8 00 00 00 00       	mov    eax,0x0
    1f11:	85 c0                	test   eax,eax
    1f13:	75 28                	jne    1f3d <rio_readlineb+0xc0>
    1f15:	b8 00 00 00 00       	mov    eax,0x0
    1f1a:	41 83 fd 01          	cmp    r13d,0x1
    1f1e:	75 0d                	jne    1f2d <rio_readlineb+0xb0>
    1f20:	eb 12                	jmp    1f34 <rio_readlineb+0xb7>
    1f22:	41 bd 01 00 00 00    	mov    r13d,0x1
    1f28:	eb 03                	jmp    1f2d <rio_readlineb+0xb0>
    1f2a:	4c 89 f5             	mov    rbp,r14
    1f2d:	c6 45 00 00          	mov    BYTE PTR [rbp+0x0],0x0
    1f31:	49 63 c5             	movsxd rax,r13d
    1f34:	5b                   	pop    rbx
    1f35:	5d                   	pop    rbp
    1f36:	41 5c                	pop    r12
    1f38:	41 5d                	pop    r13
    1f3a:	41 5e                	pop    r14
    1f3c:	c3                   	ret
    1f3d:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
    1f44:	eb ee                	jmp    1f34 <rio_readlineb+0xb7>

0000000000001f46 <submitr>:
    1f46:	f3 0f 1e fa          	endbr64
    1f4a:	41 57                	push   r15
    1f4c:	41 56                	push   r14
    1f4e:	41 55                	push   r13
    1f50:	41 54                	push   r12
    1f52:	55                   	push   rbp
    1f53:	53                   	push   rbx
    1f54:	4c 8d 9c 24 00 60 ff 	lea    r11,[rsp-0xa000]
    1f5b:	ff 
    1f5c:	48 81 ec 00 10 00 00 	sub    rsp,0x1000
    1f63:	48 83 0c 24 00       	or     QWORD PTR [rsp],0x0
    1f68:	4c 39 dc             	cmp    rsp,r11
    1f6b:	75 ef                	jne    1f5c <submitr+0x16>
    1f6d:	48 83 ec 68          	sub    rsp,0x68
    1f71:	48 89 fd             	mov    rbp,rdi
    1f74:	41 89 f5             	mov    r13d,esi
    1f77:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    1f7c:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
    1f81:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    1f86:	4c 89 cb             	mov    rbx,r9
    1f89:	4c 8b bc 24 a0 a0 00 	mov    r15,QWORD PTR [rsp+0xa0a0]
    1f90:	00 
    1f91:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1f98:	00 00 
    1f9a:	48 89 84 24 58 a0 00 	mov    QWORD PTR [rsp+0xa058],rax
    1fa1:	00 
    1fa2:	31 c0                	xor    eax,eax
    1fa4:	c7 44 24 2c 00 00 00 	mov    DWORD PTR [rsp+0x2c],0x0
    1fab:	00 
    1fac:	ba 00 00 00 00       	mov    edx,0x0
    1fb1:	be 01 00 00 00       	mov    esi,0x1
    1fb6:	bf 02 00 00 00       	mov    edi,0x2
    1fbb:	e8 90 f3 ff ff       	call   1350 <socket@plt>
    1fc0:	85 c0                	test   eax,eax
    1fc2:	0f 88 1a 01 00 00    	js     20e2 <submitr+0x19c>
    1fc8:	41 89 c4             	mov    r12d,eax
    1fcb:	48 89 ef             	mov    rdi,rbp
    1fce:	e8 ad f2 ff ff       	call   1280 <gethostbyname@plt>
    1fd3:	48 85 c0             	test   rax,rax
    1fd6:	0f 84 56 01 00 00    	je     2132 <submitr+0x1ec>
    1fdc:	48 8d 6c 24 30       	lea    rbp,[rsp+0x30]
    1fe1:	48 c7 44 24 30 00 00 	mov    QWORD PTR [rsp+0x30],0x0
    1fe8:	00 00 
    1fea:	48 c7 44 24 38 00 00 	mov    QWORD PTR [rsp+0x38],0x0
    1ff1:	00 00 
    1ff3:	66 c7 44 24 30 02 00 	mov    WORD PTR [rsp+0x30],0x2
    1ffa:	48 63 50 14          	movsxd rdx,DWORD PTR [rax+0x14]
    1ffe:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
    2002:	48 8d 7c 24 34       	lea    rdi,[rsp+0x34]
    2007:	b9 0c 00 00 00       	mov    ecx,0xc
    200c:	48 8b 30             	mov    rsi,QWORD PTR [rax]
    200f:	e8 7c f2 ff ff       	call   1290 <__memmove_chk@plt>
    2014:	66 41 c1 c5 08       	rol    r13w,0x8
    2019:	66 44 89 6c 24 32    	mov    WORD PTR [rsp+0x32],r13w
    201f:	ba 10 00 00 00       	mov    edx,0x10
    2024:	48 89 ee             	mov    rsi,rbp
    2027:	44 89 e7             	mov    edi,r12d
    202a:	e8 d1 f2 ff ff       	call   1300 <connect@plt>
    202f:	85 c0                	test   eax,eax
    2031:	0f 88 66 01 00 00    	js     219d <submitr+0x257>
    2037:	49 c7 c1 ff ff ff ff 	mov    r9,0xffffffffffffffff
    203e:	b8 00 00 00 00       	mov    eax,0x0
    2043:	4c 89 c9             	mov    rcx,r9
    2046:	48 89 df             	mov    rdi,rbx
    2049:	f2 ae                	repnz scas al,BYTE PTR [rdi]
    204b:	48 f7 d1             	not    rcx
    204e:	48 89 ce             	mov    rsi,rcx
    2051:	4c 89 c9             	mov    rcx,r9
    2054:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    2059:	f2 ae                	repnz scas al,BYTE PTR [rdi]
    205b:	49 89 c8             	mov    r8,rcx
    205e:	4c 89 c9             	mov    rcx,r9
    2061:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
    2066:	f2 ae                	repnz scas al,BYTE PTR [rdi]
    2068:	48 89 ca             	mov    rdx,rcx
    206b:	48 f7 d2             	not    rdx
    206e:	4c 89 c9             	mov    rcx,r9
    2071:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    2076:	f2 ae                	repnz scas al,BYTE PTR [rdi]
    2078:	4c 29 c2             	sub    rdx,r8
    207b:	48 29 ca             	sub    rdx,rcx
    207e:	48 8d 44 76 fd       	lea    rax,[rsi+rsi*2-0x3]
    2083:	48 8d 44 02 7b       	lea    rax,[rdx+rax*1+0x7b]
    2088:	48 3d 00 20 00 00    	cmp    rax,0x2000
    208e:	0f 87 66 01 00 00    	ja     21fa <submitr+0x2b4>
    2094:	48 8d 94 24 50 40 00 	lea    rdx,[rsp+0x4050]
    209b:	00 
    209c:	b9 00 04 00 00       	mov    ecx,0x400
    20a1:	b8 00 00 00 00       	mov    eax,0x0
    20a6:	48 89 d7             	mov    rdi,rdx
    20a9:	f3 48 ab             	rep stos QWORD PTR [rdi],rax
    20ac:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
    20b3:	48 89 df             	mov    rdi,rbx
    20b6:	f2 ae                	repnz scas al,BYTE PTR [rdi]
    20b8:	48 f7 d1             	not    rcx
    20bb:	48 8d 41 ff          	lea    rax,[rcx-0x1]
    20bf:	83 f9 01             	cmp    ecx,0x1
    20c2:	0f 84 08 05 00 00    	je     25d0 <submitr+0x68a>
    20c8:	8d 40 ff             	lea    eax,[rax-0x1]
    20cb:	4c 8d 74 03 01       	lea    r14,[rbx+rax*1+0x1]
    20d0:	48 89 d5             	mov    rbp,rdx
    20d3:	49 bd d9 ff 00 00 00 	movabs r13,0x2000000000ffd9
    20da:	00 20 00 
    20dd:	e9 a6 01 00 00       	jmp    2288 <submitr+0x342>
    20e2:	48 b8 45 72 72 6f 72 	movabs rax,0x43203a726f727245
    20e9:	3a 20 43 
    20ec:	48 ba 6c 69 65 6e 74 	movabs rdx,0x6e7520746e65696c
    20f3:	20 75 6e 
    20f6:	49 89 07             	mov    QWORD PTR [r15],rax
    20f9:	49 89 57 08          	mov    QWORD PTR [r15+0x8],rdx
    20fd:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
    2104:	74 6f 20 
    2107:	48 ba 63 72 65 61 74 	movabs rdx,0x7320657461657263
    210e:	65 20 73 
    2111:	49 89 47 10          	mov    QWORD PTR [r15+0x10],rax
    2115:	49 89 57 18          	mov    QWORD PTR [r15+0x18],rdx
    2119:	41 c7 47 20 6f 63 6b 	mov    DWORD PTR [r15+0x20],0x656b636f
    2120:	65 
    2121:	66 41 c7 47 24 74 00 	mov    WORD PTR [r15+0x24],0x74
    2128:	b8 ff ff ff ff       	mov    eax,0xffffffff
    212d:	e9 16 03 00 00       	jmp    2448 <submitr+0x502>
    2132:	48 b8 45 72 72 6f 72 	movabs rax,0x44203a726f727245
    2139:	3a 20 44 
    213c:	48 ba 4e 53 20 69 73 	movabs rdx,0x6e7520736920534e
    2143:	20 75 6e 
    2146:	49 89 07             	mov    QWORD PTR [r15],rax
    2149:	49 89 57 08          	mov    QWORD PTR [r15+0x8],rdx
    214d:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
    2154:	74 6f 20 
    2157:	48 ba 72 65 73 6f 6c 	movabs rdx,0x2065766c6f736572
    215e:	76 65 20 
    2161:	49 89 47 10          	mov    QWORD PTR [r15+0x10],rax
    2165:	49 89 57 18          	mov    QWORD PTR [r15+0x18],rdx
    2169:	48 b8 73 65 72 76 65 	movabs rax,0x6120726576726573
    2170:	72 20 61 
    2173:	49 89 47 20          	mov    QWORD PTR [r15+0x20],rax
    2177:	41 c7 47 28 64 64 72 	mov    DWORD PTR [r15+0x28],0x65726464
    217e:	65 
    217f:	66 41 c7 47 2c 73 73 	mov    WORD PTR [r15+0x2c],0x7373
    2186:	41 c6 47 2e 00       	mov    BYTE PTR [r15+0x2e],0x0
    218b:	44 89 e7             	mov    edi,r12d
    218e:	e8 ad f0 ff ff       	call   1240 <close@plt>
    2193:	b8 ff ff ff ff       	mov    eax,0xffffffff
    2198:	e9 ab 02 00 00       	jmp    2448 <submitr+0x502>
    219d:	48 b8 45 72 72 6f 72 	movabs rax,0x55203a726f727245
    21a4:	3a 20 55 
    21a7:	48 ba 6e 61 62 6c 65 	movabs rdx,0x6f7420656c62616e
    21ae:	20 74 6f 
    21b1:	49 89 07             	mov    QWORD PTR [r15],rax
    21b4:	49 89 57 08          	mov    QWORD PTR [r15+0x8],rdx
    21b8:	48 b8 20 63 6f 6e 6e 	movabs rax,0x7463656e6e6f6320
    21bf:	65 63 74 
    21c2:	48 ba 20 74 6f 20 74 	movabs rdx,0x20656874206f7420
    21c9:	68 65 20 
    21cc:	49 89 47 10          	mov    QWORD PTR [r15+0x10],rax
    21d0:	49 89 57 18          	mov    QWORD PTR [r15+0x18],rdx
    21d4:	41 c7 47 20 73 65 72 	mov    DWORD PTR [r15+0x20],0x76726573
    21db:	76 
    21dc:	66 41 c7 47 24 65 72 	mov    WORD PTR [r15+0x24],0x7265
    21e3:	41 c6 47 26 00       	mov    BYTE PTR [r15+0x26],0x0
    21e8:	44 89 e7             	mov    edi,r12d
    21eb:	e8 50 f0 ff ff       	call   1240 <close@plt>
    21f0:	b8 ff ff ff ff       	mov    eax,0xffffffff
    21f5:	e9 4e 02 00 00       	jmp    2448 <submitr+0x502>
    21fa:	48 b8 45 72 72 6f 72 	movabs rax,0x52203a726f727245
    2201:	3a 20 52 
    2204:	48 ba 65 73 75 6c 74 	movabs rdx,0x747320746c757365
    220b:	20 73 74 
    220e:	49 89 07             	mov    QWORD PTR [r15],rax
    2211:	49 89 57 08          	mov    QWORD PTR [r15+0x8],rdx
    2215:	48 b8 72 69 6e 67 20 	movabs rax,0x6f6f7420676e6972
    221c:	74 6f 6f 
    221f:	48 ba 20 6c 61 72 67 	movabs rdx,0x202e656772616c20
    2226:	65 2e 20 
    2229:	49 89 47 10          	mov    QWORD PTR [r15+0x10],rax
    222d:	49 89 57 18          	mov    QWORD PTR [r15+0x18],rdx
    2231:	48 b8 49 6e 63 72 65 	movabs rax,0x6573616572636e49
    2238:	61 73 65 
    223b:	48 ba 20 53 55 42 4d 	movabs rdx,0x5254494d42555320
    2242:	49 54 52 
    2245:	49 89 47 20          	mov    QWORD PTR [r15+0x20],rax
    2249:	49 89 57 28          	mov    QWORD PTR [r15+0x28],rdx
    224d:	48 b8 5f 4d 41 58 42 	movabs rax,0x46554258414d5f
    2254:	55 46 00 
    2257:	49 89 47 30          	mov    QWORD PTR [r15+0x30],rax
    225b:	44 89 e7             	mov    edi,r12d
    225e:	e8 dd ef ff ff       	call   1240 <close@plt>
    2263:	b8 ff ff ff ff       	mov    eax,0xffffffff
    2268:	e9 db 01 00 00       	jmp    2448 <submitr+0x502>
    226d:	49 0f a3 c5          	bt     r13,rax
    2271:	73 21                	jae    2294 <submitr+0x34e>
    2273:	44 88 45 00          	mov    BYTE PTR [rbp+0x0],r8b
    2277:	48 8d 6d 01          	lea    rbp,[rbp+0x1]
    227b:	48 83 c3 01          	add    rbx,0x1
    227f:	4c 39 f3             	cmp    rbx,r14
    2282:	0f 84 48 03 00 00    	je     25d0 <submitr+0x68a>
    2288:	44 0f b6 03          	movzx  r8d,BYTE PTR [rbx]
    228c:	41 8d 40 d6          	lea    eax,[r8-0x2a]
    2290:	3c 35                	cmp    al,0x35
    2292:	76 d9                	jbe    226d <submitr+0x327>
    2294:	44 89 c0             	mov    eax,r8d
    2297:	83 e0 df             	and    eax,0xffffffdf
    229a:	83 e8 41             	sub    eax,0x41
    229d:	3c 19                	cmp    al,0x19
    229f:	76 d2                	jbe    2273 <submitr+0x32d>
    22a1:	41 80 f8 20          	cmp    r8b,0x20
    22a5:	74 63                	je     230a <submitr+0x3c4>
    22a7:	41 8d 40 e0          	lea    eax,[r8-0x20]
    22ab:	3c 5f                	cmp    al,0x5f
    22ad:	76 0a                	jbe    22b9 <submitr+0x373>
    22af:	41 80 f8 09          	cmp    r8b,0x9
    22b3:	0f 85 8a 02 00 00    	jne    2543 <submitr+0x5fd>
    22b9:	48 8d bc 24 50 80 00 	lea    rdi,[rsp+0x8050]
    22c0:	00 
    22c1:	45 0f b6 c0          	movzx  r8d,r8b
    22c5:	48 8d 0d ba 11 00 00 	lea    rcx,[rip+0x11ba]        # 3486 <array.3471+0x2c6>
    22cc:	ba 08 00 00 00       	mov    edx,0x8
    22d1:	be 01 00 00 00       	mov    esi,0x1
    22d6:	b8 00 00 00 00       	mov    eax,0x0
    22db:	e8 60 f0 ff ff       	call   1340 <__sprintf_chk@plt>
    22e0:	0f b6 84 24 50 80 00 	movzx  eax,BYTE PTR [rsp+0x8050]
    22e7:	00 
    22e8:	88 45 00             	mov    BYTE PTR [rbp+0x0],al
    22eb:	0f b6 84 24 51 80 00 	movzx  eax,BYTE PTR [rsp+0x8051]
    22f2:	00 
    22f3:	88 45 01             	mov    BYTE PTR [rbp+0x1],al
    22f6:	0f b6 84 24 52 80 00 	movzx  eax,BYTE PTR [rsp+0x8052]
    22fd:	00 
    22fe:	88 45 02             	mov    BYTE PTR [rbp+0x2],al
    2301:	48 8d 6d 03          	lea    rbp,[rbp+0x3]
    2305:	e9 71 ff ff ff       	jmp    227b <submitr+0x335>
    230a:	c6 45 00 2b          	mov    BYTE PTR [rbp+0x0],0x2b
    230e:	48 8d 6d 01          	lea    rbp,[rbp+0x1]
    2312:	e9 64 ff ff ff       	jmp    227b <submitr+0x335>
    2317:	48 01 c5             	add    rbp,rax
    231a:	48 29 c3             	sub    rbx,rax
    231d:	0f 84 1d 03 00 00    	je     2640 <submitr+0x6fa>
    2323:	48 89 da             	mov    rdx,rbx
    2326:	48 89 ee             	mov    rsi,rbp
    2329:	44 89 e7             	mov    edi,r12d
    232c:	e8 df ee ff ff       	call   1210 <write@plt>
    2331:	48 85 c0             	test   rax,rax
    2334:	7f e1                	jg     2317 <submitr+0x3d1>
    2336:	e8 a5 ee ff ff       	call   11e0 <__errno_location@plt>
    233b:	83 38 04             	cmp    DWORD PTR [rax],0x4
    233e:	0f 85 a0 01 00 00    	jne    24e4 <submitr+0x59e>
    2344:	4c 89 e8             	mov    rax,r13
    2347:	eb ce                	jmp    2317 <submitr+0x3d1>
    2349:	48 b8 45 72 72 6f 72 	movabs rax,0x43203a726f727245
    2350:	3a 20 43 
    2353:	48 ba 6c 69 65 6e 74 	movabs rdx,0x6e7520746e65696c
    235a:	20 75 6e 
    235d:	49 89 07             	mov    QWORD PTR [r15],rax
    2360:	49 89 57 08          	mov    QWORD PTR [r15+0x8],rdx
    2364:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
    236b:	74 6f 20 
    236e:	48 ba 72 65 61 64 20 	movabs rdx,0x7269662064616572
    2375:	66 69 72 
    2378:	49 89 47 10          	mov    QWORD PTR [r15+0x10],rax
    237c:	49 89 57 18          	mov    QWORD PTR [r15+0x18],rdx
    2380:	48 b8 73 74 20 68 65 	movabs rax,0x6564616568207473
    2387:	61 64 65 
    238a:	48 ba 72 20 66 72 6f 	movabs rdx,0x73206d6f72662072
    2391:	6d 20 73 
    2394:	49 89 47 20          	mov    QWORD PTR [r15+0x20],rax
    2398:	49 89 57 28          	mov    QWORD PTR [r15+0x28],rdx
    239c:	41 c7 47 30 65 72 76 	mov    DWORD PTR [r15+0x30],0x65767265
    23a3:	65 
    23a4:	66 41 c7 47 34 72 00 	mov    WORD PTR [r15+0x34],0x72
    23ab:	44 89 e7             	mov    edi,r12d
    23ae:	e8 8d ee ff ff       	call   1240 <close@plt>
    23b3:	b8 ff ff ff ff       	mov    eax,0xffffffff
    23b8:	e9 8b 00 00 00       	jmp    2448 <submitr+0x502>
    23bd:	4c 8d 8c 24 50 80 00 	lea    r9,[rsp+0x8050]
    23c4:	00 
    23c5:	48 8d 0d 14 10 00 00 	lea    rcx,[rip+0x1014]        # 33e0 <array.3471+0x220>
    23cc:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
    23d3:	be 01 00 00 00       	mov    esi,0x1
    23d8:	4c 89 ff             	mov    rdi,r15
    23db:	b8 00 00 00 00       	mov    eax,0x0
    23e0:	e8 5b ef ff ff       	call   1340 <__sprintf_chk@plt>
    23e5:	44 89 e7             	mov    edi,r12d
    23e8:	e8 53 ee ff ff       	call   1240 <close@plt>
    23ed:	b8 ff ff ff ff       	mov    eax,0xffffffff
    23f2:	eb 54                	jmp    2448 <submitr+0x502>
    23f4:	48 8d b4 24 50 20 00 	lea    rsi,[rsp+0x2050]
    23fb:	00 
    23fc:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
    2401:	ba 00 20 00 00       	mov    edx,0x2000
    2406:	e8 72 fa ff ff       	call   1e7d <rio_readlineb>
    240b:	48 85 c0             	test   rax,rax
    240e:	7e 61                	jle    2471 <submitr+0x52b>
    2410:	48 8d b4 24 50 20 00 	lea    rsi,[rsp+0x2050]
    2417:	00 
    2418:	4c 89 ff             	mov    rdi,r15
    241b:	e8 d0 ed ff ff       	call   11f0 <strcpy@plt>
    2420:	44 89 e7             	mov    edi,r12d
    2423:	e8 18 ee ff ff       	call   1240 <close@plt>
    2428:	b9 03 00 00 00       	mov    ecx,0x3
    242d:	48 8d 3d 6d 10 00 00 	lea    rdi,[rip+0x106d]        # 34a1 <array.3471+0x2e1>
    2434:	4c 89 fe             	mov    rsi,r15
    2437:	f3 a6                	repz cmps BYTE PTR [rsi],BYTE PTR [rdi]
    2439:	0f 97 c0             	seta   al
    243c:	1c 00                	sbb    al,0x0
    243e:	84 c0                	test   al,al
    2440:	0f 95 c0             	setne  al
    2443:	0f b6 c0             	movzx  eax,al
    2446:	f7 d8                	neg    eax
    2448:	48 8b 94 24 58 a0 00 	mov    rdx,QWORD PTR [rsp+0xa058]
    244f:	00 
    2450:	64 48 33 14 25 28 00 	xor    rdx,QWORD PTR fs:0x28
    2457:	00 00 
    2459:	0f 85 04 03 00 00    	jne    2763 <submitr+0x81d>
    245f:	48 81 c4 68 a0 00 00 	add    rsp,0xa068
    2466:	5b                   	pop    rbx
    2467:	5d                   	pop    rbp
    2468:	41 5c                	pop    r12
    246a:	41 5d                	pop    r13
    246c:	41 5e                	pop    r14
    246e:	41 5f                	pop    r15
    2470:	c3                   	ret
    2471:	48 b8 45 72 72 6f 72 	movabs rax,0x43203a726f727245
    2478:	3a 20 43 
    247b:	48 ba 6c 69 65 6e 74 	movabs rdx,0x6e7520746e65696c
    2482:	20 75 6e 
    2485:	49 89 07             	mov    QWORD PTR [r15],rax
    2488:	49 89 57 08          	mov    QWORD PTR [r15+0x8],rdx
    248c:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
    2493:	74 6f 20 
    2496:	48 ba 72 65 61 64 20 	movabs rdx,0x6174732064616572
    249d:	73 74 61 
    24a0:	49 89 47 10          	mov    QWORD PTR [r15+0x10],rax
    24a4:	49 89 57 18          	mov    QWORD PTR [r15+0x18],rdx
    24a8:	48 b8 74 75 73 20 6d 	movabs rax,0x7373656d20737574
    24af:	65 73 73 
    24b2:	48 ba 61 67 65 20 66 	movabs rdx,0x6d6f726620656761
    24b9:	72 6f 6d 
    24bc:	49 89 47 20          	mov    QWORD PTR [r15+0x20],rax
    24c0:	49 89 57 28          	mov    QWORD PTR [r15+0x28],rdx
    24c4:	48 b8 20 73 65 72 76 	movabs rax,0x72657672657320
    24cb:	65 72 00 
    24ce:	49 89 47 30          	mov    QWORD PTR [r15+0x30],rax
    24d2:	44 89 e7             	mov    edi,r12d
    24d5:	e8 66 ed ff ff       	call   1240 <close@plt>
    24da:	b8 ff ff ff ff       	mov    eax,0xffffffff
    24df:	e9 64 ff ff ff       	jmp    2448 <submitr+0x502>
    24e4:	48 b8 45 72 72 6f 72 	movabs rax,0x43203a726f727245
    24eb:	3a 20 43 
    24ee:	48 ba 6c 69 65 6e 74 	movabs rdx,0x6e7520746e65696c
    24f5:	20 75 6e 
    24f8:	49 89 07             	mov    QWORD PTR [r15],rax
    24fb:	49 89 57 08          	mov    QWORD PTR [r15+0x8],rdx
    24ff:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
    2506:	74 6f 20 
    2509:	48 ba 77 72 69 74 65 	movabs rdx,0x6f74206574697277
    2510:	20 74 6f 
    2513:	49 89 47 10          	mov    QWORD PTR [r15+0x10],rax
    2517:	49 89 57 18          	mov    QWORD PTR [r15+0x18],rdx
    251b:	48 b8 20 74 68 65 20 	movabs rax,0x7265732065687420
    2522:	73 65 72 
    2525:	49 89 47 20          	mov    QWORD PTR [r15+0x20],rax
    2529:	41 c7 47 28 76 65 72 	mov    DWORD PTR [r15+0x28],0x726576
    2530:	00 
    2531:	44 89 e7             	mov    edi,r12d
    2534:	e8 07 ed ff ff       	call   1240 <close@plt>
    2539:	b8 ff ff ff ff       	mov    eax,0xffffffff
    253e:	e9 05 ff ff ff       	jmp    2448 <submitr+0x502>
    2543:	48 b8 45 72 72 6f 72 	movabs rax,0x52203a726f727245
    254a:	3a 20 52 
    254d:	48 ba 65 73 75 6c 74 	movabs rdx,0x747320746c757365
    2554:	20 73 74 
    2557:	49 89 07             	mov    QWORD PTR [r15],rax
    255a:	49 89 57 08          	mov    QWORD PTR [r15+0x8],rdx
    255e:	48 b8 72 69 6e 67 20 	movabs rax,0x6e6f6320676e6972
    2565:	63 6f 6e 
    2568:	48 ba 74 61 69 6e 73 	movabs rdx,0x6e6120736e696174
    256f:	20 61 6e 
    2572:	49 89 47 10          	mov    QWORD PTR [r15+0x10],rax
    2576:	49 89 57 18          	mov    QWORD PTR [r15+0x18],rdx
    257a:	48 b8 20 69 6c 6c 65 	movabs rax,0x6c6167656c6c6920
    2581:	67 61 6c 
    2584:	48 ba 20 6f 72 20 75 	movabs rdx,0x72706e7520726f20
    258b:	6e 70 72 
    258e:	49 89 47 20          	mov    QWORD PTR [r15+0x20],rax
    2592:	49 89 57 28          	mov    QWORD PTR [r15+0x28],rdx
    2596:	48 b8 69 6e 74 61 62 	movabs rax,0x20656c6261746e69
    259d:	6c 65 20 
    25a0:	48 ba 63 68 61 72 61 	movabs rdx,0x6574636172616863
    25a7:	63 74 65 
    25aa:	49 89 47 30          	mov    QWORD PTR [r15+0x30],rax
    25ae:	49 89 57 38          	mov    QWORD PTR [r15+0x38],rdx
    25b2:	66 41 c7 47 40 72 2e 	mov    WORD PTR [r15+0x40],0x2e72
    25b9:	41 c6 47 42 00       	mov    BYTE PTR [r15+0x42],0x0
    25be:	44 89 e7             	mov    edi,r12d
    25c1:	e8 7a ec ff ff       	call   1240 <close@plt>
    25c6:	b8 ff ff ff ff       	mov    eax,0xffffffff
    25cb:	e9 78 fe ff ff       	jmp    2448 <submitr+0x502>
    25d0:	48 8d ac 24 50 20 00 	lea    rbp,[rsp+0x2050]
    25d7:	00 
    25d8:	48 8d 84 24 50 40 00 	lea    rax,[rsp+0x4050]
    25df:	00 
    25e0:	50                   	push   rax
    25e1:	ff 74 24 20          	push   QWORD PTR [rsp+0x20]
    25e5:	4c 8b 4c 24 20       	mov    r9,QWORD PTR [rsp+0x20]
    25ea:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    25ef:	48 8d 0d 1a 0e 00 00 	lea    rcx,[rip+0xe1a]        # 3410 <array.3471+0x250>
    25f6:	ba 00 20 00 00       	mov    edx,0x2000
    25fb:	be 01 00 00 00       	mov    esi,0x1
    2600:	48 89 ef             	mov    rdi,rbp
    2603:	b8 00 00 00 00       	mov    eax,0x0
    2608:	e8 33 ed ff ff       	call   1340 <__sprintf_chk@plt>
    260d:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
    2614:	b8 00 00 00 00       	mov    eax,0x0
    2619:	48 89 ef             	mov    rdi,rbp
    261c:	f2 ae                	repnz scas al,BYTE PTR [rdi]
    261e:	48 f7 d1             	not    rcx
    2621:	48 83 c4 10          	add    rsp,0x10
    2625:	48 8d ac 24 50 20 00 	lea    rbp,[rsp+0x2050]
    262c:	00 
    262d:	41 bd 00 00 00 00    	mov    r13d,0x0
    2633:	48 89 cb             	mov    rbx,rcx
    2636:	48 83 eb 01          	sub    rbx,0x1
    263a:	0f 85 e3 fc ff ff    	jne    2323 <submitr+0x3dd>
    2640:	44 89 64 24 40       	mov    DWORD PTR [rsp+0x40],r12d
    2645:	c7 44 24 44 00 00 00 	mov    DWORD PTR [rsp+0x44],0x0
    264c:	00 
    264d:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
    2652:	48 8d 44 24 50       	lea    rax,[rsp+0x50]
    2657:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
    265c:	48 8d b4 24 50 20 00 	lea    rsi,[rsp+0x2050]
    2663:	00 
    2664:	ba 00 20 00 00       	mov    edx,0x2000
    2669:	e8 0f f8 ff ff       	call   1e7d <rio_readlineb>
    266e:	48 85 c0             	test   rax,rax
    2671:	0f 8e d2 fc ff ff    	jle    2349 <submitr+0x403>
    2677:	48 8d 4c 24 2c       	lea    rcx,[rsp+0x2c]
    267c:	48 8d 94 24 50 60 00 	lea    rdx,[rsp+0x6050]
    2683:	00 
    2684:	48 8d bc 24 50 20 00 	lea    rdi,[rsp+0x2050]
    268b:	00 
    268c:	4c 8d 84 24 50 80 00 	lea    r8,[rsp+0x8050]
    2693:	00 
    2694:	48 8d 35 f2 0d 00 00 	lea    rsi,[rip+0xdf2]        # 348d <array.3471+0x2cd>
    269b:	b8 00 00 00 00       	mov    eax,0x0
    26a0:	e8 1b ec ff ff       	call   12c0 <__isoc99_sscanf@plt>
    26a5:	44 8b 44 24 2c       	mov    r8d,DWORD PTR [rsp+0x2c]
    26aa:	41 81 f8 c8 00 00 00 	cmp    r8d,0xc8
    26b1:	0f 85 06 fd ff ff    	jne    23bd <submitr+0x477>
    26b7:	48 8d 1d e0 0d 00 00 	lea    rbx,[rip+0xde0]        # 349e <array.3471+0x2de>
    26be:	48 8d b4 24 50 20 00 	lea    rsi,[rsp+0x2050]
    26c5:	00 
    26c6:	b9 03 00 00 00       	mov    ecx,0x3
    26cb:	48 89 df             	mov    rdi,rbx
    26ce:	f3 a6                	repz cmps BYTE PTR [rsi],BYTE PTR [rdi]
    26d0:	0f 97 c0             	seta   al
    26d3:	1c 00                	sbb    al,0x0
    26d5:	84 c0                	test   al,al
    26d7:	0f 84 17 fd ff ff    	je     23f4 <submitr+0x4ae>
    26dd:	48 8d b4 24 50 20 00 	lea    rsi,[rsp+0x2050]
    26e4:	00 
    26e5:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
    26ea:	ba 00 20 00 00       	mov    edx,0x2000
    26ef:	e8 89 f7 ff ff       	call   1e7d <rio_readlineb>
    26f4:	48 85 c0             	test   rax,rax
    26f7:	7f c5                	jg     26be <submitr+0x778>
    26f9:	48 b8 45 72 72 6f 72 	movabs rax,0x43203a726f727245
    2700:	3a 20 43 
    2703:	48 ba 6c 69 65 6e 74 	movabs rdx,0x6e7520746e65696c
    270a:	20 75 6e 
    270d:	49 89 07             	mov    QWORD PTR [r15],rax
    2710:	49 89 57 08          	mov    QWORD PTR [r15+0x8],rdx
    2714:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
    271b:	74 6f 20 
    271e:	48 ba 72 65 61 64 20 	movabs rdx,0x6165682064616572
    2725:	68 65 61 
    2728:	49 89 47 10          	mov    QWORD PTR [r15+0x10],rax
    272c:	49 89 57 18          	mov    QWORD PTR [r15+0x18],rdx
    2730:	48 b8 64 65 72 73 20 	movabs rax,0x6f72662073726564
    2737:	66 72 6f 
    273a:	48 ba 6d 20 73 65 72 	movabs rdx,0x726576726573206d
    2741:	76 65 72 
    2744:	49 89 47 20          	mov    QWORD PTR [r15+0x20],rax
    2748:	49 89 57 28          	mov    QWORD PTR [r15+0x28],rdx
    274c:	41 c6 47 30 00       	mov    BYTE PTR [r15+0x30],0x0
    2751:	44 89 e7             	mov    edi,r12d
    2754:	e8 e7 ea ff ff       	call   1240 <close@plt>
    2759:	b8 ff ff ff ff       	mov    eax,0xffffffff
    275e:	e9 e5 fc ff ff       	jmp    2448 <submitr+0x502>
    2763:	e8 b8 ea ff ff       	call   1220 <__stack_chk_fail@plt>

0000000000002768 <init_timeout>:
    2768:	f3 0f 1e fa          	endbr64
    276c:	85 ff                	test   edi,edi
    276e:	75 01                	jne    2771 <init_timeout+0x9>
    2770:	c3                   	ret
    2771:	53                   	push   rbx
    2772:	89 fb                	mov    ebx,edi
    2774:	48 8d 35 cc f6 ff ff 	lea    rsi,[rip+0xfffffffffffff6cc]        # 1e47 <sigalrm_handler>
    277b:	bf 0e 00 00 00       	mov    edi,0xe
    2780:	e8 eb ea ff ff       	call   1270 <signal@plt>
    2785:	85 db                	test   ebx,ebx
    2787:	bf 00 00 00 00       	mov    edi,0x0
    278c:	0f 49 fb             	cmovns edi,ebx
    278f:	e8 9c ea ff ff       	call   1230 <alarm@plt>
    2794:	5b                   	pop    rbx
    2795:	c3                   	ret

0000000000002796 <init_driver>:
    2796:	f3 0f 1e fa          	endbr64
    279a:	41 54                	push   r12
    279c:	55                   	push   rbp
    279d:	53                   	push   rbx
    279e:	48 83 ec 20          	sub    rsp,0x20
    27a2:	48 89 fd             	mov    rbp,rdi
    27a5:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    27ac:	00 00 
    27ae:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    27b3:	31 c0                	xor    eax,eax
    27b5:	be 01 00 00 00       	mov    esi,0x1
    27ba:	bf 0d 00 00 00       	mov    edi,0xd
    27bf:	e8 ac ea ff ff       	call   1270 <signal@plt>
    27c4:	be 01 00 00 00       	mov    esi,0x1
    27c9:	bf 1d 00 00 00       	mov    edi,0x1d
    27ce:	e8 9d ea ff ff       	call   1270 <signal@plt>
    27d3:	be 01 00 00 00       	mov    esi,0x1
    27d8:	bf 1d 00 00 00       	mov    edi,0x1d
    27dd:	e8 8e ea ff ff       	call   1270 <signal@plt>
    27e2:	ba 00 00 00 00       	mov    edx,0x0
    27e7:	be 01 00 00 00       	mov    esi,0x1
    27ec:	bf 02 00 00 00       	mov    edi,0x2
    27f1:	e8 5a eb ff ff       	call   1350 <socket@plt>
    27f6:	85 c0                	test   eax,eax
    27f8:	0f 88 9c 00 00 00    	js     289a <init_driver+0x104>
    27fe:	89 c3                	mov    ebx,eax
    2800:	48 8d 3d 9d 0c 00 00 	lea    rdi,[rip+0xc9d]        # 34a4 <array.3471+0x2e4>
    2807:	e8 74 ea ff ff       	call   1280 <gethostbyname@plt>
    280c:	48 85 c0             	test   rax,rax
    280f:	0f 84 d1 00 00 00    	je     28e6 <init_driver+0x150>
    2815:	49 89 e4             	mov    r12,rsp
    2818:	48 c7 04 24 00 00 00 	mov    QWORD PTR [rsp],0x0
    281f:	00 
    2820:	48 c7 44 24 08 00 00 	mov    QWORD PTR [rsp+0x8],0x0
    2827:	00 00 
    2829:	66 c7 04 24 02 00    	mov    WORD PTR [rsp],0x2
    282f:	48 63 50 14          	movsxd rdx,DWORD PTR [rax+0x14]
    2833:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
    2837:	48 8d 7c 24 04       	lea    rdi,[rsp+0x4]
    283c:	b9 0c 00 00 00       	mov    ecx,0xc
    2841:	48 8b 30             	mov    rsi,QWORD PTR [rax]
    2844:	e8 47 ea ff ff       	call   1290 <__memmove_chk@plt>
    2849:	66 c7 44 24 02 3b 6e 	mov    WORD PTR [rsp+0x2],0x6e3b
    2850:	ba 10 00 00 00       	mov    edx,0x10
    2855:	4c 89 e6             	mov    rsi,r12
    2858:	89 df                	mov    edi,ebx
    285a:	e8 a1 ea ff ff       	call   1300 <connect@plt>
    285f:	85 c0                	test   eax,eax
    2861:	0f 88 e7 00 00 00    	js     294e <init_driver+0x1b8>
    2867:	89 df                	mov    edi,ebx
    2869:	e8 d2 e9 ff ff       	call   1240 <close@plt>
    286e:	66 c7 45 00 4f 4b    	mov    WORD PTR [rbp+0x0],0x4b4f
    2874:	c6 45 02 00          	mov    BYTE PTR [rbp+0x2],0x0
    2878:	b8 00 00 00 00       	mov    eax,0x0
    287d:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    2882:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    2889:	00 00 
    288b:	0f 85 f5 00 00 00    	jne    2986 <init_driver+0x1f0>
    2891:	48 83 c4 20          	add    rsp,0x20
    2895:	5b                   	pop    rbx
    2896:	5d                   	pop    rbp
    2897:	41 5c                	pop    r12
    2899:	c3                   	ret
    289a:	48 b8 45 72 72 6f 72 	movabs rax,0x43203a726f727245
    28a1:	3a 20 43 
    28a4:	48 ba 6c 69 65 6e 74 	movabs rdx,0x6e7520746e65696c
    28ab:	20 75 6e 
    28ae:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
    28b2:	48 89 55 08          	mov    QWORD PTR [rbp+0x8],rdx
    28b6:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
    28bd:	74 6f 20 
    28c0:	48 ba 63 72 65 61 74 	movabs rdx,0x7320657461657263
    28c7:	65 20 73 
    28ca:	48 89 45 10          	mov    QWORD PTR [rbp+0x10],rax
    28ce:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
    28d2:	c7 45 20 6f 63 6b 65 	mov    DWORD PTR [rbp+0x20],0x656b636f
    28d9:	66 c7 45 24 74 00    	mov    WORD PTR [rbp+0x24],0x74
    28df:	b8 ff ff ff ff       	mov    eax,0xffffffff
    28e4:	eb 97                	jmp    287d <init_driver+0xe7>
    28e6:	48 b8 45 72 72 6f 72 	movabs rax,0x44203a726f727245
    28ed:	3a 20 44 
    28f0:	48 ba 4e 53 20 69 73 	movabs rdx,0x6e7520736920534e
    28f7:	20 75 6e 
    28fa:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
    28fe:	48 89 55 08          	mov    QWORD PTR [rbp+0x8],rdx
    2902:	48 b8 61 62 6c 65 20 	movabs rax,0x206f7420656c6261
    2909:	74 6f 20 
    290c:	48 ba 72 65 73 6f 6c 	movabs rdx,0x2065766c6f736572
    2913:	76 65 20 
    2916:	48 89 45 10          	mov    QWORD PTR [rbp+0x10],rax
    291a:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
    291e:	48 b8 73 65 72 76 65 	movabs rax,0x6120726576726573
    2925:	72 20 61 
    2928:	48 89 45 20          	mov    QWORD PTR [rbp+0x20],rax
    292c:	c7 45 28 64 64 72 65 	mov    DWORD PTR [rbp+0x28],0x65726464
    2933:	66 c7 45 2c 73 73    	mov    WORD PTR [rbp+0x2c],0x7373
    2939:	c6 45 2e 00          	mov    BYTE PTR [rbp+0x2e],0x0
    293d:	89 df                	mov    edi,ebx
    293f:	e8 fc e8 ff ff       	call   1240 <close@plt>
    2944:	b8 ff ff ff ff       	mov    eax,0xffffffff
    2949:	e9 2f ff ff ff       	jmp    287d <init_driver+0xe7>
    294e:	4c 8d 05 4f 0b 00 00 	lea    r8,[rip+0xb4f]        # 34a4 <array.3471+0x2e4>
    2955:	48 8d 0d 04 0b 00 00 	lea    rcx,[rip+0xb04]        # 3460 <array.3471+0x2a0>
    295c:	48 c7 c2 ff ff ff ff 	mov    rdx,0xffffffffffffffff
    2963:	be 01 00 00 00       	mov    esi,0x1
    2968:	48 89 ef             	mov    rdi,rbp
    296b:	b8 00 00 00 00       	mov    eax,0x0
    2970:	e8 cb e9 ff ff       	call   1340 <__sprintf_chk@plt>
    2975:	89 df                	mov    edi,ebx
    2977:	e8 c4 e8 ff ff       	call   1240 <close@plt>
    297c:	b8 ff ff ff ff       	mov    eax,0xffffffff
    2981:	e9 f7 fe ff ff       	jmp    287d <init_driver+0xe7>
    2986:	e8 95 e8 ff ff       	call   1220 <__stack_chk_fail@plt>

000000000000298b <driver_post>:
    298b:	f3 0f 1e fa          	endbr64
    298f:	53                   	push   rbx
    2990:	48 89 cb             	mov    rbx,rcx
    2993:	85 d2                	test   edx,edx
    2995:	75 17                	jne    29ae <driver_post+0x23>
    2997:	48 85 ff             	test   rdi,rdi
    299a:	74 05                	je     29a1 <driver_post+0x16>
    299c:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
    299f:	75 36                	jne    29d7 <driver_post+0x4c>
    29a1:	66 c7 03 4f 4b       	mov    WORD PTR [rbx],0x4b4f
    29a6:	c6 43 02 00          	mov    BYTE PTR [rbx+0x2],0x0
    29aa:	89 d0                	mov    eax,edx
    29ac:	5b                   	pop    rbx
    29ad:	c3                   	ret
    29ae:	48 89 f2             	mov    rdx,rsi
    29b1:	48 8d 35 04 0b 00 00 	lea    rsi,[rip+0xb04]        # 34bc <array.3471+0x2fc>
    29b8:	bf 01 00 00 00       	mov    edi,0x1
    29bd:	b8 00 00 00 00       	mov    eax,0x0
    29c2:	e8 09 e9 ff ff       	call   12d0 <__printf_chk@plt>
    29c7:	66 c7 03 4f 4b       	mov    WORD PTR [rbx],0x4b4f
    29cc:	c6 43 02 00          	mov    BYTE PTR [rbx+0x2],0x0
    29d0:	b8 00 00 00 00       	mov    eax,0x0
    29d5:	eb d5                	jmp    29ac <driver_post+0x21>
    29d7:	48 83 ec 08          	sub    rsp,0x8
    29db:	51                   	push   rcx
    29dc:	49 89 f1             	mov    r9,rsi
    29df:	4c 8d 05 ba 0a 00 00 	lea    r8,[rip+0xaba]        # 34a0 <array.3471+0x2e0>
    29e6:	48 89 f9             	mov    rcx,rdi
    29e9:	48 8d 15 e3 0a 00 00 	lea    rdx,[rip+0xae3]        # 34d3 <array.3471+0x313>
    29f0:	be 6e 3b 00 00       	mov    esi,0x3b6e
    29f5:	48 8d 3d a8 0a 00 00 	lea    rdi,[rip+0xaa8]        # 34a4 <array.3471+0x2e4>
    29fc:	e8 45 f5 ff ff       	call   1f46 <submitr>
    2a01:	48 83 c4 10          	add    rsp,0x10
    2a05:	eb a5                	jmp    29ac <driver_post+0x21>
    2a07:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    2a0e:	00 00 

0000000000002a10 <__libc_csu_init>:
    2a10:	f3 0f 1e fa          	endbr64
    2a14:	41 57                	push   r15
    2a16:	4c 8d 3d db 22 00 00 	lea    r15,[rip+0x22db]        # 4cf8 <__frame_dummy_init_array_entry>
    2a1d:	41 56                	push   r14
    2a1f:	49 89 d6             	mov    r14,rdx
    2a22:	41 55                	push   r13
    2a24:	49 89 f5             	mov    r13,rsi
    2a27:	41 54                	push   r12
    2a29:	41 89 fc             	mov    r12d,edi
    2a2c:	55                   	push   rbp
    2a2d:	48 8d 2d cc 22 00 00 	lea    rbp,[rip+0x22cc]        # 4d00 <__do_global_dtors_aux_fini_array_entry>
    2a34:	53                   	push   rbx
    2a35:	4c 29 fd             	sub    rbp,r15
    2a38:	48 83 ec 08          	sub    rsp,0x8
    2a3c:	e8 bf e5 ff ff       	call   1000 <_init>
    2a41:	48 c1 fd 03          	sar    rbp,0x3
    2a45:	74 1f                	je     2a66 <__libc_csu_init+0x56>
    2a47:	31 db                	xor    ebx,ebx
    2a49:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    2a50:	4c 89 f2             	mov    rdx,r14
    2a53:	4c 89 ee             	mov    rsi,r13
    2a56:	44 89 e7             	mov    edi,r12d
    2a59:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
    2a5d:	48 83 c3 01          	add    rbx,0x1
    2a61:	48 39 dd             	cmp    rbp,rbx
    2a64:	75 ea                	jne    2a50 <__libc_csu_init+0x40>
    2a66:	48 83 c4 08          	add    rsp,0x8
    2a6a:	5b                   	pop    rbx
    2a6b:	5d                   	pop    rbp
    2a6c:	41 5c                	pop    r12
    2a6e:	41 5d                	pop    r13
    2a70:	41 5e                	pop    r14
    2a72:	41 5f                	pop    r15
    2a74:	c3                   	ret
    2a75:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    2a7c:	00 00 00 00 

0000000000002a80 <__libc_csu_fini>:
    2a80:	f3 0f 1e fa          	endbr64
    2a84:	c3                   	ret

Disassembly of section .fini:

0000000000002a88 <_fini>:
    2a88:	f3 0f 1e fa          	endbr64
    2a8c:	48 83 ec 08          	sub    rsp,0x8
    2a90:	48 83 c4 08          	add    rsp,0x8
    2a94:	c3                   	ret

Disassembly of section .rodata:

0000000000003000 <_IO_stdin_used>:
    3000:	01 00                	add    DWORD PTR [rax],eax
    3002:	02 00                	add    al,BYTE PTR [rax]
    3004:	72 00                	jb     3006 <_IO_stdin_used+0x6>
    3006:	25 73 3a 20 45       	and    eax,0x45203a73
    300b:	72 72                	jb     307f <_IO_stdin_used+0x7f>
    300d:	6f                   	outs   dx,DWORD PTR [rsi]
    300e:	72 3a                	jb     304a <_IO_stdin_used+0x4a>
    3010:	20 43 6f             	and    BYTE PTR [rbx+0x6f],al
    3013:	75 6c                	jne    3081 <_IO_stdin_used+0x81>
    3015:	64 6e                	outs   dx,BYTE PTR fs:[rsi]
    3017:	27                   	(bad)
    3018:	74 20                	je     303a <_IO_stdin_used+0x3a>
    301a:	6f                   	outs   dx,DWORD PTR [rsi]
    301b:	70 65                	jo     3082 <_IO_stdin_used+0x82>
    301d:	6e                   	outs   dx,BYTE PTR [rsi]
    301e:	20 25 73 0a 00 55    	and    BYTE PTR [rip+0x55000a73],ah        # 55003a97 <_end+0x54ffdd67>
    3024:	73 61                	jae    3087 <_IO_stdin_used+0x87>
    3026:	67 65 3a 20          	cmp    ah,BYTE PTR gs:[eax]
    302a:	25 73 20 5b 3c       	and    eax,0x3c5b2073
    302f:	69 6e 70 75 74 5f 66 	imul   ebp,DWORD PTR [rsi+0x70],0x665f7475
    3036:	69 6c 65 3e 5d 0a 00 	imul   ebp,DWORD PTR [rbp+riz*2+0x3e],0x54000a5d
    303d:	54 
    303e:	68 61 74 27 73       	push   0x73277461
    3043:	20 6e 75             	and    BYTE PTR [rsi+0x75],ch
    3046:	6d                   	ins    DWORD PTR [rdi],dx
    3047:	62 65 72 20 32       	(bad)
    304c:	2e 20 20             	cs and BYTE PTR [rax],ah
    304f:	4b                   	rex.WXB
    3050:	65 65 70 20          	gs gs jo 3074 <_IO_stdin_used+0x74>
    3054:	67 6f                	outs   dx,DWORD PTR [esi]
    3056:	69 6e 67 21 00 48 61 	imul   ebp,DWORD PTR [rsi+0x67],0x61480021
    305d:	6c                   	ins    BYTE PTR [rdi],dx
    305e:	66 77 61             	data16 ja 30c2 <_IO_stdin_used+0xc2>
    3061:	79 20                	jns    3083 <_IO_stdin_used+0x83>
    3063:	74 68                	je     30cd <_IO_stdin_used+0xcd>
    3065:	65 72 65             	gs jb  30cd <_IO_stdin_used+0xcd>
    3068:	21 00                	and    DWORD PTR [rax],eax
    306a:	47 6f                	rex.RXB outs dx,DWORD PTR [rsi]
    306c:	6f                   	outs   dx,DWORD PTR [rsi]
    306d:	64 20 77 6f          	and    BYTE PTR fs:[rdi+0x6f],dh
    3071:	72 6b                	jb     30de <_IO_stdin_used+0xde>
    3073:	21 20                	and    DWORD PTR [rax],esp
    3075:	20 4f 6e             	and    BYTE PTR [rdi+0x6e],cl
    3078:	20 74 6f 20          	and    BYTE PTR [rdi+rbp*2+0x20],dh
    307c:	74 68                	je     30e6 <_IO_stdin_used+0xe6>
    307e:	65 20 6e 65          	and    BYTE PTR gs:[rsi+0x65],ch
    3082:	78 74                	js     30f8 <_IO_stdin_used+0xf8>
    3084:	2e 2e 2e 00 57 65    	cs cs cs add BYTE PTR [rdi+0x65],dl
    308a:	6c                   	ins    BYTE PTR [rdi],dx
    308b:	63 6f 6d             	movsxd ebp,DWORD PTR [rdi+0x6d]
    308e:	65 20 74 6f 20       	and    BYTE PTR gs:[rdi+rbp*2+0x20],dh
    3093:	6d                   	ins    DWORD PTR [rdi],dx
    3094:	79 20                	jns    30b6 <_IO_stdin_used+0xb6>
    3096:	66 69 65 6e 64 69    	imul   sp,WORD PTR [rbp+0x6e],0x6964
    309c:	73 68                	jae    3106 <_IO_stdin_used+0x106>
    309e:	20 6c 69 74          	and    BYTE PTR [rcx+rbp*2+0x74],ch
    30a2:	74 6c                	je     3110 <_IO_stdin_used+0x110>
    30a4:	65 20 62 6f          	and    BYTE PTR gs:[rdx+0x6f],ah
    30a8:	6d                   	ins    DWORD PTR [rdi],dx
    30a9:	62 2e 20 59 6f       	(bad)
    30ae:	75 20                	jne    30d0 <_IO_stdin_used+0xd0>
    30b0:	68 61 76 65 20       	push   0x20657661
    30b5:	36 20 70 68          	ss and BYTE PTR [rax+0x68],dh
    30b9:	61                   	(bad)
    30ba:	73 65                	jae    3121 <_IO_stdin_used+0x121>
    30bc:	73 20                	jae    30de <_IO_stdin_used+0xde>
    30be:	77 69                	ja     3129 <_IO_stdin_used+0x129>
    30c0:	74 68                	je     312a <_IO_stdin_used+0x12a>
    30c2:	00 00                	add    BYTE PTR [rax],al
    30c4:	00 00                	add    BYTE PTR [rax],al
    30c6:	00 00                	add    BYTE PTR [rax],al
    30c8:	77 68                	ja     3132 <_IO_stdin_used+0x132>
    30ca:	69 63 68 20 74 6f 20 	imul   esp,DWORD PTR [rbx+0x68],0x206f7420
    30d1:	62 6c 6f 77 20       	(bad)
    30d6:	79 6f                	jns    3147 <_IO_stdin_used+0x147>
    30d8:	75 72                	jne    314c <_IO_stdin_used+0x14c>
    30da:	73 65                	jae    3141 <_IO_stdin_used+0x141>
    30dc:	6c                   	ins    BYTE PTR [rdi],dx
    30dd:	66 20 75 70          	data16 and BYTE PTR [rbp+0x70],dh
    30e1:	2e 20 48 61          	cs and BYTE PTR [rax+0x61],cl
    30e5:	76 65                	jbe    314c <_IO_stdin_used+0x14c>
    30e7:	20 61 20             	and    BYTE PTR [rcx+0x20],ah
    30ea:	6e                   	outs   dx,BYTE PTR [rsi]
    30eb:	69 63 65 20 64 61 79 	imul   esp,DWORD PTR [rbx+0x65],0x79616420
    30f2:	21 00                	and    DWORD PTR [rax],eax
    30f4:	00 00                	add    BYTE PTR [rax],al
    30f6:	00 00                	add    BYTE PTR [rax],al
    30f8:	50                   	push   rax
    30f9:	68 61 73 65 20       	push   0x20657361
    30fe:	31 20                	xor    DWORD PTR [rax],esp
    3100:	64 65 66 75 73       	fs gs data16 jne 3178 <_IO_stdin_used+0x178>
    3105:	65 64 2e 20 48 6f    	gs fs and BYTE PTR fs:[rax+0x6f],cl
    310b:	77 20                	ja     312d <_IO_stdin_used+0x12d>
    310d:	61                   	(bad)
    310e:	62 6f 75 74 20       	(bad)
    3113:	74 68                	je     317d <_IO_stdin_used+0x17d>
    3115:	65 20 6e 65          	and    BYTE PTR gs:[rsi+0x65],ch
    3119:	78 74                	js     318f <_IO_stdin_used+0x18f>
    311b:	20 6f 6e             	and    BYTE PTR [rdi+0x6e],ch
    311e:	65 3f                	gs (bad)
	...
    3128:	53                   	push   rbx
    3129:	6f                   	outs   dx,DWORD PTR [rsi]
    312a:	20 79 6f             	and    BYTE PTR [rcx+0x6f],bh
    312d:	75 20                	jne    314f <_IO_stdin_used+0x14f>
    312f:	67 6f                	outs   dx,DWORD PTR [esi]
    3131:	74 20                	je     3153 <_IO_stdin_used+0x153>
    3133:	74 68                	je     319d <_IO_stdin_used+0x19d>
    3135:	61                   	(bad)
    3136:	74 20                	je     3158 <_IO_stdin_used+0x158>
    3138:	6f                   	outs   dx,DWORD PTR [rsi]
    3139:	6e                   	outs   dx,BYTE PTR [rsi]
    313a:	65 2e 20 20          	gs and BYTE PTR gs:[rax],ah
    313e:	54                   	push   rsp
    313f:	72 79                	jb     31ba <_IO_stdin_used+0x1ba>
    3141:	20 74 68 69          	and    BYTE PTR [rax+rbp*2+0x69],dh
    3145:	73 20                	jae    3167 <_IO_stdin_used+0x167>
    3147:	6f                   	outs   dx,DWORD PTR [rsi]
    3148:	6e                   	outs   dx,BYTE PTR [rsi]
    3149:	65 2e 00 00          	gs add BYTE PTR gs:[rax],al
    314d:	00 00                	add    BYTE PTR [rax],al
    314f:	00 49 20             	add    BYTE PTR [rcx+0x20],cl
    3152:	61                   	(bad)
    3153:	6d                   	ins    DWORD PTR [rdi],dx
    3154:	20 6a 75             	and    BYTE PTR [rdx+0x75],ch
    3157:	73 74                	jae    31cd <array.3471+0xd>
    3159:	20 61 20             	and    BYTE PTR [rcx+0x20],ah
    315c:	72 65                	jb     31c3 <array.3471+0x3>
    315e:	6e                   	outs   dx,BYTE PTR [rsi]
    315f:	65 67 61             	gs addr32 (bad)
    3162:	64 65 20 68 6f       	fs and BYTE PTR gs:[rax+0x6f],ch
    3167:	63 6b 65             	movsxd ebp,DWORD PTR [rbx+0x65]
    316a:	79 20                	jns    318c <_IO_stdin_used+0x18c>
    316c:	6d                   	ins    DWORD PTR [rdi],dx
    316d:	6f                   	outs   dx,DWORD PTR [rsi]
    316e:	6d                   	ins    DWORD PTR [rdi],dx
    316f:	2e 00 00             	cs add BYTE PTR [rax],al
    3172:	00 00                	add    BYTE PTR [rax],al
    3174:	00 00                	add    BYTE PTR [rax],al
    3176:	00 00                	add    BYTE PTR [rax],al
    3178:	57                   	push   rdi
    3179:	6f                   	outs   dx,DWORD PTR [rsi]
    317a:	77 21                	ja     319d <_IO_stdin_used+0x19d>
    317c:	20 59 6f             	and    BYTE PTR [rcx+0x6f],bl
    317f:	75 27                	jne    31a8 <_IO_stdin_used+0x1a8>
    3181:	76 65                	jbe    31e8 <array.3471+0x28>
    3183:	20 64 65 66          	and    BYTE PTR [rbp+riz*2+0x66],ah
    3187:	75 73                	jne    31fc <array.3471+0x3c>
    3189:	65 64 20 74 68 65    	gs and BYTE PTR fs:[rax+rbp*2+0x65],dh
    318f:	20 73 65             	and    BYTE PTR [rbx+0x65],dh
    3192:	63 72 65             	movsxd esi,DWORD PTR [rdx+0x65]
    3195:	74 20                	je     31b7 <_IO_stdin_used+0x1b7>
    3197:	73 74                	jae    320d <array.3471+0x4d>
    3199:	61                   	(bad)
    319a:	67 65 21 00          	and    DWORD PTR gs:[eax],eax
    319e:	00 00                	add    BYTE PTR [rax],al
    31a0:	ef                   	out    dx,eax
    31a1:	e4 ff                	in     al,0xff
    31a3:	ff 33                	push   QWORD PTR [rbx]
    31a5:	e5 ff                	in     eax,0xff
    31a7:	ff                   	(bad)
    31a8:	3a e5                	cmp    ah,ch
    31aa:	ff                   	(bad)
    31ab:	ff 41 e5             	inc    DWORD PTR [rcx-0x1b]
    31ae:	ff                   	(bad)
    31af:	ff 48 e5             	dec    DWORD PTR [rax-0x1b]
    31b2:	ff                   	(bad)
    31b3:	ff 4f e5             	dec    DWORD PTR [rdi-0x1b]
    31b6:	ff                   	(bad)
    31b7:	ff 56 e5             	call   QWORD PTR [rsi-0x1b]
    31ba:	ff                   	(bad)
    31bb:	ff 5d e5             	call   FWORD PTR [rbp-0x1b]
    31be:	ff                   	(bad)
    31bf:	ff                 	dec    DWORD PTR [rdx]

00000000000031c0 <array.3471>:
    31c0:	0a 00                	or     al,BYTE PTR [rax]
    31c2:	00 00                	add    BYTE PTR [rax],al
    31c4:	02 00                	add    al,BYTE PTR [rax]
    31c6:	00 00                	add    BYTE PTR [rax],al
    31c8:	0e                   	(bad)
    31c9:	00 00                	add    BYTE PTR [rax],al
    31cb:	00 07                	add    BYTE PTR [rdi],al
    31cd:	00 00                	add    BYTE PTR [rax],al
    31cf:	00 08                	add    BYTE PTR [rax],cl
    31d1:	00 00                	add    BYTE PTR [rax],al
    31d3:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
    31d6:	00 00                	add    BYTE PTR [rax],al
    31d8:	0f 00 00             	sldt   WORD PTR [rax]
    31db:	00 0b                	add    BYTE PTR [rbx],cl
    31dd:	00 00                	add    BYTE PTR [rax],al
    31df:	00 00                	add    BYTE PTR [rax],al
    31e1:	00 00                	add    BYTE PTR [rax],al
    31e3:	00 04 00             	add    BYTE PTR [rax+rax*1],al
    31e6:	00 00                	add    BYTE PTR [rax],al
    31e8:	01 00                	add    DWORD PTR [rax],eax
    31ea:	00 00                	add    BYTE PTR [rax],al
    31ec:	0d 00 00 00 03       	or     eax,0x3000000
    31f1:	00 00                	add    BYTE PTR [rax],al
    31f3:	00 09                	add    BYTE PTR [rcx],cl
    31f5:	00 00                	add    BYTE PTR [rax],al
    31f7:	00 06                	add    BYTE PTR [rsi],al
    31f9:	00 00                	add    BYTE PTR [rax],al
    31fb:	00 05 00 00 00 53    	add    BYTE PTR [rip+0x53000000],al        # 53003201 <_end+0x52ffd4d1>
    3201:	6f                   	outs   dx,DWORD PTR [rsi]
    3202:	20 79 6f             	and    BYTE PTR [rcx+0x6f],bh
    3205:	75 20                	jne    3227 <array.3471+0x67>
    3207:	74 68                	je     3271 <array.3471+0xb1>
    3209:	69 6e 6b 20 79 6f 75 	imul   ebp,DWORD PTR [rsi+0x6b],0x756f7920
    3210:	20 63 61             	and    BYTE PTR [rbx+0x61],ah
    3213:	6e                   	outs   dx,BYTE PTR [rsi]
    3214:	20 73 74             	and    BYTE PTR [rbx+0x74],dh
    3217:	6f                   	outs   dx,DWORD PTR [rsi]
    3218:	70 20                	jo     323a <array.3471+0x7a>
    321a:	74 68                	je     3284 <array.3471+0xc4>
    321c:	65 20 62 6f          	and    BYTE PTR gs:[rdx+0x6f],ah
    3220:	6d                   	ins    DWORD PTR [rdi],dx
    3221:	62                   	(bad)
    3222:	20 77 69             	and    BYTE PTR [rdi+0x69],dh
    3225:	74 68                	je     328f <array.3471+0xcf>
    3227:	20 63 74             	and    BYTE PTR [rbx+0x74],ah
    322a:	72 6c                	jb     3298 <array.3471+0xd8>
    322c:	2d 63 2c 20 64       	sub    eax,0x64202c63
    3231:	6f                   	outs   dx,DWORD PTR [rsi]
    3232:	20 79 6f             	and    BYTE PTR [rcx+0x6f],bh
    3235:	75 3f                	jne    3276 <array.3471+0xb6>
    3237:	00 43 75             	add    BYTE PTR [rbx+0x75],al
    323a:	72 73                	jb     32af <array.3471+0xef>
    323c:	65 73 2c             	gs jae 326b <array.3471+0xab>
    323f:	20 79 6f             	and    BYTE PTR [rcx+0x6f],bh
    3242:	75 27                	jne    326b <array.3471+0xab>
    3244:	76 65                	jbe    32ab <array.3471+0xeb>
    3246:	20 66 6f             	and    BYTE PTR [rsi+0x6f],ah
    3249:	75 6e                	jne    32b9 <array.3471+0xf9>
    324b:	64 20 74 68 65       	and    BYTE PTR fs:[rax+rbp*2+0x65],dh
    3250:	20 73 65             	and    BYTE PTR [rbx+0x65],dh
    3253:	63 72 65             	movsxd esi,DWORD PTR [rdx+0x65]
    3256:	74 20                	je     3278 <array.3471+0xb8>
    3258:	70 68                	jo     32c2 <array.3471+0x102>
    325a:	61                   	(bad)
    325b:	73 65                	jae    32c2 <array.3471+0x102>
    325d:	21 00                	and    DWORD PTR [rax],eax
    325f:	00 42 75             	add    BYTE PTR [rdx+0x75],al
    3262:	74 20                	je     3284 <array.3471+0xc4>
    3264:	66 69 6e 64 69 6e    	imul   bp,WORD PTR [rsi+0x64],0x6e69
    326a:	67 20 69 74          	and    BYTE PTR [ecx+0x74],ch
    326e:	20 61 6e             	and    BYTE PTR [rcx+0x6e],ah
    3271:	64 20 73 6f          	and    BYTE PTR fs:[rbx+0x6f],dh
    3275:	6c                   	ins    BYTE PTR [rdi],dx
    3276:	76 69                	jbe    32e1 <array.3471+0x121>
    3278:	6e                   	outs   dx,BYTE PTR [rsi]
    3279:	67 20 69 74          	and    BYTE PTR [ecx+0x74],ch
    327d:	20 61 72             	and    BYTE PTR [rcx+0x72],ah
    3280:	65 20 71 75          	and    BYTE PTR gs:[rcx+0x75],dh
    3284:	69 74 65 20 64 69 66 	imul   esi,DWORD PTR [rbp+riz*2+0x20],0x66666964
    328b:	66 
    328c:	65 72 65             	gs jb  32f4 <array.3471+0x134>
    328f:	6e                   	outs   dx,BYTE PTR [rsi]
    3290:	74 2e                	je     32c0 <array.3471+0x100>
    3292:	2e 2e 00 00          	cs cs add BYTE PTR [rax],al
    3296:	00 00                	add    BYTE PTR [rax],al
    3298:	43 6f                	rex.XB outs dx,DWORD PTR [rsi]
    329a:	6e                   	outs   dx,BYTE PTR [rsi]
    329b:	67 72 61             	addr32 jb 32ff <array.3471+0x13f>
    329e:	74 75                	je     3315 <array.3471+0x155>
    32a0:	6c                   	ins    BYTE PTR [rdi],dx
    32a1:	61                   	(bad)
    32a2:	74 69                	je     330d <array.3471+0x14d>
    32a4:	6f                   	outs   dx,DWORD PTR [rsi]
    32a5:	6e                   	outs   dx,BYTE PTR [rsi]
    32a6:	73 21                	jae    32c9 <array.3471+0x109>
    32a8:	20 59 6f             	and    BYTE PTR [rcx+0x6f],bl
    32ab:	75 27                	jne    32d4 <array.3471+0x114>
    32ad:	76 65                	jbe    3314 <array.3471+0x154>
    32af:	20 64 65 66          	and    BYTE PTR [rbp+riz*2+0x66],ah
    32b3:	75 73                	jne    3328 <array.3471+0x168>
    32b5:	65 64 20 74 68 65    	gs and BYTE PTR fs:[rax+rbp*2+0x65],dh
    32bb:	20 62 6f             	and    BYTE PTR [rdx+0x6f],ah
    32be:	6d                   	ins    DWORD PTR [rdi],dx
    32bf:	62 21 00 57 65       	(bad)
    32c4:	6c                   	ins    BYTE PTR [rdi],dx
    32c5:	6c                   	ins    BYTE PTR [rdi],dx
    32c6:	2e 2e 2e 00 4f 4b    	cs cs cs add BYTE PTR [rdi+0x4b],cl
    32cc:	2e 20 3a             	cs and BYTE PTR [rdx],bh
    32cf:	2d 29 00 49 6e       	sub    eax,0x6e490029
    32d4:	76 61                	jbe    3337 <array.3471+0x177>
    32d6:	6c                   	ins    BYTE PTR [rdi],dx
    32d7:	69 64 20 70 68 61 73 	imul   esp,DWORD PTR [rax+riz*1+0x70],0x65736168
    32de:	65 
    32df:	25 73 0a 00 0a       	and    eax,0xa000a73
    32e4:	42                   	rex.X
    32e5:	4f                   	rex.WRXB
    32e6:	4f                   	rex.WRXB
    32e7:	4d 21 21             	and    QWORD PTR [r9],r12
    32ea:	21 00                	and    DWORD PTR [rax],eax
    32ec:	54                   	push   rsp
    32ed:	68 65 20 62 6f       	push   0x6f622065
    32f2:	6d                   	ins    DWORD PTR [rdi],dx
    32f3:	62                   	(bad)
    32f4:	20 68 61             	and    BYTE PTR [rax+0x61],ch
    32f7:	73 20                	jae    3319 <array.3471+0x159>
    32f9:	62 6c 6f 77 6e       	(bad)
    32fe:	20 75 70             	and    BYTE PTR [rbp+0x70],dh
    3301:	2e 00 25 64 20 25 64 	cs add BYTE PTR [rip+0x64252064],ah        # 6425536c <_end+0x6424f63c>
    3308:	20 25 64 20 25 64    	and    BYTE PTR [rip+0x64252064],ah        # 64255372 <_end+0x6424f642>
    330e:	20 25 64 20 25 64    	and    BYTE PTR [rip+0x64252064],ah        # 64255378 <_end+0x6424f648>
    3314:	00 45 72             	add    BYTE PTR [rbp+0x72],al
    3317:	72 6f                	jb     3388 <array.3471+0x1c8>
    3319:	72 3a                	jb     3355 <array.3471+0x195>
    331b:	20 50 72             	and    BYTE PTR [rax+0x72],dl
    331e:	65 6d                	gs ins DWORD PTR [rdi],dx
    3320:	61                   	(bad)
    3321:	74 75                	je     3398 <array.3471+0x1d8>
    3323:	72 65                	jb     338a <array.3471+0x1ca>
    3325:	20 45 4f             	and    BYTE PTR [rbp+0x4f],al
    3328:	46 20 6f 6e          	rex.RX and BYTE PTR [rdi+0x6e],r13b
    332c:	20 73 74             	and    BYTE PTR [rbx+0x74],dh
    332f:	64 69 6e 00 47 52 41 	imul   ebp,DWORD PTR fs:[rsi+0x0],0x44415247
    3336:	44 
    3337:	45 5f                	rex.RB pop r15
    3339:	42                   	rex.X
    333a:	4f                   	rex.WRXB
    333b:	4d                   	rex.WRB
    333c:	42 00 45 72          	rex.X add BYTE PTR [rbp+0x72],al
    3340:	72 6f                	jb     33b1 <array.3471+0x1f1>
    3342:	72 3a                	jb     337e <array.3471+0x1be>
    3344:	20 49 6e             	and    BYTE PTR [rcx+0x6e],cl
    3347:	70 75                	jo     33be <array.3471+0x1fe>
    3349:	74 20                	je     336b <array.3471+0x1ab>
    334b:	6c                   	ins    BYTE PTR [rdi],dx
    334c:	69 6e 65 20 74 6f 6f 	imul   ebp,DWORD PTR [rsi+0x65],0x6f6f7420
    3353:	20 6c 6f 6e          	and    BYTE PTR [rdi+rbp*2+0x6e],ch
    3357:	67 00 25 64 20 25 64 	add    BYTE PTR [eip+0x64252064],ah        # 642553c2 <_end+0x6424f692>
    335e:	20 25 73 00 44 72    	and    BYTE PTR [rip+0x72440073],ah        # 724433d7 <_end+0x7243d6a7>
    3364:	45 76 69             	rex.RB jbe 33d0 <array.3471+0x210>
    3367:	6c                   	ins    BYTE PTR [rdi],dx
    3368:	00 67 72             	add    BYTE PTR [rdi+0x72],ah
    336b:	65 61                	gs (bad)
    336d:	74 77                	je     33e6 <array.3471+0x226>
    336f:	68 69 74 65 2e       	push   0x2e657469
    3374:	69 63 73 2e 63 73 2e 	imul   esp,DWORD PTR [rbx+0x73],0x2e73632e
    337b:	63 6d 75             	movsxd ebp,DWORD PTR [rbp+0x75]
    337e:	2e 65 64 75 00       	cs gs fs jne 3383 <array.3471+0x1c3>
    3383:	61                   	(bad)
    3384:	6e                   	outs   dx,BYTE PTR [rsi]
    3385:	67 65 6c             	gs ins BYTE PTR [edi],dx
    3388:	73 68                	jae    33f2 <array.3471+0x232>
    338a:	61                   	(bad)
    338b:	72 6b                	jb     33f8 <array.3471+0x238>
    338d:	2e 69 63 73 2e 63 73 	cs imul esp,DWORD PTR [rbx+0x73],0x2e73632e
    3394:	2e 
    3395:	63 6d 75             	movsxd ebp,DWORD PTR [rbp+0x75]
    3398:	2e 65 64 75 00       	cs gs fs jne 339d <array.3471+0x1dd>
    339d:	6d                   	ins    DWORD PTR [rdi],dx
    339e:	61                   	(bad)
    339f:	6b 6f 73 68          	imul   ebp,DWORD PTR [rdi+0x73],0x68
    33a3:	61                   	(bad)
    33a4:	72 6b                	jb     3411 <array.3471+0x251>
    33a6:	2e 69 63 73 2e 63 73 	cs imul esp,DWORD PTR [rbx+0x73],0x2e73632e
    33ad:	2e 
    33ae:	63 6d 75             	movsxd ebp,DWORD PTR [rbp+0x75]
    33b1:	2e 65 64 75 00       	cs gs fs jne 33b6 <array.3471+0x1f6>
    33b6:	00 00                	add    BYTE PTR [rax],al
    33b8:	50                   	push   rax
    33b9:	72 6f                	jb     342a <array.3471+0x26a>
    33bb:	67 72 61             	addr32 jb 341f <array.3471+0x25f>
    33be:	6d                   	ins    DWORD PTR [rdi],dx
    33bf:	20 74 69 6d          	and    BYTE PTR [rcx+rbp*2+0x6d],dh
    33c3:	65 64 20 6f 75       	gs and BYTE PTR fs:[rdi+0x75],ch
    33c8:	74 20                	je     33ea <array.3471+0x22a>
    33ca:	61                   	(bad)
    33cb:	66 74 65             	data16 je 3433 <array.3471+0x273>
    33ce:	72 20                	jb     33f0 <array.3471+0x230>
    33d0:	25 64 20 73 65       	and    eax,0x65732064
    33d5:	63 6f 6e             	movsxd ebp,DWORD PTR [rdi+0x6e]
    33d8:	64 73 0a             	fs jae 33e5 <array.3471+0x225>
    33db:	00 00                	add    BYTE PTR [rax],al
    33dd:	00 00                	add    BYTE PTR [rax],al
    33df:	00 45 72             	add    BYTE PTR [rbp+0x72],al
    33e2:	72 6f                	jb     3453 <array.3471+0x293>
    33e4:	72 3a                	jb     3420 <array.3471+0x260>
    33e6:	20 48 54             	and    BYTE PTR [rax+0x54],cl
    33e9:	54                   	push   rsp
    33ea:	50                   	push   rax
    33eb:	20 72 65             	and    BYTE PTR [rdx+0x65],dh
    33ee:	71 75                	jno    3465 <array.3471+0x2a5>
    33f0:	65 73 74             	gs jae 3467 <array.3471+0x2a7>
    33f3:	20 66 61             	and    BYTE PTR [rsi+0x61],ah
    33f6:	69 6c 65 64 20 77 69 	imul   ebp,DWORD PTR [rbp+riz*2+0x64],0x74697720
    33fd:	74 
    33fe:	68 20 65 72 72       	push   0x72726520
    3403:	6f                   	outs   dx,DWORD PTR [rsi]
    3404:	72 20                	jb     3426 <array.3471+0x266>
    3406:	25 64 3a 20 25       	and    eax,0x25203a64
    340b:	73 00                	jae    340d <array.3471+0x24d>
    340d:	00 00                	add    BYTE PTR [rax],al
    340f:	00 47 45             	add    BYTE PTR [rdi+0x45],al
    3412:	54                   	push   rsp
    3413:	20 2f                	and    BYTE PTR [rdi],ch
    3415:	25 73 2f 73 75       	and    eax,0x75732f73
    341a:	62 6d 69 74 72       	(bad)
    341f:	2e 70 6c             	cs jo  348e <array.3471+0x2ce>
    3422:	2f                   	(bad)
    3423:	3f                   	(bad)
    3424:	75 73                	jne    3499 <array.3471+0x2d9>
    3426:	65 72 69             	gs jb  3492 <array.3471+0x2d2>
    3429:	64 3d 25 73 26 6c    	fs cmp eax,0x6c267325
    342f:	61                   	(bad)
    3430:	62 3d 25 73 26       	(bad)
    3435:	72 65                	jb     349c <array.3471+0x2dc>
    3437:	73 75                	jae    34ae <array.3471+0x2ee>
    3439:	6c                   	ins    BYTE PTR [rdi],dx
    343a:	74 3d                	je     3479 <array.3471+0x2b9>
    343c:	25 73 26 73 75       	and    eax,0x75732673
    3441:	62 6d 69 74 3d       	(bad)
    3446:	73 75                	jae    34bd <array.3471+0x2fd>
    3448:	62 6d 69 74 20       	(bad)
    344d:	48 54                	rex.W push rsp
    344f:	54                   	push   rsp
    3450:	50                   	push   rax
    3451:	2f                   	(bad)
    3452:	31 2e                	xor    DWORD PTR [rsi],ebp
    3454:	30 0d 0a 0d 0a 00    	xor    BYTE PTR [rip+0xa0d0a],cl        # a4164 <_end+0x9e434>
    345a:	00 00                	add    BYTE PTR [rax],al
    345c:	00 00                	add    BYTE PTR [rax],al
    345e:	00 00                	add    BYTE PTR [rax],al
    3460:	45 72 72             	rex.RB jb 34d5 <array.3471+0x315>
    3463:	6f                   	outs   dx,DWORD PTR [rsi]
    3464:	72 3a                	jb     34a0 <array.3471+0x2e0>
    3466:	20 55 6e             	and    BYTE PTR [rbp+0x6e],dl
    3469:	61                   	(bad)
    346a:	62 6c 65 20 74       	(bad)
    346f:	6f                   	outs   dx,DWORD PTR [rsi]
    3470:	20 63 6f             	and    BYTE PTR [rbx+0x6f],ah
    3473:	6e                   	outs   dx,BYTE PTR [rsi]
    3474:	6e                   	outs   dx,BYTE PTR [rsi]
    3475:	65 63 74 20 74       	movsxd esi,DWORD PTR gs:[rax+riz*1+0x74]
    347a:	6f                   	outs   dx,DWORD PTR [rsi]
    347b:	20 73 65             	and    BYTE PTR [rbx+0x65],dh
    347e:	72 76                	jb     34f6 <__GNU_EH_FRAME_HDR+0x1a>
    3480:	65 72 20             	gs jb  34a3 <array.3471+0x2e3>
    3483:	25 73 00 25 25       	and    eax,0x25250073
    3488:	25 30 32 58 00       	and    eax,0x583230
    348d:	25 73 20 25 64       	and    eax,0x64252073
    3492:	20 25 5b 61 2d 7a    	and    BYTE PTR [rip+0x7a2d615b],ah        # 7a2d95f3 <_end+0x7a2d38c3>
    3498:	41 2d 7a 20 5d 00    	rex.B sub eax,0x5d207a
    349e:	0d 0a 00 4f 4b       	or     eax,0x4b4f000a
    34a3:	00 63 68             	add    BYTE PTR [rbx+0x68],ah
    34a6:	61                   	(bad)
    34a7:	6e                   	outs   dx,BYTE PTR [rsi]
    34a8:	67 65 6d             	gs ins DWORD PTR [edi],dx
    34ab:	65 2e 69 63 73 2e 63 	gs imul esp,DWORD PTR gs:[rbx+0x73],0x2e73632e
    34b2:	73 2e 
    34b4:	63 6d 75             	movsxd ebp,DWORD PTR [rbp+0x75]
    34b7:	2e 65 64 75 00       	cs gs fs jne 34bc <array.3471+0x2fc>
    34bc:	0a 41 55             	or     al,BYTE PTR [rcx+0x55]
    34bf:	54                   	push   rsp
    34c0:	4f 52                	rex.WRXB push r10
    34c2:	45 53                	rex.RB push r11
    34c4:	55                   	push   rbp
    34c5:	4c 54                	rex.WR push rsp
    34c7:	5f                   	pop    rdi
    34c8:	53                   	push   rbx
    34c9:	54                   	push   rsp
    34ca:	52                   	push   rdx
    34cb:	49                   	rex.WB
    34cc:	4e                   	rex.WRX
    34cd:	47 3d 25 73 0a 00    	rex.RXB cmp eax,0xa7325
    34d3:	63 73 61             	movsxd esi,DWORD PTR [rbx+0x61]
    34d6:	70 70                	jo     3548 <__GNU_EH_FRAME_HDR+0x6c>
	...

Disassembly of section .eh_frame_hdr:

00000000000034dc <__GNU_EH_FRAME_HDR>:
    34dc:	01 1b                	add    DWORD PTR [rbx],ebx
    34de:	03 3b                	add    edi,DWORD PTR [rbx]
    34e0:	18 01                	sbb    BYTE PTR [rcx],al
    34e2:	00 00                	add    BYTE PTR [rax],al
    34e4:	22 00                	and    al,BYTE PTR [rax]
    34e6:	00 00                	add    BYTE PTR [rax],al
    34e8:	44 db ff             	rex.R (bad)
    34eb:	ff 4c 01 00          	dec    DWORD PTR [rcx+rax*1+0x0]
    34ef:	00 e4                	add    ah,ah
    34f1:	dc ff                	fdiv   st(7),st
    34f3:	ff 74 01 00          	push   QWORD PTR [rcx+rax*1+0x0]
    34f7:	00 f4                	add    ah,dh
    34f9:	dc ff                	fdiv   st(7),st
    34fb:	ff 8c 01 00 00 84 de 	dec    DWORD PTR [rcx+rax*1-0x217c0000]
    3502:	ff                   	(bad)
    3503:	ff 34 01             	push   QWORD PTR [rcx+rax*1]
    3506:	00 00                	add    BYTE PTR [rax],al
    3508:	6d                   	ins    DWORD PTR [rdi],dx
    3509:	df ff                	(bad)
    350b:	ff a4 01 00 00 cb e0 	jmp    QWORD PTR [rcx+rax*1-0x1f350000]
    3512:	ff                   	(bad)
    3513:	ff c4                	inc    esp
    3515:	01 00                	add    DWORD PTR [rax],eax
    3517:	00 ef                	add    bh,ch
    3519:	e0 ff                	loopne 351a <__GNU_EH_FRAME_HDR+0x3e>
    351b:	ff e0                	jmp    rax
    351d:	01 00                	add    DWORD PTR [rax],eax
    351f:	00 5d e1             	add    BYTE PTR [rbp-0x1f],bl
    3522:	ff                   	(bad)
    3523:	ff 0c 02             	dec    DWORD PTR [rdx+rax*1]
    3526:	00 00                	add    BYTE PTR [rax],al
    3528:	39 e2                	cmp    edx,esp
    352a:	ff                   	(bad)
    352b:	ff 28                	jmp    FWORD PTR [rax]
    352d:	02 00                	add    al,BYTE PTR [rax]
    352f:	00 6f e2             	add    BYTE PTR [rdi-0x1e],ch
    3532:	ff                   	(bad)
    3533:	ff 44 02 00          	inc    DWORD PTR [rdx+rax*1+0x0]
    3537:	00 e8                	add    al,ch
    3539:	e2 ff                	loop   353a <__GNU_EH_FRAME_HDR+0x5e>
    353b:	ff 60 02             	jmp    QWORD PTR [rax+0x2]
    353e:	00 00                	add    BYTE PTR [rax],al
    3540:	7f e3                	jg     3525 <__GNU_EH_FRAME_HDR+0x49>
    3542:	ff                   	(bad)
    3543:	ff                   	(bad)
    3544:	7c 02                	jl     3548 <__GNU_EH_FRAME_HDR+0x6c>
    3546:	00 00                	add    BYTE PTR [rax],al
    3548:	a7                   	cmps   DWORD PTR [rsi],DWORD PTR [rdi]
    3549:	e4 ff                	in     al,0xff
    354b:	ff c4                	inc    esp
    354d:	02 00                	add    al,BYTE PTR [rax]
    354f:	00 e8                	add    al,ch
    3551:	e4 ff                	in     al,0xff
    3553:	ff e4                	jmp    rsp
    3555:	02 00                	add    al,BYTE PTR [rax]
    3557:	00 45 e5             	add    BYTE PTR [rbp-0x1b],al
    355a:	ff                   	(bad)
    355b:	ff 04 03             	inc    DWORD PTR [rbx+rax*1]
    355e:	00 00                	add    BYTE PTR [rax],al
    3560:	a7                   	cmps   DWORD PTR [rsi],DWORD PTR [rdi]
    3561:	e5 ff                	in     eax,0xff
    3563:	ff 20                	jmp    QWORD PTR [rax]
    3565:	03 00                	add    eax,DWORD PTR [rax]
    3567:	00 d4                	add    ah,dl
    3569:	e5 ff                	in     eax,0xff
    356b:	ff                   	(bad)
    356c:	3c 03                	cmp    al,0x3
    356e:	00 00                	add    BYTE PTR [rax],al
    3570:	f5                   	cmc
    3571:	e5 ff                	in     eax,0xff
    3573:	ff 50 03             	call   QWORD PTR [rax+0x3]
    3576:	00 00                	add    BYTE PTR [rax],al
    3578:	55                   	push   rbp
    3579:	e6 ff                	out    0xff,al
    357b:	ff                   	(bad)
    357c:	7c 03                	jl     3581 <__GNU_EH_FRAME_HDR+0xa5>
    357e:	00 00                	add    BYTE PTR [rax],al
    3580:	73 e6                	jae    3568 <__GNU_EH_FRAME_HDR+0x8c>
    3582:	ff                   	(bad)
    3583:	ff 94 03 00 00 78 e6 	call   QWORD PTR [rbx+rax*1-0x19880000]
    358a:	ff                   	(bad)
    358b:	ff a8 03 00 00 b7    	jmp    FWORD PTR [rax-0x48fffffd]
    3591:	e6 ff                	out    0xff,al
    3593:	ff d0                	call   rax
    3595:	03 00                	add    eax,DWORD PTR [rax]
    3597:	00 09                	add    BYTE PTR [rcx],cl
    3599:	e7 ff                	out    0xff,eax
    359b:	ff                   	(bad)
    359c:	f8                   	clc
    359d:	03 00                	add    eax,DWORD PTR [rax]
    359f:	00 35 e7 ff ff 14    	add    BYTE PTR [rip+0x14ffffe7],dh        # 1500358c <_end+0x14ffd85c>
    35a5:	04 00                	add    al,0x0
    35a7:	00 7a e7             	add    BYTE PTR [rdx-0x19],bh
    35aa:	ff                   	(bad)
    35ab:	ff                   	(bad)
    35ac:	38 04 00             	cmp    BYTE PTR [rax+rax*1],al
    35af:	00 c2                	add    dl,al
    35b1:	e8 ff ff 54 04       	call   45535b5 <_end+0x454d885>
    35b6:	00 00                	add    BYTE PTR [rax],al
    35b8:	6b e9 ff             	imul   ebp,ecx,0xffffffff
    35bb:	ff 74 04 00          	push   QWORD PTR [rsp+rax*1+0x0]
    35bf:	00 a1 e9 ff ff 90    	add    BYTE PTR [rcx-0x6f000017],ah
    35c5:	04 00                	add    al,0x0
    35c7:	00 6a ea             	add    BYTE PTR [rdx-0x16],ch
    35ca:	ff                   	(bad)
    35cb:	ff d0                	call   rax
    35cd:	04 00                	add    al,0x0
    35cf:	00 8c f2 ff ff 3c 05 	add    BYTE PTR [rdx+rsi*8+0x53cffff],cl
    35d6:	00 00                	add    BYTE PTR [rax],al
    35d8:	ba f2 ff ff 58       	mov    edx,0x58fffff2
    35dd:	05 00 00 af f4       	add    eax,0xf4af0000
    35e2:	ff                   	(bad)
    35e3:	ff 8c 05 00 00 34 f5 	dec    DWORD PTR [rbp+rax*1-0xacc0000]
    35ea:	ff                   	(bad)
    35eb:	ff b4 05 00 00 a4 f5 	push   QWORD PTR [rbp+rax*1-0xa5c0000]
    35f2:	ff                   	(bad)
    35f3:	ff                   	(bad)
    35f4:	fc                   	cld
    35f5:	05                   	.byte 0x5
	...

Disassembly of section .eh_frame:

00000000000035f8 <__FRAME_END__-0x4f4>:
    35f8:	14 00                	adc    al,0x0
    35fa:	00 00                	add    BYTE PTR [rax],al
    35fc:	00 00                	add    BYTE PTR [rax],al
    35fe:	00 00                	add    BYTE PTR [rax],al
    3600:	01 7a 52             	add    DWORD PTR [rdx+0x52],edi
    3603:	00 01                	add    BYTE PTR [rcx],al
    3605:	78 10                	js     3617 <__GNU_EH_FRAME_HDR+0x13b>
    3607:	01 1b                	add    DWORD PTR [rbx],ebx
    3609:	0c 07                	or     al,0x7
    360b:	08 90 01 00 00 14    	or     BYTE PTR [rax+0x14000001],dl
    3611:	00 00                	add    BYTE PTR [rax],al
    3613:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    3616:	00 00                	add    BYTE PTR [rax],al
    3618:	48 dd ff             	rex.W (bad)
    361b:	ff 2f                	jmp    FWORD PTR [rdi]
    361d:	00 00                	add    BYTE PTR [rax],al
    361f:	00 00                	add    BYTE PTR [rax],al
    3621:	44 07                	rex.R (bad)
    3623:	10 00                	adc    BYTE PTR [rax],al
    3625:	00 00                	add    BYTE PTR [rax],al
    3627:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
    362a:	00 00                	add    BYTE PTR [rax],al
    362c:	34 00                	xor    al,0x0
    362e:	00 00                	add    BYTE PTR [rax],al
    3630:	f0 d9 ff             	lock fcos
    3633:	ff a0 01 00 00 00    	jmp    QWORD PTR [rax+0x1]
    3639:	0e                   	(bad)
    363a:	10 46 0e             	adc    BYTE PTR [rsi+0xe],al
    363d:	18 4a 0f             	sbb    BYTE PTR [rdx+0xf],cl
    3640:	0b 77 08             	or     esi,DWORD PTR [rdi+0x8]
    3643:	80 00 3f             	add    BYTE PTR [rax],0x3f
    3646:	1a 3a                	sbb    bh,BYTE PTR [rdx]
    3648:	2a 33                	sub    dh,BYTE PTR [rbx]
    364a:	24 22                	and    al,0x22
    364c:	00 00                	add    BYTE PTR [rax],al
    364e:	00 00                	add    BYTE PTR [rax],al
    3650:	14 00                	adc    al,0x0
    3652:	00 00                	add    BYTE PTR [rax],al
    3654:	5c                   	pop    rsp
    3655:	00 00                	add    BYTE PTR [rax],al
    3657:	00 68 db             	add    BYTE PTR [rax-0x25],ch
    365a:	ff                   	(bad)
    365b:	ff 10                	call   QWORD PTR [rax]
	...
    3665:	00 00                	add    BYTE PTR [rax],al
    3667:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
    366a:	00 00                	add    BYTE PTR [rax],al
    366c:	74 00                	je     366e <__GNU_EH_FRAME_HDR+0x192>
    366e:	00 00                	add    BYTE PTR [rax],al
    3670:	60                   	(bad)
    3671:	db ff                	(bad)
    3673:	ff 90 01 00 00 00    	call   QWORD PTR [rax+0x1]
    3679:	00 00                	add    BYTE PTR [rax],al
    367b:	00 00                	add    BYTE PTR [rax],al
    367d:	00 00                	add    BYTE PTR [rax],al
    367f:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    3682:	00 00                	add    BYTE PTR [rax],al
    3684:	8c 00                	mov    WORD PTR [rax],es
    3686:	00 00                	add    BYTE PTR [rax],al
    3688:	c1 dd ff             	rcr    ebp,0xff
    368b:	ff 5e 01             	call   FWORD PTR [rsi+0x1]
    368e:	00 00                	add    BYTE PTR [rax],al
    3690:	00 45 0e             	add    BYTE PTR [rbp+0xe],al
    3693:	10 83 02 03 00 01    	adc    BYTE PTR [rbx+0x1000302],al
    3699:	0a 0e                	or     cl,BYTE PTR [rsi]
    369b:	08 41 0b             	or     BYTE PTR [rcx+0xb],al
    369e:	00 00                	add    BYTE PTR [rax],al
    36a0:	18 00                	sbb    BYTE PTR [rax],al
    36a2:	00 00                	add    BYTE PTR [rax],al
    36a4:	ac                   	lods   al,BYTE PTR [rsi]
    36a5:	00 00                	add    BYTE PTR [rax],al
    36a7:	00 ff                	add    bh,bh
    36a9:	de ff                	fdivp  st(7),st
    36ab:	ff 24 00             	jmp    QWORD PTR [rax+rax*1]
    36ae:	00 00                	add    BYTE PTR [rax],al
    36b0:	00 48 0e             	add    BYTE PTR [rax+0xe],cl
    36b3:	10 54 0a 0e          	adc    BYTE PTR [rdx+rcx*1+0xe],dl
    36b7:	08 41 0b             	or     BYTE PTR [rcx+0xb],al
    36ba:	00 00                	add    BYTE PTR [rax],al
    36bc:	28 00                	sub    BYTE PTR [rax],al
    36be:	00 00                	add    BYTE PTR [rax],al
    36c0:	c8 00 00 00          	enter  0x0,0x0
    36c4:	07                   	(bad)
    36c5:	df ff                	(bad)
    36c7:	ff 6e 00             	jmp    FWORD PTR [rsi+0x0]
    36ca:	00 00                	add    BYTE PTR [rax],al
    36cc:	00 45 0e             	add    BYTE PTR [rbp+0xe],al
    36cf:	10 86 02 41 0e 18    	adc    BYTE PTR [rsi+0x180e4102],al
    36d5:	83 03 44             	add    DWORD PTR [rbx],0x44
    36d8:	0e                   	(bad)
    36d9:	40 02 5c 0a 0e       	rex add bl,BYTE PTR [rdx+rcx*1+0xe]
    36de:	18 41 0e             	sbb    BYTE PTR [rcx+0xe],al
    36e1:	10 41 0e             	adc    BYTE PTR [rcx+0xe],al
    36e4:	08 41 0b             	or     BYTE PTR [rcx+0xb],al
    36e7:	00 18                	add    BYTE PTR [rax],bl
    36e9:	00 00                	add    BYTE PTR [rax],al
    36eb:	00 f4                	add    ah,dh
    36ed:	00 00                	add    BYTE PTR [rax],al
    36ef:	00 49 df             	add    BYTE PTR [rcx-0x21],cl
    36f2:	ff                   	(bad)
    36f3:	ff                   	call   (bad)
    36f4:	dc 00                	fadd   QWORD PTR [rax]
    36f6:	00 00                	add    BYTE PTR [rax],al
    36f8:	00 48 0e             	add    BYTE PTR [rax+0xe],cl
    36fb:	20 02                	and    BYTE PTR [rdx],al
    36fd:	91                   	xchg   ecx,eax
    36fe:	0a 0e                	or     cl,BYTE PTR [rsi]
    3700:	08 41 0b             	or     BYTE PTR [rcx+0xb],al
    3703:	00 18                	add    BYTE PTR [rax],bl
    3705:	00 00                	add    BYTE PTR [rax],al
    3707:	00 10                	add    BYTE PTR [rax],dl
    3709:	01 00                	add    DWORD PTR [rax],eax
    370b:	00 09                	add    BYTE PTR [rcx],cl
    370d:	e0 ff                	loopne 370e <__GNU_EH_FRAME_HDR+0x232>
    370f:	ff 36                	push   QWORD PTR [rsi]
    3711:	00 00                	add    BYTE PTR [rax],al
    3713:	00 00                	add    BYTE PTR [rax],al
    3715:	45 0e                	rex.RB (bad)
    3717:	10 83 02 58 0a 0e    	adc    BYTE PTR [rbx+0xe0a5802],al
    371d:	08 41 0b             	or     BYTE PTR [rcx+0xb],al
    3720:	18 00                	sbb    BYTE PTR [rax],al
    3722:	00 00                	add    BYTE PTR [rax],al
    3724:	2c 01                	sub    al,0x1
    3726:	00 00                	add    BYTE PTR [rax],al
    3728:	23 e0                	and    esp,eax
    372a:	ff                   	(bad)
    372b:	ff                   	(bad)
    372c:	79 00                	jns    372e <__GNU_EH_FRAME_HDR+0x252>
    372e:	00 00                	add    BYTE PTR [rax],al
    3730:	00 48 0e             	add    BYTE PTR [rax+0xe],cl
    3733:	20 02                	and    BYTE PTR [rdx],al
    3735:	6b 0a 0e             	imul   ecx,DWORD PTR [rdx],0xe
    3738:	08 41 0b             	or     BYTE PTR [rcx+0xb],al
    373b:	00 18                	add    BYTE PTR [rax],bl
    373d:	00 00                	add    BYTE PTR [rax],al
    373f:	00 48 01             	add    BYTE PTR [rax+0x1],cl
    3742:	00 00                	add    BYTE PTR [rax],al
    3744:	80 e0 ff             	and    al,0xff
    3747:	ff 97 00 00 00 00    	call   QWORD PTR [rdi+0x0]
    374d:	48 0e                	rex.W (bad)
    374f:	20 02                	and    BYTE PTR [rdx],al
    3751:	82                   	(bad)
    3752:	0a 0e                	or     cl,BYTE PTR [rsi]
    3754:	08 41 0b             	or     BYTE PTR [rcx+0xb],al
    3757:	00 44 00 00          	add    BYTE PTR [rax+rax*1+0x0],al
    375b:	00 64 01 00          	add    BYTE PTR [rcx+rax*1+0x0],ah
    375f:	00 fb                	add    bl,bh
    3761:	e0 ff                	loopne 3762 <__GNU_EH_FRAME_HDR+0x286>
    3763:	ff 28                	jmp    FWORD PTR [rax]
    3765:	01 00                	add    DWORD PTR [rax],eax
    3767:	00 00                	add    BYTE PTR [rax],al
    3769:	46 0e                	rex.RX (bad)
    376b:	10 8e 02 42 0e 18    	adc    BYTE PTR [rsi+0x180e4202],cl
    3771:	8d 03                	lea    eax,[rbx]
    3773:	42 0e                	rex.X (bad)
    3775:	20 8c 04 41 0e 28 86 	and    BYTE PTR [rsp+rax*1-0x79d7f1bf],cl
    377c:	05 41 0e 30 83       	add    eax,0x83300e41
    3781:	06                   	(bad)
    3782:	44 0e                	rex.R (bad)
    3784:	90                   	nop
    3785:	01 03                	add    DWORD PTR [rbx],eax
    3787:	0a 01                	or     al,BYTE PTR [rcx]
    3789:	0a 0e                	or     cl,BYTE PTR [rsi]
    378b:	30 41 0e             	xor    BYTE PTR [rcx+0xe],al
    378e:	28 41 0e             	sub    BYTE PTR [rcx+0xe],al
    3791:	20 42 0e             	and    BYTE PTR [rdx+0xe],al
    3794:	18 42 0e             	sbb    BYTE PTR [rdx+0xe],al
    3797:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
    379a:	08 41 0b             	or     BYTE PTR [rcx+0xb],al
    379d:	00 00                	add    BYTE PTR [rax],al
    379f:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    37a2:	00 00                	add    BYTE PTR [rax],al
    37a4:	ac                   	lods   al,BYTE PTR [rsi]
    37a5:	01 00                	add    DWORD PTR [rax],eax
    37a7:	00 db                	add    bl,bl
    37a9:	e1 ff                	loope  37aa <__GNU_EH_FRAME_HDR+0x2ce>
    37ab:	ff 41 00             	inc    DWORD PTR [rcx+0x0]
    37ae:	00 00                	add    BYTE PTR [rax],al
    37b0:	00 4d 0e             	add    BYTE PTR [rbp+0xe],cl
    37b3:	10 51 0a             	adc    BYTE PTR [rcx+0xa],dl
    37b6:	0e                   	(bad)
    37b7:	08 41 0b             	or     BYTE PTR [rcx+0xb],al
    37ba:	5c                   	pop    rsp
    37bb:	0e                   	(bad)
    37bc:	08 00                	or     BYTE PTR [rax],al
    37be:	00 00                	add    BYTE PTR [rax],al
    37c0:	1c 00                	sbb    al,0x0
    37c2:	00 00                	add    BYTE PTR [rax],al
    37c4:	cc                   	int3
    37c5:	01 00                	add    DWORD PTR [rax],eax
    37c7:	00 fc                	add    ah,bh
    37c9:	e1 ff                	loope  37ca <__GNU_EH_FRAME_HDR+0x2ee>
    37cb:	ff 5d 00             	call   FWORD PTR [rbp+0x0]
    37ce:	00 00                	add    BYTE PTR [rax],al
    37d0:	00 45 0e             	add    BYTE PTR [rbp+0xe],al
    37d3:	10 83 02 02 49 0a    	adc    BYTE PTR [rbx+0xa490202],al
    37d9:	0e                   	(bad)
    37da:	08 41 0b             	or     BYTE PTR [rcx+0xb],al
    37dd:	00 00                	add    BYTE PTR [rax],al
    37df:	00 18                	add    BYTE PTR [rax],bl
    37e1:	00 00                	add    BYTE PTR [rax],al
    37e3:	00 ec                	add    ah,ch
    37e5:	01 00                	add    DWORD PTR [rax],eax
    37e7:	00 39                	add    BYTE PTR [rcx],bh
    37e9:	e2 ff                	loop   37ea <__GNU_EH_FRAME_HDR+0x30e>
    37eb:	ff 62 00             	jmp    QWORD PTR [rdx+0x0]
    37ee:	00 00                	add    BYTE PTR [rax],al
    37f0:	00 45 0e             	add    BYTE PTR [rbp+0xe],al
    37f3:	10 41 0e             	adc    BYTE PTR [rcx+0xe],al
    37f6:	08 44 0e 10          	or     BYTE PTR [rsi+rcx*1+0x10],al
    37fa:	00 00                	add    BYTE PTR [rax],al
    37fc:	18 00                	sbb    BYTE PTR [rax],al
    37fe:	00 00                	add    BYTE PTR [rax],al
    3800:	08 02                	or     BYTE PTR [rdx],al
    3802:	00 00                	add    BYTE PTR [rax],al
    3804:	7f e2                	jg     37e8 <__GNU_EH_FRAME_HDR+0x30c>
    3806:	ff                   	(bad)
    3807:	ff 2d 00 00 00 00    	jmp    FWORD PTR [rip+0x0]        # 380d <__GNU_EH_FRAME_HDR+0x331>
    380d:	45 0e                	rex.RB (bad)
    380f:	10 41 0e             	adc    BYTE PTR [rcx+0xe],al
    3812:	08 44 0e 10          	or     BYTE PTR [rsi+rcx*1+0x10],al
    3816:	00 00                	add    BYTE PTR [rax],al
    3818:	10 00                	adc    BYTE PTR [rax],al
    381a:	00 00                	add    BYTE PTR [rax],al
    381c:	24 02                	and    al,0x2
    381e:	00 00                	add    BYTE PTR [rax],al
    3820:	90                   	nop
    3821:	e2 ff                	loop   3822 <__GNU_EH_FRAME_HDR+0x346>
    3823:	ff 21                	jmp    QWORD PTR [rcx]
    3825:	00 00                	add    BYTE PTR [rax],al
    3827:	00 00                	add    BYTE PTR [rax],al
    3829:	00 00                	add    BYTE PTR [rax],al
    382b:	00 28                	add    BYTE PTR [rax],ch
    382d:	00 00                	add    BYTE PTR [rax],al
    382f:	00 38                	add    BYTE PTR [rax],bh
    3831:	02 00                	add    al,BYTE PTR [rax]
    3833:	00 9d e2 ff ff 60    	add    BYTE PTR [rbp+0x60ffffe2],bl
    3839:	00 00                	add    BYTE PTR [rax],al
    383b:	00 00                	add    BYTE PTR [rax],al
    383d:	46 0e                	rex.RX (bad)
    383f:	10 8c 02 41 0e 18 86 	adc    BYTE PTR [rdx+rax*1-0x79e7f1bf],cl
    3846:	03 41 0e             	add    eax,DWORD PTR [rcx+0xe]
    3849:	20 83 04 02 54 0e    	and    BYTE PTR [rbx+0xe540204],al
    384f:	18 41 0e             	sbb    BYTE PTR [rcx+0xe],al
    3852:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
    3855:	08 00                	or     BYTE PTR [rax],al
    3857:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
    385a:	00 00                	add    BYTE PTR [rax],al
    385c:	64 02 00             	add    al,BYTE PTR fs:[rax]
    385f:	00 d1                	add    cl,dl
    3861:	e2 ff                	loop   3862 <__GNU_EH_FRAME_HDR+0x386>
    3863:	ff 1e                	call   FWORD PTR [rsi]
    3865:	00 00                	add    BYTE PTR [rax],al
    3867:	00 00                	add    BYTE PTR [rax],al
    3869:	48 0e                	rex.W (bad)
    386b:	10 55 0e             	adc    BYTE PTR [rbp+0xe],dl
    386e:	08 00                	or     BYTE PTR [rax],al
    3870:	10 00                	adc    BYTE PTR [rax],al
    3872:	00 00                	add    BYTE PTR [rax],al
    3874:	7c 02                	jl     3878 <__GNU_EH_FRAME_HDR+0x39c>
    3876:	00 00                	add    BYTE PTR [rax],al
    3878:	d7                   	xlat   BYTE PTR [rbx]
    3879:	e2 ff                	loop   387a <__GNU_EH_FRAME_HDR+0x39e>
    387b:	ff 05 00 00 00 00    	inc    DWORD PTR [rip+0x0]        # 3881 <__GNU_EH_FRAME_HDR+0x3a5>
    3881:	00 00                	add    BYTE PTR [rax],al
    3883:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
    3886:	00 00                	add    BYTE PTR [rax],al
    3888:	90                   	nop
    3889:	02 00                	add    al,BYTE PTR [rax]
    388b:	00 c8                	add    al,cl
    388d:	e2 ff                	loop   388e <__GNU_EH_FRAME_HDR+0x3b2>
    388f:	ff                   	(bad)
    3890:	3f                   	(bad)
    3891:	00 00                	add    BYTE PTR [rax],al
    3893:	00 00                	add    BYTE PTR [rax],al
    3895:	45 0e                	rex.RB (bad)
    3897:	10 86 02 41 0e 18    	adc    BYTE PTR [rsi+0x180e4102],al
    389d:	83 03 44             	add    DWORD PTR [rbx],0x44
    38a0:	0e                   	(bad)
    38a1:	20 72 0e             	and    BYTE PTR [rdx+0xe],dh
    38a4:	18 41 0e             	sbb    BYTE PTR [rcx+0xe],al
    38a7:	10 41 0e             	adc    BYTE PTR [rcx+0xe],al
    38aa:	08 00                	or     BYTE PTR [rax],al
    38ac:	24 00                	and    al,0x0
    38ae:	00 00                	add    BYTE PTR [rax],al
    38b0:	b8 02 00 00 df       	mov    eax,0xdf000002
    38b5:	e2 ff                	loop   38b6 <__GNU_EH_FRAME_HDR+0x3da>
    38b7:	ff 52 00             	call   QWORD PTR [rdx+0x0]
    38ba:	00 00                	add    BYTE PTR [rax],al
    38bc:	00 45 0e             	add    BYTE PTR [rbp+0xe],al
    38bf:	10 86 02 41 0e 18    	adc    BYTE PTR [rsi+0x180e4102],al
    38c5:	83 03 44             	add    DWORD PTR [rbx],0x44
    38c8:	0e                   	(bad)
    38c9:	20 02                	and    BYTE PTR [rdx],al
    38cb:	45 0e                	rex.RB (bad)
    38cd:	18 41 0e             	sbb    BYTE PTR [rcx+0xe],al
    38d0:	10 41 0e             	adc    BYTE PTR [rcx+0xe],al
    38d3:	08 18                	or     BYTE PTR [rax],bl
    38d5:	00 00                	add    BYTE PTR [rax],al
    38d7:	00 e0                	add    al,ah
    38d9:	02 00                	add    al,BYTE PTR [rax]
    38db:	00 09                	add    BYTE PTR [rcx],cl
    38dd:	e3 ff                	jrcxz  38de <__GNU_EH_FRAME_HDR+0x402>
    38df:	ff 2c 00             	jmp    FWORD PTR [rax+rax*1]
    38e2:	00 00                	add    BYTE PTR [rax],al
    38e4:	00 45 0e             	add    BYTE PTR [rbp+0xe],al
    38e7:	10 41 0e             	adc    BYTE PTR [rcx+0xe],al
    38ea:	08 44 0e 10          	or     BYTE PTR [rsi+rcx*1+0x10],al
    38ee:	00 00                	add    BYTE PTR [rax],al
    38f0:	20 00                	and    BYTE PTR [rax],al
    38f2:	00 00                	add    BYTE PTR [rax],al
    38f4:	fc                   	cld
    38f5:	02 00                	add    al,BYTE PTR [rax]
    38f7:	00 19                	add    BYTE PTR [rcx],bl
    38f9:	e3 ff                	jrcxz  38fa <__GNU_EH_FRAME_HDR+0x41e>
    38fb:	ff 45 00             	inc    DWORD PTR [rbp+0x0]
    38fe:	00 00                	add    BYTE PTR [rax],al
    3900:	00 48 0e             	add    BYTE PTR [rax+0xe],cl
    3903:	10 4c 0e 18          	adc    BYTE PTR [rsi+rcx*1+0x18],cl
    3907:	45 0e                	rex.RB (bad)
    3909:	20 5d 0e             	and    BYTE PTR [rbp+0xe],bl
    390c:	10 49 0a             	adc    BYTE PTR [rcx+0xa],cl
    390f:	0e                   	(bad)
    3910:	08 41 0b             	or     BYTE PTR [rcx+0xb],al
    3913:	00 18                	add    BYTE PTR [rax],bl
    3915:	00 00                	add    BYTE PTR [rax],al
    3917:	00 20                	add    BYTE PTR [rax],ah
    3919:	03 00                	add    eax,DWORD PTR [rax]
    391b:	00 3a                	add    BYTE PTR [rdx],bh
    391d:	e3 ff                	jrcxz  391e <__GNU_EH_FRAME_HDR+0x442>
    391f:	ff 48 01             	dec    DWORD PTR [rax+0x1]
    3922:	00 00                	add    BYTE PTR [rax],al
    3924:	00 48 0e             	add    BYTE PTR [rax+0xe],cl
    3927:	10 02                	adc    BYTE PTR [rdx],al
    3929:	7d 0a                	jge    3935 <__GNU_EH_FRAME_HDR+0x459>
    392b:	0e                   	(bad)
    392c:	08 41 0b             	or     BYTE PTR [rcx+0xb],al
    392f:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    3932:	00 00                	add    BYTE PTR [rax],al
    3934:	3c 03                	cmp    al,0x3
    3936:	00 00                	add    BYTE PTR [rax],al
    3938:	66 e4 ff             	data16 in al,0xff
    393b:	ff a9 00 00 00 00    	jmp    FWORD PTR [rcx+0x0]
    3941:	48 0e                	rex.W (bad)
    3943:	80 01 6d             	add    BYTE PTR [rcx],0x6d
    3946:	0a 0e                	or     cl,BYTE PTR [rsi]
    3948:	08 41 0b             	or     BYTE PTR [rcx+0xb],al
    394b:	00 00                	add    BYTE PTR [rax],al
    394d:	00 00                	add    BYTE PTR [rax],al
    394f:	00 18                	add    BYTE PTR [rax],bl
    3951:	00 00                	add    BYTE PTR [rax],al
    3953:	00 5c 03 00          	add    BYTE PTR [rbx+rax*1+0x0],bl
    3957:	00 ef                	add    bh,ch
    3959:	e4 ff                	in     al,0xff
    395b:	ff 36                	push   QWORD PTR [rsi]
    395d:	00 00                	add    BYTE PTR [rax],al
    395f:	00 00                	add    BYTE PTR [rax],al
    3961:	45 0e                	rex.RB (bad)
    3963:	10 41 0e             	adc    BYTE PTR [rcx+0xe],al
    3966:	08 44 0e 10          	or     BYTE PTR [rsi+rcx*1+0x10],al
    396a:	00 00                	add    BYTE PTR [rax],al
    396c:	3c 00                	cmp    al,0x0
    396e:	00 00                	add    BYTE PTR [rax],al
    3970:	78 03                	js     3975 <__GNU_EH_FRAME_HDR+0x499>
    3972:	00 00                	add    BYTE PTR [rax],al
    3974:	09 e5                	or     ebp,esp
    3976:	ff                   	(bad)
    3977:	ff c9                	dec    ecx
    3979:	00 00                	add    BYTE PTR [rax],al
    397b:	00 00                	add    BYTE PTR [rax],al
    397d:	42 0e                	rex.X (bad)
    397f:	10 8e 02 42 0e 18    	adc    BYTE PTR [rsi+0x180e4202],cl
    3985:	8d 03                	lea    eax,[rbx]
    3987:	42 0e                	rex.X (bad)
    3989:	20 8c 04 41 0e 28 86 	and    BYTE PTR [rsp+rax*1-0x79d7f1bf],cl
    3990:	05 41 0e 30 83       	add    eax,0x83300e41
    3995:	06                   	(bad)
    3996:	02 b0 0a 0e 28 41    	add    dh,BYTE PTR [rax+0x41280e0a]
    399c:	0e                   	(bad)
    399d:	20 42 0e             	and    BYTE PTR [rdx+0xe],al
    39a0:	18 42 0e             	sbb    BYTE PTR [rdx+0xe],al
    39a3:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
    39a6:	08 41 0b             	or     BYTE PTR [rcx+0xb],al
    39a9:	00 00                	add    BYTE PTR [rax],al
    39ab:	00 68 00             	add    BYTE PTR [rax+0x0],ch
    39ae:	00 00                	add    BYTE PTR [rax],al
    39b0:	b8 03 00 00 92       	mov    eax,0x92000003
    39b5:	e5 ff                	in     eax,0xff
    39b7:	ff 22                	jmp    QWORD PTR [rdx]
    39b9:	08 00                	or     BYTE PTR [rax],al
    39bb:	00 00                	add    BYTE PTR [rax],al
    39bd:	46 0e                	rex.RX (bad)
    39bf:	10 8f 02 42 0e 18    	adc    BYTE PTR [rdi+0x180e4202],cl
    39c5:	8e 03                	mov    es,WORD PTR [rbx]
    39c7:	42 0e                	rex.X (bad)
    39c9:	20 8d 04 42 0e 28    	and    BYTE PTR [rbp+0x280e4204],cl
    39cf:	8c 05 41 0e 30 86    	mov    WORD PTR [rip+0xffffffff86300e41],es        # ffffffff86304816 <_end+0xffffffff862feae6>
    39d5:	06                   	(bad)
    39d6:	41 0e                	rex.B (bad)
    39d8:	38 83 07 48 0c 0b    	cmp    BYTE PTR [rbx+0xb0c4807],al
    39de:	b8 c0 02 51 0d       	mov    eax,0xd5102c0
    39e3:	07                   	(bad)
    39e4:	44 0e                	rex.R (bad)
    39e6:	a0 c1 02 03 f5 04 0a 	movabs al,ds:0x380e0a04f50302c1
    39ed:	0e 38 
    39ef:	41 0e                	rex.B (bad)
    39f1:	30 41 0e             	xor    BYTE PTR [rcx+0xe],al
    39f4:	28 42 0e             	sub    BYTE PTR [rdx+0xe],al
    39f7:	20 42 0e             	and    BYTE PTR [rdx+0xe],al
    39fa:	18 42 0e             	sbb    BYTE PTR [rdx+0xe],al
    39fd:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
    3a00:	08 41 0b             	or     BYTE PTR [rcx+0xb],al
    3a03:	03 70 01             	add    esi,DWORD PTR [rax+0x1]
    3a06:	0e                   	(bad)
    3a07:	a8 c1                	test   al,0xc1
    3a09:	02 44 0e b0          	add    al,BYTE PTR [rsi+rcx*1-0x50]
    3a0d:	c1 02 02             	rol    DWORD PTR [rdx],0x2
    3a10:	40 0e                	rex (bad)
    3a12:	a0 c1 02 00 00 00 18 	movabs al,ds:0x1800000002c1
    3a19:	00 00 
    3a1b:	00 24 04             	add    BYTE PTR [rsp+rax*1],ah
    3a1e:	00 00                	add    BYTE PTR [rax],al
    3a20:	48 ed                	rex.W in eax,dx
    3a22:	ff                   	(bad)
    3a23:	ff 2e                	jmp    FWORD PTR [rsi]
    3a25:	00 00                	add    BYTE PTR [rax],al
    3a27:	00 00                	add    BYTE PTR [rax],al
    3a29:	4a 0e                	rex.WX (bad)
    3a2b:	10 83 02 63 0e 08    	adc    BYTE PTR [rbx+0x80e6302],al
    3a31:	00 00                	add    BYTE PTR [rax],al
    3a33:	00 30                	add    BYTE PTR [rax],dh
    3a35:	00 00                	add    BYTE PTR [rax],al
    3a37:	00 40 04             	add    BYTE PTR [rax+0x4],al
    3a3a:	00 00                	add    BYTE PTR [rax],al
    3a3c:	5a                   	pop    rdx
    3a3d:	ed                   	in     eax,dx
    3a3e:	ff                   	(bad)
    3a3f:	ff f5                	push   rbp
    3a41:	01 00                	add    DWORD PTR [rax],eax
    3a43:	00 00                	add    BYTE PTR [rax],al
    3a45:	46 0e                	rex.RX (bad)
    3a47:	10 8c 02 41 0e 18 86 	adc    BYTE PTR [rdx+rax*1-0x79e7f1bf],cl
    3a4e:	03 41 0e             	add    eax,DWORD PTR [rcx+0xe]
    3a51:	20 83 04 44 0e 40    	and    BYTE PTR [rbx+0x400e4404],al
    3a57:	02 f3                	add    dh,bl
    3a59:	0a 0e                	or     cl,BYTE PTR [rsi]
    3a5b:	20 41 0e             	and    BYTE PTR [rcx+0xe],al
    3a5e:	18 41 0e             	sbb    BYTE PTR [rcx+0xe],al
    3a61:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
    3a64:	08 41 0b             	or     BYTE PTR [rcx+0xb],al
    3a67:	00 24 00             	add    BYTE PTR [rax+rax*1],ah
    3a6a:	00 00                	add    BYTE PTR [rax],al
    3a6c:	74 04                	je     3a72 <__GNU_EH_FRAME_HDR+0x596>
    3a6e:	00 00                	add    BYTE PTR [rax],al
    3a70:	1b ef                	sbb    ebp,edi
    3a72:	ff                   	(bad)
    3a73:	ff                   	(bad)
    3a74:	7c 00                	jl     3a76 <__GNU_EH_FRAME_HDR+0x59a>
    3a76:	00 00                	add    BYTE PTR [rax],al
    3a78:	00 45 0e             	add    BYTE PTR [rbp+0xe],al
    3a7b:	10 83 02 5d 0a 0e    	adc    BYTE PTR [rbx+0xe0a5d02],al
    3a81:	08 41 0b             	or     BYTE PTR [rcx+0xb],al
    3a84:	6d                   	ins    DWORD PTR [rdi],dx
    3a85:	0e                   	(bad)
    3a86:	18 41 0e             	sbb    BYTE PTR [rcx+0xe],al
    3a89:	20 69 0e             	and    BYTE PTR [rcx+0xe],ch
    3a8c:	10 00                	adc    BYTE PTR [rax],al
    3a8e:	00 00                	add    BYTE PTR [rax],al
    3a90:	44 00 00             	add    BYTE PTR [rax],r8b
    3a93:	00 9c 04 00 00 78 ef 	add    BYTE PTR [rsp+rax*1-0x10880000],bl
    3a9a:	ff                   	(bad)
    3a9b:	ff 65 00             	jmp    QWORD PTR [rbp+0x0]
    3a9e:	00 00                	add    BYTE PTR [rax],al
    3aa0:	00 46 0e             	add    BYTE PTR [rsi+0xe],al
    3aa3:	10 8f 02 49 0e 18    	adc    BYTE PTR [rdi+0x180e4902],cl
    3aa9:	8e 03                	mov    es,WORD PTR [rbx]
    3aab:	45 0e                	rex.RB (bad)
    3aad:	20 8d 04 45 0e 28    	and    BYTE PTR [rbp+0x280e4504],cl
    3ab3:	8c 05 44 0e 30 86    	mov    WORD PTR [rip+0xffffffff86300e44],es        # ffffffff863048fd <_end+0xffffffff862febcd>
    3ab9:	06                   	(bad)
    3aba:	48 0e                	rex.W (bad)
    3abc:	38 83 07 47 0e 40    	cmp    BYTE PTR [rbx+0x400e4707],al
    3ac2:	6e                   	outs   dx,BYTE PTR [rsi]
    3ac3:	0e                   	(bad)
    3ac4:	38 41 0e             	cmp    BYTE PTR [rcx+0xe],al
    3ac7:	30 41 0e             	xor    BYTE PTR [rcx+0xe],al
    3aca:	28 42 0e             	sub    BYTE PTR [rdx+0xe],al
    3acd:	20 42 0e             	and    BYTE PTR [rdx+0xe],al
    3ad0:	18 42 0e             	sbb    BYTE PTR [rdx+0xe],al
    3ad3:	10 42 0e             	adc    BYTE PTR [rdx+0xe],al
    3ad6:	08 00                	or     BYTE PTR [rax],al
    3ad8:	10 00                	adc    BYTE PTR [rax],al
    3ada:	00 00                	add    BYTE PTR [rax],al
    3adc:	e4 04                	in     al,0x4
    3ade:	00 00                	add    BYTE PTR [rax],al
    3ae0:	a0 ef ff ff 05 00 00 	movabs al,ds:0x5ffffef
    3ae7:	00 00 
    3ae9:	00 00                	add    BYTE PTR [rax],al
	...

0000000000003aec <__FRAME_END__>:
    3aec:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .init_array:

0000000000004cf8 <__frame_dummy_init_array_entry>:
    4cf8:	40 14 00             	rex adc al,0x0
    4cfb:	00 00                	add    BYTE PTR [rax],al
    4cfd:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .fini_array:

0000000000004d00 <__do_global_dtors_aux_fini_array_entry>:
    4d00:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
    4d03:	00 00                	add    BYTE PTR [rax],al
    4d05:	00 00                	add    BYTE PTR [rax],al
	...

Disassembly of section .dynamic:

0000000000004d08 <_DYNAMIC>:
    4d08:	01 00                	add    DWORD PTR [rax],eax
    4d0a:	00 00                	add    BYTE PTR [rax],al
    4d0c:	00 00                	add    BYTE PTR [rax],al
    4d0e:	00 00                	add    BYTE PTR [rax],al
    4d10:	01 00                	add    DWORD PTR [rax],eax
    4d12:	00 00                	add    BYTE PTR [rax],al
    4d14:	00 00                	add    BYTE PTR [rax],al
    4d16:	00 00                	add    BYTE PTR [rax],al
    4d18:	0c 00                	or     al,0x0
    4d1a:	00 00                	add    BYTE PTR [rax],al
    4d1c:	00 00                	add    BYTE PTR [rax],al
    4d1e:	00 00                	add    BYTE PTR [rax],al
    4d20:	00 10                	add    BYTE PTR [rax],dl
    4d22:	00 00                	add    BYTE PTR [rax],al
    4d24:	00 00                	add    BYTE PTR [rax],al
    4d26:	00 00                	add    BYTE PTR [rax],al
    4d28:	0d 00 00 00 00       	or     eax,0x0
    4d2d:	00 00                	add    BYTE PTR [rax],al
    4d2f:	00 88 2a 00 00 00    	add    BYTE PTR [rax+0x2a],cl
    4d35:	00 00                	add    BYTE PTR [rax],al
    4d37:	00 19                	add    BYTE PTR [rcx],bl
    4d39:	00 00                	add    BYTE PTR [rax],al
    4d3b:	00 00                	add    BYTE PTR [rax],al
    4d3d:	00 00                	add    BYTE PTR [rax],al
    4d3f:	00 f8                	add    al,bh
    4d41:	4c 00 00             	rex.WR add BYTE PTR [rax],r8b
    4d44:	00 00                	add    BYTE PTR [rax],al
    4d46:	00 00                	add    BYTE PTR [rax],al
    4d48:	1b 00                	sbb    eax,DWORD PTR [rax]
    4d4a:	00 00                	add    BYTE PTR [rax],al
    4d4c:	00 00                	add    BYTE PTR [rax],al
    4d4e:	00 00                	add    BYTE PTR [rax],al
    4d50:	08 00                	or     BYTE PTR [rax],al
    4d52:	00 00                	add    BYTE PTR [rax],al
    4d54:	00 00                	add    BYTE PTR [rax],al
    4d56:	00 00                	add    BYTE PTR [rax],al
    4d58:	1a 00                	sbb    al,BYTE PTR [rax]
    4d5a:	00 00                	add    BYTE PTR [rax],al
    4d5c:	00 00                	add    BYTE PTR [rax],al
    4d5e:	00 00                	add    BYTE PTR [rax],al
    4d60:	00 4d 00             	add    BYTE PTR [rbp+0x0],cl
    4d63:	00 00                	add    BYTE PTR [rax],al
    4d65:	00 00                	add    BYTE PTR [rax],al
    4d67:	00 1c 00             	add    BYTE PTR [rax+rax*1],bl
    4d6a:	00 00                	add    BYTE PTR [rax],al
    4d6c:	00 00                	add    BYTE PTR [rax],al
    4d6e:	00 00                	add    BYTE PTR [rax],al
    4d70:	08 00                	or     BYTE PTR [rax],al
    4d72:	00 00                	add    BYTE PTR [rax],al
    4d74:	00 00                	add    BYTE PTR [rax],al
    4d76:	00 00                	add    BYTE PTR [rax],al
    4d78:	f5                   	cmc
    4d79:	fe                   	(bad)
    4d7a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    4d7d:	00 00                	add    BYTE PTR [rax],al
    4d7f:	00 a0 03 00 00 00    	add    BYTE PTR [rax+0x3],ah
    4d85:	00 00                	add    BYTE PTR [rax],al
    4d87:	00 05 00 00 00 00    	add    BYTE PTR [rip+0x0],al        # 4d8d <_DYNAMIC+0x85>
    4d8d:	00 00                	add    BYTE PTR [rax],al
    4d8f:	00 08                	add    BYTE PTR [rax],cl
    4d91:	07                   	(bad)
    4d92:	00 00                	add    BYTE PTR [rax],al
    4d94:	00 00                	add    BYTE PTR [rax],al
    4d96:	00 00                	add    BYTE PTR [rax],al
    4d98:	06                   	(bad)
    4d99:	00 00                	add    BYTE PTR [rax],al
    4d9b:	00 00                	add    BYTE PTR [rax],al
    4d9d:	00 00                	add    BYTE PTR [rax],al
    4d9f:	00 d8                	add    al,bl
    4da1:	03 00                	add    eax,DWORD PTR [rax]
    4da3:	00 00                	add    BYTE PTR [rax],al
    4da5:	00 00                	add    BYTE PTR [rax],al
    4da7:	00 0a                	add    BYTE PTR [rdx],cl
    4da9:	00 00                	add    BYTE PTR [rax],al
    4dab:	00 00                	add    BYTE PTR [rax],al
    4dad:	00 00                	add    BYTE PTR [rax],al
    4daf:	00 a5 01 00 00 00    	add    BYTE PTR [rbp+0x1],ah
    4db5:	00 00                	add    BYTE PTR [rax],al
    4db7:	00 0b                	add    BYTE PTR [rbx],cl
    4db9:	00 00                	add    BYTE PTR [rax],al
    4dbb:	00 00                	add    BYTE PTR [rax],al
    4dbd:	00 00                	add    BYTE PTR [rax],al
    4dbf:	00 18                	add    BYTE PTR [rax],bl
    4dc1:	00 00                	add    BYTE PTR [rax],al
    4dc3:	00 00                	add    BYTE PTR [rax],al
    4dc5:	00 00                	add    BYTE PTR [rax],al
    4dc7:	00 15 00 00 00 00    	add    BYTE PTR [rip+0x0],dl        # 4dcd <_DYNAMIC+0xc5>
	...
    4dd5:	00 00                	add    BYTE PTR [rax],al
    4dd7:	00 03                	add    BYTE PTR [rbx],al
    4dd9:	00 00                	add    BYTE PTR [rax],al
    4ddb:	00 00                	add    BYTE PTR [rax],al
    4ddd:	00 00                	add    BYTE PTR [rax],al
    4ddf:	00 f8                	add    al,bh
    4de1:	4e 00 00             	rex.WRX add BYTE PTR [rax],r8b
    4de4:	00 00                	add    BYTE PTR [rax],al
    4de6:	00 00                	add    BYTE PTR [rax],al
    4de8:	02 00                	add    al,BYTE PTR [rax]
    4dea:	00 00                	add    BYTE PTR [rax],al
    4dec:	00 00                	add    BYTE PTR [rax],al
    4dee:	00 00                	add    BYTE PTR [rax],al
    4df0:	58                   	pop    rax
    4df1:	02 00                	add    al,BYTE PTR [rax]
    4df3:	00 00                	add    BYTE PTR [rax],al
    4df5:	00 00                	add    BYTE PTR [rax],al
    4df7:	00 14 00             	add    BYTE PTR [rax+rax*1],dl
    4dfa:	00 00                	add    BYTE PTR [rax],al
    4dfc:	00 00                	add    BYTE PTR [rax],al
    4dfe:	00 00                	add    BYTE PTR [rax],al
    4e00:	07                   	(bad)
    4e01:	00 00                	add    BYTE PTR [rax],al
    4e03:	00 00                	add    BYTE PTR [rax],al
    4e05:	00 00                	add    BYTE PTR [rax],al
    4e07:	00 17                	add    BYTE PTR [rdi],dl
    4e09:	00 00                	add    BYTE PTR [rax],al
    4e0b:	00 00                	add    BYTE PTR [rax],al
    4e0d:	00 00                	add    BYTE PTR [rax],al
    4e0f:	00 70 0c             	add    BYTE PTR [rax+0xc],dh
    4e12:	00 00                	add    BYTE PTR [rax],al
    4e14:	00 00                	add    BYTE PTR [rax],al
    4e16:	00 00                	add    BYTE PTR [rax],al
    4e18:	07                   	(bad)
    4e19:	00 00                	add    BYTE PTR [rax],al
    4e1b:	00 00                	add    BYTE PTR [rax],al
    4e1d:	00 00                	add    BYTE PTR [rax],al
    4e1f:	00 58 09             	add    BYTE PTR [rax+0x9],bl
    4e22:	00 00                	add    BYTE PTR [rax],al
    4e24:	00 00                	add    BYTE PTR [rax],al
    4e26:	00 00                	add    BYTE PTR [rax],al
    4e28:	08 00                	or     BYTE PTR [rax],al
    4e2a:	00 00                	add    BYTE PTR [rax],al
    4e2c:	00 00                	add    BYTE PTR [rax],al
    4e2e:	00 00                	add    BYTE PTR [rax],al
    4e30:	18 03                	sbb    BYTE PTR [rbx],al
    4e32:	00 00                	add    BYTE PTR [rax],al
    4e34:	00 00                	add    BYTE PTR [rax],al
    4e36:	00 00                	add    BYTE PTR [rax],al
    4e38:	09 00                	or     DWORD PTR [rax],eax
    4e3a:	00 00                	add    BYTE PTR [rax],al
    4e3c:	00 00                	add    BYTE PTR [rax],al
    4e3e:	00 00                	add    BYTE PTR [rax],al
    4e40:	18 00                	sbb    BYTE PTR [rax],al
    4e42:	00 00                	add    BYTE PTR [rax],al
    4e44:	00 00                	add    BYTE PTR [rax],al
    4e46:	00 00                	add    BYTE PTR [rax],al
    4e48:	1e                   	(bad)
    4e49:	00 00                	add    BYTE PTR [rax],al
    4e4b:	00 00                	add    BYTE PTR [rax],al
    4e4d:	00 00                	add    BYTE PTR [rax],al
    4e4f:	00 08                	add    BYTE PTR [rax],cl
    4e51:	00 00                	add    BYTE PTR [rax],al
    4e53:	00 00                	add    BYTE PTR [rax],al
    4e55:	00 00                	add    BYTE PTR [rax],al
    4e57:	00 fb                	add    bl,bh
    4e59:	ff                   	(bad)
    4e5a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    4e5d:	00 00                	add    BYTE PTR [rax],al
    4e5f:	00 01                	add    BYTE PTR [rcx],al
    4e61:	00 00                	add    BYTE PTR [rax],al
    4e63:	08 00                	or     BYTE PTR [rax],al
    4e65:	00 00                	add    BYTE PTR [rax],al
    4e67:	00 fe                	add    dh,bh
    4e69:	ff                   	(bad)
    4e6a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    4e6d:	00 00                	add    BYTE PTR [rax],al
    4e6f:	00 f8                	add    al,bh
    4e71:	08 00                	or     BYTE PTR [rax],al
    4e73:	00 00                	add    BYTE PTR [rax],al
    4e75:	00 00                	add    BYTE PTR [rax],al
    4e77:	00 ff                	add    bh,bh
    4e79:	ff                   	(bad)
    4e7a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    4e7d:	00 00                	add    BYTE PTR [rax],al
    4e7f:	00 01                	add    BYTE PTR [rcx],al
    4e81:	00 00                	add    BYTE PTR [rax],al
    4e83:	00 00                	add    BYTE PTR [rax],al
    4e85:	00 00                	add    BYTE PTR [rax],al
    4e87:	00 f0                	add    al,dh
    4e89:	ff                   	(bad)
    4e8a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    4e8d:	00 00                	add    BYTE PTR [rax],al
    4e8f:	00 ae 08 00 00 00    	add    BYTE PTR [rsi+0x8],ch
    4e95:	00 00                	add    BYTE PTR [rax],al
    4e97:	00 f9                	add    cl,bh
    4e99:	ff                   	(bad)
    4e9a:	ff 6f 00             	jmp    FWORD PTR [rdi+0x0]
    4e9d:	00 00                	add    BYTE PTR [rax],al
    4e9f:	00 19                	add    BYTE PTR [rcx],bl
	...

Disassembly of section .got:

0000000000004ef8 <_GLOBAL_OFFSET_TABLE_>:
    4ef8:	08 4d 00             	or     BYTE PTR [rbp+0x0],cl
	...
    4f0f:	00 30                	add    BYTE PTR [rax],dh
    4f11:	10 00                	adc    BYTE PTR [rax],al
    4f13:	00 00                	add    BYTE PTR [rax],al
    4f15:	00 00                	add    BYTE PTR [rax],al
    4f17:	00 40 10             	add    BYTE PTR [rax+0x10],al
    4f1a:	00 00                	add    BYTE PTR [rax],al
    4f1c:	00 00                	add    BYTE PTR [rax],al
    4f1e:	00 00                	add    BYTE PTR [rax],al
    4f20:	50                   	push   rax
    4f21:	10 00                	adc    BYTE PTR [rax],al
    4f23:	00 00                	add    BYTE PTR [rax],al
    4f25:	00 00                	add    BYTE PTR [rax],al
    4f27:	00 60 10             	add    BYTE PTR [rax+0x10],ah
    4f2a:	00 00                	add    BYTE PTR [rax],al
    4f2c:	00 00                	add    BYTE PTR [rax],al
    4f2e:	00 00                	add    BYTE PTR [rax],al
    4f30:	70 10                	jo     4f42 <_GLOBAL_OFFSET_TABLE_+0x4a>
    4f32:	00 00                	add    BYTE PTR [rax],al
    4f34:	00 00                	add    BYTE PTR [rax],al
    4f36:	00 00                	add    BYTE PTR [rax],al
    4f38:	80 10 00             	adc    BYTE PTR [rax],0x0
    4f3b:	00 00                	add    BYTE PTR [rax],al
    4f3d:	00 00                	add    BYTE PTR [rax],al
    4f3f:	00 90 10 00 00 00    	add    BYTE PTR [rax+0x10],dl
    4f45:	00 00                	add    BYTE PTR [rax],al
    4f47:	00 a0 10 00 00 00    	add    BYTE PTR [rax+0x10],ah
    4f4d:	00 00                	add    BYTE PTR [rax],al
    4f4f:	00 b0 10 00 00 00    	add    BYTE PTR [rax+0x10],dh
    4f55:	00 00                	add    BYTE PTR [rax],al
    4f57:	00 c0                	add    al,al
    4f59:	10 00                	adc    BYTE PTR [rax],al
    4f5b:	00 00                	add    BYTE PTR [rax],al
    4f5d:	00 00                	add    BYTE PTR [rax],al
    4f5f:	00 d0                	add    al,dl
    4f61:	10 00                	adc    BYTE PTR [rax],al
    4f63:	00 00                	add    BYTE PTR [rax],al
    4f65:	00 00                	add    BYTE PTR [rax],al
    4f67:	00 e0                	add    al,ah
    4f69:	10 00                	adc    BYTE PTR [rax],al
    4f6b:	00 00                	add    BYTE PTR [rax],al
    4f6d:	00 00                	add    BYTE PTR [rax],al
    4f6f:	00 f0                	add    al,dh
    4f71:	10 00                	adc    BYTE PTR [rax],al
    4f73:	00 00                	add    BYTE PTR [rax],al
    4f75:	00 00                	add    BYTE PTR [rax],al
    4f77:	00 00                	add    BYTE PTR [rax],al
    4f79:	11 00                	adc    DWORD PTR [rax],eax
    4f7b:	00 00                	add    BYTE PTR [rax],al
    4f7d:	00 00                	add    BYTE PTR [rax],al
    4f7f:	00 10                	add    BYTE PTR [rax],dl
    4f81:	11 00                	adc    DWORD PTR [rax],eax
    4f83:	00 00                	add    BYTE PTR [rax],al
    4f85:	00 00                	add    BYTE PTR [rax],al
    4f87:	00 20                	add    BYTE PTR [rax],ah
    4f89:	11 00                	adc    DWORD PTR [rax],eax
    4f8b:	00 00                	add    BYTE PTR [rax],al
    4f8d:	00 00                	add    BYTE PTR [rax],al
    4f8f:	00 30                	add    BYTE PTR [rax],dh
    4f91:	11 00                	adc    DWORD PTR [rax],eax
    4f93:	00 00                	add    BYTE PTR [rax],al
    4f95:	00 00                	add    BYTE PTR [rax],al
    4f97:	00 40 11             	add    BYTE PTR [rax+0x11],al
    4f9a:	00 00                	add    BYTE PTR [rax],al
    4f9c:	00 00                	add    BYTE PTR [rax],al
    4f9e:	00 00                	add    BYTE PTR [rax],al
    4fa0:	50                   	push   rax
    4fa1:	11 00                	adc    DWORD PTR [rax],eax
    4fa3:	00 00                	add    BYTE PTR [rax],al
    4fa5:	00 00                	add    BYTE PTR [rax],al
    4fa7:	00 60 11             	add    BYTE PTR [rax+0x11],ah
    4faa:	00 00                	add    BYTE PTR [rax],al
    4fac:	00 00                	add    BYTE PTR [rax],al
    4fae:	00 00                	add    BYTE PTR [rax],al
    4fb0:	70 11                	jo     4fc3 <_GLOBAL_OFFSET_TABLE_+0xcb>
    4fb2:	00 00                	add    BYTE PTR [rax],al
    4fb4:	00 00                	add    BYTE PTR [rax],al
    4fb6:	00 00                	add    BYTE PTR [rax],al
    4fb8:	80 11 00             	adc    BYTE PTR [rcx],0x0
    4fbb:	00 00                	add    BYTE PTR [rax],al
    4fbd:	00 00                	add    BYTE PTR [rax],al
    4fbf:	00 90 11 00 00 00    	add    BYTE PTR [rax+0x11],dl
    4fc5:	00 00                	add    BYTE PTR [rax],al
    4fc7:	00 a0 11 00 00 00    	add    BYTE PTR [rax+0x11],ah
    4fcd:	00 00                	add    BYTE PTR [rax],al
    4fcf:	00 b0 11 00 00 00    	add    BYTE PTR [rax+0x11],dh
	...

Disassembly of section .data:

0000000000005000 <__data_start>:
	...

0000000000005008 <__dso_handle>:
    5008:	08 50 00             	or     BYTE PTR [rax+0x0],dl
    500b:	00 00                	add    BYTE PTR [rax],al
    500d:	00 00                	add    BYTE PTR [rax],al
	...

0000000000005010 <n45>:
    5010:	28 00                	sub    BYTE PTR [rax],al
	...

0000000000005030 <n41>:
    5030:	01 00                	add    DWORD PTR [rax],eax
	...

0000000000005050 <n47>:
    5050:	63 00                	movsxd eax,DWORD PTR [rax]
	...

0000000000005070 <n44>:
    5070:	23 00                	and    eax,DWORD PTR [rax]
	...

0000000000005090 <n42>:
    5090:	07                   	(bad)
	...

00000000000050b0 <n43>:
    50b0:	14 00                	adc    al,0x0
	...

00000000000050d0 <n46>:
    50d0:	2f                   	(bad)
	...

00000000000050f0 <n48>:
    50f0:	e9 03 00 00 00       	jmp    50f8 <n48+0x8>
	...

0000000000005110 <node6>:
    5110:	00 02                	add    BYTE PTR [rdx],al
    5112:	00 00                	add    BYTE PTR [rax],al
    5114:	06                   	(bad)
	...

0000000000005120 <n1>:
    5120:	24 00                	and    al,0x0
    5122:	00 00                	add    BYTE PTR [rax],al
    5124:	00 00                	add    BYTE PTR [rax],al
    5126:	00 00                	add    BYTE PTR [rax],al
    5128:	40 51                	rex push rcx
    512a:	00 00                	add    BYTE PTR [rax],al
    512c:	00 00                	add    BYTE PTR [rax],al
    512e:	00 00                	add    BYTE PTR [rax],al
    5130:	60                   	(bad)
    5131:	51                   	push   rcx
	...

0000000000005140 <n21>:
    5140:	08 00                	or     BYTE PTR [rax],al
    5142:	00 00                	add    BYTE PTR [rax],al
    5144:	00 00                	add    BYTE PTR [rax],al
    5146:	00 00                	add    BYTE PTR [rax],al
    5148:	c0 51 00 00          	rcl    BYTE PTR [rcx+0x0],0x0
    514c:	00 00                	add    BYTE PTR [rax],al
    514e:	00 00                	add    BYTE PTR [rax],al
    5150:	80 51 00 00          	adc    BYTE PTR [rcx+0x0],0x0
	...

0000000000005160 <n22>:
    5160:	32 00                	xor    al,BYTE PTR [rax]
    5162:	00 00                	add    BYTE PTR [rax],al
    5164:	00 00                	add    BYTE PTR [rax],al
    5166:	00 00                	add    BYTE PTR [rax],al
    5168:	a0 51 00 00 00 00 00 	movabs al,ds:0xe000000000000051
    516f:	00 e0 
    5171:	51                   	push   rcx
	...

0000000000005180 <n32>:
    5180:	16                   	(bad)
    5181:	00 00                	add    BYTE PTR [rax],al
    5183:	00 00                	add    BYTE PTR [rax],al
    5185:	00 00                	add    BYTE PTR [rax],al
    5187:	00 b0 50 00 00 00    	add    BYTE PTR [rax+0x50],dh
    518d:	00 00                	add    BYTE PTR [rax],al
    518f:	00 70 50             	add    BYTE PTR [rax+0x50],dh
	...

00000000000051a0 <n33>:
    51a0:	2d 00 00 00 00       	sub    eax,0x0
    51a5:	00 00                	add    BYTE PTR [rax],al
    51a7:	00 10                	add    BYTE PTR [rax],dl
    51a9:	50                   	push   rax
    51aa:	00 00                	add    BYTE PTR [rax],al
    51ac:	00 00                	add    BYTE PTR [rax],al
    51ae:	00 00                	add    BYTE PTR [rax],al
    51b0:	d0 50 00             	rcl    BYTE PTR [rax+0x0],1
	...

00000000000051c0 <n31>:
    51c0:	06                   	(bad)
    51c1:	00 00                	add    BYTE PTR [rax],al
    51c3:	00 00                	add    BYTE PTR [rax],al
    51c5:	00 00                	add    BYTE PTR [rax],al
    51c7:	00 30                	add    BYTE PTR [rax],dh
    51c9:	50                   	push   rax
    51ca:	00 00                	add    BYTE PTR [rax],al
    51cc:	00 00                	add    BYTE PTR [rax],al
    51ce:	00 00                	add    BYTE PTR [rax],al
    51d0:	90                   	nop
    51d1:	50                   	push   rax
	...

00000000000051e0 <n34>:
    51e0:	6b 00 00             	imul   eax,DWORD PTR [rax],0x0
    51e3:	00 00                	add    BYTE PTR [rax],al
    51e5:	00 00                	add    BYTE PTR [rax],al
    51e7:	00 50 50             	add    BYTE PTR [rax+0x50],dl
    51ea:	00 00                	add    BYTE PTR [rax],al
    51ec:	00 00                	add    BYTE PTR [rax],al
    51ee:	00 00                	add    BYTE PTR [rax],al
    51f0:	f0 50                	lock push rax
	...

0000000000005200 <node1>:
    5200:	12 02                	adc    al,BYTE PTR [rdx]
    5202:	00 00                	add    BYTE PTR [rax],al
    5204:	01 00                	add    DWORD PTR [rax],eax
    5206:	00 00                	add    BYTE PTR [rax],al
    5208:	10 52 00             	adc    BYTE PTR [rdx+0x0],dl
    520b:	00 00                	add    BYTE PTR [rax],al
    520d:	00 00                	add    BYTE PTR [rax],al
	...

0000000000005210 <node2>:
    5210:	c2 01 00             	ret    0x1
    5213:	00 02                	add    BYTE PTR [rdx],al
    5215:	00 00                	add    BYTE PTR [rax],al
    5217:	00 20                	add    BYTE PTR [rax],ah
    5219:	52                   	push   rdx
    521a:	00 00                	add    BYTE PTR [rax],al
    521c:	00 00                	add    BYTE PTR [rax],al
	...

0000000000005220 <node3>:
    5220:	15 02 00 00 03       	adc    eax,0x3000002
    5225:	00 00                	add    BYTE PTR [rax],al
    5227:	00 30                	add    BYTE PTR [rax],dh
    5229:	52                   	push   rdx
    522a:	00 00                	add    BYTE PTR [rax],al
    522c:	00 00                	add    BYTE PTR [rax],al
	...

0000000000005230 <node4>:
    5230:	93                   	xchg   ebx,eax
    5231:	03 00                	add    eax,DWORD PTR [rax]
    5233:	00 04 00             	add    BYTE PTR [rax+rax*1],al
    5236:	00 00                	add    BYTE PTR [rax],al
    5238:	40 52                	rex push rdx
    523a:	00 00                	add    BYTE PTR [rax],al
    523c:	00 00                	add    BYTE PTR [rax],al
	...

0000000000005240 <node5>:
    5240:	a7                   	cmps   DWORD PTR [rsi],DWORD PTR [rdi]
    5241:	03 00                	add    eax,DWORD PTR [rax]
    5243:	00 05 00 00 00 10    	add    BYTE PTR [rip+0x10000000],al        # 10005249 <_end+0xffff519>
    5249:	51                   	push   rcx
	...

0000000000005260 <host_table>:
    5260:	69 33 00 00 00 00    	imul   esi,DWORD PTR [rbx],0x0
    5266:	00 00                	add    BYTE PTR [rax],al
    5268:	83 33 00             	xor    DWORD PTR [rbx],0x0
    526b:	00 00                	add    BYTE PTR [rax],al
    526d:	00 00                	add    BYTE PTR [rax],al
    526f:	00 9d 33 00 00 00    	add    BYTE PTR [rbp+0x33],bl
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp spl,BYTE PTR [r8]
   5:	28 55 62             	sub    BYTE PTR [rbp+0x62],dl
   8:	75 6e                	jne    78 <_init-0xf88>
   a:	74 75                	je     81 <_init-0xf7f>
   c:	20 39                	and    BYTE PTR [rcx],bh
   e:	2e 33 2e             	cs xor ebp,DWORD PTR [rsi]
  11:	30 2d 31 37 75 62    	xor    BYTE PTR [rip+0x62753731],ch        # 62753748 <_end+0x6274da18>
  17:	75 6e                	jne    87 <_init-0xf79>
  19:	74 75                	je     90 <_init-0xf70>
  1b:	31 7e 32             	xor    DWORD PTR [rsi+0x32],edi
  1e:	30 2e                	xor    BYTE PTR [rsi],ch
  20:	30 34 29             	xor    BYTE PTR [rcx+rbp*1],dh
  23:	20 39                	and    BYTE PTR [rcx],bh
  25:	2e 33 2e             	cs xor ebp,DWORD PTR [rsi]
  28:	30 00                	xor    BYTE PTR [rax],al

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	2c 00                	sub    al,0x0
   2:	00 00                	add    BYTE PTR [rax],al
   4:	02 00                	add    al,BYTE PTR [rax]
   6:	00 00                	add    BYTE PTR [rax],al
   8:	00 00                	add    BYTE PTR [rax],al
   a:	08 00                	or     BYTE PTR [rax],al
   c:	00 00                	add    BYTE PTR [rax],al
   e:	00 00                	add    BYTE PTR [rax],al
  10:	49 14 00             	rex.WB adc al,0x0
  13:	00 00                	add    BYTE PTR [rax],al
  15:	00 00                	add    BYTE PTR [rax],al
  17:	00 5e 01             	add    BYTE PTR [rsi+0x1],bl
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	52                   	push   rdx
   1:	09 00                	or     DWORD PTR [rax],eax
   3:	00 04 00             	add    BYTE PTR [rax+rax*1],al
   6:	00 00                	add    BYTE PTR [rax],al
   8:	00 00                	add    BYTE PTR [rax],al
   a:	08 01                	or     BYTE PTR [rcx],al
   c:	9a                   	(bad)
   d:	00 00                	add    BYTE PTR [rax],al
   f:	00 0c 79             	add    BYTE PTR [rcx+rdi*2],cl
  12:	02 00                	add    al,BYTE PTR [rax]
  14:	00 86 02 00 00 49    	add    BYTE PTR [rsi+0x49000002],al
  1a:	14 00                	adc    al,0x0
  1c:	00 00                	add    BYTE PTR [rax],al
  1e:	00 00                	add    BYTE PTR [rax],al
  20:	00 5e 01             	add    BYTE PTR [rsi+0x1],bl
	...
  2b:	00 00                	add    BYTE PTR [rax],al
  2d:	02 23                	add    ah,BYTE PTR [rbx]
  2f:	00 00                	add    BYTE PTR [rax],al
  31:	00 03                	add    BYTE PTR [rbx],al
  33:	d1 17                	rcl    DWORD PTR [rdi],1
  35:	39 00                	cmp    DWORD PTR [rax],eax
  37:	00 00                	add    BYTE PTR [rax],al
  39:	03 08                	add    ecx,DWORD PTR [rax]
  3b:	07                   	(bad)
  3c:	46 00 00             	rex.RX add BYTE PTR [rax],r8b
  3f:	00 03                	add    BYTE PTR [rbx],al
  41:	04 07                	add    al,0x7
  43:	4b 00 00             	rex.WXB add BYTE PTR [r8],al
  46:	00 04 08             	add    BYTE PTR [rax+rcx*1],al
  49:	03 01                	add    eax,DWORD PTR [rcx]
  4b:	08 3f                	or     BYTE PTR [rdi],bh
  4d:	02 00                	add    al,BYTE PTR [rax]
  4f:	00 03                	add    BYTE PTR [rbx],al
  51:	02 07                	add    al,BYTE PTR [rdi]
  53:	b7 01                	mov    bh,0x1
  55:	00 00                	add    BYTE PTR [rax],al
  57:	03 01                	add    eax,DWORD PTR [rcx]
  59:	06                   	(bad)
  5a:	41 02 00             	add    al,BYTE PTR [r8]
  5d:	00 03                	add    BYTE PTR [rbx],al
  5f:	02 05 4d 02 00 00    	add    al,BYTE PTR [rip+0x24d]        # 2b2 <_init-0xd4e>
  65:	05 04 05 69 6e       	add    eax,0x6e690504
  6a:	74 00                	je     6c <_init-0xf94>
  6c:	03 08                	add    ecx,DWORD PTR [rax]
  6e:	05 67 00 00 00       	add    eax,0x67
  73:	02 07                	add    al,BYTE PTR [rdi]
  75:	00 00                	add    BYTE PTR [rax],al
  77:	00 04 98             	add    BYTE PTR [rax+rbx*4],al
  7a:	19 6c 00 00          	sbb    DWORD PTR [rax+rax*1+0x0],ebp
  7e:	00 02                	add    BYTE PTR [rdx],al
  80:	ab                   	stos   DWORD PTR [rdi],eax
  81:	02 00                	add    al,BYTE PTR [rax]
  83:	00 04 99             	add    BYTE PTR [rcx+rbx*4],al
  86:	1b 6c 00 00          	sbb    ebp,DWORD PTR [rax+rax*1+0x0]
  8a:	00 06                	add    BYTE PTR [rsi],al
  8c:	08 91 00 00 00 03    	or     BYTE PTR [rcx+0x3000000],dl
  92:	01 06                	add    DWORD PTR [rsi],eax
  94:	48 02 00             	rex.W add al,BYTE PTR [rax]
  97:	00 07                	add    BYTE PTR [rdi],al
  99:	91                   	xchg   ecx,eax
  9a:	00 00                	add    BYTE PTR [rax],al
  9c:	00 08                	add    BYTE PTR [rax],cl
  9e:	1b 02                	sbb    eax,DWORD PTR [rdx]
  a0:	00 00                	add    BYTE PTR [rax],al
  a2:	d8 05 31 08 24 02    	fadd   DWORD PTR [rip+0x2240831]        # 22408d9 <_end+0x223aba9>
  a8:	00 00                	add    BYTE PTR [rax],al
  aa:	09 93 00 00 00 05    	or     DWORD PTR [rbx+0x5000000],edx
  b0:	33 07                	xor    eax,DWORD PTR [rdi]
  b2:	65 00 00             	add    BYTE PTR gs:[rax],al
  b5:	00 00                	add    BYTE PTR [rax],al
  b7:	09 0f                	or     DWORD PTR [rdi],ecx
  b9:	00 00                	add    BYTE PTR [rax],al
  bb:	00 05 36 09 8b 00    	add    BYTE PTR [rip+0x8b0936],al        # 8b09f7 <_end+0x8aacc7>
  c1:	00 00                	add    BYTE PTR [rax],al
  c3:	08 09                	or     BYTE PTR [rcx],cl
  c5:	86 00                	xchg   BYTE PTR [rax],al
  c7:	00 00                	add    BYTE PTR [rax],al
  c9:	05 37 09 8b 00       	add    eax,0x8b0937
  ce:	00 00                	add    BYTE PTR [rax],al
  d0:	10 09                	adc    BYTE PTR [rcx],cl
  d2:	b5 02                	mov    ch,0x2
  d4:	00 00                	add    BYTE PTR [rax],al
  d6:	05 38 09 8b 00       	add    eax,0x8b0938
  db:	00 00                	add    BYTE PTR [rax],al
  dd:	18 09                	sbb    BYTE PTR [rcx],cl
  df:	4a 03 00             	rex.WX add rax,QWORD PTR [rax]
  e2:	00 05 39 09 8b 00    	add    BYTE PTR [rip+0x8b0939],al        # 8b0a21 <_end+0x8aacf1>
  e8:	00 00                	add    BYTE PTR [rax],al
  ea:	20 09                	and    BYTE PTR [rcx],cl
  ec:	a0 01 00 00 05 3a 09 	movabs al,ds:0x8b093a05000001
  f3:	8b 00 
  f5:	00 00                	add    BYTE PTR [rax],al
  f7:	28 09                	sub    BYTE PTR [rcx],cl
  f9:	02 02                	add    al,BYTE PTR [rdx]
  fb:	00 00                	add    BYTE PTR [rax],al
  fd:	05 3b 09 8b 00       	add    eax,0x8b093b
 102:	00 00                	add    BYTE PTR [rax],al
 104:	30 09                	xor    BYTE PTR [rcx],cl
 106:	34 00                	xor    al,0x0
 108:	00 00                	add    BYTE PTR [rax],al
 10a:	05 3c 09 8b 00       	add    eax,0x8b093c
 10f:	00 00                	add    BYTE PTR [rax],al
 111:	38 09                	cmp    BYTE PTR [rcx],cl
 113:	2e 01 00             	cs add DWORD PTR [rax],eax
 116:	00 05 3d 09 8b 00    	add    BYTE PTR [rip+0x8b093d],al        # 8b0a59 <_end+0x8aad29>
 11c:	00 00                	add    BYTE PTR [rax],al
 11e:	40 09 ca             	rex or edx,ecx
 121:	01 00                	add    DWORD PTR [rax],eax
 123:	00 05 40 09 8b 00    	add    BYTE PTR [rip+0x8b0940],al        # 8b0a69 <_end+0x8aad39>
 129:	00 00                	add    BYTE PTR [rax],al
 12b:	48 09 22             	or     QWORD PTR [rdx],rsp
 12e:	03 00                	add    eax,DWORD PTR [rax]
 130:	00 05 41 09 8b 00    	add    BYTE PTR [rip+0x8b0941],al        # 8b0a77 <_end+0x8aad47>
 136:	00 00                	add    BYTE PTR [rax],al
 138:	50                   	push   rax
 139:	09 c3                	or     ebx,eax
 13b:	02 00                	add    al,BYTE PTR [rax]
 13d:	00 05 42 09 8b 00    	add    BYTE PTR [rip+0x8b0942],al        # 8b0a85 <_end+0x8aad55>
 143:	00 00                	add    BYTE PTR [rax],al
 145:	58                   	pop    rax
 146:	09 36                	or     DWORD PTR [rsi],esi
 148:	02 00                	add    al,BYTE PTR [rax]
 14a:	00 05 44 16 3d 02    	add    BYTE PTR [rip+0x23d1644],al        # 23d1794 <_end+0x23cba64>
 150:	00 00                	add    BYTE PTR [rax],al
 152:	60                   	(bad)
 153:	09 1c 00             	or     DWORD PTR [rax+rax*1],ebx
 156:	00 00                	add    BYTE PTR [rax],al
 158:	05 46 14 43 02       	add    eax,0x2431446
 15d:	00 00                	add    BYTE PTR [rax],al
 15f:	68 09 7e 00 00       	push   0x7e09
 164:	00 05 48 07 65 00    	add    BYTE PTR [rip+0x650748],al        # 6508b2 <_end+0x64ab82>
 16a:	00 00                	add    BYTE PTR [rax],al
 16c:	70 09                	jo     177 <_init-0xe89>
 16e:	de 01                	fiadd  WORD PTR [rcx]
 170:	00 00                	add    BYTE PTR [rax],al
 172:	05 49 07 65 00       	add    eax,0x650749
 177:	00 00                	add    BYTE PTR [rax],al
 179:	74 09                	je     184 <_init-0xe7c>
 17b:	5f                   	pop    rdi
 17c:	01 00                	add    DWORD PTR [rax],eax
 17e:	00 05 4a 0b 73 00    	add    BYTE PTR [rip+0x730b4a],al        # 730cce <_end+0x72af9e>
 184:	00 00                	add    BYTE PTR [rax],al
 186:	78 09                	js     191 <_init-0xe6f>
 188:	3a 01                	cmp    al,BYTE PTR [rcx]
 18a:	00 00                	add    BYTE PTR [rax],al
 18c:	05 4d 12 50 00       	add    eax,0x50124d
 191:	00 00                	add    BYTE PTR [rax],al
 193:	80 09 65             	or     BYTE PTR [rcx],0x65
 196:	02 00                	add    al,BYTE PTR [rax]
 198:	00 05 4e 0f 57 00    	add    BYTE PTR [rip+0x570f4e],al        # 5710ec <_end+0x56b3bc>
 19e:	00 00                	add    BYTE PTR [rax],al
 1a0:	82                   	(bad)
 1a1:	09 2a                	or     DWORD PTR [rdx],ebp
 1a3:	00 00                	add    BYTE PTR [rax],al
 1a5:	00 05 4f 08 49 02    	add    BYTE PTR [rip+0x249084f],al        # 24909fa <_end+0x248acca>
 1ab:	00 00                	add    BYTE PTR [rax],al
 1ad:	83 09 d8             	or     DWORD PTR [rcx],0xffffffd8
 1b0:	01 00                	add    DWORD PTR [rax],eax
 1b2:	00 05 51 0f 59 02    	add    BYTE PTR [rip+0x2590f51],al        # 2591109 <_end+0x258b3d9>
 1b8:	00 00                	add    BYTE PTR [rax],al
 1ba:	88 09                	mov    BYTE PTR [rcx],cl
 1bc:	63 01                	movsxd eax,DWORD PTR [rcx]
 1be:	00 00                	add    BYTE PTR [rax],al
 1c0:	05 59 0d 7f 00       	add    eax,0x7f0d59
 1c5:	00 00                	add    BYTE PTR [rax],al
 1c7:	90                   	nop
 1c8:	09 49 01             	or     DWORD PTR [rcx+0x1],ecx
 1cb:	00 00                	add    BYTE PTR [rax],al
 1cd:	05 5b 17 64 02       	add    eax,0x264175b
 1d2:	00 00                	add    BYTE PTR [rax],al
 1d4:	98                   	cwde
 1d5:	09 5a 02             	or     DWORD PTR [rdx+0x2],ebx
 1d8:	00 00                	add    BYTE PTR [rax],al
 1da:	05 5c 19 6f 02       	add    eax,0x26f195c
 1df:	00 00                	add    BYTE PTR [rax],al
 1e1:	a0 09 37 03 00 00 05 	movabs al,ds:0x145d050000033709
 1e8:	5d 14 
 1ea:	43 02 00             	rex.XB add al,BYTE PTR [r8]
 1ed:	00 a8 09 93 01 00    	add    BYTE PTR [rax+0x19309],ch
 1f3:	00 05 5e 09 47 00    	add    BYTE PTR [rip+0x47095e],al        # 470b57 <_end+0x46ae27>
 1f9:	00 00                	add    BYTE PTR [rax],al
 1fb:	b0 09                	mov    al,0x9
 1fd:	d6                   	(bad)
 1fe:	02 00                	add    al,BYTE PTR [rax]
 200:	00 05 5f 0a 2d 00    	add    BYTE PTR [rip+0x2d0a5f],al        # 2d0c65 <_end+0x2caf35>
 206:	00 00                	add    BYTE PTR [rax],al
 208:	b8 09 e6 01 00       	mov    eax,0x1e609
 20d:	00 05 60 07 65 00    	add    BYTE PTR [rip+0x650760],al        # 650973 <_end+0x64ac43>
 213:	00 00                	add    BYTE PTR [rax],al
 215:	c0 09 dd             	ror    BYTE PTR [rcx],0xdd
 218:	02 00                	add    al,BYTE PTR [rax]
 21a:	00 05 62 08 75 02    	add    BYTE PTR [rip+0x2750862],al        # 2750a82 <_end+0x274ad52>
 220:	00 00                	add    BYTE PTR [rax],al
 222:	c4                   	(bad)
 223:	00 02                	add    BYTE PTR [rdx],al
 225:	1f                   	(bad)
 226:	02 00                	add    al,BYTE PTR [rax]
 228:	00 06                	add    BYTE PTR [rsi],al
 22a:	07                   	(bad)
 22b:	19 9d 00 00 00 0a    	sbb    DWORD PTR [rbp+0xa000000],ebx
 231:	10 02                	adc    BYTE PTR [rdx],al
 233:	00 00                	add    BYTE PTR [rax],al
 235:	05 2b 0e 0b 82       	add    eax,0x820b0e2b
 23a:	01 00                	add    DWORD PTR [rax],eax
 23c:	00 06                	add    BYTE PTR [rsi],al
 23e:	08 38                	or     BYTE PTR [rax],bh
 240:	02 00                	add    al,BYTE PTR [rax]
 242:	00 06                	add    BYTE PTR [rsi],al
 244:	08 9d 00 00 00 0c    	or     BYTE PTR [rbp+0xc000000],bl
 24a:	91                   	xchg   ecx,eax
 24b:	00 00                	add    BYTE PTR [rax],al
 24d:	00 59 02             	add    BYTE PTR [rcx+0x2],bl
 250:	00 00                	add    BYTE PTR [rax],al
 252:	0d 39 00 00 00       	or     eax,0x39
 257:	00 00                	add    BYTE PTR [rax],al
 259:	06                   	(bad)
 25a:	08 30                	or     BYTE PTR [rax],dh
 25c:	02 00                	add    al,BYTE PTR [rax]
 25e:	00 0b                	add    BYTE PTR [rbx],cl
 260:	46 01 00             	rex.RX add DWORD PTR [rax],r8d
 263:	00 06                	add    BYTE PTR [rsi],al
 265:	08 5f 02             	or     BYTE PTR [rdi+0x2],bl
 268:	00 00                	add    BYTE PTR [rax],al
 26a:	0b 57 02             	or     edx,DWORD PTR [rdi+0x2]
 26d:	00 00                	add    BYTE PTR [rax],al
 26f:	06                   	(bad)
 270:	08 6a 02             	or     BYTE PTR [rdx+0x2],ch
 273:	00 00                	add    BYTE PTR [rax],al
 275:	0c 91                	or     al,0x91
 277:	00 00                	add    BYTE PTR [rax],al
 279:	00 85 02 00 00 0d    	add    BYTE PTR [rbp+0xd000002],al
 27f:	39 00                	cmp    DWORD PTR [rax],eax
 281:	00 00                	add    BYTE PTR [rax],al
 283:	13 00                	adc    eax,DWORD PTR [rax]
 285:	0e                   	(bad)
 286:	8d 01                	lea    eax,[rcx]
 288:	00 00                	add    BYTE PTR [rax],al
 28a:	07                   	(bad)
 28b:	89 0e                	mov    DWORD PTR [rsi],ecx
 28d:	91                   	xchg   ecx,eax
 28e:	02 00                	add    al,BYTE PTR [rax]
 290:	00 06                	add    BYTE PTR [rsi],al
 292:	08 24 02             	or     BYTE PTR [rdx+rax*1],ah
 295:	00 00                	add    BYTE PTR [rax],al
 297:	0e                   	(bad)
 298:	fb                   	sti
 299:	01 00                	add    DWORD PTR [rax],eax
 29b:	00 07                	add    BYTE PTR [rdi],al
 29d:	8a 0e                	mov    cl,BYTE PTR [rsi]
 29f:	91                   	xchg   ecx,eax
 2a0:	02 00                	add    al,BYTE PTR [rax]
 2a2:	00 0e                	add    BYTE PTR [rsi],cl
 2a4:	e6 02                	out    0x2,al
 2a6:	00 00                	add    BYTE PTR [rax],al
 2a8:	07                   	(bad)
 2a9:	8b 0e                	mov    ecx,DWORD PTR [rsi]
 2ab:	91                   	xchg   ecx,eax
 2ac:	02 00                	add    al,BYTE PTR [rax]
 2ae:	00 0e                	add    BYTE PTR [rsi],cl
 2b0:	ae                   	scas   al,BYTE PTR [rdi]
 2b1:	01 00                	add    DWORD PTR [rax],eax
 2b3:	00 08                	add    BYTE PTR [rax],cl
 2b5:	1a 0c 65 00 00 00 0c 	sbb    cl,BYTE PTR [riz*2+0xc000000]
 2bc:	d1 02                	rol    DWORD PTR [rdx],1
 2be:	00 00                	add    BYTE PTR [rax],al
 2c0:	c6 02 00             	mov    BYTE PTR [rdx],0x0
 2c3:	00 0f                	add    BYTE PTR [rdi],cl
 2c5:	00 07                	add    BYTE PTR [rdi],al
 2c7:	bb 02 00 00 06       	mov    ebx,0x6000002
 2cc:	08 98 00 00 00 07    	or     BYTE PTR [rax+0x7000000],bl
 2d2:	cb                   	retf
 2d3:	02 00                	add    al,BYTE PTR [rax]
 2d5:	00 10                	add    BYTE PTR [rax],dl
 2d7:	cb                   	retf
 2d8:	02 00                	add    al,BYTE PTR [rax]
 2da:	00 0e                	add    BYTE PTR [rsi],cl
 2dc:	2a 02                	sub    al,BYTE PTR [rdx]
 2de:	00 00                	add    BYTE PTR [rax],al
 2e0:	08 1b                	or     BYTE PTR [rbx],bl
 2e2:	1a c6                	sbb    al,dh
 2e4:	02 00                	add    al,BYTE PTR [rax]
 2e6:	00 03                	add    BYTE PTR [rbx],al
 2e8:	08 05 62 00 00 00    	or     BYTE PTR [rip+0x62],al        # 350 <_init-0xcb0>
 2ee:	03 08                	add    ecx,DWORD PTR [rax]
 2f0:	07                   	(bad)
 2f1:	41 00 00             	add    BYTE PTR [r8],al
 2f4:	00 11                	add    BYTE PTR [rcx],dl
 2f6:	6b 01 00             	imul   eax,DWORD PTR [rcx],0x0
 2f9:	00 01                	add    BYTE PTR [rcx],al
 2fb:	22 07                	and    al,BYTE PTR [rdi]
 2fd:	91                   	xchg   ecx,eax
 2fe:	02 00                	add    al,BYTE PTR [rax]
 300:	00 09                	add    BYTE PTR [rcx],cl
 302:	03 98 56 00 00 00    	add    ebx,DWORD PTR [rax+0x56]
 308:	00 00                	add    BYTE PTR [rax],al
 30a:	00 12                	add    BYTE PTR [rdx],dl
 30c:	45 03 00             	add    r8d,DWORD PTR [r8]
 30f:	00 01                	add    BYTE PTR [rcx],al
 311:	24 05                	and    al,0x5
 313:	65 00 00             	add    BYTE PTR gs:[rax],al
 316:	00 49 14             	add    BYTE PTR [rcx+0x14],cl
 319:	00 00                	add    BYTE PTR [rax],al
 31b:	00 00                	add    BYTE PTR [rax],al
 31d:	00 00                	add    BYTE PTR [rax],al
 31f:	5e                   	pop    rsi
 320:	01 00                	add    DWORD PTR [rax],eax
 322:	00 00                	add    BYTE PTR [rax],al
 324:	00 00                	add    BYTE PTR [rax],al
 326:	00 01                	add    BYTE PTR [rcx],al
 328:	9c                   	pushf
 329:	72 07                	jb     332 <_init-0xcce>
 32b:	00 00                	add    BYTE PTR [rax],al
 32d:	13 32                	adc    esi,DWORD PTR [rdx]
 32f:	03 00                	add    eax,DWORD PTR [rax]
 331:	00 01                	add    BYTE PTR [rcx],al
 333:	24 0e                	and    al,0xe
 335:	65 00 00             	add    BYTE PTR gs:[rax],al
 338:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
 33b:	00 00                	add    BYTE PTR [rax],al
 33d:	00 00                	add    BYTE PTR [rax],al
 33f:	00 00                	add    BYTE PTR [rax],al
 341:	13 ed                	adc    ebp,ebp
 343:	02 00                	add    al,BYTE PTR [rax]
 345:	00 01                	add    BYTE PTR [rcx],al
 347:	24 1a                	and    al,0x1a
 349:	72 07                	jb     352 <_init-0xcae>
 34b:	00 00                	add    BYTE PTR [rax],al
 34d:	a1 00 00 00 97 00 00 	movabs eax,ds:0x1400000097000000
 354:	00 14 
 356:	80 02 00             	add    BYTE PTR [rdx],0x0
 359:	00 01                	add    BYTE PTR [rcx],al
 35b:	26 0b 8b 00 00 00 1f 	es or  ecx,DWORD PTR [rbx+0x1f000000]
 362:	01 00                	add    DWORD PTR [rax],eax
 364:	00 13                	add    BYTE PTR [rbx],dl
 366:	01 00                	add    DWORD PTR [rax],eax
 368:	00 15 78 07 00 00    	add    BYTE PTR [rip+0x778],dl        # ae6 <_init-0x51a>
 36e:	88 14 00             	mov    BYTE PTR [rax+rax*1],dl
 371:	00 00                	add    BYTE PTR [rax],al
 373:	00 00                	add    BYTE PTR [rax],al
 375:	00 01                	add    BYTE PTR [rcx],al
 377:	88 14 00             	mov    BYTE PTR [rax+rax*1],dl
 37a:	00 00                	add    BYTE PTR [rax],al
 37c:	00 00                	add    BYTE PTR [rax],al
 37e:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
 381:	00 00                	add    BYTE PTR [rax],al
 383:	00 00                	add    BYTE PTR [rax],al
 385:	00 00                	add    BYTE PTR [rax],al
 387:	01 45 05             	add    DWORD PTR [rbp+0x5],eax
 38a:	b7 03                	mov    bh,0x3
 38c:	00 00                	add    BYTE PTR [rax],al
 38e:	16                   	(bad)
 38f:	89 07                	mov    DWORD PTR [rdi],eax
 391:	00 00                	add    BYTE PTR [rax],al
 393:	a3 01 00 00 a1 01 00 	movabs ds:0x17000001a1000001,eax
 39a:	00 17 
 39c:	94                   	xchg   esp,eax
 39d:	14 00                	adc    al,0x0
 39f:	00 00                	add    BYTE PTR [rax],al
 3a1:	00 00                	add    BYTE PTR [rax],al
 3a3:	00 d7                	add    bh,dl
 3a5:	07                   	(bad)
 3a6:	00 00                	add    BYTE PTR [rax],al
 3a8:	18 01                	sbb    BYTE PTR [rcx],al
 3aa:	55                   	push   rbp
 3ab:	09 03                	or     DWORD PTR [rbx],eax
 3ad:	88 30                	mov    BYTE PTR [rax],dh
	...
 3b7:	15 78 07 00 00       	adc    eax,0x778
 3bc:	94                   	xchg   esp,eax
 3bd:	14 00                	adc    al,0x0
 3bf:	00 00                	add    BYTE PTR [rax],al
 3c1:	00 00                	add    BYTE PTR [rax],al
 3c3:	00 02                	add    BYTE PTR [rdx],al
 3c5:	94                   	xchg   esp,eax
 3c6:	14 00                	adc    al,0x0
 3c8:	00 00                	add    BYTE PTR [rax],al
 3ca:	00 00                	add    BYTE PTR [rax],al
 3cc:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
 3cf:	00 00                	add    BYTE PTR [rax],al
 3d1:	00 00                	add    BYTE PTR [rax],al
 3d3:	00 00                	add    BYTE PTR [rax],al
 3d5:	01 46 05             	add    DWORD PTR [rsi+0x5],eax
 3d8:	05 04 00 00 16       	add    eax,0x16000004
 3dd:	89 07                	mov    DWORD PTR [rdi],eax
 3df:	00 00                	add    BYTE PTR [rax],al
 3e1:	cd 01                	int    0x1
 3e3:	00 00                	add    BYTE PTR [rax],al
 3e5:	cb                   	retf
 3e6:	01 00                	add    DWORD PTR [rax],eax
 3e8:	00 17                	add    BYTE PTR [rdi],dl
 3ea:	a0 14 00 00 00 00 00 	movabs al,ds:0xd700000000000014
 3f1:	00 d7 
 3f3:	07                   	(bad)
 3f4:	00 00                	add    BYTE PTR [rax],al
 3f6:	18 01                	sbb    BYTE PTR [rcx],al
 3f8:	55                   	push   rbp
 3f9:	09 03                	or     DWORD PTR [rbx],eax
 3fb:	c8 30 00 00          	enter  0x30,0x0
 3ff:	00 00                	add    BYTE PTR [rax],al
 401:	00 00                	add    BYTE PTR [rax],al
 403:	00 00                	add    BYTE PTR [rax],al
 405:	15 78 07 00 00       	adc    eax,0x778
 40a:	b2 14                	mov    dl,0x14
 40c:	00 00                	add    BYTE PTR [rax],al
 40e:	00 00                	add    BYTE PTR [rax],al
 410:	00 00                	add    BYTE PTR [rax],al
 412:	01 b2 14 00 00 00    	add    DWORD PTR [rdx+0x14],esi
 418:	00 00                	add    BYTE PTR [rax],al
 41a:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
 41d:	00 00                	add    BYTE PTR [rax],al
 41f:	00 00                	add    BYTE PTR [rax],al
 421:	00 00                	add    BYTE PTR [rax],al
 423:	01 4d 05             	add    DWORD PTR [rbp+0x5],ecx
 426:	53                   	push   rbx
 427:	04 00                	add    al,0x0
 429:	00 16                	add    BYTE PTR [rsi],dl
 42b:	89 07                	mov    DWORD PTR [rdi],eax
 42d:	00 00                	add    BYTE PTR [rax],al
 42f:	f7 01 00 00 f5 01    	test   DWORD PTR [rcx],0x1f50000
 435:	00 00                	add    BYTE PTR [rax],al
 437:	17                   	(bad)
 438:	be 14 00 00 00       	mov    esi,0x14
 43d:	00 00                	add    BYTE PTR [rax],al
 43f:	00 d7                	add    bh,dl
 441:	07                   	(bad)
 442:	00 00                	add    BYTE PTR [rax],al
 444:	18 01                	sbb    BYTE PTR [rcx],al
 446:	55                   	push   rbp
 447:	09 03                	or     DWORD PTR [rbx],eax
 449:	f8                   	clc
 44a:	30 00                	xor    BYTE PTR [rax],al
 44c:	00 00                	add    BYTE PTR [rax],al
 44e:	00 00                	add    BYTE PTR [rax],al
 450:	00 00                	add    BYTE PTR [rax],al
 452:	00 15 78 07 00 00    	add    BYTE PTR [rip+0x778],dl        # bd0 <_init-0x430>
 458:	d0 14 00             	rcl    BYTE PTR [rax+rax*1],1
 45b:	00 00                	add    BYTE PTR [rax],al
 45d:	00 00                	add    BYTE PTR [rax],al
 45f:	00 01                	add    BYTE PTR [rcx],al
 461:	d0 14 00             	rcl    BYTE PTR [rax+rax*1],1
 464:	00 00                	add    BYTE PTR [rax],al
 466:	00 00                	add    BYTE PTR [rax],al
 468:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
 46b:	00 00                	add    BYTE PTR [rax],al
 46d:	00 00                	add    BYTE PTR [rax],al
 46f:	00 00                	add    BYTE PTR [rax],al
 471:	01 54 05 a1          	add    DWORD PTR [rbp+rax*1-0x5f],edx
 475:	04 00                	add    al,0x0
 477:	00 16                	add    BYTE PTR [rsi],dl
 479:	89 07                	mov    DWORD PTR [rdi],eax
 47b:	00 00                	add    BYTE PTR [rax],al
 47d:	21 02                	and    DWORD PTR [rdx],eax
 47f:	00 00                	add    BYTE PTR [rax],al
 481:	1f                   	(bad)
 482:	02 00                	add    al,BYTE PTR [rax]
 484:	00 17                	add    BYTE PTR [rdi],dl
 486:	dc 14 00             	fcom   QWORD PTR [rax+rax*1]
 489:	00 00                	add    BYTE PTR [rax],al
 48b:	00 00                	add    BYTE PTR [rax],al
 48d:	00 d7                	add    bh,dl
 48f:	07                   	(bad)
 490:	00 00                	add    BYTE PTR [rax],al
 492:	18 01                	sbb    BYTE PTR [rcx],al
 494:	55                   	push   rbp
 495:	09 03                	or     DWORD PTR [rbx],eax
 497:	3d 30 00 00 00       	cmp    eax,0x30
 49c:	00 00                	add    BYTE PTR [rax],al
 49e:	00 00                	add    BYTE PTR [rax],al
 4a0:	00 15 78 07 00 00    	add    BYTE PTR [rip+0x778],dl        # c1e <_init-0x3e2>
 4a6:	ee                   	out    dx,al
 4a7:	14 00                	adc    al,0x0
 4a9:	00 00                	add    BYTE PTR [rax],al
 4ab:	00 00                	add    BYTE PTR [rax],al
 4ad:	00 01                	add    BYTE PTR [rcx],al
 4af:	ee                   	out    dx,al
 4b0:	14 00                	adc    al,0x0
 4b2:	00 00                	add    BYTE PTR [rax],al
 4b4:	00 00                	add    BYTE PTR [rax],al
 4b6:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
 4b9:	00 00                	add    BYTE PTR [rax],al
 4bb:	00 00                	add    BYTE PTR [rax],al
 4bd:	00 00                	add    BYTE PTR [rax],al
 4bf:	01 5b 05             	add    DWORD PTR [rbx+0x5],ebx
 4c2:	ef                   	out    dx,eax
 4c3:	04 00                	add    al,0x0
 4c5:	00 16                	add    BYTE PTR [rsi],dl
 4c7:	89 07                	mov    DWORD PTR [rdi],eax
 4c9:	00 00                	add    BYTE PTR [rax],al
 4cb:	4b 02 00             	rex.WXB add al,BYTE PTR [r8]
 4ce:	00 49 02             	add    BYTE PTR [rcx+0x2],cl
 4d1:	00 00                	add    BYTE PTR [rax],al
 4d3:	17                   	(bad)
 4d4:	fa                   	cli
 4d5:	14 00                	adc    al,0x0
 4d7:	00 00                	add    BYTE PTR [rax],al
 4d9:	00 00                	add    BYTE PTR [rax],al
 4db:	00 d7                	add    bh,dl
 4dd:	07                   	(bad)
 4de:	00 00                	add    BYTE PTR [rax],al
 4e0:	18 01                	sbb    BYTE PTR [rcx],al
 4e2:	55                   	push   rbp
 4e3:	09 03                	or     DWORD PTR [rbx],eax
 4e5:	5b                   	pop    rbx
 4e6:	30 00                	xor    BYTE PTR [rax],al
 4e8:	00 00                	add    BYTE PTR [rax],al
 4ea:	00 00                	add    BYTE PTR [rax],al
 4ec:	00 00                	add    BYTE PTR [rax],al
 4ee:	00 15 78 07 00 00    	add    BYTE PTR [rip+0x778],dl        # c6c <_init-0x394>
 4f4:	0c 15                	or     al,0x15
 4f6:	00 00                	add    BYTE PTR [rax],al
 4f8:	00 00                	add    BYTE PTR [rax],al
 4fa:	00 00                	add    BYTE PTR [rax],al
 4fc:	01 0c 15 00 00 00 00 	add    DWORD PTR [rdx*1+0x0],ecx
 503:	00 00                	add    BYTE PTR [rax],al
 505:	0c 00                	or     al,0x0
 507:	00 00                	add    BYTE PTR [rax],al
 509:	00 00                	add    BYTE PTR [rax],al
 50b:	00 00                	add    BYTE PTR [rax],al
 50d:	01 61 05             	add    DWORD PTR [rcx+0x5],esp
 510:	3d 05 00 00 16       	cmp    eax,0x16000005
 515:	89 07                	mov    DWORD PTR [rdi],eax
 517:	00 00                	add    BYTE PTR [rax],al
 519:	75 02                	jne    51d <_init-0xae3>
 51b:	00 00                	add    BYTE PTR [rax],al
 51d:	73 02                	jae    521 <_init-0xadf>
 51f:	00 00                	add    BYTE PTR [rax],al
 521:	17                   	(bad)
 522:	18 15 00 00 00 00    	sbb    BYTE PTR [rip+0x0],dl        # 528 <_init-0xad8>
 528:	00 00                	add    BYTE PTR [rax],al
 52a:	d7                   	xlat   BYTE PTR [rbx]
 52b:	07                   	(bad)
 52c:	00 00                	add    BYTE PTR [rax],al
 52e:	18 01                	sbb    BYTE PTR [rcx],al
 530:	55                   	push   rbp
 531:	09 03                	or     DWORD PTR [rbx],eax
 533:	28 31                	sub    BYTE PTR [rcx],dh
	...
 53d:	15 78 07 00 00       	adc    eax,0x778
 542:	2a 15 00 00 00 00    	sub    dl,BYTE PTR [rip+0x0]        # 548 <_init-0xab8>
 548:	00 00                	add    BYTE PTR [rax],al
 54a:	01 2a                	add    DWORD PTR [rdx],ebp
 54c:	15 00 00 00 00       	adc    eax,0x0
 551:	00 00                	add    BYTE PTR [rax],al
 553:	0c 00                	or     al,0x0
 555:	00 00                	add    BYTE PTR [rax],al
 557:	00 00                	add    BYTE PTR [rax],al
 559:	00 00                	add    BYTE PTR [rax],al
 55b:	01 67 05             	add    DWORD PTR [rdi+0x5],esp
 55e:	8b 05 00 00 16 89    	mov    eax,DWORD PTR [rip+0xffffffff89160000]        # ffffffff89160564 <_end+0xffffffff8915a834>
 564:	07                   	(bad)
 565:	00 00                	add    BYTE PTR [rax],al
 567:	9f                   	lahf
 568:	02 00                	add    al,BYTE PTR [rax]
 56a:	00 9d 02 00 00 17    	add    BYTE PTR [rbp+0x17000002],bl
 570:	36 15 00 00 00 00    	ss adc eax,0x0
 576:	00 00                	add    BYTE PTR [rax],al
 578:	d7                   	xlat   BYTE PTR [rbx]
 579:	07                   	(bad)
 57a:	00 00                	add    BYTE PTR [rax],al
 57c:	18 01                	sbb    BYTE PTR [rcx],al
 57e:	55                   	push   rbp
 57f:	09 03                	or     DWORD PTR [rbx],eax
 581:	6a 30                	push   0x30
	...
 58b:	15 78 07 00 00       	adc    eax,0x778
 590:	62 15 00 00 00       	(bad)
 595:	00 00                	add    BYTE PTR [rax],al
 597:	00 01                	add    BYTE PTR [rcx],al
 599:	62 15 00 00 00       	(bad)
 59e:	00 00                	add    BYTE PTR [rax],al
 5a0:	00 18                	add    BYTE PTR [rax],bl
 5a2:	00 00                	add    BYTE PTR [rax],al
 5a4:	00 00                	add    BYTE PTR [rax],al
 5a6:	00 00                	add    BYTE PTR [rax],al
 5a8:	00 01                	add    BYTE PTR [rcx],al
 5aa:	37                   	(bad)
 5ab:	06                   	(bad)
 5ac:	de 05 00 00 16 89    	fiadd  WORD PTR [rip+0xffffffff89160000]        # ffffffff891605b2 <_end+0xffffffff8915a882>
 5b2:	07                   	(bad)
 5b3:	00 00                	add    BYTE PTR [rax],al
 5b5:	c9                   	leave
 5b6:	02 00                	add    al,BYTE PTR [rax]
 5b8:	00 c7                	add    bh,al
 5ba:	02 00                	add    al,BYTE PTR [rax]
 5bc:	00 17                	add    BYTE PTR [rdi],dl
 5be:	7a 15                	jp     5d5 <_init-0xa2b>
 5c0:	00 00                	add    BYTE PTR [rax],al
 5c2:	00 00                	add    BYTE PTR [rax],al
 5c4:	00 00                	add    BYTE PTR [rax],al
 5c6:	c4                   	(bad)
 5c7:	08 00                	or     BYTE PTR [rax],al
 5c9:	00 18                	add    BYTE PTR [rax],bl
 5cb:	01 55 01             	add    DWORD PTR [rbp+0x1],edx
 5ce:	31 18                	xor    DWORD PTR [rax],ebx
 5d0:	01 54 09 03          	add    DWORD PTR [rcx+rcx*1+0x3],edx
 5d4:	06                   	(bad)
 5d5:	30 00                	xor    BYTE PTR [rax],al
 5d7:	00 00                	add    BYTE PTR [rax],al
 5d9:	00 00                	add    BYTE PTR [rax],al
 5db:	00 00                	add    BYTE PTR [rax],al
 5dd:	00 15 78 07 00 00    	add    BYTE PTR [rip+0x778],dl        # d5b <_init-0x2a5>
 5e3:	84 15 00 00 00 00    	test   BYTE PTR [rip+0x0],dl        # 5e9 <_init-0xa17>
 5e9:	00 00                	add    BYTE PTR [rax],al
 5eb:	01 84 15 00 00 00 00 	add    DWORD PTR [rbp+rdx*1+0x0],eax
 5f2:	00 00                	add    BYTE PTR [rax],al
 5f4:	19 00                	sbb    DWORD PTR [rax],eax
 5f6:	00 00                	add    BYTE PTR [rax],al
 5f8:	00 00                	add    BYTE PTR [rax],al
 5fa:	00 00                	add    BYTE PTR [rax],al
 5fc:	01 3e                	add    DWORD PTR [rsi],edi
 5fe:	02 31                	add    dh,BYTE PTR [rcx]
 600:	06                   	(bad)
 601:	00 00                	add    BYTE PTR [rax],al
 603:	16                   	(bad)
 604:	89 07                	mov    DWORD PTR [rdi],eax
 606:	00 00                	add    BYTE PTR [rax],al
 608:	f7 02 00 00 f5 02    	test   DWORD PTR [rdx],0x2f50000
 60e:	00 00                	add    BYTE PTR [rax],al
 610:	17                   	(bad)
 611:	9d                   	popf
 612:	15 00 00 00 00       	adc    eax,0x0
 617:	00 00                	add    BYTE PTR [rax],al
 619:	c4                   	(bad)
 61a:	08 00                	or     BYTE PTR [rax],al
 61c:	00 18                	add    BYTE PTR [rax],bl
 61e:	01 55 01             	add    DWORD PTR [rbp+0x1],edx
 621:	31 18                	xor    DWORD PTR [rax],ebx
 623:	01 54 09 03          	add    DWORD PTR [rcx+rcx*1+0x3],edx
 627:	23 30                	and    esi,DWORD PTR [rax]
	...
 631:	19 73 14             	sbb    DWORD PTR [rbx+0x14],esi
 634:	00 00                	add    BYTE PTR [rax],al
 636:	00 00                	add    BYTE PTR [rax],al
 638:	00 00                	add    BYTE PTR [rax],al
 63a:	d0 08                	ror    BYTE PTR [rax],1
 63c:	00 00                	add    BYTE PTR [rax],al
 63e:	50                   	push   rax
 63f:	06                   	(bad)
 640:	00 00                	add    BYTE PTR [rax],al
 642:	18 01                	sbb    BYTE PTR [rcx],al
 644:	54                   	push   rsp
 645:	09 03                	or     DWORD PTR [rbx],eax
 647:	04 30                	add    al,0x30
 649:	00 00                	add    BYTE PTR [rax],al
 64b:	00 00                	add    BYTE PTR [rax],al
 64d:	00 00                	add    BYTE PTR [rax],al
 64f:	00 1a                	add    BYTE PTR [rdx],bl
 651:	88 14 00             	mov    BYTE PTR [rax+rax*1],dl
 654:	00 00                	add    BYTE PTR [rax],al
 656:	00 00                	add    BYTE PTR [rax],al
 658:	00 dc                	add    ah,bl
 65a:	08 00                	or     BYTE PTR [rax],al
 65c:	00 1a                	add    BYTE PTR [rdx],bl
 65e:	a5                   	movs   DWORD PTR [rdi],DWORD PTR [rsi]
 65f:	14 00                	adc    al,0x0
 661:	00 00                	add    BYTE PTR [rax],al
 663:	00 00                	add    BYTE PTR [rax],al
 665:	00 e8                	add    al,ch
 667:	08 00                	or     BYTE PTR [rax],al
 669:	00 1a                	add    BYTE PTR [rdx],bl
 66b:	ad                   	lods   eax,DWORD PTR [rsi]
 66c:	14 00                	adc    al,0x0
 66e:	00 00                	add    BYTE PTR [rax],al
 670:	00 00                	add    BYTE PTR [rax],al
 672:	00 f4                	add    ah,dh
 674:	08 00                	or     BYTE PTR [rax],al
 676:	00 1a                	add    BYTE PTR [rdx],bl
 678:	b2 14                	mov    dl,0x14
 67a:	00 00                	add    BYTE PTR [rax],al
 67c:	00 00                	add    BYTE PTR [rax],al
 67e:	00 00                	add    BYTE PTR [rax],al
 680:	00 09                	add    BYTE PTR [rcx],cl
 682:	00 00                	add    BYTE PTR [rax],al
 684:	1a c3                	sbb    al,bl
 686:	14 00                	adc    al,0x0
 688:	00 00                	add    BYTE PTR [rax],al
 68a:	00 00                	add    BYTE PTR [rax],al
 68c:	00 e8                	add    al,ch
 68e:	08 00                	or     BYTE PTR [rax],al
 690:	00 1a                	add    BYTE PTR [rdx],bl
 692:	cb                   	retf
 693:	14 00                	adc    al,0x0
 695:	00 00                	add    BYTE PTR [rax],al
 697:	00 00                	add    BYTE PTR [rax],al
 699:	00 0c 09             	add    BYTE PTR [rcx+rcx*1],cl
 69c:	00 00                	add    BYTE PTR [rax],al
 69e:	1a d0                	sbb    dl,al
 6a0:	14 00                	adc    al,0x0
 6a2:	00 00                	add    BYTE PTR [rax],al
 6a4:	00 00                	add    BYTE PTR [rax],al
 6a6:	00 00                	add    BYTE PTR [rax],al
 6a8:	09 00                	or     DWORD PTR [rax],eax
 6aa:	00 1a                	add    BYTE PTR [rdx],bl
 6ac:	e1 14                	loope  6c2 <_init-0x93e>
 6ae:	00 00                	add    BYTE PTR [rax],al
 6b0:	00 00                	add    BYTE PTR [rax],al
 6b2:	00 00                	add    BYTE PTR [rax],al
 6b4:	e8 08 00 00 1a       	call   1a0006c1 <_end+0x19ffa991>
 6b9:	e9 14 00 00 00       	jmp    6d2 <_init-0x92e>
 6be:	00 00                	add    BYTE PTR [rax],al
 6c0:	00 18                	add    BYTE PTR [rax],bl
 6c2:	09 00                	or     DWORD PTR [rax],eax
 6c4:	00 1a                	add    BYTE PTR [rdx],bl
 6c6:	ee                   	out    dx,al
 6c7:	14 00                	adc    al,0x0
 6c9:	00 00                	add    BYTE PTR [rax],al
 6cb:	00 00                	add    BYTE PTR [rax],al
 6cd:	00 00                	add    BYTE PTR [rax],al
 6cf:	09 00                	or     DWORD PTR [rax],eax
 6d1:	00 1a                	add    BYTE PTR [rdx],bl
 6d3:	ff 14 00             	call   QWORD PTR [rax+rax*1]
 6d6:	00 00                	add    BYTE PTR [rax],al
 6d8:	00 00                	add    BYTE PTR [rax],al
 6da:	00 e8                	add    al,ch
 6dc:	08 00                	or     BYTE PTR [rax],al
 6de:	00 1a                	add    BYTE PTR [rdx],bl
 6e0:	07                   	(bad)
 6e1:	15 00 00 00 00       	adc    eax,0x0
 6e6:	00 00                	add    BYTE PTR [rax],al
 6e8:	24 09                	and    al,0x9
 6ea:	00 00                	add    BYTE PTR [rax],al
 6ec:	1a 0c 15 00 00 00 00 	sbb    cl,BYTE PTR [rdx*1+0x0]
 6f3:	00 00                	add    BYTE PTR [rax],al
 6f5:	00 09                	add    BYTE PTR [rcx],cl
 6f7:	00 00                	add    BYTE PTR [rax],al
 6f9:	1a 1d 15 00 00 00    	sbb    bl,BYTE PTR [rip+0x15]        # 714 <_init-0x8ec>
 6ff:	00 00                	add    BYTE PTR [rax],al
 701:	00 e8                	add    al,ch
 703:	08 00                	or     BYTE PTR [rax],al
 705:	00 1a                	add    BYTE PTR [rdx],bl
 707:	25 15 00 00 00       	and    eax,0x15
 70c:	00 00                	add    BYTE PTR [rax],al
 70e:	00 30                	add    BYTE PTR [rax],dh
 710:	09 00                	or     DWORD PTR [rax],eax
 712:	00 1a                	add    BYTE PTR [rdx],bl
 714:	2a 15 00 00 00 00    	sub    dl,BYTE PTR [rip+0x0]        # 71a <_init-0x8e6>
 71a:	00 00                	add    BYTE PTR [rax],al
 71c:	00 09                	add    BYTE PTR [rcx],cl
 71e:	00 00                	add    BYTE PTR [rax],al
 720:	1a 3b                	sbb    bh,BYTE PTR [rbx]
 722:	15 00 00 00 00       	adc    eax,0x0
 727:	00 00                	add    BYTE PTR [rax],al
 729:	e8 08 00 00 1a       	call   1a000736 <_end+0x19ffaa06>
 72e:	43 15 00 00 00 00    	rex.XB adc eax,0x0
 734:	00 00                	add    BYTE PTR [rax],al
 736:	3c 09                	cmp    al,0x9
 738:	00 00                	add    BYTE PTR [rax],al
 73a:	1a 48 15             	sbb    cl,BYTE PTR [rax+0x15]
 73d:	00 00                	add    BYTE PTR [rax],al
 73f:	00 00                	add    BYTE PTR [rax],al
 741:	00 00                	add    BYTE PTR [rax],al
 743:	00 09                	add    BYTE PTR [rcx],cl
 745:	00 00                	add    BYTE PTR [rax],al
 747:	19 84 15 00 00 00 00 	sbb    DWORD PTR [rbp+rdx*1+0x0],eax
 74e:	00 00                	add    BYTE PTR [rax],al
 750:	48 09 00             	or     QWORD PTR [rax],rax
 753:	00 5e 07             	add    BYTE PTR [rsi+0x7],bl
 756:	00 00                	add    BYTE PTR [rax],al
 758:	18 01                	sbb    BYTE PTR [rcx],al
 75a:	55                   	push   rbp
 75b:	01 38                	add    DWORD PTR [rax],edi
 75d:	00 17                	add    BYTE PTR [rdi],dl
 75f:	a7                   	cmps   DWORD PTR [rsi],DWORD PTR [rdi]
 760:	15 00 00 00 00       	adc    eax,0x0
 765:	00 00                	add    BYTE PTR [rax],al
 767:	48 09 00             	or     QWORD PTR [rax],rax
 76a:	00 18                	add    BYTE PTR [rax],bl
 76c:	01 55 01             	add    DWORD PTR [rbp+0x1],edx
 76f:	38 00                	cmp    BYTE PTR [rax],al
 771:	00 06                	add    BYTE PTR [rsi],al
 773:	08 8b 00 00 00 1b    	or     BYTE PTR [rbx+0x1b000000],cl
 779:	00 00                	add    BYTE PTR [rax],al
 77b:	00 00                	add    BYTE PTR [rax],al
 77d:	02 69 01             	add    ch,BYTE PTR [rcx+0x1]
 780:	65 00 00             	add    BYTE PTR gs:[rax],al
 783:	00 03                	add    BYTE PTR [rbx],al
 785:	97                   	xchg   edi,eax
 786:	07                   	(bad)
 787:	00 00                	add    BYTE PTR [rax],al
 789:	1c d0                	sbb    al,0xd0
 78b:	02 00                	add    al,BYTE PTR [rax]
 78d:	00 02                	add    BYTE PTR [rdx],al
 78f:	69 20 d6 02 00 00    	imul   esp,DWORD PTR [rax],0x2d6
 795:	1d 00 1e 3e 9e       	sbb    eax,0x9e3e1e00
 79a:	3c 57                	cmp    al,0x57
 79c:	65 6c                	gs ins BYTE PTR [rdi],dx
 79e:	63 6f 6d             	movsxd ebp,DWORD PTR [rdi+0x6d]
 7a1:	65 20 74 6f 20       	and    BYTE PTR gs:[rdi+rbp*2+0x20],dh
 7a6:	6d                   	ins    DWORD PTR [rdi],dx
 7a7:	79 20                	jns    7c9 <_init-0x837>
 7a9:	66 69 65 6e 64 69    	imul   sp,WORD PTR [rbp+0x6e],0x6964
 7af:	73 68                	jae    819 <_init-0x7e7>
 7b1:	20 6c 69 74          	and    BYTE PTR [rcx+rbp*2+0x74],ch
 7b5:	74 6c                	je     823 <_init-0x7dd>
 7b7:	65 20 62 6f          	and    BYTE PTR gs:[rdx+0x6f],ah
 7bb:	6d                   	ins    DWORD PTR [rdi],dx
 7bc:	62 2e 20 59 6f       	(bad)
 7c1:	75 20                	jne    7e3 <_init-0x81d>
 7c3:	68 61 76 65 20       	push   0x20657661
 7c8:	36 20 70 68          	ss and BYTE PTR [rax+0x68],dh
 7cc:	61                   	(bad)
 7cd:	73 65                	jae    834 <_init-0x7cc>
 7cf:	73 20                	jae    7f1 <_init-0x80f>
 7d1:	77 69                	ja     83c <_init-0x7c4>
 7d3:	74 68                	je     83d <_init-0x7c3>
 7d5:	0a 00                	or     al,BYTE PTR [rax]
 7d7:	1f                   	(bad)
 7d8:	f6 01 00             	test   BYTE PTR [rcx],0x0
 7db:	00 ec                	add    ah,ch
 7dd:	01 00                	add    DWORD PTR [rax],eax
 7df:	00 0c 00             	add    BYTE PTR [rax+rax*1],cl
 7e2:	1e                   	(bad)
 7e3:	2f                   	(bad)
 7e4:	9e                   	sahf
 7e5:	2d 77 68 69 63       	sub    eax,0x63696877
 7ea:	68 20 74 6f 20       	push   0x206f7420
 7ef:	62 6c 6f 77 20       	(bad)
 7f4:	79 6f                	jns    865 <_init-0x79b>
 7f6:	75 72                	jne    86a <_init-0x796>
 7f8:	73 65                	jae    85f <_init-0x7a1>
 7fa:	6c                   	ins    BYTE PTR [rdi],dx
 7fb:	66 20 75 70          	data16 and BYTE PTR [rbp+0x70],dh
 7ff:	2e 20 48 61          	cs and BYTE PTR [rax+0x61],cl
 803:	76 65                	jbe    86a <_init-0x796>
 805:	20 61 20             	and    BYTE PTR [rcx+0x20],ah
 808:	6e                   	outs   dx,BYTE PTR [rsi]
 809:	69 63 65 20 64 61 79 	imul   esp,DWORD PTR [rbx+0x65],0x79616420
 810:	21 0a                	and    DWORD PTR [rdx],ecx
 812:	00 1e                	add    BYTE PTR [rsi],bl
 814:	2c 9e                	sub    al,0x9e
 816:	2a 50 68             	sub    dl,BYTE PTR [rax+0x68]
 819:	61                   	(bad)
 81a:	73 65                	jae    881 <_init-0x77f>
 81c:	20 31                	and    BYTE PTR [rcx],dh
 81e:	20 64 65 66          	and    BYTE PTR [rbp+riz*2+0x66],ah
 822:	75 73                	jne    897 <_init-0x769>
 824:	65 64 2e 20 48 6f    	gs fs and BYTE PTR fs:[rax+0x6f],cl
 82a:	77 20                	ja     84c <_init-0x7b4>
 82c:	61                   	(bad)
 82d:	62 6f 75 74 20       	(bad)
 832:	74 68                	je     89c <_init-0x764>
 834:	65 20 6e 65          	and    BYTE PTR gs:[rsi+0x65],ch
 838:	78 74                	js     8ae <_init-0x752>
 83a:	20 6f 6e             	and    BYTE PTR [rdi+0x6e],ch
 83d:	65 3f                	gs (bad)
 83f:	0a 00                	or     al,BYTE PTR [rax]
 841:	1e                   	(bad)
 842:	21 9e 1f 54 68 61    	and    DWORD PTR [rsi+0x6168541f],ebx
 848:	74 27                	je     871 <_init-0x78f>
 84a:	73 20                	jae    86c <_init-0x794>
 84c:	6e                   	outs   dx,BYTE PTR [rsi]
 84d:	75 6d                	jne    8bc <_init-0x744>
 84f:	62 65 72 20 32       	(bad)
 854:	2e 20 20             	cs and BYTE PTR [rax],ah
 857:	4b                   	rex.WXB
 858:	65 65 70 20          	gs gs jo 87c <_init-0x784>
 85c:	67 6f                	outs   dx,DWORD PTR [esi]
 85e:	69 6e 67 21 0a 00 1e 	imul   ebp,DWORD PTR [rsi+0x67],0x1e000a21
 865:	12 9e 10 48 61 6c    	adc    bl,BYTE PTR [rsi+0x6c614810]
 86b:	66 77 61             	data16 ja 8cf <_init-0x731>
 86e:	79 20                	jns    890 <_init-0x770>
 870:	74 68                	je     8da <_init-0x726>
 872:	65 72 65             	gs jb  8da <_init-0x726>
 875:	21 0a                	and    DWORD PTR [rdx],ecx
 877:	00 1e                	add    BYTE PTR [rsi],bl
 879:	27                   	(bad)
 87a:	9e                   	sahf
 87b:	25 53 6f 20 79       	and    eax,0x79206f53
 880:	6f                   	outs   dx,DWORD PTR [rsi]
 881:	75 20                	jne    8a3 <_init-0x75d>
 883:	67 6f                	outs   dx,DWORD PTR [esi]
 885:	74 20                	je     8a7 <_init-0x759>
 887:	74 68                	je     8f1 <_init-0x70f>
 889:	61                   	(bad)
 88a:	74 20                	je     8ac <_init-0x754>
 88c:	6f                   	outs   dx,DWORD PTR [rsi]
 88d:	6e                   	outs   dx,BYTE PTR [rsi]
 88e:	65 2e 20 20          	gs and BYTE PTR gs:[rax],ah
 892:	54                   	push   rsp
 893:	72 79                	jb     90e <_init-0x6f2>
 895:	20 74 68 69          	and    BYTE PTR [rax+rbp*2+0x69],dh
 899:	73 20                	jae    8bb <_init-0x745>
 89b:	6f                   	outs   dx,DWORD PTR [rsi]
 89c:	6e                   	outs   dx,BYTE PTR [rsi]
 89d:	65 2e 0a 00          	gs or  al,BYTE PTR gs:[rax]
 8a1:	1e                   	(bad)
 8a2:	21 9e 1f 47 6f 6f    	and    DWORD PTR [rsi+0x6f6f471f],ebx
 8a8:	64 20 77 6f          	and    BYTE PTR fs:[rdi+0x6f],dh
 8ac:	72 6b                	jb     919 <_init-0x6e7>
 8ae:	21 20                	and    DWORD PTR [rax],esp
 8b0:	20 4f 6e             	and    BYTE PTR [rdi+0x6e],cl
 8b3:	20 74 6f 20          	and    BYTE PTR [rdi+rbp*2+0x20],dh
 8b7:	74 68                	je     921 <_init-0x6df>
 8b9:	65 20 6e 65          	and    BYTE PTR gs:[rsi+0x65],ch
 8bd:	78 74                	js     933 <_init-0x6cd>
 8bf:	2e 2e 2e 0a 00       	cs cs cs or al,BYTE PTR [rax]
 8c4:	20 52 01             	and    BYTE PTR [rdx+0x1],dl
 8c7:	00 00                	add    BYTE PTR [rax],al
 8c9:	52                   	push   rdx
 8ca:	01 00                	add    DWORD PTR [rax],eax
 8cc:	00 02                	add    BYTE PTR [rdx],al
 8ce:	5a                   	pop    rdx
 8cf:	0c 20                	or     al,0x20
 8d1:	24 02                	and    al,0x2
 8d3:	00 00                	add    BYTE PTR [rax],al
 8d5:	24 02                	and    al,0x2
 8d7:	00 00                	add    BYTE PTR [rax],al
 8d9:	07                   	(bad)
 8da:	f6 0e 20             	test   BYTE PTR [rsi],0x20
 8dd:	72 01                	jb     8e0 <_init-0x720>
 8df:	00 00                	add    BYTE PTR [rax],al
 8e1:	72 01                	jb     8e4 <_init-0x71c>
 8e3:	00 00                	add    BYTE PTR [rax],al
 8e5:	09 09                	or     DWORD PTR [rcx],ecx
 8e7:	06                   	(bad)
 8e8:	20 58 00             	and    BYTE PTR [rax+0x0],bl
 8eb:	00 00                	add    BYTE PTR [rax],al
 8ed:	58                   	pop    rax
 8ee:	00 00                	add    BYTE PTR [rax],al
 8f0:	00 09                	add    BYTE PTR [rcx],cl
 8f2:	08 07                	or     BYTE PTR [rdi],al
 8f4:	20 f2                	and    dl,dh
 8f6:	02 00                	add    al,BYTE PTR [rax]
 8f8:	00 f2                	add    dl,dh
 8fa:	02 00                	add    al,BYTE PTR [rax]
 8fc:	00 0a                	add    BYTE PTR [rdx],cl
 8fe:	04 0d                	add    al,0xd
 900:	20 70 00             	and    BYTE PTR [rax+0x0],dh
 903:	00 00                	add    BYTE PTR [rax],al
 905:	70 00                	jo     907 <_init-0x6f9>
 907:	00 00                	add    BYTE PTR [rax],al
 909:	09 0c 06             	or     DWORD PTR [rsi+rax*1],ecx
 90c:	20 fa                	and    dl,bh
 90e:	02 00                	add    al,BYTE PTR [rax]
 910:	00 fa                	add    dl,bh
 912:	02 00                	add    al,BYTE PTR [rax]
 914:	00 0a                	add    BYTE PTR [rdx],cl
 916:	05 0d 20 02 03       	add    eax,0x302200d
 91b:	00 00                	add    BYTE PTR [rax],al
 91d:	02 03                	add    al,BYTE PTR [rbx]
 91f:	00 00                	add    BYTE PTR [rax],al
 921:	0a 06                	or     al,BYTE PTR [rsi]
 923:	0d 20 0a 03 00       	or     eax,0x30a20
 928:	00 0a                	add    BYTE PTR [rdx],cl
 92a:	03 00                	add    eax,DWORD PTR [rax]
 92c:	00 0a                	add    BYTE PTR [rdx],cl
 92e:	07                   	(bad)
 92f:	0d 20 12 03 00       	or     eax,0x31220
 934:	00 12                	add    BYTE PTR [rdx],dl
 936:	03 00                	add    eax,DWORD PTR [rax]
 938:	00 0a                	add    BYTE PTR [rdx],cl
 93a:	08 0d 20 1a 03 00    	or     BYTE PTR [rip+0x31a20],cl        # 32360 <_end+0x2c630>
 940:	00 1a                	add    BYTE PTR [rdx],bl
 942:	03 00                	add    eax,DWORD PTR [rax]
 944:	00 0a                	add    BYTE PTR [rdx],cl
 946:	09 0d 21 74 02 00    	or     DWORD PTR [rip+0x27421],ecx        # 27d6d <_end+0x2203d>
 94c:	00 74 02 00          	add    BYTE PTR [rdx+rax*1+0x0],dh
 950:	00 0b                	add    BYTE PTR [rbx],cl
 952:	69                   	.byte 0x69
 953:	02                   	.byte 0x2
 954:	0d                   	.byte 0xd
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    DWORD PTR [rcx],edx
   2:	01 25 0e 13 0b 03    	add    DWORD PTR [rip+0x30b130e],esp        # 30b1316 <_end+0x30ab5e6>
   8:	0e                   	(bad)
   9:	1b 0e                	sbb    ecx,DWORD PTR [rsi]
   b:	11 01                	adc    DWORD PTR [rcx],eax
   d:	12 07                	adc    al,BYTE PTR [rdi]
   f:	10 17                	adc    BYTE PTR [rdi],dl
  11:	00 00                	add    BYTE PTR [rax],al
  13:	02 16                	add    dl,BYTE PTR [rsi]
  15:	00 03                	add    BYTE PTR [rbx],al
  17:	0e                   	(bad)
  18:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  1a:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  1c:	39 0b                	cmp    DWORD PTR [rbx],ecx
  1e:	49 13 00             	adc    rax,QWORD PTR [r8]
  21:	00 03                	add    BYTE PTR [rbx],al
  23:	24 00                	and    al,0x0
  25:	0b 0b                	or     ecx,DWORD PTR [rbx]
  27:	3e 0b 03             	ds or  eax,DWORD PTR [rbx]
  2a:	0e                   	(bad)
  2b:	00 00                	add    BYTE PTR [rax],al
  2d:	04 0f                	add    al,0xf
  2f:	00 0b                	add    BYTE PTR [rbx],cl
  31:	0b 00                	or     eax,DWORD PTR [rax]
  33:	00 05 24 00 0b 0b    	add    BYTE PTR [rip+0xb0b0024],al        # b0b005d <_end+0xb0aa32d>
  39:	3e 0b 03             	ds or  eax,DWORD PTR [rbx]
  3c:	08 00                	or     BYTE PTR [rax],al
  3e:	00 06                	add    BYTE PTR [rsi],al
  40:	0f 00 0b             	str    WORD PTR [rbx]
  43:	0b 49 13             	or     ecx,DWORD PTR [rcx+0x13]
  46:	00 00                	add    BYTE PTR [rax],al
  48:	07                   	(bad)
  49:	26 00 49 13          	es add BYTE PTR [rcx+0x13],cl
  4d:	00 00                	add    BYTE PTR [rax],al
  4f:	08 13                	or     BYTE PTR [rbx],dl
  51:	01 03                	add    DWORD PTR [rbx],eax
  53:	0e                   	(bad)
  54:	0b 0b                	or     ecx,DWORD PTR [rbx]
  56:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  58:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  5a:	39 0b                	cmp    DWORD PTR [rbx],ecx
  5c:	01 13                	add    DWORD PTR [rbx],edx
  5e:	00 00                	add    BYTE PTR [rax],al
  60:	09 0d 00 03 0e 3a    	or     DWORD PTR [rip+0x3a0e0300],ecx        # 3a0e0366 <_end+0x3a0da636>
  66:	0b 3b                	or     edi,DWORD PTR [rbx]
  68:	0b 39                	or     edi,DWORD PTR [rcx]
  6a:	0b 49 13             	or     ecx,DWORD PTR [rcx+0x13]
  6d:	38 0b                	cmp    BYTE PTR [rbx],cl
  6f:	00 00                	add    BYTE PTR [rax],al
  71:	0a 16                	or     dl,BYTE PTR [rsi]
  73:	00 03                	add    BYTE PTR [rbx],al
  75:	0e                   	(bad)
  76:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  78:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  7a:	39 0b                	cmp    DWORD PTR [rbx],ecx
  7c:	00 00                	add    BYTE PTR [rax],al
  7e:	0b 13                	or     edx,DWORD PTR [rbx]
  80:	00 03                	add    BYTE PTR [rbx],al
  82:	0e                   	(bad)
  83:	3c 19                	cmp    al,0x19
  85:	00 00                	add    BYTE PTR [rax],al
  87:	0c 01                	or     al,0x1
  89:	01 49 13             	add    DWORD PTR [rcx+0x13],ecx
  8c:	01 13                	add    DWORD PTR [rbx],edx
  8e:	00 00                	add    BYTE PTR [rax],al
  90:	0d 21 00 49 13       	or     eax,0x13490021
  95:	2f                   	(bad)
  96:	0b 00                	or     eax,DWORD PTR [rax]
  98:	00 0e                	add    BYTE PTR [rsi],cl
  9a:	34 00                	xor    al,0x0
  9c:	03 0e                	add    ecx,DWORD PTR [rsi]
  9e:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  a0:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  a2:	39 0b                	cmp    DWORD PTR [rbx],ecx
  a4:	49 13 3f             	adc    rdi,QWORD PTR [r15]
  a7:	19 3c 19             	sbb    DWORD PTR [rcx+rbx*1],edi
  aa:	00 00                	add    BYTE PTR [rax],al
  ac:	0f 21 00             	mov    rax,dr0
  af:	00 00                	add    BYTE PTR [rax],al
  b1:	10 37                	adc    BYTE PTR [rdi],dh
  b3:	00 49 13             	add    BYTE PTR [rcx+0x13],cl
  b6:	00 00                	add    BYTE PTR [rax],al
  b8:	11 34 00             	adc    DWORD PTR [rax+rax*1],esi
  bb:	03 0e                	add    ecx,DWORD PTR [rsi]
  bd:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  bf:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  c1:	39 0b                	cmp    DWORD PTR [rbx],ecx
  c3:	49 13 3f             	adc    rdi,QWORD PTR [r15]
  c6:	19 02                	sbb    DWORD PTR [rdx],eax
  c8:	18 00                	sbb    BYTE PTR [rax],al
  ca:	00 12                	add    BYTE PTR [rdx],dl
  cc:	2e 01 3f             	cs add DWORD PTR [rdi],edi
  cf:	19 03                	sbb    DWORD PTR [rbx],eax
  d1:	0e                   	(bad)
  d2:	3a 0b                	cmp    cl,BYTE PTR [rbx]
  d4:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
  d6:	39 0b                	cmp    DWORD PTR [rbx],ecx
  d8:	27                   	(bad)
  d9:	19 49 13             	sbb    DWORD PTR [rcx+0x13],ecx
  dc:	11 01                	adc    DWORD PTR [rcx],eax
  de:	12 07                	adc    al,BYTE PTR [rdi]
  e0:	40 18 97 42 19 01 13 	rex sbb BYTE PTR [rdi+0x13011942],dl
  e7:	00 00                	add    BYTE PTR [rax],al
  e9:	13 05 00 03 0e 3a    	adc    eax,DWORD PTR [rip+0x3a0e0300]        # 3a0e03ef <_end+0x3a0da6bf>
  ef:	0b 3b                	or     edi,DWORD PTR [rbx]
  f1:	0b 39                	or     edi,DWORD PTR [rcx]
  f3:	0b 49 13             	or     ecx,DWORD PTR [rcx+0x13]
  f6:	02 17                	add    dl,BYTE PTR [rdi]
  f8:	b7 42                	mov    bh,0x42
  fa:	17                   	(bad)
  fb:	00 00                	add    BYTE PTR [rax],al
  fd:	14 34                	adc    al,0x34
  ff:	00 03                	add    BYTE PTR [rbx],al
 101:	0e                   	(bad)
 102:	3a 0b                	cmp    cl,BYTE PTR [rbx]
 104:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
 106:	39 0b                	cmp    DWORD PTR [rbx],ecx
 108:	49 13 02             	adc    rax,QWORD PTR [r10]
 10b:	17                   	(bad)
 10c:	b7 42                	mov    bh,0x42
 10e:	17                   	(bad)
 10f:	00 00                	add    BYTE PTR [rax],al
 111:	15 1d 01 31 13       	adc    eax,0x1331011d
 116:	52                   	push   rdx
 117:	01 b8 42 0b 11 01    	add    DWORD PTR [rax+0x1110b42],edi
 11d:	12 07                	adc    al,BYTE PTR [rdi]
 11f:	58                   	pop    rax
 120:	0b 59 0b             	or     ebx,DWORD PTR [rcx+0xb]
 123:	57                   	push   rdi
 124:	0b 01                	or     eax,DWORD PTR [rcx]
 126:	13 00                	adc    eax,DWORD PTR [rax]
 128:	00 16                	add    BYTE PTR [rsi],dl
 12a:	05 00 31 13 02       	add    eax,0x2133100
 12f:	17                   	(bad)
 130:	b7 42                	mov    bh,0x42
 132:	17                   	(bad)
 133:	00 00                	add    BYTE PTR [rax],al
 135:	17                   	(bad)
 136:	89 82 01 01 11 01    	mov    DWORD PTR [rdx+0x1110101],eax
 13c:	31 13                	xor    DWORD PTR [rbx],edx
 13e:	00 00                	add    BYTE PTR [rax],al
 140:	18 8a 82 01 00 02    	sbb    BYTE PTR [rdx+0x2000182],cl
 146:	18 91 42 18 00 00    	sbb    BYTE PTR [rcx+0x1842],dl
 14c:	19 89 82 01 01 11    	sbb    DWORD PTR [rcx+0x11010182],ecx
 152:	01 31                	add    DWORD PTR [rcx],esi
 154:	13 01                	adc    eax,DWORD PTR [rcx]
 156:	13 00                	adc    eax,DWORD PTR [rax]
 158:	00 1a                	add    BYTE PTR [rdx],bl
 15a:	89 82 01 00 11 01    	mov    DWORD PTR [rdx+0x1110001],eax
 160:	31 13                	xor    DWORD PTR [rbx],edx
 162:	00 00                	add    BYTE PTR [rax],al
 164:	1b 2e                	sbb    ebp,DWORD PTR [rsi]
 166:	01 3f                	add    DWORD PTR [rdi],edi
 168:	19 03                	sbb    DWORD PTR [rbx],eax
 16a:	0e                   	(bad)
 16b:	3a 0b                	cmp    cl,BYTE PTR [rbx]
 16d:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
 16f:	39 0b                	cmp    DWORD PTR [rbx],ecx
 171:	27                   	(bad)
 172:	19 49 13             	sbb    DWORD PTR [rcx+0x13],ecx
 175:	20 0b                	and    BYTE PTR [rbx],cl
 177:	34 19                	xor    al,0x19
 179:	01 13                	add    DWORD PTR [rbx],edx
 17b:	00 00                	add    BYTE PTR [rax],al
 17d:	1c 05                	sbb    al,0x5
 17f:	00 03                	add    BYTE PTR [rbx],al
 181:	0e                   	(bad)
 182:	3a 0b                	cmp    cl,BYTE PTR [rbx]
 184:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
 186:	39 0b                	cmp    DWORD PTR [rbx],ecx
 188:	49 13 00             	adc    rax,QWORD PTR [r8]
 18b:	00 1d 18 00 00 00    	add    BYTE PTR [rip+0x18],bl        # 1a9 <_init-0xe57>
 191:	1e                   	(bad)
 192:	36 00 02             	ss add BYTE PTR [rdx],al
 195:	18 00                	sbb    BYTE PTR [rax],al
 197:	00 1f                	add    BYTE PTR [rdi],bl
 199:	2e 00 3f             	cs add BYTE PTR [rdi],bh
 19c:	19 3c 19             	sbb    DWORD PTR [rcx+rbx*1],edi
 19f:	6e                   	outs   dx,BYTE PTR [rsi]
 1a0:	0e                   	(bad)
 1a1:	03 0e                	add    ecx,DWORD PTR [rsi]
 1a3:	3a 0b                	cmp    cl,BYTE PTR [rbx]
 1a5:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
 1a7:	00 00                	add    BYTE PTR [rax],al
 1a9:	20 2e                	and    BYTE PTR [rsi],ch
 1ab:	00 3f                	add    BYTE PTR [rdi],bh
 1ad:	19 3c 19             	sbb    DWORD PTR [rcx+rbx*1],edi
 1b0:	6e                   	outs   dx,BYTE PTR [rsi]
 1b1:	0e                   	(bad)
 1b2:	03 0e                	add    ecx,DWORD PTR [rsi]
 1b4:	3a 0b                	cmp    cl,BYTE PTR [rbx]
 1b6:	3b 0b                	cmp    ecx,DWORD PTR [rbx]
 1b8:	39 0b                	cmp    DWORD PTR [rbx],ecx
 1ba:	00 00                	add    BYTE PTR [rax],al
 1bc:	21 2e                	and    DWORD PTR [rsi],ebp
 1be:	00 3f                	add    BYTE PTR [rdi],bh
 1c0:	19 3c 19             	sbb    DWORD PTR [rcx+rbx*1],edi
 1c3:	6e                   	outs   dx,BYTE PTR [rsi]
 1c4:	0e                   	(bad)
 1c5:	03 0e                	add    ecx,DWORD PTR [rsi]
 1c7:	3a 0b                	cmp    cl,BYTE PTR [rbx]
 1c9:	3b 05 39 0b 00 00    	cmp    eax,DWORD PTR [rip+0xb39]        # d08 <_init-0x2f8>
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	8e 02                	mov    es,WORD PTR [rdx]
   2:	00 00                	add    BYTE PTR [rax],al
   4:	03 00                	add    eax,DWORD PTR [rax]
   6:	2b 01                	sub    eax,DWORD PTR [rcx]
   8:	00 00                	add    BYTE PTR [rax],al
   a:	01 01                	add    DWORD PTR [rcx],eax
   c:	fb                   	sti
   d:	0e                   	(bad)
   e:	0d 00 01 01 01       	or     eax,0x1010100
  13:	01 00                	add    DWORD PTR [rax],eax
  15:	00 00                	add    BYTE PTR [rax],al
  17:	01 00                	add    DWORD PTR [rax],eax
  19:	00 01                	add    BYTE PTR [rcx],al
  1b:	2f                   	(bad)
  1c:	75 73                	jne    91 <_init-0xf6f>
  1e:	72 2f                	jb     4f <_init-0xfb1>
  20:	69 6e 63 6c 75 64 65 	imul   ebp,DWORD PTR [rsi+0x63],0x6564756c
  27:	2f                   	(bad)
  28:	78 38                	js     62 <_init-0xf9e>
  2a:	36 5f                	ss pop rdi
  2c:	36 34 2d             	ss xor al,0x2d
  2f:	6c                   	ins    BYTE PTR [rdi],dx
  30:	69 6e 75 78 2d 67 6e 	imul   ebp,DWORD PTR [rsi+0x75],0x6e672d78
  37:	75 2f                	jne    68 <_init-0xf98>
  39:	62 69 74 73 00       	(bad)
  3e:	2f                   	(bad)
  3f:	75 73                	jne    b4 <_init-0xf4c>
  41:	72 2f                	jb     72 <_init-0xf8e>
  43:	6c                   	ins    BYTE PTR [rdi],dx
  44:	69 62 2f 67 63 63 2f 	imul   esp,DWORD PTR [rdx+0x2f],0x2f636367
  4b:	78 38                	js     85 <_init-0xf7b>
  4d:	36 5f                	ss pop rdi
  4f:	36 34 2d             	ss xor al,0x2d
  52:	6c                   	ins    BYTE PTR [rdi],dx
  53:	69 6e 75 78 2d 67 6e 	imul   ebp,DWORD PTR [rsi+0x75],0x6e672d78
  5a:	75 2f                	jne    8b <_init-0xf75>
  5c:	39 2f                	cmp    DWORD PTR [rdi],ebp
  5e:	69 6e 63 6c 75 64 65 	imul   ebp,DWORD PTR [rsi+0x63],0x6564756c
  65:	00 2f                	add    BYTE PTR [rdi],ch
  67:	75 73                	jne    dc <_init-0xf24>
  69:	72 2f                	jb     9a <_init-0xf66>
  6b:	69 6e 63 6c 75 64 65 	imul   ebp,DWORD PTR [rsi+0x63],0x6564756c
  72:	2f                   	(bad)
  73:	78 38                	js     ad <_init-0xf53>
  75:	36 5f                	ss pop rdi
  77:	36 34 2d             	ss xor al,0x2d
  7a:	6c                   	ins    BYTE PTR [rdi],dx
  7b:	69 6e 75 78 2d 67 6e 	imul   ebp,DWORD PTR [rsi+0x75],0x6e672d78
  82:	75 2f                	jne    b3 <_init-0xf4d>
  84:	62 69 74 73 2f       	(bad)
  89:	74 79                	je     104 <_init-0xefc>
  8b:	70 65                	jo     f2 <_init-0xf0e>
  8d:	73 00                	jae    8f <_init-0xf71>
  8f:	2f                   	(bad)
  90:	75 73                	jne    105 <_init-0xefb>
  92:	72 2f                	jb     c3 <_init-0xf3d>
  94:	69 6e 63 6c 75 64 65 	imul   ebp,DWORD PTR [rsi+0x63],0x6564756c
  9b:	00 00                	add    BYTE PTR [rax],al
  9d:	62 6f 6d 62 2e       	(bad)
  a2:	63 00                	movsxd eax,DWORD PTR [rax]
  a4:	00 00                	add    BYTE PTR [rax],al
  a6:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
  a9:	64 69 6f 32 2e 68 00 	imul   ebp,DWORD PTR fs:[rdi+0x32],0x100682e
  b0:	01 
  b1:	00 00                	add    BYTE PTR [rax],al
  b3:	73 74                	jae    129 <_init-0xed7>
  b5:	64 64 65 66 2e 68 00 	fs fs gs cs pushw 0x200
  bc:	02 
  bd:	00 00                	add    BYTE PTR [rax],al
  bf:	74 79                	je     13a <_init-0xec6>
  c1:	70 65                	jo     128 <_init-0xed8>
  c3:	73 2e                	jae    f3 <_init-0xf0d>
  c5:	68 00 01 00 00       	push   0x100
  ca:	73 74                	jae    140 <_init-0xec0>
  cc:	72 75                	jb     143 <_init-0xebd>
  ce:	63 74 5f 46          	movsxd esi,DWORD PTR [rdi+rbx*2+0x46]
  d2:	49                   	rex.WB
  d3:	4c                   	rex.WR
  d4:	45                   	rex.RB
  d5:	2e 68 00 03 00 00    	cs push 0x300
  db:	46                   	rex.RX
  dc:	49                   	rex.WB
  dd:	4c                   	rex.WR
  de:	45                   	rex.RB
  df:	2e 68 00 03 00 00    	cs push 0x300
  e5:	73 74                	jae    15b <_init-0xea5>
  e7:	64 69 6f 2e 68 00 04 	imul   ebp,DWORD PTR fs:[rdi+0x2e],0x40068
  ee:	00 
  ef:	00 73 79             	add    BYTE PTR [rbx+0x79],dh
  f2:	73 5f                	jae    153 <_init-0xead>
  f4:	65 72 72             	gs jb  169 <_init-0xe97>
  f7:	6c                   	ins    BYTE PTR [rdi],dx
  f8:	69 73 74 2e 68 00 01 	imul   esi,DWORD PTR [rbx+0x74],0x100682e
  ff:	00 00                	add    BYTE PTR [rax],al
 101:	73 75                	jae    178 <_init-0xe88>
 103:	70 70                	jo     175 <_init-0xe8b>
 105:	6f                   	outs   dx,DWORD PTR [rsi]
 106:	72 74                	jb     17c <_init-0xe84>
 108:	2e 68 00 00 00 00    	cs push 0x0
 10e:	70 68                	jo     178 <_init-0xe88>
 110:	61                   	(bad)
 111:	73 65                	jae    178 <_init-0xe88>
 113:	73 2e                	jae    143 <_init-0xebd>
 115:	68 00 00 00 00       	push   0x0
 11a:	73 74                	jae    190 <_init-0xe70>
 11c:	64 6c                	fs ins BYTE PTR [rdi],dx
 11e:	69 62 2e 68 00 04 00 	imul   esp,DWORD PTR [rdx+0x2e],0x40068
 125:	00 3c 62             	add    BYTE PTR [rdx+riz*2],bh
 128:	75 69                	jne    193 <_init-0xe6d>
 12a:	6c                   	ins    BYTE PTR [rdi],dx
 12b:	74 2d                	je     15a <_init-0xea6>
 12d:	69 6e 3e 00 00 00 00 	imul   ebp,DWORD PTR [rsi+0x3e],0x0
 134:	00 05 01 00 09 02    	add    BYTE PTR [rip+0x2090001],al        # 209013b <_end+0x208a40b>
 13a:	49 14 00             	rex.WB adc al,0x0
 13d:	00 00                	add    BYTE PTR [rax],al
 13f:	00 00                	add    BYTE PTR [rax],al
 141:	00 03                	add    BYTE PTR [rbx],al
 143:	24 01                	and    al,0x1
 145:	06                   	(bad)
 146:	01 05 05 06 59 19    	add    DWORD PTR [rip+0x19590605],eax        # 19590751 <_end+0x1958aa21>
 14c:	05 08 06 01 05       	add    eax,0x5010608
 151:	0a 06                	or     al,BYTE PTR [rsi]
 153:	c2 05 0d             	ret    0xd05
 156:	06                   	(bad)
 157:	01 05 02 06 91 05    	add    DWORD PTR [rip+0x5910602],eax        # 591075f <_end+0x590aa2f>
 15d:	11 06                	adc    DWORD PTR [rsi],eax
 15f:	01 4a 74             	add    DWORD PTR [rdx+0x74],ecx
 162:	05 0f 58 05 05       	add    eax,0x505580f
 167:	74 06                	je     16f <_init-0xe91>
 169:	03 0d 90 5a 04 02    	add    ecx,DWORD PTR [rip+0x2045a90]        # 2045bff <_end+0x203fecf>
 16f:	05 01 03 24 01       	add    eax,0x1240301
 174:	05 03 14 05 0a       	add    eax,0xa051403
 179:	06                   	(bad)
 17a:	01 ba 04 01 05 05    	add    DWORD PTR [rdx+0x5050104],edi
 180:	06                   	(bad)
 181:	03 5b 01             	add    ebx,DWORD PTR [rbx+0x1]
 184:	04 02                	add    al,0x2
 186:	05 01 03 23 01       	add    eax,0x1230301
 18b:	05 03 14 05 0a       	add    eax,0xa051403
 190:	06                   	(bad)
 191:	01 ba 04 01 05 05    	add    DWORD PTR [rdx+0x5050104],edi
 197:	06                   	(bad)
 198:	03 5e 01             	add    ebx,DWORD PTR [rsi+0x1]
 19b:	05 0d 06 01 05       	add    eax,0x501060d
 1a0:	05 06 83 59 5a       	add    eax,0x5a598306
 1a5:	04 02                	add    al,0x2
 1a7:	05 01 03 1c 01       	add    eax,0x11c0301
 1ac:	05 03 14 05 0a       	add    eax,0xa051403
 1b1:	06                   	(bad)
 1b2:	01 ba 04 01 05 05    	add    DWORD PTR [rdx+0x5050104],edi
 1b8:	06                   	(bad)
 1b9:	03 66 01             	add    esp,DWORD PTR [rsi+0x1]
 1bc:	05 0d 06 01 05       	add    eax,0x501060d
 1c1:	05 06 83 59 59       	add    eax,0x59598306
 1c6:	04 02                	add    al,0x2
 1c8:	05 01 03 15 01       	add    eax,0x1150301
 1cd:	05 03 14 05 0a       	add    eax,0xa051403
 1d2:	06                   	(bad)
 1d3:	01 ba 04 01 05 05    	add    DWORD PTR [rdx+0x5050104],edi
 1d9:	06                   	(bad)
 1da:	03 6d 01             	add    ebp,DWORD PTR [rbp+0x1]
 1dd:	05 0d 06 01 05       	add    eax,0x501060d
 1e2:	05 06 83 59 59       	add    eax,0x59598306
 1e7:	04 02                	add    al,0x2
 1e9:	05 01 03 0e 01       	add    eax,0x10e0301
 1ee:	05 03 14 05 0a       	add    eax,0xa051403
 1f3:	06                   	(bad)
 1f4:	01 ba 04 01 05 05    	add    DWORD PTR [rdx+0x5050104],edi
 1fa:	06                   	(bad)
 1fb:	03 73 01             	add    esi,DWORD PTR [rbx+0x1]
 1fe:	05 0d 06 01 05       	add    eax,0x501060d
 203:	05 06 83 59 59       	add    eax,0x59598306
 208:	04 02                	add    al,0x2
 20a:	05 01 1a 05 03       	add    eax,0x3051a01
 20f:	14 05                	adc    al,0x5
 211:	0a 06                	or     al,BYTE PTR [rsi]
 213:	01 ba 04 01 05 05    	add    DWORD PTR [rdx+0x5050104],edi
 219:	06                   	(bad)
 21a:	03 79 01             	add    edi,DWORD PTR [rcx+0x1]
 21d:	05 0d 06 01 05       	add    eax,0x501060d
 222:	05 06 83 59 59       	add    eax,0x59598306
 227:	04 02                	add    al,0x2
 229:	05 01 14 05 03       	add    eax,0x3051401
 22e:	14 05                	adc    al,0x5
 230:	0a 06                	or     al,BYTE PTR [rsi]
 232:	01 ba 04 01 05 05    	add    DWORD PTR [rdx+0x5050104],edi
 238:	06                   	(bad)
 239:	01 05 0d 06 01 05    	add    DWORD PTR [rip+0x501060d],eax        # 501084c <_end+0x500ab1c>
 23f:	05 06 83 59 5d       	add    eax,0x5d598306
 244:	05 01 06 13 05       	add    eax,0x5130601
 249:	02 06                	add    al,BYTE PTR [rsi]
 24b:	03 bb 7f 74 05 09    	add    edi,DWORD PTR [rbx+0x905747f]
 251:	06                   	(bad)
 252:	01 05 06 06 03 09    	add    DWORD PTR [rip+0x9030606],eax        # 903085e <_end+0x902ab2e>
 258:	08 2e                	or     BYTE PTR [rsi],ch
 25a:	04 02                	add    al,0x2
 25c:	05 01 03 32 01       	add    eax,0x1320301
 261:	05 03 14 05 0a       	add    eax,0xa051403
 266:	06                   	(bad)
 267:	01 08                	add    DWORD PTR [rax],ecx
 269:	74 04                	je     26f <_init-0xd91>
 26b:	01 05 06 06 03 4d    	add    DWORD PTR [rip+0x4d030606],eax        # 4d030877 <_end+0x4d02ab47>
 271:	01 05 02 a4 04 02    	add    DWORD PTR [rip+0x204a402],eax        # 204a679 <_end+0x2044949>
 277:	05 01 03 2b 01       	add    eax,0x12b0301
 27c:	05 03 14 05 0a       	add    eax,0xa051403
 281:	06                   	(bad)
 282:	01 e4                	add    esp,esp
 284:	9e                   	sahf
 285:	04 01                	add    al,0x1
 287:	05 02 06 03 54       	add    eax,0x54030602
 28c:	01 02                	add    DWORD PTR [rdx],eax
 28e:	0a 00                	or     al,BYTE PTR [rax]
 290:	01 01                	add    DWORD PTR [rcx],eax

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	70 72                	jo     74 <_init-0xf8c>
   2:	69 6e 74 66 00 5f 5f 	imul   ebp,DWORD PTR [rsi+0x74],0x5f5f0066
   9:	6f                   	outs   dx,DWORD PTR [rsi]
   a:	66 66 5f             	data16 pop di
   d:	74 00                	je     f <_init-0xff1>
   f:	5f                   	pop    rdi
  10:	49                   	rex.WB
  11:	4f 5f                	rex.WRXB pop r15
  13:	72 65                	jb     7a <_init-0xf86>
  15:	61                   	(bad)
  16:	64 5f                	fs pop rdi
  18:	70 74                	jo     8e <_init-0xf72>
  1a:	72 00                	jb     1c <_init-0xfe4>
  1c:	5f                   	pop    rdi
  1d:	63 68 61             	movsxd ebp,DWORD PTR [rax+0x61]
  20:	69 6e 00 73 69 7a 65 	imul   ebp,DWORD PTR [rsi+0x0],0x657a6973
  27:	5f                   	pop    rdi
  28:	74 00                	je     2a <_init-0xfd6>
  2a:	5f                   	pop    rdi
  2b:	73 68                	jae    95 <_init-0xf6b>
  2d:	6f                   	outs   dx,DWORD PTR [rsi]
  2e:	72 74                	jb     a4 <_init-0xf5c>
  30:	62 75 66 00 5f 49 4f 	vmaxsh xmm9,xmm19,WORD PTR [rcx+0x9e]
  37:	5f                   	pop    rdi
  38:	62 75 66 5f 62       	(bad)
  3d:	61                   	(bad)
  3e:	73 65                	jae    a5 <_init-0xf5b>
  40:	00 6c 6f 6e          	add    BYTE PTR [rdi+rbp*2+0x6e],ch
  44:	67 20 6c 6f 6e       	and    BYTE PTR [edi+ebp*2+0x6e],ch
  49:	67 20 75 6e          	and    BYTE PTR [ebp+0x6e],dh
  4d:	73 69                	jae    b8 <_init-0xf48>
  4f:	67 6e                	outs   dx,BYTE PTR [esi]
  51:	65 64 20 69 6e       	gs and BYTE PTR fs:[rcx+0x6e],ch
  56:	74 00                	je     58 <_init-0xfa8>
  58:	72 65                	jb     bf <_init-0xf41>
  5a:	61                   	(bad)
  5b:	64 5f                	fs pop rdi
  5d:	6c                   	ins    BYTE PTR [rdi],dx
  5e:	69 6e 65 00 6c 6f 6e 	imul   ebp,DWORD PTR [rsi+0x65],0x6e6f6c00
  65:	67 20 6c 6f 6e       	and    BYTE PTR [edi+ebp*2+0x6e],ch
  6a:	67 20 69 6e          	and    BYTE PTR [ecx+0x6e],ch
  6e:	74 00                	je     70 <_init-0xf90>
  70:	70 68                	jo     da <_init-0xf26>
  72:	61                   	(bad)
  73:	73 65                	jae    da <_init-0xf26>
  75:	5f                   	pop    rdi
  76:	64 65 66 75 73       	fs gs data16 jne ee <_init-0xf12>
  7b:	65 64 00 5f 66       	gs add BYTE PTR fs:[rdi+0x66],bl
  80:	69 6c 65 6e 6f 00 5f 	imul   ebp,DWORD PTR [rbp+riz*2+0x6e],0x495f006f
  87:	49 
  88:	4f 5f                	rex.WRXB pop r15
  8a:	72 65                	jb     f1 <_init-0xf0f>
  8c:	61                   	(bad)
  8d:	64 5f                	fs pop rdi
  8f:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
  91:	64 00 5f 66          	add    BYTE PTR fs:[rdi+0x66],bl
  95:	6c                   	ins    BYTE PTR [rdi],dx
  96:	61                   	(bad)
  97:	67 73 00             	addr32 jae 9a <_init-0xf66>
  9a:	47                   	rex.RXB
  9b:	4e 55                	rex.WRX push rbp
  9d:	20 43 31             	and    BYTE PTR [rbx+0x31],al
  a0:	37                   	(bad)
  a1:	20 39                	and    BYTE PTR [rcx],bh
  a3:	2e 33 2e             	cs xor ebp,DWORD PTR [rsi]
  a6:	30 20                	xor    BYTE PTR [rax],ah
  a8:	2d 6d 74 75 6e       	sub    eax,0x6e75746d
  ad:	65 3d 67 65 6e 65    	gs cmp eax,0x656e6567
  b3:	72 69                	jb     11e <_init-0xee2>
  b5:	63 20                	movsxd esp,DWORD PTR [rax]
  b7:	2d 6d 61 72 63       	sub    eax,0x6372616d
  bc:	68 3d 78 38 36       	push   0x3638783d
  c1:	2d 36 34 20 2d       	sub    eax,0x2d203436
  c6:	67 67 64 62          	addr32 addr32 fs (bad)
  ca:	20 2d 4f 31 20 2d    	and    BYTE PTR [rip+0x2d20314f],ch        # 2d20321f <_end+0x2d1fd4ef>
  d0:	66 61                	data16 (bad)
  d2:	73 79                	jae    14d <_init-0xeb3>
  d4:	6e                   	outs   dx,BYTE PTR [rsi]
  d5:	63 68 72             	movsxd ebp,DWORD PTR [rax+0x72]
  d8:	6f                   	outs   dx,DWORD PTR [rsi]
  d9:	6e                   	outs   dx,BYTE PTR [rsi]
  da:	6f                   	outs   dx,DWORD PTR [rsi]
  db:	75 73                	jne    150 <_init-0xeb0>
  dd:	2d 75 6e 77 69       	sub    eax,0x69776e75
  e2:	6e                   	outs   dx,BYTE PTR [rsi]
  e3:	64 2d 74 61 62 6c    	fs sub eax,0x6c626174
  e9:	65 73 20             	gs jae 10c <_init-0xef4>
  ec:	2d 66 73 74 61       	sub    eax,0x61747366
  f1:	63 6b 2d             	movsxd ebp,DWORD PTR [rbx+0x2d]
  f4:	70 72                	jo     168 <_init-0xe98>
  f6:	6f                   	outs   dx,DWORD PTR [rsi]
  f7:	74 65                	je     15e <_init-0xea2>
  f9:	63 74 6f 72          	movsxd esi,DWORD PTR [rdi+rbp*2+0x72]
  fd:	2d 73 74 72 6f       	sub    eax,0x6f727473
 102:	6e                   	outs   dx,BYTE PTR [rsi]
 103:	67 20 2d 66 73 74 61 	and    BYTE PTR [eip+0x61747366],ch        # 61747470 <_end+0x61741740>
 10a:	63 6b 2d             	movsxd ebp,DWORD PTR [rbx+0x2d]
 10d:	63 6c 61 73          	movsxd ebp,DWORD PTR [rcx+riz*2+0x73]
 111:	68 2d 70 72 6f       	push   0x6f72702d
 116:	74 65                	je     17d <_init-0xe83>
 118:	63 74 69 6f          	movsxd esi,DWORD PTR [rcx+rbp*2+0x6f]
 11c:	6e                   	outs   dx,BYTE PTR [rsi]
 11d:	20 2d 66 63 66 2d    	and    BYTE PTR [rip+0x2d666366],ch        # 2d666489 <_end+0x2d660759>
 123:	70 72                	jo     197 <_init-0xe69>
 125:	6f                   	outs   dx,DWORD PTR [rsi]
 126:	74 65                	je     18d <_init-0xe73>
 128:	63 74 69 6f          	movsxd esi,DWORD PTR [rcx+rbp*2+0x6f]
 12c:	6e                   	outs   dx,BYTE PTR [rsi]
 12d:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 130:	4f 5f                	rex.WRXB pop r15
 132:	62 75 66 5f 65       	(bad)
 137:	6e                   	outs   dx,BYTE PTR [rsi]
 138:	64 00 5f 63          	add    BYTE PTR fs:[rdi+0x63],bl
 13c:	75 72                	jne    1b0 <_init-0xe50>
 13e:	5f                   	pop    rdi
 13f:	63 6f 6c             	movsxd ebp,DWORD PTR [rdi+0x6c]
 142:	75 6d                	jne    1b1 <_init-0xe4f>
 144:	6e                   	outs   dx,BYTE PTR [rsi]
 145:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 148:	4f 5f                	rex.WRXB pop r15
 14a:	63 6f 64             	movsxd ebp,DWORD PTR [rdi+0x64]
 14d:	65 63 76 74          	movsxd esi,DWORD PTR gs:[rsi+0x74]
 151:	00 5f 5f             	add    BYTE PTR [rdi+0x5f],bl
 154:	70 72                	jo     1c8 <_init-0xe38>
 156:	69 6e 74 66 5f 63 68 	imul   ebp,DWORD PTR [rsi+0x74],0x68635f66
 15d:	6b 00 5f             	imul   eax,DWORD PTR [rax],0x5f
 160:	6f                   	outs   dx,DWORD PTR [rsi]
 161:	6c                   	ins    BYTE PTR [rdi],dx
 162:	64 5f                	fs pop rdi
 164:	6f                   	outs   dx,DWORD PTR [rsi]
 165:	66 66 73 65          	data16 data16 jae 1ce <_init-0xe32>
 169:	74 00                	je     16b <_init-0xe95>
 16b:	69 6e 66 69 6c 65 00 	imul   ebp,DWORD PTR [rsi+0x66],0x656c69
 172:	69 6e 69 74 69 61 6c 	imul   ebp,DWORD PTR [rsi+0x69],0x6c616974
 179:	69 7a 65 5f 62 6f 6d 	imul   edi,DWORD PTR [rdx+0x65],0x6d6f625f
 180:	62                   	(bad)
 181:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 184:	4f 5f                	rex.WRXB pop r15
 186:	6d                   	ins    DWORD PTR [rdi],dx
 187:	61                   	(bad)
 188:	72 6b                	jb     1f5 <_init-0xe0b>
 18a:	65 72 00             	gs jb  18d <_init-0xe73>
 18d:	73 74                	jae    203 <_init-0xdfd>
 18f:	64 69 6e 00 5f 66 72 	imul   ebp,DWORD PTR fs:[rsi+0x0],0x6572665f
 196:	65 
 197:	65 72 65             	gs jb  1ff <_init-0xe01>
 19a:	73 5f                	jae    1fb <_init-0xe05>
 19c:	62 75 66 00 5f 49 4f 	vmaxsh xmm9,xmm19,WORD PTR [rcx+0x9e]
 1a3:	5f                   	pop    rdi
 1a4:	77 72                	ja     218 <_init-0xde8>
 1a6:	69 74 65 5f 70 74 72 	imul   esi,DWORD PTR [rbp+riz*2+0x5f],0x727470
 1ad:	00 
 1ae:	73 79                	jae    229 <_init-0xdd7>
 1b0:	73 5f                	jae    211 <_init-0xdef>
 1b2:	6e                   	outs   dx,BYTE PTR [rsi]
 1b3:	65 72 72             	gs jb  228 <_init-0xdd8>
 1b6:	00 73 68             	add    BYTE PTR [rbx+0x68],dh
 1b9:	6f                   	outs   dx,DWORD PTR [rsi]
 1ba:	72 74                	jb     230 <_init-0xdd0>
 1bc:	20 75 6e             	and    BYTE PTR [rbp+0x6e],dh
 1bf:	73 69                	jae    22a <_init-0xdd6>
 1c1:	67 6e                	outs   dx,BYTE PTR [esi]
 1c3:	65 64 20 69 6e       	gs and BYTE PTR fs:[rcx+0x6e],ch
 1c8:	74 00                	je     1ca <_init-0xe36>
 1ca:	5f                   	pop    rdi
 1cb:	49                   	rex.WB
 1cc:	4f 5f                	rex.WRXB pop r15
 1ce:	73 61                	jae    231 <_init-0xdcf>
 1d0:	76 65                	jbe    237 <_init-0xdc9>
 1d2:	5f                   	pop    rdi
 1d3:	62 61 73 65 00       	(bad)
 1d8:	5f                   	pop    rdi
 1d9:	6c                   	ins    BYTE PTR [rdi],dx
 1da:	6f                   	outs   dx,DWORD PTR [rsi]
 1db:	63 6b 00             	movsxd ebp,DWORD PTR [rbx+0x0]
 1de:	5f                   	pop    rdi
 1df:	66 6c                	data16 ins BYTE PTR [rdi],dx
 1e1:	61                   	(bad)
 1e2:	67 73 32             	addr32 jae 217 <_init-0xde9>
 1e5:	00 5f 6d             	add    BYTE PTR [rdi+0x6d],bl
 1e8:	6f                   	outs   dx,DWORD PTR [rsi]
 1e9:	64 65 00 5f 5f       	fs add BYTE PTR gs:[rdi+0x5f],bl
 1ee:	62 75 69 6c 74       	(bad)
 1f3:	69 6e 5f 70 75 74 73 	imul   ebp,DWORD PTR [rsi+0x5f],0x73747570
 1fa:	00 73 74             	add    BYTE PTR [rbx+0x74],dh
 1fd:	64 6f                	outs   dx,DWORD PTR fs:[rsi]
 1ff:	75 74                	jne    275 <_init-0xd8b>
 201:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 204:	4f 5f                	rex.WRXB pop r15
 206:	77 72                	ja     27a <_init-0xd86>
 208:	69 74 65 5f 65 6e 64 	imul   esi,DWORD PTR [rbp+riz*2+0x5f],0x646e65
 20f:	00 
 210:	5f                   	pop    rdi
 211:	49                   	rex.WB
 212:	4f 5f                	rex.WRXB pop r15
 214:	6c                   	ins    BYTE PTR [rdi],dx
 215:	6f                   	outs   dx,DWORD PTR [rsi]
 216:	63 6b 5f             	movsxd ebp,DWORD PTR [rbx+0x5f]
 219:	74 00                	je     21b <_init-0xde5>
 21b:	5f                   	pop    rdi
 21c:	49                   	rex.WB
 21d:	4f 5f                	rex.WRXB pop r15
 21f:	46                   	rex.RX
 220:	49                   	rex.WB
 221:	4c                   	rex.WR
 222:	45 00 66 6f          	add    BYTE PTR [r14+0x6f],r12b
 226:	70 65                	jo     28d <_init-0xd73>
 228:	6e                   	outs   dx,BYTE PTR [rsi]
 229:	00 73 79             	add    BYTE PTR [rbx+0x79],dh
 22c:	73 5f                	jae    28d <_init-0xd73>
 22e:	65 72 72             	gs jb  2a3 <_init-0xd5d>
 231:	6c                   	ins    BYTE PTR [rdi],dx
 232:	69 73 74 00 5f 6d 61 	imul   esi,DWORD PTR [rbx+0x74],0x616d5f00
 239:	72 6b                	jb     2a6 <_init-0xd5a>
 23b:	65 72 73             	gs jb  2b1 <_init-0xd4f>
 23e:	00 75 6e             	add    BYTE PTR [rbp+0x6e],dh
 241:	73 69                	jae    2ac <_init-0xd54>
 243:	67 6e                	outs   dx,BYTE PTR [esi]
 245:	65 64 20 63 68       	gs and BYTE PTR fs:[rbx+0x68],ah
 24a:	61                   	(bad)
 24b:	72 00                	jb     24d <_init-0xdb3>
 24d:	73 68                	jae    2b7 <_init-0xd49>
 24f:	6f                   	outs   dx,DWORD PTR [rsi]
 250:	72 74                	jb     2c6 <_init-0xd3a>
 252:	20 69 6e             	and    BYTE PTR [rcx+0x6e],ch
 255:	74 00                	je     257 <_init-0xda9>
 257:	5f                   	pop    rdi
 258:	49                   	rex.WB
 259:	4f 5f                	rex.WRXB pop r15
 25b:	77 69                	ja     2c6 <_init-0xd3a>
 25d:	64 65 5f             	fs gs pop rdi
 260:	64 61                	fs (bad)
 262:	74 61                	je     2c5 <_init-0xd3b>
 264:	00 5f 76             	add    BYTE PTR [rdi+0x76],bl
 267:	74 61                	je     2ca <_init-0xd36>
 269:	62 6c 65 5f 6f       	(bad)
 26e:	66 66 73 65          	data16 data16 jae 2d7 <_init-0xd29>
 272:	74 00                	je     274 <_init-0xd8c>
 274:	65 78 69             	gs js  2e0 <_init-0xd20>
 277:	74 00                	je     279 <_init-0xd87>
 279:	62 6f 6d 62 2e       	(bad)
 27e:	63 00                	movsxd eax,DWORD PTR [rax]
 280:	69 6e 70 75 74 00 2f 	imul   ebp,DWORD PTR [rsi+0x70],0x2f007475
 287:	68 6f 6d 65 2f       	push   0x2f656d6f
 28c:	75 73                	jne    301 <_init-0xcff>
 28e:	65 72 2f             	gs jb  2c0 <_init-0xd40>
 291:	44 6f                	rex.R outs dx,DWORD PTR [rsi]
 293:	77 6e                	ja     303 <_init-0xcfd>
 295:	6c                   	ins    BYTE PTR [rdi],dx
 296:	6f                   	outs   dx,DWORD PTR [rsi]
 297:	61                   	(bad)
 298:	64 73 2f             	fs jae 2ca <_init-0xd36>
 29b:	62 6f 6d 62 2d       	(bad)
 2a0:	73 6f                	jae    311 <_init-0xcef>
 2a2:	75 72                	jne    316 <_init-0xcea>
 2a4:	63 65 2f             	movsxd esp,DWORD PTR [rbp+0x2f]
 2a7:	73 72                	jae    31b <_init-0xce5>
 2a9:	63 00                	movsxd eax,DWORD PTR [rax]
 2ab:	5f                   	pop    rdi
 2ac:	5f                   	pop    rdi
 2ad:	6f                   	outs   dx,DWORD PTR [rsi]
 2ae:	66 66 36 34 5f       	data16 data16 ss xor al,0x5f
 2b3:	74 00                	je     2b5 <_init-0xd4b>
 2b5:	5f                   	pop    rdi
 2b6:	49                   	rex.WB
 2b7:	4f 5f                	rex.WRXB pop r15
 2b9:	72 65                	jb     320 <_init-0xce0>
 2bb:	61                   	(bad)
 2bc:	64 5f                	fs pop rdi
 2be:	62 61 73 65 00       	(bad)
 2c3:	5f                   	pop    rdi
 2c4:	49                   	rex.WB
 2c5:	4f 5f                	rex.WRXB pop r15
 2c7:	73 61                	jae    32a <_init-0xcd6>
 2c9:	76 65                	jbe    330 <_init-0xcd0>
 2cb:	5f                   	pop    rdi
 2cc:	65 6e                	outs   dx,BYTE PTR gs:[rsi]
 2ce:	64 00 5f 5f          	add    BYTE PTR fs:[rdi+0x5f],bl
 2d2:	66 6d                	ins    WORD PTR [rdi],dx
 2d4:	74 00                	je     2d6 <_init-0xd2a>
 2d6:	5f                   	pop    rdi
 2d7:	5f                   	pop    rdi
 2d8:	70 61                	jo     33b <_init-0xcc5>
 2da:	64 35 00 5f 75 6e    	fs xor eax,0x6e755f00
 2e0:	75 73                	jne    355 <_init-0xcab>
 2e2:	65 64 32 00          	gs xor al,BYTE PTR fs:[rax]
 2e6:	73 74                	jae    35c <_init-0xca4>
 2e8:	64 65 72 72          	fs gs jb 35e <_init-0xca2>
 2ec:	00 61 72             	add    BYTE PTR [rcx+0x72],ah
 2ef:	67 76 00             	addr32 jbe 2f2 <_init-0xd0e>
 2f2:	70 68                	jo     35c <_init-0xca4>
 2f4:	61                   	(bad)
 2f5:	73 65                	jae    35c <_init-0xca4>
 2f7:	5f                   	pop    rdi
 2f8:	31 00                	xor    DWORD PTR [rax],eax
 2fa:	70 68                	jo     364 <_init-0xc9c>
 2fc:	61                   	(bad)
 2fd:	73 65                	jae    364 <_init-0xc9c>
 2ff:	5f                   	pop    rdi
 300:	32 00                	xor    al,BYTE PTR [rax]
 302:	70 68                	jo     36c <_init-0xc94>
 304:	61                   	(bad)
 305:	73 65                	jae    36c <_init-0xc94>
 307:	5f                   	pop    rdi
 308:	33 00                	xor    eax,DWORD PTR [rax]
 30a:	70 68                	jo     374 <_init-0xc8c>
 30c:	61                   	(bad)
 30d:	73 65                	jae    374 <_init-0xc8c>
 30f:	5f                   	pop    rdi
 310:	34 00                	xor    al,0x0
 312:	70 68                	jo     37c <_init-0xc84>
 314:	61                   	(bad)
 315:	73 65                	jae    37c <_init-0xc84>
 317:	5f                   	pop    rdi
 318:	35 00 70 68 61       	xor    eax,0x61687000
 31d:	73 65                	jae    384 <_init-0xc7c>
 31f:	5f                   	pop    rdi
 320:	36 00 5f 49          	ss add BYTE PTR [rdi+0x49],bl
 324:	4f 5f                	rex.WRXB pop r15
 326:	62 61 63 6b 75       	(bad)
 32b:	70 5f                	jo     38c <_init-0xc74>
 32d:	62 61 73 65 00       	(bad)
 332:	61                   	(bad)
 333:	72 67                	jb     39c <_init-0xc64>
 335:	63 00                	movsxd eax,DWORD PTR [rax]
 337:	5f                   	pop    rdi
 338:	66 72 65             	data16 jb 3a0 <_init-0xc60>
 33b:	65 72 65             	gs jb  3a3 <_init-0xc5d>
 33e:	73 5f                	jae    39f <_init-0xc61>
 340:	6c                   	ins    BYTE PTR [rdi],dx
 341:	69 73 74 00 6d 61 69 	imul   esi,DWORD PTR [rbx+0x74],0x69616d00
 348:	6e                   	outs   dx,BYTE PTR [rsi]
 349:	00 5f 49             	add    BYTE PTR [rdi+0x49],bl
 34c:	4f 5f                	rex.WRXB pop r15
 34e:	77 72                	ja     3c2 <_init-0xc3e>
 350:	69 74 65 5f 62 61 73 	imul   esi,DWORD PTR [rbp+riz*2+0x5f],0x65736162
 357:	65 
	...

Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
	...
  14:	1e                   	(bad)
  15:	00 00                	add    BYTE PTR [rax],al
  17:	00 00                	add    BYTE PTR [rax],al
  19:	00 00                	add    BYTE PTR [rax],al
  1b:	00 01                	add    BYTE PTR [rcx],al
  1d:	00 55 1e             	add    BYTE PTR [rbp+0x1e],dl
  20:	00 00                	add    BYTE PTR [rax],al
  22:	00 00                	add    BYTE PTR [rax],al
  24:	00 00                	add    BYTE PTR [rax],al
  26:	00 06                	add    BYTE PTR [rsi],al
  28:	01 00                	add    DWORD PTR [rax],eax
  2a:	00 00                	add    BYTE PTR [rax],al
  2c:	00 00                	add    BYTE PTR [rax],al
  2e:	00 04 00             	add    BYTE PTR [rax+rax*1],al
  31:	f3 01 55 9f          	repz add DWORD PTR [rbp-0x61],edx
  35:	06                   	(bad)
  36:	01 00                	add    DWORD PTR [rax],eax
  38:	00 00                	add    BYTE PTR [rax],al
  3a:	00 00                	add    BYTE PTR [rax],al
  3c:	00 19                	add    BYTE PTR [rcx],bl
  3e:	01 00                	add    DWORD PTR [rax],eax
  40:	00 00                	add    BYTE PTR [rax],al
  42:	00 00                	add    BYTE PTR [rax],al
  44:	00 01                	add    BYTE PTR [rcx],al
  46:	00 55 19             	add    BYTE PTR [rbp+0x19],dl
  49:	01 00                	add    DWORD PTR [rax],eax
  4b:	00 00                	add    BYTE PTR [rax],al
  4d:	00 00                	add    BYTE PTR [rax],al
  4f:	00 3b                	add    BYTE PTR [rbx],bh
  51:	01 00                	add    DWORD PTR [rax],eax
  53:	00 00                	add    BYTE PTR [rax],al
  55:	00 00                	add    BYTE PTR [rax],al
  57:	00 04 00             	add    BYTE PTR [rax+rax*1],al
  5a:	f3 01 55 9f          	repz add DWORD PTR [rbp-0x61],edx
  5e:	3b 01                	cmp    eax,DWORD PTR [rcx]
  60:	00 00                	add    BYTE PTR [rax],al
  62:	00 00                	add    BYTE PTR [rax],al
  64:	00 00                	add    BYTE PTR [rax],al
  66:	4a 01 00             	rex.WX add QWORD PTR [rax],rax
  69:	00 00                	add    BYTE PTR [rax],al
  6b:	00 00                	add    BYTE PTR [rax],al
  6d:	00 01                	add    BYTE PTR [rcx],al
  6f:	00 55 4a             	add    BYTE PTR [rbp+0x4a],dl
  72:	01 00                	add    DWORD PTR [rax],eax
  74:	00 00                	add    BYTE PTR [rax],al
  76:	00 00                	add    BYTE PTR [rax],al
  78:	00 5e 01             	add    BYTE PTR [rsi+0x1],bl
  7b:	00 00                	add    BYTE PTR [rax],al
  7d:	00 00                	add    BYTE PTR [rax],al
  7f:	00 00                	add    BYTE PTR [rax],al
  81:	04 00                	add    al,0x0
  83:	f3 01 55 9f          	repz add DWORD PTR [rbp-0x61],edx
	...
  a7:	00 00                	add    BYTE PTR [rax],al
  a9:	25 00 00 00 00       	and    eax,0x0
  ae:	00 00                	add    BYTE PTR [rax],al
  b0:	00 01                	add    BYTE PTR [rcx],al
  b2:	00 54 25 00          	add    BYTE PTR [rbp+riz*1+0x0],dl
  b6:	00 00                	add    BYTE PTR [rax],al
  b8:	00 00                	add    BYTE PTR [rax],al
  ba:	00 00                	add    BYTE PTR [rax],al
  bc:	3a 00                	cmp    al,BYTE PTR [rax]
  be:	00 00                	add    BYTE PTR [rax],al
  c0:	00 00                	add    BYTE PTR [rax],al
  c2:	00 00                	add    BYTE PTR [rax],al
  c4:	01 00                	add    DWORD PTR [rax],eax
  c6:	53                   	push   rbx
  c7:	3a 00                	cmp    al,BYTE PTR [rax]
  c9:	00 00                	add    BYTE PTR [rax],al
  cb:	00 00                	add    BYTE PTR [rax],al
  cd:	00 00                	add    BYTE PTR [rax],al
  cf:	06                   	(bad)
  d0:	01 00                	add    DWORD PTR [rax],eax
  d2:	00 00                	add    BYTE PTR [rax],al
  d4:	00 00                	add    BYTE PTR [rax],al
  d6:	00 04 00             	add    BYTE PTR [rax+rax*1],al
  d9:	f3 01 54 9f 06       	repz add DWORD PTR [rdi+rbx*4+0x6],edx
  de:	01 00                	add    DWORD PTR [rax],eax
  e0:	00 00                	add    BYTE PTR [rax],al
  e2:	00 00                	add    BYTE PTR [rax],al
  e4:	00 19                	add    BYTE PTR [rcx],bl
  e6:	01 00                	add    DWORD PTR [rax],eax
  e8:	00 00                	add    BYTE PTR [rax],al
  ea:	00 00                	add    BYTE PTR [rax],al
  ec:	00 01                	add    BYTE PTR [rcx],al
  ee:	00 54 19 01          	add    BYTE PTR [rcx+rbx*1+0x1],dl
  f2:	00 00                	add    BYTE PTR [rax],al
  f4:	00 00                	add    BYTE PTR [rax],al
  f6:	00 00                	add    BYTE PTR [rax],al
  f8:	5e                   	pop    rsi
  f9:	01 00                	add    DWORD PTR [rax],eax
  fb:	00 00                	add    BYTE PTR [rax],al
  fd:	00 00                	add    BYTE PTR [rax],al
  ff:	00 01                	add    BYTE PTR [rcx],al
 101:	00 53 00             	add    BYTE PTR [rbx+0x0],dl
	...
 11c:	00 00                	add    BYTE PTR [rax],al
 11e:	00 5f 00             	add    BYTE PTR [rdi+0x0],bl
 121:	00 00                	add    BYTE PTR [rax],al
 123:	00 00                	add    BYTE PTR [rax],al
 125:	00 00                	add    BYTE PTR [rax],al
 127:	63 00                	movsxd eax,DWORD PTR [rax]
 129:	00 00                	add    BYTE PTR [rax],al
 12b:	00 00                	add    BYTE PTR [rax],al
 12d:	00 00                	add    BYTE PTR [rax],al
 12f:	01 00                	add    DWORD PTR [rax],eax
 131:	50                   	push   rax
 132:	7d 00                	jge    134 <_init-0xecc>
 134:	00 00                	add    BYTE PTR [rax],al
 136:	00 00                	add    BYTE PTR [rax],al
 138:	00 00                	add    BYTE PTR [rax],al
 13a:	81 00 00 00 00 00    	add    DWORD PTR [rax],0x0
 140:	00 00                	add    BYTE PTR [rax],al
 142:	01 00                	add    DWORD PTR [rax],eax
 144:	50                   	push   rax
 145:	9b                   	fwait
 146:	00 00                	add    BYTE PTR [rax],al
 148:	00 00                	add    BYTE PTR [rax],al
 14a:	00 00                	add    BYTE PTR [rax],al
 14c:	00 9f 00 00 00 00    	add    BYTE PTR [rdi+0x0],bl
 152:	00 00                	add    BYTE PTR [rax],al
 154:	00 01                	add    BYTE PTR [rcx],al
 156:	00 50 b9             	add    BYTE PTR [rax-0x47],dl
 159:	00 00                	add    BYTE PTR [rax],al
 15b:	00 00                	add    BYTE PTR [rax],al
 15d:	00 00                	add    BYTE PTR [rax],al
 15f:	00 bd 00 00 00 00    	add    BYTE PTR [rbp+0x0],bh
 165:	00 00                	add    BYTE PTR [rax],al
 167:	00 01                	add    BYTE PTR [rcx],al
 169:	00 50 d7             	add    BYTE PTR [rax-0x29],dl
 16c:	00 00                	add    BYTE PTR [rax],al
 16e:	00 00                	add    BYTE PTR [rax],al
 170:	00 00                	add    BYTE PTR [rax],al
 172:	00 db                	add    bl,bl
 174:	00 00                	add    BYTE PTR [rax],al
 176:	00 00                	add    BYTE PTR [rax],al
 178:	00 00                	add    BYTE PTR [rax],al
 17a:	00 01                	add    BYTE PTR [rcx],al
 17c:	00 50 f5             	add    BYTE PTR [rax-0xb],dl
 17f:	00 00                	add    BYTE PTR [rax],al
 181:	00 00                	add    BYTE PTR [rax],al
 183:	00 00                	add    BYTE PTR [rax],al
 185:	00 f9                	add    cl,bh
 187:	00 00                	add    BYTE PTR [rax],al
 189:	00 00                	add    BYTE PTR [rax],al
 18b:	00 00                	add    BYTE PTR [rax],al
 18d:	00 01                	add    BYTE PTR [rcx],al
 18f:	00 50 00             	add    BYTE PTR [rax+0x0],dl
	...
 19e:	00 00                	add    BYTE PTR [rax],al
 1a0:	00 01                	add    BYTE PTR [rcx],al
 1a2:	00 3f                	add    BYTE PTR [rdi],bh
 1a4:	00 00                	add    BYTE PTR [rax],al
 1a6:	00 00                	add    BYTE PTR [rax],al
 1a8:	00 00                	add    BYTE PTR [rax],al
 1aa:	00 4b 00             	add    BYTE PTR [rbx+0x0],cl
 1ad:	00 00                	add    BYTE PTR [rax],al
 1af:	00 00                	add    BYTE PTR [rax],al
 1b1:	00 00                	add    BYTE PTR [rax],al
 1b3:	06                   	(bad)
 1b4:	00 f2                	add    dl,dh
 1b6:	97                   	xchg   edi,eax
 1b7:	07                   	(bad)
	...
 1c8:	00 00                	add    BYTE PTR [rax],al
 1ca:	00 02                	add    BYTE PTR [rdx],al
 1cc:	00 4b 00             	add    BYTE PTR [rbx+0x0],cl
 1cf:	00 00                	add    BYTE PTR [rax],al
 1d1:	00 00                	add    BYTE PTR [rax],al
 1d3:	00 00                	add    BYTE PTR [rax],al
 1d5:	57                   	push   rdi
 1d6:	00 00                	add    BYTE PTR [rax],al
 1d8:	00 00                	add    BYTE PTR [rax],al
 1da:	00 00                	add    BYTE PTR [rax],al
 1dc:	00 06                	add    BYTE PTR [rsi],al
 1de:	00 f2                	add    dl,dh
 1e0:	e2 07                	loop   1e9 <_init-0xe17>
	...
 1f2:	00 00                	add    BYTE PTR [rax],al
 1f4:	00 01                	add    BYTE PTR [rcx],al
 1f6:	00 69 00             	add    BYTE PTR [rcx+0x0],ch
 1f9:	00 00                	add    BYTE PTR [rax],al
 1fb:	00 00                	add    BYTE PTR [rax],al
 1fd:	00 00                	add    BYTE PTR [rax],al
 1ff:	75 00                	jne    201 <_init-0xdff>
 201:	00 00                	add    BYTE PTR [rax],al
 203:	00 00                	add    BYTE PTR [rax],al
 205:	00 00                	add    BYTE PTR [rax],al
 207:	06                   	(bad)
 208:	00 f2                	add    dl,dh
 20a:	13 08                	adc    ecx,DWORD PTR [rax]
	...
 21c:	00 00                	add    BYTE PTR [rax],al
 21e:	00 01                	add    BYTE PTR [rcx],al
 220:	00 87 00 00 00 00    	add    BYTE PTR [rdi+0x0],al
 226:	00 00                	add    BYTE PTR [rax],al
 228:	00 93 00 00 00 00    	add    BYTE PTR [rbx+0x0],dl
 22e:	00 00                	add    BYTE PTR [rax],al
 230:	00 06                	add    BYTE PTR [rsi],al
 232:	00 f2                	add    dl,dh
 234:	41 08 00             	or     BYTE PTR [r8],al
	...
 247:	00 00                	add    BYTE PTR [rax],al
 249:	01 00                	add    DWORD PTR [rax],eax
 24b:	a5                   	movs   DWORD PTR [rdi],DWORD PTR [rsi]
 24c:	00 00                	add    BYTE PTR [rax],al
 24e:	00 00                	add    BYTE PTR [rax],al
 250:	00 00                	add    BYTE PTR [rax],al
 252:	00 b1 00 00 00 00    	add    BYTE PTR [rcx+0x0],dh
 258:	00 00                	add    BYTE PTR [rax],al
 25a:	00 06                	add    BYTE PTR [rsi],al
 25c:	00 f2                	add    dl,dh
 25e:	64 08 00             	or     BYTE PTR fs:[rax],al
	...
 271:	00 00                	add    BYTE PTR [rax],al
 273:	01 00                	add    DWORD PTR [rax],eax
 275:	c3                   	ret
 276:	00 00                	add    BYTE PTR [rax],al
 278:	00 00                	add    BYTE PTR [rax],al
 27a:	00 00                	add    BYTE PTR [rax],al
 27c:	00 cf                	add    bh,cl
 27e:	00 00                	add    BYTE PTR [rax],al
 280:	00 00                	add    BYTE PTR [rax],al
 282:	00 00                	add    BYTE PTR [rax],al
 284:	00 06                	add    BYTE PTR [rsi],al
 286:	00 f2                	add    dl,dh
 288:	78 08                	js     292 <_init-0xd6e>
	...
 29a:	00 00                	add    BYTE PTR [rax],al
 29c:	00 01                	add    BYTE PTR [rcx],al
 29e:	00 e1                	add    cl,ah
 2a0:	00 00                	add    BYTE PTR [rax],al
 2a2:	00 00                	add    BYTE PTR [rax],al
 2a4:	00 00                	add    BYTE PTR [rax],al
 2a6:	00 ed                	add    ch,ch
 2a8:	00 00                	add    BYTE PTR [rax],al
 2aa:	00 00                	add    BYTE PTR [rax],al
 2ac:	00 00                	add    BYTE PTR [rax],al
 2ae:	00 06                	add    BYTE PTR [rsi],al
 2b0:	00 f2                	add    dl,dh
 2b2:	a1 08 00 00 00 00 00 	movabs eax,ds:0x8
 2b9:	00 00 
	...
 2c7:	01 00                	add    DWORD PTR [rax],eax
 2c9:	19 01                	sbb    DWORD PTR [rcx],eax
 2cb:	00 00                	add    BYTE PTR [rax],al
 2cd:	00 00                	add    BYTE PTR [rax],al
 2cf:	00 00                	add    BYTE PTR [rax],al
 2d1:	31 01                	xor    DWORD PTR [rcx],eax
 2d3:	00 00                	add    BYTE PTR [rax],al
 2d5:	00 00                	add    BYTE PTR [rax],al
 2d7:	00 00                	add    BYTE PTR [rax],al
 2d9:	0a 00                	or     al,BYTE PTR [rax]
 2db:	03 06                	add    eax,DWORD PTR [rsi]
 2dd:	30 00                	xor    BYTE PTR [rax],al
 2df:	00 00                	add    BYTE PTR [rax],al
 2e1:	00 00                	add    BYTE PTR [rax],al
 2e3:	00 9f 00 00 00 00    	add    BYTE PTR [rdi+0x0],bl
	...
 2f5:	01 00                	add    DWORD PTR [rax],eax
 2f7:	3b 01                	cmp    eax,DWORD PTR [rcx]
 2f9:	00 00                	add    BYTE PTR [rax],al
 2fb:	00 00                	add    BYTE PTR [rax],al
 2fd:	00 00                	add    BYTE PTR [rax],al
 2ff:	54                   	push   rsp
 300:	01 00                	add    DWORD PTR [rax],eax
 302:	00 00                	add    BYTE PTR [rax],al
 304:	00 00                	add    BYTE PTR [rax],al
 306:	00 0a                	add    BYTE PTR [rdx],cl
 308:	00 03                	add    BYTE PTR [rbx],al
 30a:	23 30                	and    esi,DWORD PTR [rax]
 30c:	00 00                	add    BYTE PTR [rax],al
 30e:	00 00                	add    BYTE PTR [rax],al
 310:	00 00                	add    BYTE PTR [rax],al
 312:	9f                   	lahf
	...
