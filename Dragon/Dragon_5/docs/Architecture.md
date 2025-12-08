# Instruction Types

**RRR-Type (Register Register Register Instruction type)** 3 byte (24bit)

| 0 23:21 | reg3 20:16 | reg2 15:11 | reg1 10:6 | op-code 5:0 |
| ------- | ---------- | ---------- | --------- | ----------- |
| 3-bit   | 5-bit      | 5-bit      | 5-bit     | 6-bit       |

**RR-Type (Register Register Instruction type)**  2 byte (16bit)

| reg2 15:11 | reg1 10:6 | op-code 5:0 |
| ---------- | --------- | ----------- |
| 5-bit      | 5-bit     | 6-bit       |

**RRI-Type (Register Register Immediate Instruction type)** 4 byte (32bit)

| imm 31:16 | reg2 15:11 | reg1 10:6 | op-code 5:0 |
| --------- | ---------- | --------- | ----------- |
| 16-bit    | 5-bit      | 5-bit     | 6-bit       |

### special types
Special types are only used ones or twice for specific purposes
**RI-Type (Register Immediate Instruction Type)** 3/4 byte

| imm 31:16 | 0 15:11 | reg1 10:6 | op-code 5:0 |
| --------- | ------- | --------- | ----------- |
| 16-bit    | 5-bit   | 5-bit     | 6-bit       |


**0-Type (Zero Type instructions)** 1 byte

| op-code | 0     |
| ------- | ----- |
| 6-bit   | 2-bit |

# Instruction Layout

``0b00 0001 - 0b00 1111`` | arithmetic (15 used [max])
``0b01 0000 - 0b01 1111`` | logic (15 used [1 free])
``0b10 0000 - 0b10 1111`` | branch (15 used [1 free])
``0b11 1000 - 0b11 1111`` | memory and other


# Registers

| assignment | name     | description          |
| ---------- | -------- | -------------------- |
| ``0x00``   | 0        | zero                 |
| ``0x01``   | 1        | one                  |
| ``0x02``   | s0       | GPR                  |
| ``0x03``   | s1       | GPR                  |
| ``0x04``   | s2       | GPR                  |
| ``0x05``   | s3       | GPR                  |
| ``0x06``   | s4       | GPR                  |
| ``0x07``   | s5       | GPR                  |
| ``0x08``   | t0       | temporary            |
| ``0x09``   | t1       | temporary            |
| ``0x0A``   | t2       | temporary            |
| ``0x0B``   | t3       | temporary            |
| ``0x0C``   | a0       | argument             |
| ``0x0D``   | a1       | argument             |
| ``0x0E``   | a2       | argument             |
| ``0x0F``   | a3       | argument             |
| ``0x10``   | a4       | argument             |
| ``0x11``   | reserved |                      |
| ``0x12``   | reserved |                      |
| ``0x13``   | reserved |                      |
| ``0x14``   | reserved |                      |
| ``0x15``   | reserved |                      |
| ``0x16``   | MBR      | Memory Bank Register |
| ``0x17``   | EPC      | Exception PC         |
| ``0x18``   | IR       | Interrupt Register   |
| ``0x19``   | TP       | trap pointer         |
| ``0x1A``   | GP       | global pointer       |
| ``0x1B``   | RA       | return address       |
| ``0x1C``   | BS       | base pointer         |
| ``0x1D``   | SP       | stack pointer        |
| ``0x1E``   | PC       | program counter      |
| ``0x1F``   | FLAGS    | status register      |

# Flags

| Bit | Flag | Description        |
| --- | ---- | ------------------ |
| 0   | ZF   | Zero Flag          |
| 1   | CF   | Carry Flag         |
| 2   | SF   | Sign Flag          |
| 3   | OF   | Overflow Flag      |
| 4   | PF   | Parity Flag        |
| 5   | AF   | Auxiliary Flag^    |
| 6   | MBS  | Memory Bank Switch |
| 7   |      |                    |
| 8   |      |                    |
| 9   |      |                    |
| 10  |      |                    |
| 11  |      |                    |
| 12  |      |                    |
| 13  |      |                    |
| 14  |      |                    |
| 15  | IF   | Interrupt Enable   |

^ Auxiliary Flag is used for BCD applications. It shows if an addition or subtraction results in a carry or borrow between the lowest 4 bits (nibble).