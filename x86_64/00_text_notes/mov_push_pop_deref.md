mov dest sourc

mov rax rbx 
mov rax [rbx]
mov rax [rbx+rcx*X] 
mov rax [rbx + rcx*X + Y]

X can be 1,2,4,8 (nothing else)
Y can be 1byte value: (0-255), or a 4byte value: (0-2^32)


```
base + (i*4) + J
where J should be for hardcode j*4 element arr[i][j]
or if you want to know the specific byte of an arr[i]
```


r/mX can be something as simple as a single register or an immediate, or as complicated as an [rbx + rcx*X + y]

```asm

rax = rbx 
rax = *rbx 
rax = *(rbx + rcx*X) 
```


push 0x20
push rbx 
push [rbx] 
push [rbx + rcx*4]
push [rbx + rcx*8 + 0x20]
could use any general purpose register


` is like _ but after 8 not 3. 

1_000_000_000 

0x12345678`12345678


push and pop

```asm 
myfunc:
	mov rcx [rsp] ; rcx = The return address then
    push rbp          ; save old frame pointer
    mov rbp, rsp      ; set frame pointer

    push 1
    push 2
    push 3
    push 4
    push 5            ; now RSP points to 5 on top

    ; do something here
    ; this way you can access consistently

	mov rax, [rbp + 8]  ; RAX = the return address
    mov rax, [rbp]      ; RAX = saved old RSP
    mov rax, [rbp - 8]  ; RAX = 1
    mov rax, [rbp - 16] ; RAX = 2
    mov rax, [rbp - 24] ; RAX = 3
    mov rax, [rbp - 32] ; RAX = 4
    mov rax, [rbp - 40] ; RAX = 5

	mov rcx, [rsp + 32]  ; 1
	mov rcx, [rsp + 24]  ; 2
	mov rcx, [rsp + 16]  ; 3
	mov rcx, [rsp + 8]   ; 4
	mov rcx, [rsp]       ; 5

    # and if we push again, the rsp move every time, so the math is harder.  
    # but we can do frame pointer omission optimization and manually calculate from the new rsp. 

    push 6


	mov rcx, [rsp + 40]  ; 1
	mov rcx, [rsp + 32]  ; 2
	mov rcx, [rsp + 24]  ; 3
	mov rcx, [rsp + 16]  ; 4
	mov rcx, [rsp + 8]   ; 5
    mov rcx, [rsp] 		 ; RCX = 6


    mov rax, [rbp]      ; RAX = saved old RBP
    mov rax, [rbp - 8]  ; RAX = 1
    mov rax, [rbp - 16] ; RAX = 2
    mov rax, [rbp - 24] ; RAX = 3
    mov rax, [rbp - 32] ; RAX = 4
    mov rax, [rbp - 40] ; RAX = 5
    mov rax, [rbp - 48] ; RAX = 6

    ; ...

    add rsp, 6*8        ; clean up pushed ints (all 6 values)
    pop rbp             ; restore old frame pointer
    ret                 ; return to caller


```



```asm
lol_func: 

	mov qword [rbp-8], 5   ; store 5 as 8-byte integer
	mov dword [rbp-4], 5   ; store 5 as 4-byte integer
	mov byte  [rbp-1], 5   ; store 5 as 1-byte integer

```




equivalent to 

push rax: 
\=
sub rsp, 8       ; make space on stack (x86_64: 8 bytes)
mov [rsp], rax   ; store the value at top of stack



equivalent to
pop rax:
\=
mov rax, [rsp]   ; read top of stack into register
add rsp, 8       ; move stack pointer up



push rax 
pop rax 
\= 
sub rsp, 8       ; make space on stack (x86_64: 8 bytes)
mov [rsp], rax   ; store the value at top of stack
mov rax, [rsp]   ; read top of stack into register
add rsp, 8       ; move stack pointer up






