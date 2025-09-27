from internal_hex import Hex
from asm_parser import AsmParser


def test_register_set():

    parser = AsmParser()

    # --- Test 64-bit write ---
    parser.set_reg("rax", Hex("1234567890abcdef"))
    assert parser._registers["rax"].val.endswith("1234567890abcdef"), "rax wrong"
    assert parser._registers["eax"].val.endswith("90abcdef"), "eax wrong"
    assert parser._registers["ax"].val.endswith("cdef"), "ax wrong"
    x = parser._registers["al"].val
    print(f"al = {x}")
    assert parser._registers["al"].val.endswith("ef"), "al wrong"
    x = parser._registers["ah"].val
    print(f"ah = {x}, wanted = 'cd'")
    assert parser._registers["ah"].val.endswith("cd"), "ah wrong"

    # --- Test 32-bit write (zero-extend to 64) ---
    parser.set_reg("eax", Hex("deadbeef"))
    assert parser._registers["rax"].val.endswith("00000000deadbeef"), "rax zero extend"
    assert parser._registers["eax"].val.endswith("deadbeef"), "eax wrong"
    assert parser._registers["ax"].val.endswith("beef"), "ax wrong"
    assert parser._registers["al"].val.endswith("ef"), "al wrong"
    assert parser._registers["ah"].val.endswith("be"), "ah wrong"

    # --- Test 16-bit write ---
    parser.set_reg("ax", Hex("1234"))
    assert parser._registers["rax"].val.endswith("0000000000001234"), "rax after ax"
    assert parser._registers["ax"].val.endswith("1234"), "ax wrong"
    assert parser._registers["al"].val.endswith("34"), "al wrong"
    assert parser._registers["ah"].val.endswith("12"), "ah wrong"

    # --- Test 8-bit write (low byte) ---
    parser.set_reg("al", Hex("aa"))
    assert parser._registers["al"].val.endswith("aa"), "al wrong"
    assert parser._registers["ah"].val.endswith("12"), "ah unchanged"
    assert parser._registers["ax"].val.endswith("12aa"), "ax combine high/low"
    assert parser._registers["rax"].val.endswith("00000000000012aa"), "rax correct"

    # --- Test 8-bit write (high byte) ---
    parser.set_reg("ah", Hex("bb"))
    assert parser._registers["ah"].val.endswith("bb"), "ah wrong"
    assert parser._registers["al"].val.endswith("aa"), "al unchanged"
    assert parser._registers["ax"].val.endswith("bbaa"), "ax combine high/low"
    assert parser._registers["rax"].val.endswith("000000000000bbaa"), "rax correct"

    # --- Test extended registers (no ah/al split) ---
    parser.set_reg("r8", Hex("cafebabecafebabe"))
    assert parser._registers["r8"].val.endswith("cafebabecafebabe"), "r8 wrong"
    assert parser._registers["r8d"].val.endswith("cafebabe"), "r8d wrong"
    assert parser._registers["r8w"].val.endswith("babe"), "r8w wrong"
    assert parser._registers["r8b"].val.endswith("be"), "r8b wrong"

    # --- Negative test ---
    try:
        parser.set_reg("fake", Hex("1234"))
        assert False, "Expected ValueError for fake register"
    except ValueError:
        pass

    print("All register set tests passed!")


if __name__ == "__main__":
    print("\n==start of program==\n")
    test_register_set()
