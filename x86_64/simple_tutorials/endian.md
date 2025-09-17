x86_64 is little endian fml


for a single bit in a byte, it's ~big endian. So it will be stored as it's written. 

but if we have a dword (32 bits = 8hex. )
if it was big endian, then it would be stored. 

1 hex = 4bits. 
1 byte = 2hex. 
1 dword = 8 hex. 

Big endian: 
hex7_hex6 hex5_hex4 hex3_hex2 hex1_hex0 


but in little endian, it's stored: 
hex1_hex0 hex3_hex2 hex5_hex4 hex7_hex6


0x12345678 

will be stored as 
0x78563412 


B1B2B3B4 will be stored as 
B4B3B2B1
