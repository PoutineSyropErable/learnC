#pragma once
#include <stdint.h>

// Bit positions for GDT segment descriptor fields
static const uint8_t TYPE_START = 8;
static const uint8_t TYPE_END = 11;

static const uint8_t DESCRIPTOR_TYPE_S = 12;

static const uint8_t DPL_START = 13;
static const uint8_t DPL_END = 14;

static const uint8_t PRESENT = 15;

static const uint8_t SEGMENT_LIMIT_START_1 = 0;
static const uint8_t SEGMENT_LIMIT_END_1 = 15;
static const uint8_t SEGMENT_LIMIT_START_2 = 16;
static const uint8_t SEGMENT_LIMIT_END_2 = 19;

static const uint8_t AVL = 20;
static const uint8_t LONG_MODE = 21;
static const uint8_t DEFAULT_OPERATION_SIZE = 22;
static const uint8_t GRANULARITY = 23;

// Base address positions within descriptor (higher and lower parts)
// These are present as documentation, but won't be used, since the indexing makes it weird
static const uint8_t BASE_ADDRESS_LOWER_START = 16;
static const uint8_t BASE_ADDRESS_LOWER_END = 31;

static const uint8_t BASE_ADDRESS_HIGHER_START_1 = 0;
static const uint8_t BASE_ADDRESS_HIGHER_END_1 = 7;
static const uint8_t BASE_ADDRESS_HIGHER_START_2 = 24;
static const uint8_t BASE_ADDRESS_HIGHER_END_2 = 31;

// Base address logical indices (for get/set helpers)
static const uint8_t BASE_ADDRESS_INDEX_START_1 = 0;
static const uint8_t BASE_ADDRESS_INDEX_END_1 = 15;
static const uint8_t BASE_ADDRESS_INDEX_START_2 = 16;
static const uint8_t BASE_ADDRESS_INDEX_END_2 = 23;
static const uint8_t BASE_ADDRESS_INDEX_START_3 = 24;
static const uint8_t BASE_ADDRESS_INDEX_END_3 = 31;
