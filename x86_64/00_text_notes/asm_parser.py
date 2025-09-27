from python_calculator import Hex


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

        # Initialize all registers to 0
        self._registers = {}
        for reg in self.reg64 + self.reg32 + self.reg16 + self.reg8:
            self._registers[reg] = Hex("0")

            # Register sizes in bits
        self._reg_size = {
            **{r: 64 for r in self.reg64},
            **{r: 32 for r in self.reg32},
            **{r: 16 for r in self.reg16},
            **{r: 8 for r in self.reg8},
        }

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

        self.low_dict = {8: "al", 16: "ax", 32: "eax", 64: "rax"}
        self.high_dict = {8: "ah", 16: "dx", 32: "edx", 64: "rdx"}

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
        return self.low_dict[bits]

    def get_high(self, bits: int):
        return self.high_dict[bits]

    # ========
    def set_reg(self, name: str, hex_imm: Hex):
        """Set a register via any alias, updating the full familly. Doesn't sign extend. This is a mov internal."""
        if name not in self._input_to_64:
            raise ValueError(f"Unknown register: {name}")

        base64 = self._input_to_64[name]
        size = self._reg_size[name]
        alias_names = [k for k, v in self._input_to_64.items() if v == base64]
        alias_sizes = [self._reg_size[alias_name] for alias_name in alias_names]

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
        reg = parser.get_reg(reg_name)
        print(f"{reg_name} = {reg}")

    # ========

    def mov(self, rmX1: str, rmX2_i: str):
        assert "[" not in rmX2_i, "no support for memory address for now"
        self.mov_reg_imm(rmX1, Hex(rmX2_i))

    def imul(self, reg_name: str):
        reg_size: int = self._reg_size[reg_name]

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

    def mul(self, reg_name: str):
        reg_size: int = self._reg_size[reg_name]

        print("imul steps: ")
        edx, eax = Hex.mul(self.get_reg("rax"), self.get_reg(reg_name), reg_size)
        edx_name = self.get_high(reg_size)
        eax_name = self.get_low(reg_size)

        print("with names")
        print(f"{edx_name} = {edx}")
        print(f"{eax_name} = {eax}")

        self.set_reg(edx_name, edx)
        self.set_reg(eax_name, eax)

    def idiv(self, reg_name: str):
        reg_size: int = self._reg_size[reg_name]
        edx, eax = Hex.idiv(self.get_reg("rax"), self.get_reg(reg_name), reg_size)
        edx_name = self.get_high(reg_size)
        eax_name = self.get_low(reg_size)

        self.set_reg(edx_name, edx)
        self.set_reg(eax_name, eax)

    def div(self, reg_name: str):
        reg_size: int = self._reg_size[reg_name]
        edx, eax = Hex.div(self.get_reg("rax"), self.get_reg(reg_name), reg_size)
        edx_name = self.get_high(reg_size)
        eax_name = self.get_low(reg_size)

        self.set_reg(edx_name, edx)
        self.set_reg(eax_name, eax)

    def mov_reg_imm(self, reg_name: str, imm: Hex):
        self.set_reg(reg_name, imm)

    def parse_line(self, line: str):
        line = line.replace(",", "")
        args = line.split(" ")

        command = args[0]
        if command == "mov":
            self.mov(args[1], args[2])

        if command == "imul":
            self.imul(args[1])

        if command == "mul":
            self.mul(args[1])

    def parse(self, asm_code: str):
        asm_code = asm_code.strip()
        lines = asm_code.split("\n")

        for line in lines:
            self.parse_line(line.strip())


if __name__ == "__main__":
    print("\n==start of program==\n")
    parser = AsmParser()
    asm_code = """
    mov rax, 0xCE8C6E899F6397A6
    mov r14b, 0x66
    mul r14b
    """

    print(f"The asm code = {asm_code}")

    parser.parse(asm_code)
    print("\n====== End of parsing ======\n")
    parser.print_reg("rax")
    parser.print_reg("r9w")
    print("")
    parser.print_reg("edx")
    parser.print_reg("eax")

    print("\n==== 64 bit size ====")
    rdx = parser.get_reg("rdx")
    rax = parser.get_reg("rax")

    print(f"result = 0x{rdx.val}:{rax.val}")
    print(f"result = 0x{rdx.val}{rax.val}")

    print("\n==== 32 bit size ====")
    edx = parser.get_reg("edx")
    eax = parser.get_reg("eax")

    print(f"result = 0x{edx.val}:{eax.val}")
    print(f"result = 0x{edx.val}{eax.val}")

    print("\n==== 16 bit size ====")
    dx = parser.get_reg("dx")
    ax = parser.get_reg("ax")

    print(f"result = 0x{dx.val}:{ax.val}")
    print(f"result = 0x{dx.val}{ax.val}")

    print("\n==== 8 bit size ====")
    ax = parser.get_reg("ax")
    ah = parser.get_reg("ah")
    al = parser.get_reg("al")

    print(f"result = 0x{ah.val}:{al.val}")
    print(f"result = 0x{ah.val}{al.val}")
    print(f"result = {ax}")

    # ====
