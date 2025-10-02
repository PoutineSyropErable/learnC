#include <stddef.h>
#include <stdint.h>

#define size_t_64 uint64_t
#define size_t_32 uint32_t
#define size_t_16 uint16_t
#define size_t_8 uint8_t

// __asm__ volatile (
//    "assembly instructions"
//    : output_operands
//    : input_operands
//    : clobbered_registers
// );

#define memcopy_q rep_movs_q
#define memcopy_d rep_movs_d
#define memcopy_w rep_movs_w
#define memcopy_b rep_movs_b

#
void rep_movs_q(void* destination, void* source, long count) {

	/*
	Set *di to the start destination
	Set *si to the start source
	set *cx to the number of time to store
	- Effectively a memcopy
	*/

	void* rdi = destination;
	void* rsi = source;
	long rcx = count;
	__asm__("rep movsq");
	// Note that this is imperfect assembly,

	// this is correct. We can't put the exact assembly instruction.
	__asm__ __volatile__(
	    "rep movsd"
	    : /* no outputs */
	    : "D"(rdi), "S"(rsi), "c"(rcx)
	    : "memory");
}

void rep_movs_d(void* destination, void* source, size_t_32 count) {

	void* edi = destination;
	void* eax = source;
	size_t_32 ecx = count;
	__asm__("rep movsd");
}

void rep_movs_w(void* destination, void* source, size_t_16 count) {

	void* di = destination;
	void* ax = source;
	short cx = count;
	__asm__("rep movsw");
}

void rep_movs_b(void* destination, void* source, size_t_8 count) {

	void* dl = destination;
	void* sil = source;
	size_t_8 cl = count;
	__asm__("rep movsb");
}

void memcpy1(void* dest, void* src, size_t count);
void memset1(void* dest, int value, size_t count);

#define memcopy_q rep_movs_q
#define memcopy_d rep_movs_d
#define memcopy_w rep_movs_w
#define memcopy_b rep_movs_b

int main(void) {
	memcopy_q()
}
