movw $0xAABBCCDD, %eax
sahf
jz mylabel 
and $0x31337, %eax 
mylabel: 
ret

/* 

sahf: 9e
*/
