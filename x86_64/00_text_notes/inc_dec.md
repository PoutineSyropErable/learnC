# INC/DEC, Increment/Decrement. 

```asm 
inc rax 
# rax++; 

dec ecx: 
# ecx--;
```

They are not in optimised code. The intel optimisation guide recommend to not use it. 
```asm
; just use +=1; (add eax, 1)
; I think

```
