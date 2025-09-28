REP STOS: 

*Rep*eat *Sto*re *S*tring

- STOS is one of the number of instruction that can have the "rep" prefix added to it, which repeat a single instruction multiple times. 
- All rep operation use *cx register as a "counter" to determine how many times to loop through the instruction. Each time it executes, it decrements 
\*cx by 1. Once \*cx =0, it continues to the next instructions. 

- Either store 1,2,4 or 8 bytes at a time. 
- Either fill 1 byte at \[di\] with al or fill 1/2/4/8 bytes at \[\*di\] with al/*ax


- *cx: cx, ecx or rcx 
- *di: di, edi or rdi 
- *ax: ax, ecx or rcx


# How to use: Must do 3 thing before "calling" it.
- Set *di to the start destination 
- set *ax/al to the value to store. 
- set *cx to the number of time to store
    - Effectively a memset


        - Note: RDI is a callee saved register (For VS, Windows/MSVC, cl.exe). So on windows, push and pop rdi at the start and end of function.
