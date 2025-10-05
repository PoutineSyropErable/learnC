#!/usr/bin/env python3
import subprocess
import sys

if len(sys.argv) < 2:
    print("Usage: python disasm_series.py <hex_prefix>")
    sys.exit(1)

prefix = int(sys.argv[1], 16)
outfile = f"disasm_{prefix:02X}xx.txt"

# Build all byte pairs [prefix, b]
code = b"".join(bytes([prefix, b]) for b in range(0x00, 0x100))

# Run disassembler once
result = subprocess.run(["ndisasm", "-b", "64", "-"], input=code, stdout=subprocess.PIPE)
lines = result.stdout.decode().splitlines()

with open(outfile, "w") as f:
    for i, line in enumerate(lines):
        b = i
        f.write(f"{prefix:02X} {b:02X}: {line.strip()}\n")

print(f"Saved to {outfile}")
