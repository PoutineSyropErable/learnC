from typing import TypeAlias, Tuple


# print(
#     f"ord(a) = {ord('a')} ord(z) = {ord('z')} ord(A) = {ord('A')} ord(Z) = {ord('Z')} ord(0) = {ord('0')} ord(1) = {ord('1')} ord(9) = {ord('9')}"
# )
#
# print(f"ord(a) = {ord("a")}, ord(z) = {ord("z")}, ord(0) = {ord("0")}, ord(1) = {ord("1")}, ord(9) = {ord("9")}")
# print(f"ord(0) = {ord("0")}  ord(9) = {ord("9")}, ord(a) = {ord("a")}, ord(z) = {ord("z")},")

# digits 0-9
digits = {chr(x) for x in range(ord("0"), ord("9") + 1)}
# hex lowercase a-f
hex_lower = {chr(x) for x in range(ord("a"), ord("f") + 1)}
acceptable_char = digits | hex_lower


def verify_hex_bad(value_str: str):
    value_str = value_str.lower()
    for c in value_str:
        if ord(c) < ord("0") or ord(c) > ord("9"):
            if ord(c) < ord("a") or ord(c) > ord("f"):
                raise Exception("Bad string", c, "not in", acceptable_char)


def verify_hex(value_str: str):
    value_str = value_str.lower()
    if value_str[0:2] == "0x":
        value_str = value_str[2:]

    for c in value_str:
        if c not in Hex.ACCEPTABLE_CHARS:
            raise Exception("Bad string", c, "not in", Hex.ACCEPTABLE_CHARS)


class Hex:
    """The hex class"""

    ACCEPTABLE_CHARS = acceptable_char
    BASE = 16
    BIT_COUNT = 4

    def to_int_unsigned(self) -> int:
        return int(self.val, Hex.BASE)

    def to_int_signed(self) -> int:
        """
        Convert the hex value to a signed integer using two's complement.
        """
        val = int(self.val, Hex.BASE)
        bit_size = len(self.val) * Hex.BIT_COUNT
        sign_bit = 1 << (bit_size - 1)
        if val & sign_bit:
            # Negative value: subtract 2^bit_size
            val -= 1 << bit_size
        return val

    def to_int(self, signed: bool = True):
        if signed:
            return self.to_int_signed()
        else:
            return self.to_int_unsigned()

    @staticmethod
    def int_to_hex(val: int) -> "Hex":
        if val < 0:
            # Convert to two's complement representation
            # Determine the number of hex digits needed
            bit_size = (val.bit_length() + Hex.BIT_COUNT - 1) // Hex.BIT_COUNT * Hex.BIT_COUNT
            val = (1 << bit_size) + val  # add 2^bit_size
        hex_str = hex(val)[2:].upper()  # remove '0x'
        return Hex(hex_str)

    def __init__(self, value_str: str):
        value_str = value_str.strip()
        value_str = value_str.lower()
        if value_str[0:2] == "0x":
            value_str = value_str[2:]

        for c in value_str:
            if c not in Hex.ACCEPTABLE_CHARS:
                raise Exception("Bad string", c, "not in", Hex.ACCEPTABLE_CHARS)

        self.val = value_str

    def __str__(self):
        q = "0x" + self.val.upper()
        return q

    def get_most_significant_hex(self) -> str:
        return self.val[0]

    def get_least_significant_hex(self) -> str:
        return self.val[-1]

    def get_most_significant_bit(self) -> int:
        val = self.get_most_significant_hex()
        binary = format(int(val, Hex.BASE), "04b")
        return int(binary[0])

    def get_least_significant_bit(self):
        val = self.get_least_significant_hex()
        binary = format(val, "04b")  # "1010" (4 bits for hex digit)
        return int(binary[-1])

    def copy(self) -> "Hex":
        out = Hex("0")
        out.val = self.val
        return out

    def adjust_size(self, number_bit_size: int, sign_extend: bool = True):
        assert number_bit_size % Hex.BIT_COUNT == 0, "must be a hex representable"

        len_4 = len(self.val)
        new_len_4 = number_bit_size // Hex.BIT_COUNT
        output = self.copy()

        if new_len_4 > len_4:
            if sign_extend:
                extend_char = "F" if self.get_most_significant_bit() else "0"
            else:
                extend_char = "0"
            output.val = extend_char * (new_len_4 - len_4) + self.val
        elif new_len_4 < len_4:
            output.val = self.val[len_4 - new_len_4 :]
        # else same size: do nothing

        return output

    def sign_extend(self, number_bit_size: int):
        return self.adjust_size(number_bit_size, sign_extend=True)

    def extend(self, number_bit_size: int):
        return self.adjust_size(number_bit_size, sign_extend=False)

    def split(self, number_bit_size: int) -> Tuple["Hex", "Hex"]:
        """
        Split a larger hex value into two halves like high:low (e.g., edx:eax).
        Works for any multiple-of-4 bit size.
        Returns (high, low) as new Hex objects.
        """
        assert number_bit_size % Hex.BIT_COUNT == 0, "must be a hex representable"

        # high:low = (number_bit_size, number_bit_size)
        hex_digits_needed = number_bit_size * 2 // Hex.BIT_COUNT
        current_len = len(self.val)

        # Determine the padding character if sign extension is needed
        sign = self.get_most_significant_bit()
        if sign == 1:
            extend_char = "F"
        else:
            extend_char = "0"

        # Check if we need to pad or truncate
        if current_len < hex_digits_needed:
            # Compute how many digits we need to add
            digits_to_add = hex_digits_needed - current_len

            # Build the padding string using the sign-extend character
            padding_str = extend_char * digits_to_add

            # Prepend the padding to the current value
            padded_val = padding_str + self.val
        else:
            # If current value is longer than needed, truncate the extra most significant digits
            # example, we want to split a 140 bit number into two 64 bit number.
            # we must truncate the 12 leftmost bit. (140 - 128)
            start_index = current_len - hex_digits_needed
            padded_val = self.val[start_index:]

        half_len = hex_digits_needed // 2

        high_val_str = padded_val[:half_len]
        low_val_str = padded_val[half_len:]

        high_hex = Hex.int_to_hex(int(high_val_str, Hex.BASE))
        low_hex = Hex.int_to_hex(int(low_val_str, Hex.BASE))

        return high_hex, low_hex

    @staticmethod
    def imul(a: "Hex", b: "Hex", number_bit_size: int) -> Tuple["Hex", "Hex"]:
        print("\n====== Called imul =======\n")
        print(f"a = {a}")
        print(f"b = {b}\n")

        a_se, b_se = a.sign_extend(number_bit_size), b.sign_extend(number_bit_size)
        print(f"Signed extended a = {a_se}")
        print(f"Signed extended b = {b_se}\n")

        a_i, b_i = a_se.to_int(), b_se.to_int()
        print(f"a se to int = {a_i}")
        print(f"b se to int = {b_i}\n")
        res = a_i * b_i
        print(f"integer result: a*b = {res}")

        res_hex = Hex.int_to_hex(res)
        print(f"Result hex = {res_hex}\n")
        high_hex, low_hex = res_hex.split(number_bit_size)
        print("\n====== End of imul =======\n")
        return high_hex, low_hex

    @staticmethod
    def mul(a: "Hex", b: "Hex", number_bit_size: int) -> Tuple["Hex", "Hex"]:
        print("\n====== Called Mul =======\n")
        print(f"a = {a}")
        print(f"b = {b}\n")

        a_e, b_e = a.extend(number_bit_size), b.extend(number_bit_size)
        print(f"extended a = {a_e}\n")
        print(f"extended b = {b_e}")

        a_i, b_i = a_e.to_int(), b_e.to_int()
        print(f"a e to int = {a_i}")
        print(f"b e to int = {b_i}\n")

        res = a_i * b_i
        print(f"integer result: a*b = {res}")

        res_hex = Hex.int_to_hex(res)
        print(f"Result hex = {res_hex}\n")
        high_hex, low_hex = res_hex.split(number_bit_size)
        print("\n====== End of Mul =======\n")
        return high_hex, low_hex

    @staticmethod
    def idiv(a: "Hex", b: "Hex", number_bit_size: int) -> Tuple["Hex", "Hex"]:
        a_e, b_e = a.sign_extend(number_bit_size), b.sign_extend(number_bit_size)

        a_i, b_i = a_e.to_int(), b_e.to_int()
        res = a_i // b_i
        rem = a_i % b_i
        rem_hex = Hex.int_to_hex(rem)  # reminder: High
        res_hex = Hex.int_to_hex(res)  # quotient. Low
        return rem_hex, res_hex

    @staticmethod
    def div(a: "Hex", b: "Hex", number_bit_size: int) -> Tuple["Hex", "Hex"]:
        a_e, b_e = a.extend(number_bit_size), b.extend(number_bit_size)

        a_i, b_i = a_e.to_int(), b_e.to_int()
        res = a_i // b_i
        rem = a_i % b_i
        rem_hex = Hex.int_to_hex(rem)  # reminder: High
        res_hex = Hex.int_to_hex(res)  # quotient. Low
        return rem_hex, res_hex


if __name__ == "__main__":
    print("\n==start of program==\n")
    a = 0xF0D722CD
    b = 0x4D25C01A
    prod = (a * b) & ((1 << 64) - 1)
    hex(prod)

    # ===
    rax = Hex("0x6A0A02F598E3108B")
    ebx = Hex("0x9D3A")
    high, low = Hex.imul(rax, ebx, 16)

    print(f"high={high}, low={low}")
    print(f"high:low = 0x{high.val}:{low.val}")
    print(f"high:low = 0x{high.val}{low.val}")
