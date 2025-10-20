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

char* getSpacelessBitString(uint32_t a) {
	char* print_string = (char*)malloc(33);
	print_string[32] = 0;

	for (uint8_t bitIndex = 0; bitIndex < 32; bitIndex++) {
		uint8_t c = a >> bitIndex & 1;
		print_string[(32 - 1) - bitIndex] = '0' + (char)c;
	}

	return print_string;
}

char* addSpacesEvery4bits(char* spacelessBits) {
	char* print_str = malloc(40);

	uint8_t bitIndex = 0;   // for the spacelessBits[bitIndex]
	uint8_t printIndex = 0; // for print_str[printIndex]
	while (printIndex < 39) {

		if ((printIndex + 1) % 5 == 0) {

			print_str[printIndex] = ' ';
		} else {
			print_str[printIndex] = spacelessBits[bitIndex];

			bitIndex++;
		}

		printIndex++;
	}

	print_str[39] = '\0';
	return print_str;
}

void print_separeted_by_4(char* bitString) {
	char* spaceSeparatedBits = addSpacesEvery4bits(bitString);
	printf("%s\n", spaceSeparatedBits);
	free(spaceSeparatedBits);
}

char* binaryNumberToString(uint32_t binaryNumber) {
	char* simpleBitString = getSpacelessBitString(binaryNumber);
	char* spaceSeparatedBits = addSpacesEvery4bits(simpleBitString);
	free(simpleBitString);
	return spaceSeparatedBits;
}

static inline void ps4(uint32_t binaryNumber) {
	char* spacelessBitString = getSpacelessBitString(binaryNumber);
	char* spaceSeparatedBits = addSpacesEvery4bits(spacelessBitString);
	printf("%s\n", spaceSeparatedBits);
	free(spaceSeparatedBits);
	free(spacelessBitString);
}

static inline void printBinary(uint32_t binaryNumber, char* variableName) {
	char* spacelessBitString = getSpacelessBitString(binaryNumber);
	char* spaceSeparatedBits = addSpacesEvery4bits(spacelessBitString);
	printf("%s = %s = %x\n", variableName, spaceSeparatedBits, binaryNumber);
	free(spaceSeparatedBits);
	free(spacelessBitString);
}

uint32_t generateMask(uint8_t endBig, uint8_t startSmall) {

	uint8_t width = endBig - startSmall + 1;

	uint32_t mask;
	if (width >= 32) {
		mask = 0xFFFFFFFF;
	} else {
		uint32_t mask_plus_one = 1 << (endBig - startSmall + 1);
		mask = mask_plus_one - 1;
	}

	uint32_t mask_left = mask << startSmall;
	return mask_left;
}

uint32_t generateAntiMask(uint8_t endBig, uint8_t startSmall) {

	return ~generateMask(endBig, startSmall);
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

uint32_t setBits(uint32_t a_dest, uint32_t b_value, uint8_t endBig, uint8_t startSmall) {
	/*
	Example:


	setBits(&a, b, 6, 4);

	we want to touch from x to y.

	return c;
	     x y
	    7654 3210
	a = 1100 1010
	b =  111
	c = 1111 1010
	     xxx

	*/

	uint32_t b_shifted = b_value << startSmall;
	uint32_t a_reverse_mask = generateAntiMask(endBig, startSmall);

	return a_dest & a_reverse_mask | b_shifted;
}

/*
    Dest: The destination
    value: The value to write.
    end big, startSmall: The bit values to write.

    Example:
    Let's replace the E with a D for x = 0xFACEB007;

    Dest = &x.
    EB007
    43210
    5*4-1, 4*4.
    20, 16
    19. 16
    19, 18, 17, 16

      F    A   C     E   B     0   0    7
    1111 1010 1100 1110 1101 0000 0000 0111

    setBits(&x, 0xD, 19, 16);

*/
inline static void setBitsModify(uint32_t* a_dest, uint32_t b_value, uint8_t endBig, uint8_t startSmall) {

	*a_dest = setBits(*a_dest, b_value, endBig, startSmall);
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
	ps4(sd->higher);
	// ps4(sd->lower);

	return;
}

void test(void) {
	printf("0xFACEB007 should be transformed to 0xFACDB007\n");
	uint32_t x = 0xFACEB007;
	printf("start = %x\n", x);

	setBitsModify(&x, 0xD, 19, 16);

	printf("modified = %x\n", x);
	ps4(x);
}

void test2(void) {
	uint32_t a = generateMask(13, 9);
	printf("%x\n", a);
	ps4(a);
}

int main(void) {

	printf("\n\n\n-----Start of Program------\n\n\n");

	// test();
	// exit(0);
	// test2();

	// ps4(0xfedc1234);
	GDT gdt = {0};
	printf("\n\n====== Start OF SETTING BASE ADDRESS ======\n");
	setBaseAddress(&gdt, 5, 0xfedc1234);
	printf("====== END OF BASE ADDRESS ======\n\n\n");

	printf("Lower = %s\n", binaryNumberToString(gdt.segmentsInfo[5].lower));
	printf("Higher = %s\n", binaryNumberToString(gdt.segmentsInfo[5].higher));

	uint32_t val = getBaseAddress(&gdt, 5);
	char* nbr = binaryNumberToString(val);
	printf("got back = %s\n", nbr);
	printf("%x\n", val);
}
