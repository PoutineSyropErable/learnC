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



