# Instruction Types

**RRR-Type (Register Register Register Instruction type)** 3 byte

| op-code | reg   | reg   | reg   | 0     |
| ------- | ----- | ----- | ----- | ----- |
| 6-bit   | 5-bit | 5-bit | 5-bit | 4-bit |

**RR-Type (Register Register Instruction type)**  2 byte

| op-code | reg   | reg   | 0     | 0     |
| ------- | ----- | ----- | ----- | ----- |
| 6-bit   | 5-bit | 5-bit | 4-bit | 4-bit |

**RRI-Type (Register Register Immediate Instruction type)** 4 byte

| op-code | reg   | reg   | imm    |
| ------- | ----- | ----- | ------ |
| 6-bit   | 5-bit | 5-bit | 16-bit |

### special types
Special types are only used ones or twice for specific purposes
**RI-Type (Register Immediate Instruction Type)** 3/4 byte

| op-code | reg   | 0     | Imm      |
| ------- | ----- | ----- | -------- |
| 6-bit   | 5-bit | 5-bit | 8-16-bit |
The instruction *SWi* uses a 16-bit immediate, *SBi* uses a 8-bit immediate.
*SBi* with a 16-bit immediate results in undefined behavior and should be avoided.
Compilers should check this.
(The behavior depends on the implementation of the architecture. If the *SBi* instruction is treated like a 4-Byte long instruction worst case it stores the wrong value. If it is treated like a 3-Byte long instruction however the PC will increase to the wrong value and the lower Byte of the Immediate will be interpreted as a new instruction)


**0-Type (Zero Type instructions)** 1 byte

| op-code | 0     |
| ------- | ----- |
| 6-bit   | 2-bit |

# Instruction Layout

``0b00 0000 - 0b00 1111`` | arithmetic (15 used [max])
``0b01 0000 - 0b01 1111`` | logic (15 used [1 free])
``0b10 0000 - 0b10 1111`` | branch (16 used [max])
``0b11 1000 - 0b11 1111`` | memory and other


# Registers

| assignment | name     | description     |
| ---------- | -------- | --------------- |
| ``0x00``   | 0        | zero            |
| ``0x01``   | 1        | one             |
| ``0x02``   | s0       | GPR             |
| ``0x03``   | s1       | GPR             |
| ``0x04``   | s2       | GPR             |
| ``0x05``   | s3       | GPR             |
| ``0x06``   | s4       | GPR             |
| ``0x07``   | s5       | GPR             |
| ``0x08``   | t0       | temporary       |
| ``0x09``   | t1       | temporary       |
| ``0x0A``   | t2       | temporary       |
| ``0x0B``   | t3       | temporary       |
| ``0x0C``   | a0       | argument        |
| ``0x0D``   | a1       | argument        |
| ``0x0E``   | a2       | argument        |
| ``0x0F``   | a3       | argument        |
| ``0x10``   | a4       | argument        |
| ``0x11``   | reserved |                 |
| ``0x12``   | reserved |                 |
| ``0x13``   | reserved |                 |
| ``0x14``   | reserved |                 |
| ``0x15``   | reserved |                 |
| ``0x16``   | reserved |                 |
| ``0x17``   | reserved |                 |
| ``0x18``   | reserved |                 |
| ``0x19``   | TP       | trap pointer    |
| ``0x1A``   | GP       | global pointer  |
| ``0x1B``   | RA       | return address  |
| ``0x1C``   | BS       | base pointer    |
| ``0x1D``   | SP       | stack pointer   |
| ``0x1E``   | PC       | program counter |
| ``0x1F``   | FLAGS    | status register |
