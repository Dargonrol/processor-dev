Every Pseudo-instruction is simply mapped to an already existing instruction.

# Arithmetic

| PseudoInstruction | Translation           |
| ----------------- | --------------------- |
| **INC** regD regS | **ADD** regD regS 0x1 |
| **DEC** regD regS | **SUB** regD regS 0x1 |
| **INC** reg       | **ADD** reg reg 0x1   |
| **SUB** reg       | **SUB** reg reg 0x1   |

# Logical

| PseudoInstruction       | Translation             |
| ----------------------- | ----------------------- |
| **SHRI** regD regS regS | **SHRa** regD regS regS |
| **SHRli** regD regS Imm | **SHRai** regD regS Imm |

# Jumps and Branches

| PseudoInstruction | Translation            |
| ----------------- | ---------------------- |
| **JMP** Imm       | **JMPr** PC PC Imm     |
| **JMP** reg Imm   | **JMPr** reg reg Imm   |
| **JAL** Imm       | **JALr** RA PC Imm     |
| **JAL** regD Imm  | **JALr** regD PC Imm   |
