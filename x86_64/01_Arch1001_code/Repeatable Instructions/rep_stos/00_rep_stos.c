#include <stddef.h>
#include <stdint.h>

void rep_stos_q(void* destination, long value, long count) {

	/*
	Set *di to the start destination
	set *ax/al to the value to store.
	set *cx to the number of time to store
	- Effectively a memset
	*/

	void* rdi = destination;
	long rax = value;
	long rcx = count;
	asm("rep stosq");

	// asm volatile (
	//    "assembly instructions"
	//    : output_operands
	//    : input_operands
	//    : clobbered_registers
	// );
}

#define size_t_32 uint32_t
#define size_t_16 uint16_t

void rep_stos_d(void* destination, uint32_t value, size_t_32 count) {

	void* edi = destination;
	long eax = value;
	long ecx = count;
	asm("rep stosd");
}

void rep_stos_w(void* destination, uint16_t value, size_t_16 count) {

	void* di = destination;
	long ax = value;
	long cx = count;
	asm("rep stosw");
}

void rep_stos_b(void* destination, uint8_t value, size_t_8 count) {

	void* dl = destination;
	long al = value;
	long cl = count;
	asm("rep stosb");
}
