# Instruction Types

**RRR (Register Register Register Instruction type)**

| op-code | reg   | reg   | reg   | 0     |
| ------- | ----- | ----- | ----- | ----- |
| 6-bit   | 5-bit | 5-bit | 5-bit | 4-bit |

**RR (Register Register Instruction type)**

| op-code | reg   | reg   | 0     | 0     |
| ------- | ----- | ----- | ----- | ----- |
| 6-bit   | 5-bit | 5-bit | 4-bit | 4-bit |

**RRI (Register Register Immediate Instruction type)**

| op-code | reg   | reg   | imm    |
| ------- | ----- | ----- | ------ |
| 6-bit   | 5-bit | 5-bit | 16-bit |

# Instruction Layout

``0b00 0000 - 0b00 1111`` | arithmetic (15 used [max])
``0b01 0000 - 0b01 1111`` | logic (15 used [1 free])
``0b10 0000 - 0b10 1111`` | branch (16 used [max])
``0b11 1000 - 0b11 1111`` | memory and other

