from typing import List, Dict, Tuple
from internal_hex import Hex
from enum import Enum


class ArgType(Enum):
    REGISTER = 1
    MEMORY = 2
    IMMEDIATE = 3


class MemoryType(Enum):
    REG = 1  # [rax]
    REG_SCALE = 2  # [rax + rbx*2]
    REG_SCALE_OFFSET = 3  # [rax + rbx*2 + 0x2354ac]


class AsmParser:
    def __init__(self):
        # List of general-purpose registers (64-bit names)
        registers = ["rax", "rbx", "rcx", "rdx", "rsi", "rdi", "rbp", "rsp", "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15"]

        # 64-bit registers
        self.reg64 = ["rax", "rbx", "rcx", "rdx", "rsi", "rdi", "rbp", "rsp", "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15"]

        # 32-bit registers (hard-coded)
        self.reg32 = ["eax", "ebx", "ecx", "edx", "esi", "edi", "ebp", "esp", "r8d", "r9d", "r10d", "r11d", "r12d", "r13d", "r14d", "r15d"]

        # 16-bit registers (hard-coded)
        self.reg16 = ["ax", "bx", "cx", "dx", "si", "di", "bp", "sp", "r8w", "r9w", "r10w", "r11w", "r12w", "r13w", "r14w", "r15w"]

        # 8-bit registers (hard-coded)
        self.reg8 = ["al", "bl", "cl", "dl", "ah", "bh", "ch", "dh", "sil", "dil", "bpl", "spl"]
        self.reg8 += ["r8b", "r9b", "r10b", "r11b", "r12b", "r13b", "r14b", "r15b"]

        # Register sizes in bits
        self._reg_size = {
            **{r: 64 for r in self.reg64},
            **{r: 32 for r in self.reg32},
            **{r: 16 for r in self.reg16},
            **{r: 8 for r in self.reg8},
        }

        # Initialize all registers to 0
        self._registers: Dict[str, Hex] = {}
        for reg in self.reg64 + self.reg32 + self.reg16 + self.reg8:
            reg_size = self._reg_size[reg]
            zero_count = reg_size // Hex.BIT_COUNT
            assert reg_size % Hex.BIT_COUNT == 0
            self._registers[reg] = Hex("0" * zero_count)

        # Define alias mapping for shared access
        self._input_to_64 = {
            "rax": "rax",
            "eax": "rax",
            "ax": "rax",
            "al": "rax",
            "ah": "rax",
            "rbx": "rbx",
            "ebx": "rbx",
            "bx": "rbx",
            "bl": "rbx",
            "bh": "rbx",
            "rcx": "rcx",
            "ecx": "rcx",
            "cx": "rcx",
            "cl": "rcx",
            "ch": "rcx",
            "rdx": "rdx",
            "edx": "rdx",
            "dx": "rdx",
            "dl": "rdx",
            "dh": "rdx",
            "rsi": "rsi",
            "esi": "rsi",
            "si": "rsi",
            "sil": "rsi",
            "rdi": "rdi",
            "edi": "rdi",
            "di": "rdi",
            "dil": "rdi",
            "rbp": "rbp",
            "ebp": "rbp",
            "bp": "rbp",
            "bpl": "rbp",
            "rsp": "rsp",
            "esp": "rsp",
            "sp": "rsp",
            "spl": "rsp",
            "r8": "r8",
            "r8d": "r8",
            "r8w": "r8",
            "r8b": "r8",
            "r9": "r9",
            "r9d": "r9",
            "r9w": "r9",
            "r9b": "r9",
            "r10": "r10",
            "r10d": "r10",
            "r10w": "r10",
            "r10b": "r10",
            "r11": "r11",
            "r11d": "r11",
            "r11w": "r11",
            "r11b": "r11",
            "r12": "r12",
            "r12d": "r12",
            "r12w": "r12",
            "r12b": "r12",
            "r13": "r13",
            "r13d": "r13",
            "r13w": "r13",
            "r13b": "r13",
            "r14": "r14",
            "r14d": "r14",
            "r14w": "r14",
            "r14b": "r14",
            "r15": "r15",
            "r15d": "r15",
            "r15w": "r15",
            "r15b": "r15",
        }

        # Hard-coded aliases
        self._alias_64 = ["rax", "rbx", "rcx", "rdx", "rsi", "rdi", "rbp", "rsp", "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15"]

        # Mapping of all sizes
        self._reg_map = {
            "rax": {"64": "rax", "32": "eax", "16": "ax", "8l": "al", "8h": "ah"},
            "rbx": {"64": "rbx", "32": "ebx", "16": "bx", "8l": "bl", "8h": "bh"},
            "rcx": {"64": "rcx", "32": "ecx", "16": "cx", "8l": "cl", "8h": "ch"},
            "rdx": {"64": "rdx", "32": "edx", "16": "dx", "8l": "dl", "8h": "dh"},
            "rsi": {"64": "rsi", "32": "esi", "16": "si", "8": "sil"},
            "rdi": {"64": "rdi", "32": "edi", "16": "di", "8": "dil"},
            "rbp": {"64": "rbp", "32": "ebp", "16": "bp", "8": "bpl"},
            "rsp": {"64": "rsp", "32": "esp", "16": "sp", "8": "spl"},
            "r8": {"64": "r8", "32": "r8d", "16": "r8w", "8": "r8b"},
            "r9": {"64": "r9", "32": "r9d", "16": "r9w", "8": "r9b"},
            "r10": {"64": "r10", "32": "r10d", "16": "r10w", "8": "r10b"},
            "r11": {"64": "r11", "32": "r11d", "16": "r11w", "8": "r11b"},
            "r12": {"64": "r12", "32": "r12d", "16": "r12w", "8": "r12b"},
            "r13": {"64": "r13", "32": "r13d", "16": "r13w", "8": "r13b"},
            "r14": {"64": "r14", "32": "r14d", "16": "r14w", "8": "r14b"},
            "r15": {"64": "r15", "32": "r15d", "16": "r15w", "8": "r15b"},
        }

        self._low_dict = {8: "al", 16: "ax", 32: "eax", 64: "rax"}
        self._high_dict = {8: "ah", 16: "dx", 32: "edx", 64: "rdx"}
        self._last_moved_size = -1

    # ========
    def get_alias(self, name: str, bits: int) -> str:
        """Get the correct alias for a register string at a given bit size"""
        if name not in self._input_to_64:
            raise ValueError(f"Unknown register: {name}")
        # print(f"name = {name}")
        base64 = self._input_to_64[name]
        # print(f"base64 = {base64}")
        bits_str = str(bits)
        # Handle high bytes specially
        if bits == 8 and name in ["ah", "bh", "ch", "dh"]:
            return name
        # Otherwise, return mapping
        # print(f"self._reg_map[base64] = {self._reg_map[base64]}")
        if base64 in ["rax", "rbx", "rcx", "rdx"]:
            if bits_str == "8":
                bits_str = "8l"
        return self._reg_map[base64][bits_str]

    def get_low(self, bits: int):
        return self._low_dict[bits]

    def get_high(self, bits: int):
        return self._high_dict[bits]

    def get_left_half(self, reg_name: str):
        """
        This method is to get the innacessible left half for the next higher version.
        The lefthalf of al is ah.
        the lefthalf of ax, is the 16 rightmost bits of eax.

        rax
        left | (  eax   )
                left| ( ax    )
                        left|al
        """
        size = self._reg_size[reg_name]
        assert size != 64, "No 128 bit support"
        assert reg_name[-1] != "h", "Should not use this for *h (ie ah, bh, ch, dh). "

        base64 = self._input_to_64[reg_name]
        alias_names = [k for k, v in self._input_to_64.items() if v == base64]
        alias_sizes = [self._reg_size[alias_name] for alias_name in alias_names]

        alias_map = {size: name for size, name in zip(alias_sizes, alias_names)}
        print(alias_names)
        print(alias_sizes)
        print(alias_map)

        if reg_name[-1] == "l":
            reg16_name = alias_map[16]
            reg16 = self.get_reg(reg16_name)
            left, right = reg16.split_e(8)
            return left

        size_bigger = size * 2
        reg_bigger_name = alias_map[size_bigger]
        reg_bigger = self.get_reg(reg_bigger_name)
        left, right = reg_bigger.split_e(size)
        return left

    def get_left_bits(self, reg_name: str, reg_bigger_size):
        """
        This method is to get the innacessible left side for the next higher version.

        so. If we have al
        and we give it a bigger_reg_size=64

        rax = 64 version.

        al = 2 Hex.
        rax = 16 Hex
        14Hex | 2 Hex
        we return the 14 Hex

        ===
        Example:
        we ask for 32.
        give al
        eax= 32 = 8 hex
        6 Hex| 2 Hex

        if eax=OxFFDDEE12
        we give it regname=al. (it's value is 12)
        output is
        FFDDEE
        """
        assert reg_bigger_size in [16, 32, 64], "must be a real register size"

        if reg_name[-1] == "h":
            assert reg_name in ["ah", "bh", "ch", "dh"], "other with h don't exist"
            # Then we pretty much want want's left of ax.
            reg_name = reg_name.replace("h", "x")

        size = self._reg_size[reg_name]
        assert size != 64, "No 128 bit support"

        base64_name = self._input_to_64[reg_name]
        alias_names = [k for k, v in self._input_to_64.items() if v == base64_name]
        alias_sizes = [self._reg_size[alias_name] for alias_name in alias_names]

        alias_map = {size: name for size, name in zip(alias_sizes, alias_names)}

        reg_bigger_name = alias_map[reg_bigger_size]
        reg_bigger_value = self.get_reg(reg_bigger_name)
        number_of_hex = len(reg_bigger_value.val)
        size_hex = size // Hex.BIT_COUNT
        diff = number_of_hex - size_hex

        left_val: str = reg_bigger_value.val[0:diff]
        left_val_hex = Hex(left_val)
        return left_val_hex

    def get_high8_low_8_names(self, name_8: str) -> Tuple[str, str]:

        assert name_8 in ["ah", "al", "bh", "bl", "ch", "cl", "ch", "dl"]
        # must use list(name_8), not name_8.split() split cant take a "" separator. and defualt is space
        # and if we list, we can then just str

        start = name_8[0]
        name_8h = start + "h"
        name_8l = start + "l"

        return name_8h, name_8l

    def has_high_8(self, reg_name: str):
        base64 = self._input_to_64[reg_name]
        return base64 in ["rax", "rbx", "rcx", "rdx"]

    def set_reg(self, reg_name: str, hex_imm: Hex):
        if reg_name not in self._input_to_64:
            raise ValueError(f"Unknown register: {reg_name}")

        base64 = self._input_to_64[reg_name]
        size = self._reg_size[reg_name]
        alias_names = [k for k, v in self._input_to_64.items() if v == base64]
        alias_sizes = [self._reg_size[alias_name] for alias_name in alias_names]
        alias_map = {size: name for size, name in zip(alias_sizes, alias_names)}

        name_8 = alias_map[8]  # ends with l
        name_16 = alias_map[16]
        name_32 = alias_map[32]
        name_64 = alias_map[64]

        if size == 32 or size == 64:
            self._registers[name_16] = hex_imm.extend(16)
            self._registers[name_32] = hex_imm.extend(32)
            self._registers[name_64] = hex_imm.extend(64)

            if not self.has_high_8(reg_name):
                self._registers[name_8] = hex_imm.extend(8)
            else:
                name_8h, name_8l = self.get_high8_low_8_names(name_8)

                val_16 = self._registers[name_16]
                high_8, low_8 = val_16.split_assert(8)

                self._registers[name_8l] = low_8
                self._registers[name_8h] = high_8
        elif size == 16:
            print("size = 16")
            if not self.has_high_8(reg_name):
                print("doesnt have high8")
                new_ax = hex_imm.extend(16)

                _, low_8 = new_ax.split_assert(8)
                self._registers[name_8] = low_8

                self._registers[name_16] = new_ax
                self._registers[name_32].set_right_hex(new_ax, 16)
                self._registers[name_64].set_right_hex(new_ax, 16)

            else:
                print("have high8")
                new_ax = hex_imm.extend(16)
                print(f"new ax = {new_ax}")

                high_8, low_8 = new_ax.split_assert(8)
                name_8h, name_8l = self.get_high8_low_8_names(name_8)
                self._registers[name_8l] = low_8
                self._registers[name_8h] = high_8

                print(f"name_64 = {name_64}")
                self._registers[name_16] = new_ax
                self._registers[name_32].set_right_hex(new_ax, 16)
                self._registers[name_64].set_right_hex(new_ax, 16)
                print(f"64 = {self._registers[name_64]}")
                print(f"32 = {self._registers[name_32]}")

        elif size == 8:
            if reg_name[-1] == "h":
                if self.has_high_8(reg_name):
                    # don't modify al
                    # modify ax, eax, rah
                    name_8h, name_8l = self.get_high8_low_8_names(name_8)

                    new_ah = hex_imm.extend(8)
                    self._registers[name_8h] = new_ah

                    current_al = self._registers[name_8l]
                    new_ax = Hex.concat(new_ah, current_al).extend(16)

                    self._registers[name_16] = new_ax
                    self._registers[name_32].set_right_hex(new_ax, 16)
                    self._registers[name_64].set_right_hex(new_ax, 16)

                else:
                    raise AssertionError("This should never happen")

            elif reg_name[-1] == "l":
                # don't modify ah
                # modify ax, eax, rax
                new_al = hex_imm.extend(8)
                self._registers[name_16].set_right_hex(new_al, 8)
                self._registers[name_32].set_right_hex(new_al, 8)
                self._registers[name_64].set_right_hex(new_al, 8)
            else:
                raise AssertionError("This should never happen")

            return
        else:
            raise AssertionError("Should never happen")

    # ========
    def set_reg_old(self, name: str, hex_imm: Hex):
        """Set a register via any alias, updating the full familly. Doesn't sign extend. This is a mov internal."""
        if name not in self._input_to_64:
            raise ValueError(f"Unknown register: {name}")

        base64 = self._input_to_64[name]
        size = self._reg_size[name]
        alias_names = [k for k, v in self._input_to_64.items() if v == base64]
        alias_sizes = [self._reg_size[alias_name] for alias_name in alias_names]

        # rax (64)
        # 32 , 32: eax
        # 32 , 16 , ax
        # 32, 16, 8:ah, 8:al

        if base64 in ["rax", "rbx", "rcx", "rdx"] and size == 8:
            # We want to modify an ah/al type register
            print(f"Case: {base64}, {size} (Setting a small)")

            low_name = self._reg_map[base64]["8l"]  # al
            high_name = self._reg_map[base64]["8h"]  # ah

            # if we want to set ah, we must preserve al.
            if name == high_name:
                low_value = self.get_reg(low_name).extend(8)
                high_value = hex_imm.extend(8)
            elif name == low_name:
                low_value = hex_imm.extend(8)
                high_value = self.get_reg(high_name).extend(8)
            else:
                raise AssertionError("Impossible state")

            extended_register_16b = Hex.concat(high_value, low_value)
            for alias_name, alias_size in zip(alias_names, alias_sizes):
                if alias_name[-1] == "h":
                    self._registers[alias_name] = high_value
                elif alias_name[-1] == "l":
                    self._registers[alias_name] = low_value
                else:
                    self._registers[alias_name] = extended_register_16b.extend(alias_size)

        elif base64 in ["rax", "rbx", "rcx", "rdx"]:
            # we are modifying a variant which have an ax/al type register
            print(f"Case: {base64}, {size} (setting a big)")
            hex16 = hex_imm.extend(16)
            high_8, low_8 = hex16.split_se(8)
            print(f"high_8 = {high_8}, low_8 = {low_8}")
            for alias_name, alias_size in zip(alias_names, alias_sizes):
                if alias_name[-1] == "h":
                    self._registers[alias_name] = high_8.extend(alias_size)
                elif alias_name[-1] == "l":
                    self._registers[alias_name] = low_8.extend(alias_size)
                else:
                    self._registers[alias_name] = hex_imm.extend(alias_size)

        else:
            print(f"Case: {base64}, {size} (setting a trivial)")
            # the other much easier registers.
            for alias_name, alias_size in zip(alias_names, alias_sizes):
                self._registers[alias_name] = hex_imm.extend(alias_size)
                # extend can trunacte

    def get_reg(self, name: str) -> Hex:
        """Get a register via any alias, returned as a Hex object truncated to alias size."""
        if name not in self._registers:
            raise ValueError(f"Unknown register: {name}")
        # Return a copy truncated/sign-extended to the alias size
        return self._registers[name].copy()

    def print_reg(self, reg_name: str):
        reg = self.get_reg(reg_name)
        print(f"{reg_name} = {reg}")

    # ========

    def mov(self, rmX1: str, rmX2_i: str, arg_types: List[ArgType]):
        assert "[" not in rmX2_i, "no support for memory address for now"
        self.mov_reg_imm(rmX1, Hex(rmX2_i))

    def imul(self, args: List[str], arg_types: List[ArgType]):
        argc: int = len(args)
        if argc > 3 or argc == 0:
            raise AssertionError("argc is wrong")

        if argc == 1 and arg_types[0] == ArgType.REGISTER:
            self.imul_form1(args[0])

        if argc == 2:
            self.imul_form2(args[0], args[1])

        if argc == 3:
            # reg, reg, imm
            reg1 = args[0]
            reg2 = args[1]
            imm = Hex(args[2])

            imm_size = imm.get_smallest_required_size8()
            if imm_size == 8:
                form = 3
                self.imul_form3(reg1, reg2, imm)
            elif imm_size == 16:
                form = 4
                self.imul_form4(reg1, reg2, imm)
            elif imm_size == 32 or imm_size == 64:
                self.imul_form5(reg1, reg2, imm)
            else:
                raise AssertionError("This shouldn't happen")

    def mul(self, args: List[str], arg_types: List[ArgType]):
        argc: int = len(args)
        if argc > 3 or argc == 0:
            raise AssertionError("argc is wrong")

        if argc == 1 and arg_types[0] == ArgType.REGISTER:
            self.mul_form1(args[0])

        if argc == 2:
            self.mul_form2(args[0], args[1])

        if argc == 3:
            # reg, reg, imm
            reg1 = args[0]
            reg2 = args[1]
            imm = Hex(args[2])

            imm_size = imm.get_smallest_required_size8()
            if imm_size == 8:
                self.mul_form3(reg1, reg2, imm)
            elif imm_size == 16:
                self.mul_form4(reg1, reg2, imm)
            elif imm_size == 32 or imm_size == 64:
                self.mul_form5(reg1, reg2, imm)
            else:
                raise AssertionError("This shouldn't happen")

    def imul_form1(self, reg_name: str):
        reg_size: int = self._reg_size[reg_name]
        self._last_moved_size = reg_size

        print("imul steps: ")
        arg_value = self.get_reg(reg_name)
        print(f"arg value: {arg_value}")

        edx, eax = Hex.imul(self.get_reg("rax"), arg_value, reg_size)
        edx_name = self.get_high(reg_size)
        eax_name = self.get_low(reg_size)

        print("with names")
        print(f"{edx_name} = {edx}")
        print(f"{eax_name} = {eax}")

        self.set_reg(edx_name, edx)
        self.set_reg(eax_name, eax)

    def imul_form2(self, reg1_name: str, reg2_name: str):
        reg_size1: int = self._reg_size[reg1_name]
        reg_size2: int = self._reg_size[reg2_name]
        assert reg_size1 == reg_size2, "must be similar sized registers"
        assert reg_size1 != 8, "second form doesn't support imul r/m8, r/m8"

        reg1 = self.get_reg(reg1_name)
        reg2 = self.get_reg(reg2_name)

        _, low = Hex.imul(reg1, reg2, reg_size1)
        self.set_reg(reg1_name, low)

    def imul_form3(self, reg1_name: str, reg2_name: str, imm8: Hex):
        reg_size1: int = self._reg_size[reg1_name]
        reg_size2: int = self._reg_size[reg2_name]
        assert reg_size1 == reg_size2, "must be similar sized registers"
        assert reg_size1 != 8, "second form doesn't support imul r/m8, imul r/m8"

        reg2 = self.get_reg(reg2_name)

        _, low = Hex.imul(reg2, imm8, reg_size1)
        self.set_reg(reg1_name, low)

    def imul_form4(self, reg1_name: str, reg2_name: str, imm16: Hex):
        reg_size1: int = self._reg_size[reg1_name]
        reg_size2: int = self._reg_size[reg2_name]
        assert reg_size1 == reg_size2, "must be similar sized registers"
        assert reg_size1 == 16, "second form doesn't support imul r/m8, imul r/m8"

        reg2 = self.get_reg(reg2_name)

        _, low = Hex.imul(reg2, imm16, reg_size1)
        self.set_reg(reg1_name, low)

    def imul_form5(self, reg1_name: str, reg2_name: str, imm: Hex):
        reg_size1: int = self._reg_size[reg1_name]
        reg_size2: int = self._reg_size[reg2_name]
        assert reg_size1 == reg_size2, "must be similar sized registers"
        assert reg_size1 == 32 or reg_size1 == 64, "second form doesn't support imul r/m8, imul r/m8"

        reg2 = self.get_reg(reg2_name)

        _, low = Hex.imul(reg2, imm, reg_size1)
        self.set_reg(reg1_name, low)

    def mul_form1(self, reg_name: str):
        reg_size: int = self._reg_size[reg_name]
        self._last_moved_size = reg_size

        print("\n\nmul steps: ")
        edx, eax = Hex.mul(self.get_reg("rax"), self.get_reg(reg_name), reg_size)
        edx_name = self.get_high(reg_size)
        eax_name = self.get_low(reg_size)

        print("with names")
        print(f"{edx_name} = {edx}")
        print(f"{eax_name} = {eax}")

        self.set_reg(edx_name, edx)
        self.set_reg(eax_name, eax)

    def mul_form2(self, reg1_name: str, reg2_name: str):
        reg_size1: int = self._reg_size[reg1_name]
        reg_size2: int = self._reg_size[reg2_name]

        reg1 = self.get_reg(reg1_name)
        reg2 = self.get_reg(reg2_name)

        assert reg_size1 == reg_size2, "must be similar sized registers"
        assert reg_size1 != 8, "second form doesn't support imul r/m8, imul r/m8"

        high, low = Hex.mul(reg1, reg2, reg_size1)
        self.set_reg(reg1_name, low)

    def mul_form3(self, reg1_name: str, reg2_name: str, imm8: Hex):
        reg_size1: int = self._reg_size[reg1_name]
        reg_size2: int = self._reg_size[reg2_name]
        assert reg_size1 == reg_size2, "must be similar sized registers"
        assert reg_size1 != 8, "second form doesn't support imul r/m8, imul r/m8"

        reg2 = self.get_reg(reg2_name)

        _, low = Hex.mul(reg2, imm8, reg_size1)
        self.set_reg(reg1_name, low)

    def mul_form4(self, reg1_name: str, reg2_name: str, imm16: Hex):
        reg_size1: int = self._reg_size[reg1_name]
        reg_size2: int = self._reg_size[reg2_name]
        assert reg_size1 == reg_size2, "must be similar sized registers"
        assert reg_size1 == 16, "second form doesn't support imul r/m8, imul r/m8"

        reg2 = self.get_reg(reg2_name)

        _, low = Hex.mul(reg2, imm16, reg_size1)
        self.set_reg(reg1_name, low)

    def mul_form5(self, reg1_name: str, reg2_name: str, imm: Hex):
        reg_size1: int = self._reg_size[reg1_name]
        reg_size2: int = self._reg_size[reg2_name]
        assert reg_size1 == reg_size2, "must be similar sized registers"
        assert reg_size1 == 32 or reg_size1 == 64, "second form doesn't support imul r/m8, imul r/m8"

        reg2 = self.get_reg(reg2_name)

        _, low = Hex.mul(reg2, imm, reg_size1)
        self.set_reg(reg1_name, low)

    def idiv(self, reg_name: str):
        reg_size: int = self._reg_size[reg_name]
        self._last_moved_size = reg_size

        edx, eax = Hex.idiv(self.get_reg("rax"), self.get_reg(reg_name), reg_size)
        edx_name = self.get_high(reg_size)
        eax_name = self.get_low(reg_size)

        self.set_reg(edx_name, edx)
        self.set_reg(eax_name, eax)

    def div(self, reg_name: str):
        reg_size: int = self._reg_size[reg_name]
        self._last_moved_size = reg_size

        edx, eax = Hex.div(self.get_reg("rax"), self.get_reg(reg_name), reg_size)
        edx_name = self.get_high(reg_size)
        eax_name = self.get_low(reg_size)

        self.set_reg(edx_name, edx)
        self.set_reg(eax_name, eax)

    def mov_reg_imm(self, reg_name: str, imm: Hex):
        self._last_moved_size = self._reg_size[reg_name]
        self.set_reg(reg_name, imm)

    def parse_line(self, line: str):
        # line = line.replace(",", "")
        args_pre = line.split(", ")
        command_arg0 = args_pre[0]

        command, arg0 = command_arg0.split(" ")
        args = [arg0] + args_pre[1:]

        command = command.strip()
        args = [arg.strip() for arg in args]

        print(f"command = {command}, args = {args}")

        argc = len(args)
        arg_types: List[ArgType] = [ArgType.REGISTER] * argc
        for arg_i, arg in enumerate(args):
            if arg[0] == "0":
                arg_types[arg_i] = ArgType.IMMEDIATE
            elif arg[0] == "[":
                arg_types[arg_i] = ArgType.MEMORY
                raise NotImplementedError("Haven't implemented memory. Same for if it start with qword ptr or something else")
            else:
                arg_types[arg_i] = ArgType.REGISTER

        if command == "mov":
            self.mov(args[0], args[1], arg_types)

        if command == "imul":
            self.imul(args, arg_types)

        if command == "mul":
            self.mul(args, arg_types)

    def parse(self, asm_code: str):
        asm_code = asm_code.strip()
        lines = asm_code.split("\n")

        for line in lines:
            self.parse_line(line.strip())


if __name__ == "__main__":

    print("\n==start of program==\n")

    parser = AsmParser()
    asm_code = """
    mov rax, 0xA98E4DD55179B5
    """

    print(f"The asm code = {asm_code}")

    print("")
    parser.parse(asm_code)
    parser.print_reg("rax")
    parser.print_reg("eax")
    parser.print_reg("ax")
    parser.print_reg("ah")
    parser.print_reg("al")
    exit(0)
    print("\n====== End of parsing ======\n")
    parser.print_reg("rax")
    parser.print_reg("r9w")
    print("")
    parser.print_reg("edx")
    parser.print_reg("r15w")
    parser.print_reg("r11w")

    size = parser._last_moved_size
    if size == 64:
        print("\n==== 64 bit size ====")
        rdx = parser.get_reg("rdx")
        rax = parser.get_reg("rax")

        print(f"result = 0x{rdx.val}:{rax.val}")
        print(f"result = 0x{rdx.val}{rax.val}")

    if size == 32:
        print("\n==== 32 bit size ====")
        edx = parser.get_reg("edx")
        eax = parser.get_reg("eax")

        print(f"result = 0x{edx.val}:{eax.val}")
        print(f"result = 0x{edx.val}{eax.val}")

    if size == 16:
        print("\n==== 16 bit size ====")
        dx = parser.get_reg("dx")
        ax = parser.get_reg("ax")

        print(f"result = 0x{dx.val}:{ax.val}")
        print(f"result = 0x{dx.val}{ax.val}")

    if size == 8:
        print("\n==== 8 bit size ====")
        ax = parser.get_reg("ax")
        ah = parser.get_reg("ah")
        al = parser.get_reg("al")

        print(f"result = 0x{ah.val}:{al.val}")
        print(f"result = 0x{ah.val}{al.val}")
        print(f"result = {ax}")

    # ====
