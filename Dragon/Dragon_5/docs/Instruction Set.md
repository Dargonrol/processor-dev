# Arithmetic Operations

| Instr.     | Attr. 1 | Attr. 2 | Attr. 3 | OP-code  | size | Instr type | info                                                      |
| ---------- | ------- | ------- | ------- | -------- | ---- | ---------- | --------------------------------------------------------- |
| **ADD**    | regD    | regS    | regS    | ``0x01`` | 3    | RRR        |                                                           |
| **ADDi**   | regD    | regS    | Imm     | ``0x02`` | 4    | RRI        |                                                           |
| **ADC**    | redD    | regS    | regS    | ``0x03`` | 3    | RRR        | add with carry                                            |
| **SUB**    | regD    | regS    | regS    | ``0x04`` | 3    | RRR        |                                                           |
| **SUBi**   | regD    | regS    | Imm     | ``0x05`` | 4    | RRI        |                                                           |
| **SBB**    | regD    | regS    | regS    | ``0x06`` | 3    | RRR        | sub with borrow                                           |
| **MUL**    | regD    | regS    | regS    | ``0x07`` | 3    | RR         | multiply lower half                                       |
| **MULH**   | regD    | regS    | regS    | ``0x08`` | 3    | RRR        | multiply upper half                                       |
| **MULHu**  | regD    | regS    | regS    | ``0x09`` | 3    | RRR        | multiply upper half unsigned                              |
| **MULHsu** | regD    | regS    | regS    | ``0x0A`` | 3    | RRR        | multiply upper half signed, unsigned                      |
| **DIV**    | regD    | regS    | regS    | ``0x0B`` | 3    | RRR        |                                                           |
| **DIVu**   | regD    | regS    | regS    | ``0x0C`` | 3    | RRR        |                                                           |
| **REM**    | regD    | regS    | regS    | ``0x0D`` | 3    | RRR        | remainder                                                 |
| **REMu**   | regD    | regS    | regS    | ``0x0E`` | 3    | RRR        |                                                           |
| **CMP**    | regS    | regS    |         | ``0x0F`` | 2    | RR         | compare. Sub R1 and R2 and set flags without saving value |
# Logical Operations

| Instr.    | Attr. 1 | Attr. 2 | Attr. 3 | OP-code  | size | Instr type | info                       |
| --------- | ------- | ------- | ------- | -------- | ---- | ---------- | -------------------------- |
| **AND**   | regD    | regS    | regS    | ``0x10`` | 3    | RRR        |                            |
| **OR**    | regD    | regS    | regS    | ``0x11`` | 3    | RRR        |                            |
| **XOR**   | regD    | regS    | regS    | ``0x12`` | 3    | RRR        |                            |
| **NOR**   | regD    | regS    | regS    | ``0x13`` | 3    | RRR        |                            |
| **NAND**  | regD    | regS    | regS    | ``0x14`` | 3    | RRR        |                            |
| **NOT**   | regD    | regS    |         | ``0x15`` | 2    | RR         | ~regS                      |
| **NEG**   | regD    | regS    |         | ``0x16`` | 2    | RR         | ~regS + 1                  |
| **SHL**   | regD    | regS    | regS    | ``0x17`` | 3    | RRR        | shift left                 |
| **SHR**   | regD    | regS    | regS    | ``0x18`` | 3    | RRR        | shift right (logical)      |
| **SHRa**  | regD    | regS    | regS    | ``0x19`` | 3    | RRR        | shift right (arithmetical) |
| **SHLi**  | regD    | regS    | Imm     | ``0x1A`` | 4    | RRI        |                            |
| **SHRi**  | regD    | regS    | Imm     | ``0x1B`` | 4    | RRI        |                            |
| **SHRai** | regD    | regS    | Imm     | ``0x1C`` | 4    | RRI        |                            |
| **ROR**   | regD    | regS    |         | ``0x1D`` | 2    | RR         | rotate right               |
| **ROL**   | regD    | regS    |         | ``0x1E`` | 2    | RR         | rotate left                |
| **NOP**   |         |         |         | ``0x1F`` |      |            | reserved                   |


# Jumps
absolute jump:
**JMP** reg, Imm
PC = reg + Imm
**JALr** RA, reg, Imm (modifies RA register)
PC = reg + Imm ; RA = PC + 4

relative jump:
**JALr** RA, PC, Imm | or | **JAL** Imm
**JZ** LABEL
if zeroflag = 1:
	RA=PC+4,    PC+=Imm(signed)
Take the value of R2, add it with the offset and put it into R1.

| Instr.   | Attr. 1 | Attr. 2 | Attr. 3  | OP-code  | size | Instr type | info                                                 |
| -------- | ------- | ------- | -------- | -------- | ---- | ---------- | ---------------------------------------------------- |
| **JALr** | regD    | regS    | Imm/offs | ``0x20`` | 4    | RRI        | Jump and Link; PC = regS+Offs; regD(RA) = PC+4       |
| **JZr**  | regD    | regS    | offs     | ``0x21`` | 4    | RRI        | Jump if Zero                                         |
| **JNZr** | regD    | regS    | offs     | ``0x22`` | 4    | RRI        | Jump if not Zero                                     |
| **JSr**  | regD    | regS    | offs     | ``0x23`` | 4    | RRI        | Jump if Signed                                       |
| **JNSr** | regD    | regS    | offs     | ``0x24`` | 4    | RRI        | Jump if not Signed                                   |
| **JCr**  | regD    | regS    | offs     | ``0x25`` | 4    | RRI        | Jump if Carry                                        |
| **JNCr** | regD    | regS    | offs     | ``0x26`` | 4    | RRI        | Jump if not Carry                                    |
| **JOr**  | regD    | regS    | offs     | ``0x27`` | 4    | RRI        | Jump if Overflow                                     |
| **JNOr** | regD    | regS    | offs     | ``0x28`` | 4    | RRI        | Jump if not Overflow                                 |
| **JPr**  | regD    | regS    | offs     | ``0x29`` | 4    | RRI        | Jump if Parity                                       |
| **JNPr** | regD    | regS    | offs     | ``0x2A`` | 4    | RRI        | Jump if not Parity                                   |
| **JGr**  | regD    | regS    | offs     | ``0x2B`` | 4    | RRI        | Jump if greater ``ZF==0 and SF==OF`` (signed)        |
| **JLEr** | regD    | regS    | offs     | ``0x2C`` | 4    | RRI        | Jump if less or equal ``ZF==1 or SF!=OF`` (signed)   |
| **JAr**  | regD    | regS    | offs     | ``0x2D`` | 4    | RRI        | Jump if above ``CF==0 and ZF==0`` (unsigned)         |
| **JBEr** | regD    | regS    | offs     | ``0x2E`` | 4    | RRI        | Jump if Below or Equal ``CF==1 or ZF==1`` (unsigned) |
| **JBIT** | reg     | bit     | offs     | ``0x2F`` | 4    | RRI^       | Jump if BIT is set in REG                            |
^ 2. argument is interpreted as an 8-bit immediate which is used for bit-masking. 

# Memory Operations

| Instr.     | Attr. 1 | Attr. 2 | Attr. 3 | OP-code  | size | pseudo | Instr type | info                    |
| ---------- | ------- | ------- | ------- | -------- | ---- | ------ | ---------- | ----------------------- |
| **SW**     | regS    | regS    | Imm     | ``0x30`` | 4    |        | RRI        | store word              |
| **LW**     | regD    | regS    | Imm     | ``0x31`` | 4    |        | RRI        | load word               |
| **SB**     | regS    | regS    | Imm     | ``0x32`` | 4    |        | RRI        | store byte              |
| **LB**     | regD    | regS    | Imm     | ``0x33`` | 4    |        | RRI        | load byte               |
| **SWi**    | regS    | Imm     |         | ``0x34`` | 4    |        | RI         | Store Immediate at regS |
| **SBi**    | regS    | Imm     |         | ``0x35`` | 3    |        | RI         |                         |
| **MOV**    | regD    | regS    |         | ``0x36`` | 2    |        | RR         | move                    |
| **PUSH**   | regD    | regS    |         | ``0x37`` | 2    |        | RR         | push to stack or heap   |
| **POP**    | regD    | regS    |         | ``0x38`` | 2    |        | RR         | pop from stack or heap  |

# Other Instructions

| Instr.   | Attr. 1 | Attr. 2 | Attr. 3 | OP-code  | size | pseudo | Instr type | info          |
| -------- | ------- | ------- | ------- | -------- | ---- | ------ | ---------- | ------------- |
| **NOP**  |         |         |         | ``0x00`` | 1    |        |            | No operation  |
| **NOP**  |         |         |         | ``0x39`` |      |        |            | reserved      |
| **NOP**  |         |         |         | ``0x3A`` |      |        |            | reserved      |
| **NOP**  |         |         |         | ``0x3B`` |      |        |            | reserved      |
| **NOP**  |         |         |         | ``0x3C`` |      |        |            | reserved      |
| **NOP**  |         |         |         | ``0x3D`` |      |        |            | reserved      |
| **NOP**  |         |         |         | ``0x3E`` |      |        |            | reserved      |
| **HALT** |         |         |         | ``0x3F`` | 1    |        |            | halts the CPU |


# Pseudo Instructions
## Arithmetic
| Instr.  | Attr. 1 | Attr. 2 | Attr. 3 | translation           | OP-code  | info           |
| ------- | ------- | ------- | ------- | --------------------- | -------- | -------------- |
| **INC** | regD    | regS    |         | **ADD** regD regS 0x1 | ``0x01`` | increment by 1 |
| **DEC** | regD    | regS    |         | **SUB** regD regS 0x1 | ``0x04`` | decrement by 1 |
| **INC** | reg     |         |         | **ADD** reg reg 0x1   | ``0x01`` |                |
| **DEC** | reg     |         |         | **SUB** reg reg 0x1   | ``0x04`` |                |

## Logical
| Instr.    | Attr. 1 | Attr. 2 | Attr. 3 | translation             | OP-code  | info                |
| --------- | ------- | ------- | ------- | ----------------------- | -------- | ------------------- |
| **SHRl**  | regD    | regS    | regS    | **SHRa** regD regS regS | ``0x18`` | shift right logical |
| **SHRli** | regD    | regS    | Imm     | **SHRai** regD regS Imm | ``0x1B`` | shift right logical |

## Jumps
| Instr.  | Attr. 1    | Attr. 2 | Attr. 3 | translation             | OP-code  | info               |
| ------- | ---------- | ------- | ------- | ----------------------- | -------- | ------------------ |
| **JMP** | reg        | offs    |         | **ADDi** PC reg offs    | ``0x02`` | absolute jump      |
| **JAL** | offs/Label |         |         | **JALr** RA PC offs     | ``0x20`` | relative jump      |
| **JAL** | reg        | offs    |         | **JALr** reg PC offs    | ``0x20`` | custom RA register |
| **JZ**  | offs       |         |         | **JZr** x0 PC offs      | ``0x21`` | doesn't change RA  |
| **JNZ** | offs       |         |         | **JNZr** x0 PC offs     | ``0x22`` |                    |
| **JE**  | offs       |         |         | **JZr** x0 PC offs      | ``0x21`` |                    |
| **JNE** | offs       |         |         | **JNE** x0 PC offs      | ``0x22`` |                    |
| **JS**  | offs       |         |         | **JSr** x0 PC offs      | ``0x23`` |                    |
| **JNS** | offs       |         |         | **JNSr** x0 PC offs     | ``0x24`` |                    |
| **JC**  | offs       |         |         | **JCr** x0 PC offs      | ``0x25`` |                    |
| **JNC** | offs       |         |         | **JNCr** x0 PC offs     | ``0x26`` |                    |
| **JO**  | offs       |         |         | **JOr** x0 PC offs      | ``0x27`` |                    |
| **JNO** | offs       |         |         | **JNOr** x0 PC offs     | ``0x28`` |                    |
| **JP**  | offs       |         |         | **JPr** x0 PC offs      | ``0x29`` |                    |
| **JNP** | offs       |         |         | **JNPr** x0 PC offs     | ``0x2A`` |                    |
| **JG**  | offs       |         |         | **JGr** x0 PC offs      | ``0x2B`` |                    |
| **JLE** | offs       |         |         | **JLEr** x0 PC offs<br> | ``0x2C`` |                    |
| **JA**  | offs       |         |         | **JAr** x0 PC offs      | ``0x2D`` |                    |
| **JBE** | offs       |         |         | **JBEr** x0 PC offs     | ``0x2E`` |                    |

## Memory Operations
| Instr.      | Attr. 1 | Attr. 2 | Attr. 3 | translation          | OP-code  | info                              |
| ----------- | ------- | ------- | ------- | -------------------- | -------- | --------------------------------- |
| **WRITE**   | regS    | regS    | Imm     | **SW** regS regS Imm | ``0x30`` |                                   |
| **READ**    | regD    | regS    | Imm     | **LW** regD regS Imm | ``0x31`` |                                   |
| **WRITEb**  | regS    | regS    | Imm     | **SB** regS regS Imm | ``0x32`` |                                   |
| **READb**   | regD    | regS    | Imm     | **LB** regD regS Imm | ``0x33`` |                                   |
| **WRITEi**  | regS    | Imm     |         | **SWi** regS Imm     | ``0x34`` |                                   |
| **WRITEbi** | regS    | Imm     |         | **SBi** regS Imm     | ``0x35`` |                                   |
| **MV**      | regD    | regS    |         | **MOV** regD regS    | ``0x36`` |                                   |
| **MOVE**    | regD    | regS    |         | **MOV** regD regS    | ``0x36`` |                                   |
| **RET**     |         |         |         | **MOV** PC RA        | ``0x36`` | PC = RA (does not pop from stack) |
| **RETURN**  |         |         |         | **MOV** PC RA        | ``0x36`` |                                   |

## other Instructions
| Instr.     | Attr. 1 | Attr. 2 | Attr. 3 | translation    | OP-code  | info         |
| ---------- | ------- | ------- | ------- | -------------- | -------- | ------------ |
| **cFLAGS** |         |         |         | **MOV** x1F x0 | ``0x36`` | clears FLAGS |
