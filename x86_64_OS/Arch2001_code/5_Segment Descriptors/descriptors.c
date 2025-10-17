#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define SD_COUNT 8192 // 2^13.
/*in the gdtr, there's 13 bits for table index, 2 for priviledge and 1 for gdt/ldt*/
typedef struct {
	uint32_t lower;
	uint32_t higher;
} SegmentDescriptor;

typedef struct {
	SegmentDescriptor segmentsInfo[SD_COUNT];
} GDT;

enum SPLIT {
	SPLIT_LOWER = 0,
	SPLIT_HIGHER = 1,

};

typedef struct SDIndex {
	uint8_t baseStart;
	uint8_t baseEnd;
	enum SPLIT which;
} SDI;

struct SDIndex* baseAddressIndices() {
	static SDI val[3] = {
	    {0, 15, SPLIT_LOWER},  // Base bits 0–15
	    {16, 23, SPLIT_LOWER}, // Base bits 16–23
	    {24, 31, SPLIT_HIGHER} // Base bits 24–31
	};

	return val; // return pointer to static array
}

uint32_t generateMask(uint8_t endBig, uint32_t startSmall) {

	uint32_t mask_plus_one = 1 << (endBig - startSmall + 1);
	uint32_t mask = mask_plus_one - 1;

	uint32_t mask_left = mask << startSmall;
	return mask_left;
}

uint32_t getBits2(uint32_t value, uint8_t endBig, uint8_t startSmall) {

	uint32_t mask_left = generateMask(endBig, startSmall);
	uint32_t value_left = value & mask_left;
	uint32_t return_value = value_left >> startSmall;
	return return_value;
}

uint32_t getBits(uint32_t value, uint8_t endBig, uint8_t startSmall) {
	if (endBig < startSmall) {
		printf("[ERROR]: big >= small ");
		abort();
	}

	uint32_t shifted_value = value >> startSmall;
	uint32_t mask_plus_one = 1 << (endBig - startSmall + 1);
	uint32_t mask = mask_plus_one - 1;

	return shifted_value & mask;
}

void setBits(uint32_t* dest, uint32_t value, uint8_t endBig, uint8_t startSmall) {
	/*
	a = dest. b = value
	we want to set the

	*/
	if (endBig < startSmall) {
		printf("[ERROR]: big >= small ");
		abort();
	}

	/*Read: [Big, Small] Since we write [Most Significant -> Least Significant]*/
	uint8_t a_left_mask_end = 31;
	uint8_t a_left_mask_start = endBig + 1;
	// [31, e+1]

	uint8_t b_mask_end = endBig;
	uint8_t b_mask_start = startSmall;
	// [e, s]

	uint8_t a_right_mask_end = startSmall - 1;
	uint8_t a_right_mask_start = 0;
	// [s-1, 0]

	uint32_t a_left_mask = generateMask(a_left_mask_end, a_left_mask_start);
	uint32_t b_mask = generateMask(endBig, startSmall);
	uint32_t a_right_mask = generateMask(a_right_mask_end, a_right_mask_start);

	uint32_t a = *dest;
	uint32_t b_shifted = value >> startSmall;

	*dest = (a & a_left_mask) | (b_shifted & b_mask) | (a & a_right_mask);
}

uint32_t getBaseAddress(GDT* gdt, size_t index) {

	SegmentDescriptor sd = gdt->segmentsInfo[index];

	uint32_t base_0_15 = getBits(sd.lower, 31, 16);
	uint32_t base_16_23 = getBits(sd.higher, 7, 0);
	uint32_t base_31_24 = getBits(sd.higher, 31, 24);

	uint32_t base_0_15_shifted = base_0_15 << 0; // get optimised. But i prefer clarity
	uint32_t base_16_23_shifted = base_16_23 << 16;
	uint32_t base_31_24_shifted = base_31_24 << 24;

	uint32_t baseAddress = base_0_15_shifted | base_16_23_shifted | base_31_24_shifted;

	return baseAddress;
}

void setBaseAddress(GDT* gdt, size_t index, uint32_t baseAddress) {

	SegmentDescriptor* sd = &gdt->segmentsInfo[index];

	uint32_t lower_31_16 = getBits(baseAddress, 15, 0);
	uint32_t higher_7_0 = getBits(baseAddress, 23, 16);
	uint32_t higher_31_24 = getBits(baseAddress, 31, 24);

	setBits(&sd->lower, lower_31_16, 31, 16);
	setBits(&sd->higher, higher_7_0, 7, 0);
	setBits(&sd->higher, higher_31_24, 31, 24);
}

char* printBits32(uint32_t a) {
	char* print_string = (char*)malloc(33);
	print_string[32] = 0;

	for (uint8_t bitIndex = 0; bitIndex < 32; bitIndex++) {
		uint8_t c = a >> bitIndex & 1;
		print_string[(32 - 1) - bitIndex] = '0' + (char)c;
	}

	return print_string;
}

void print_separeted_by_4(char* bitString) {
	for (uint8_t printIndex = 0; printIndex < 32; printIndex++) {
		printf("%c", *(bitString + printIndex));
		if (((printIndex + 1) % 4 == 0) && (printIndex != 31))
			printf(" ");
	}
	printf("\n");
}

static inline void ps4(uint32_t a) {
	char* str = printBits32(a);
	print_separeted_by_4(str);
	free(str);
}

int main(void) {

	ps4(0xfedc1234);

	GDT gdt = {0};
	setBaseAddress(&gdt, 5, 0xdeadface);
	uint32_t val = getBaseAddress(&gdt, 5);
	ps4(val);
	printf("%x\n", val);
}
