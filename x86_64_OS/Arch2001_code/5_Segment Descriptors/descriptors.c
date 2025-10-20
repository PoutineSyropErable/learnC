#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "binary_operation.h"
#include "string.h"

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

	printBinary(baseAddress, "baseAddress");

	uint32_t lower_31_16 = getBits(baseAddress, 15, 0);
	uint32_t higher_7_0 = getBits(baseAddress, 23, 16);
	uint32_t higher_31_24 = getBits(baseAddress, 31, 24);

	printf("\n");
	printBinary(higher_31_24, "higher_31_24 (Base 31-24)"); // 8
	printBinary(higher_7_0, "higher_7_0 (Base 23-16)  ");   // 8

	printBinary(lower_31_16, "lower_31_16 (Base 15-0)  "); // 8

	setBitsModify(&sd->lower, lower_31_16, 31, 16);
	setBitsModify(&sd->higher, higher_7_0, 7, 0);
	setBitsModify(&sd->higher, higher_31_24, 31, 24);

	printf("\nhigher, lower\n");
	printBinary(sd->lower, "sd->lower");   // 8
	printBinary(sd->higher, "sd->higher"); // 8

	return;
}

void test(void) {
	printf("0xFACEB007 should be transformed to 0xFACDB007\n");
	uint32_t x = 0xFACEB007;
	printf("start = %x\n", x);

	setBitsModify(&x, 0xD, 19, 16);

	printf("modified = %x\n", x);
	printBinary(x, "x");
}

int main(void) {

	printf("\n\n\n-----Start of Program------\n\n\n");

	// test();
	// exit(0);
	// test2();

	GDT gdt = {0};
	printf("\n\n====== Start OF SETTING BASE ADDRESS ======\n");
	setBaseAddress(&gdt, 5, 0xfedc1234);
	printf("====== END OF BASE ADDRESS ======\n\n\n");

	printBinary(gdt.segmentsInfo[5].lower, "lower");
	printBinary(gdt.segmentsInfo[5].higher, "higher");

	uint32_t val = getBaseAddress(&gdt, 5);
	printBinary(val, "got back");
}
