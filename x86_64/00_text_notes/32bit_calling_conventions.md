in 32 bits, there were more calling convention: 

"cdecl" (default for most C code)
- Caller cleans up the stack

"stdcall" (for windows Win32 APIs):
- Callee cleans up the stack. 


Function parameters are pushed onto the stack from right to left. 
left most parameter (the first function parameters), ends up at the lowest address. 

^^That was mips, how it was if you did 
```asm

sub $sp, 8 
sw $a0, 0($sp)
sw $a1, 4($sp)
; make it right to left. 


; or in asm 
push arg3 
push arg2 
push arg1
; make it right to left. 


; --------- Stack ---------
; ==== High address 
arg3 
arg2 
arg1
; ==== Low address 
; --------- Stack ---------



; ====== Left to right example ( Not used here ) ======
push arg1 
push arg2 
push arg3


; --------- Stack ---------
; ==== High address 
arg1
arg2 
arg3 
; ==== Low address 
; --------- Stack ---------

```


---
# Difference between microsoft studio (64 bits) and these 32 bits calling convention

Both cdecl and stdcall conventions perform explicit __explicit stack frame linkage__

the old ebp gets pushed onto the stack. 
the new esp (top of the stack pointer, which now points at the copy of ebp), gets moved into ebp. 


- Oh that's what the code I'm looking at already do




here's a nice trick to obtain the base frame pointer of previous function calls: 

```asm
; typical function prologue:
push rbp ; puts rbp on the stack, rsp points to rbp.    hence rbp == *rsp. 
mov  rbp, rsp
; this makes it so that *rbp = previous rbp. 

push val1 ; these modify rsp, but not rbp
push val2 
push val3 


; hence, we can do a frame chain walking: 
mov r12 rbp ; r12 = rbp 
mov r12, [r12] ; r12 = previous rbp = *rbp
mov r12, [r12] ; r12 = rpb(n-2)
mov r12, [r12] ; r12 = rpb(n-3)
... 


; ===== high address 
...
...
...
&rbp(n-3), value: rbp(n-4)
... 
&rbp(n-2), value: rbp(n-3) ; the address of rbp(n-2), the value at that address is rbp(n-3)
... 
&old rbp, value: rbp(n-2) ;(the address of old rbp). The value of that address is the address of rbp(n-2)
... 
old rbp  <- rbp  ; Here, the value on the stack is the old rbp, which is a memory address. and the current rbp points to that address
val1 
val2
val3   <- rsp
; ===== low address

; where old rbp = rbp(n-1)
; and rbp = rbp(n)


; ----------------
old rbp   <- rbp
; can be written as 
&rbp, value: rbp(n-1)
; or 
&rbp(n), value: rbp(n-1)

; ---- where obviously, &x means at address x. Which is half butchered c. 
```


C code:
../simple_tutorials/orig/stack.c
```c
#include <stdio.h>

int bar(int y) {
	int a = 3 * y;
	printf("bar has returned %d\n", a);
	return a;
}

int foo(int x) {
	int b = 5 * x;
	printf("foo has returned %d\n", b);
	return bar(b);
}

int main() {
	printf("\n\n\n\n");
	int c = foo(7);
	fflush(stdout);
	printf("Main has passed %d\n", c);

	// main frame
	// foo frame
	// bar frame
}


```


Stack frame: 
```asm
; ============ HIGH ADDRESS ===========
return address from main() to invoke_main()
-----------------------------------------
saved ebp                               |
local variable (if any)                 |
callee saved registers                  |
                                        |
# mains calls foo                       |
caller saved registers                  |   main() frame
function arguments                      |
return address foo() to main()          |
# that return address comes from        |
# call foo,                             |
# which also does push rip              |
-----------------------------------------
saved ebp                               |
local variable (if any)                 |
callee saved registers                  |
                                        |
# foo calls bar                         |
caller saved registers                  |   foo() frame
function arguments                      |
return address foo() to main()          |
-----------------------------------------
saved ebp                               |
local variable (if any)                 |
callee saved registers                  |    bar() frame
return address bar() to foo()           |
-----------------------------------------
; ============ LOW ADDRESS ===========
```

Hence, local variable and function arguments might be addressed as :

```asm
function_start:
    ;prologue 
    push rbp 
    mov rbp, rsp
    
    ; local var 
    sub rsp, something 

    mov local_var [ebp+something]
    mov func_args [ebp-something]

    push next_func_arg1_reg
    mov rd1, 1
    call func2

```


