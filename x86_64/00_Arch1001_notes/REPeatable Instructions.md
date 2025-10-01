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


```c

void rep_stos_q(void* destination, long value, long count) {

	void* rdi = destination;
	long rax = value;
	long rcx = count;
	asm("rep stosq");

}

// kinda like memset, except memset is for bytes.


```


```asm 

; setting qwords (64 bits)
lea rdi, [array_symbol]  
mov rax, value 
mov rcx, count 
rep stosq 

```


--- 
Memcopy stuff

MEmcopy moves from one to another. So it would use rep movs 

REP MOVS: 
*REP*eat *Mov*e Data String to *s*tring

- MOVS can have the rep prefix added to it, which repeats it multiple time. 
- MOVS is actually it's own instruction, and can be called without the rep prefix

- All rep instruction use *cx as counter to determine how many time to loop. Decrement untiull it hit 0. then continue to next instruction. 

It moves 1,2,4 or 8 bytes at a time. 
- Either fill 1 byte from [si] to [di] (16 bits form). 
    - Or fill 1/2/4/8 bytes at a time for \[\*si\] to \[\*di\]
    - Moves the \*di and \*si registers forward 1/2/4/8 bytes at a time. So that repeated store operation is storing into consecutive location

- Must do: 
    - Set *si to the start source 
    - set *di to the start destination
    - set *cx to the number of time to store



```c 
void rep_movs_q(void* destination, void* source, long count) {


	void* rdi = destination;
	void* rsi = source;
	long rcx = count;
	__asm__("rep movsq");


```



```asm 

; copying qwords (64 bits)
lea rdi, [dest_array_symbol]  
mov rsi, [source_array_symbol] 
mov rcx, count 
rep movsq
```
