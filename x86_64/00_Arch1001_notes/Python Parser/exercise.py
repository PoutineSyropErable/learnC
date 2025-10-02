from asm_parser import AsmParser

from internal_hex import Hex


if __name__ == "__main__":

    print("\n==start of program==\n")

    parser = AsmParser()
    asm_code = """
    mov rax, 0xA98E4DD55179B5
    """
    parser.parse(asm_code)

    print("")
    parser.print_reg("rax")
    parser.print_reg("eax")
    parser.print_reg("ax")
    parser.print_reg("ah")
    parser.print_reg("al")
    a = parser.get_left_half("al")
    print(f"left_half(eax) = {a}")

    print("\n=====Next Code=====\n")
    asm_code = """
    mov ax, 0xabcd
    """
    parser.parse(asm_code)

    print("")
    parser.print_reg("rax")
    parser.print_reg("eax")
    parser.print_reg("ax")
    parser.print_reg("ah")
    parser.print_reg("al")
