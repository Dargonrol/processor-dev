# Arithmetic Operations

| Instr.     | Attr. 1 | Attr. 2 | Attr. 3 | OP-code  | size | Instr type | info                                                      |
| ---------- | ------- | ------- | ------- | -------- | ---- | ---------- | --------------------------------------------------------- |
| **ADD**    | regS    | regS    | regD    | ``0x01`` | 3    | RRR        |                                                           |
| **ADDi**   | regS    | regD    | Imm     | ``0x02`` | 4    | RRI        |                                                           |
| **ADC**    | regS    | regS    | regD    | ``0x03`` | 3    | RRR        | add with carry                                            |
| **SUB**    | regS    | regS    | regD    | ``0x04`` | 3    | RRR        |                                                           |
| **SUBi**   | regS    | regD    | Imm     | ``0x05`` | 4    | RRI        |                                                           |
| **SBB**    | regS    | regS    | regD    | ``0x06`` | 3    | RRR        | sub with borrow                                           |
| **MUL**    | regS    | regS    | regD    | ``0x07`` | 3    | RRR        | multiply lower half                                       |
| **MULH**   | regS    | regS    | regD    | ``0x08`` | 3    | RRR        | multiply upper half                                       |
| **MULHu**  | regS    | regS    | regD    | ``0x09`` | 3    | RRR        | multiply upper half unsigned                              |
| **MULHsu** | regS    | regS    | regD    | ``0x0A`` | 3    | RRR        | multiply upper half signed, unsigned                      |
| **DIV**    | regS    | regS    | regD    | ``0x0B`` | 3    | RRR        |                                                           |
| **DIVu**   | regS    | regS    | regD    | ``0x0C`` | 3    | RRR        |                                                           |
| **REM**    | regS    | regS    | regD    | ``0x0D`` | 3    | RRR        | remainder                                                 |
| **REMu**   | regS    | regS    | regD    | ``0x0E`` | 3    | RRR        |                                                           |
| **CMP**    | regS    | regS    |         | ``0x0F`` | 2    | RR         | compare. Sub R1 and R2 and set flags without saving value |
# Logical Operations

| Instr.    | Attr. 1 | Attr. 2 | Attr. 3 | OP-code  | size | Instr type | info                       |
| --------- | ------- | ------- | ------- | -------- | ---- | ---------- | -------------------------- |
| **AND**   | regS    | regS    | regD    | ``0x10`` | 3    | RRR        |                            |
| **OR**    | regS    | regS    | regD    | ``0x11`` | 3    | RRR        |                            |
| **XOR**   | regS    | regS    | regD    | ``0x12`` | 3    | RRR        |                            |
| **NOR**   | regS    | regS    | regD    | ``0x13`` | 3    | RRR        |                            |
| **NAND**  | regS    | regS    | regD    | ``0x14`` | 3    | RRR        |                            |
| **NOT**   | regS    | regD    |         | ``0x15`` | 2    | RR         | ~regS                      |
| **NEG**   | regS    | regD    |         | ``0x16`` | 2    | RR         | ~regS + 1                  |
| **SHL**   | regS    | regS    | regD    | ``0x17`` | 3    | RRR        | shift left                 |
| **SHR**   | regS    | regS    | regD    | ``0x18`` | 3    | RRR        | shift right (logical)      |
| **SHRa**  | regS    | regS    | regD    | ``0x19`` | 3    | RRR        | shift right (arithmetical) |
| **SHLi**  | regS    | regD    | Imm     | ``0x1A`` | 4    | RRI        |                            |
| **SHRi**  | regS    | regD    | Imm     | ``0x1B`` | 4    | RRI        |                            |
| **SHRai** | regS    | regD    | Imm     | ``0x1C`` | 4    | RRI        |                            |
| **ROR**   | regS    | regD    |         | ``0x1D`` | 2    | RR         | rotate right               |
| **ROL**   | regS    | regD    |         | ``0x1E`` | 2    | RR         | rotate left                |
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
| **JALr** | regS    | regD    | Imm/offs | ``0x20`` | 4    | RRI        | Jump and Link; PC = regS+Offs; regD(RA) = PC+4       |
| **JZr**  | regS    | regD    | offs     | ``0x21`` | 4    | RRI        | Jump if Zero                                         |
| **JNZr** | regS    | regD    | offs     | ``0x22`` | 4    | RRI        | Jump if not Zero                                     |
| **JSr**  | regS    | regD    | offs     | ``0x23`` | 4    | RRI        | Jump if Signed                                       |
| **JNSr** | regS    | regD    | offs     | ``0x24`` | 4    | RRI        | Jump if not Signed                                   |
| **JCr**  | regS    | regD    | offs     | ``0x25`` | 4    | RRI        | Jump if Carry                                        |
| **JNCr** | regS    | regD    | offs     | ``0x26`` | 4    | RRI        | Jump if not Carry                                    |
| **JOr**  | regS    | regD    | offs     | ``0x27`` | 4    | RRI        | Jump if Overflow                                     |
| **JNOr** | regS    | regD    | offs     | ``0x28`` | 4    | RRI        | Jump if not Overflow                                 |
| **JPr**  | regS    | regD    | offs     | ``0x29`` | 4    | RRI        | Jump if Parity                                       |
| **JNPr** | regS    | regD    | offs     | ``0x2A`` | 4    | RRI        | Jump if not Parity                                   |
| **JGr**  | regS    | regD    | offs     | ``0x2B`` | 4    | RRI        | Jump if greater ``ZF==0 and SF==OF`` (signed)        |
| **JLEr** | regS    | regD    | offs     | ``0x2C`` | 4    | RRI        | Jump if less or equal ``ZF==1 or SF!=OF`` (signed)   |
| **JAr**  | regS    | regD    | offs     | ``0x2D`` | 4    | RRI        | Jump if above ``CF==0 and ZF==0`` (unsigned)         |
| **JBEr** | regS    | regD    | offs     | ``0x2E`` | 4    | RRI        | Jump if Below or Equal ``CF==1 or ZF==1`` (unsigned) |
| **JBIT** | bit     | reg     | offs     | ``0x2F`` | 4    | RRI^       | Jump if BIT is set in REG                            |
^ 2. argument is interpreted as an 8-bit immediate which is used for bit-masking. 

# Memory Operations

| Instr.   | Attr. 1 | Attr. 2 | Attr. 3 | OP-code  | size | pseudo | Instr type | info                    |
| -------- | ------- | ------- | ------- | -------- | ---- | ------ | ---------- | ----------------------- |
| **SW**   | regS    | regS    | Imm     | ``0x30`` | 4    |        | RR         | store word              |
| **LW**   | regS    | regD    | Imm     | ``0x31`` | 4    |        | RR         | load word               |
| **SB**   | regS    | regS    | Imm     | ``0x32`` | 4    |        | RR         | store byte              |
| **LB**   | regS    | regD    | Imm     | ``0x33`` | 4    |        | RR         | load byte               |
| **SWi**  | regS    | Imm     |         | ``0x34`` | 4    |        | RI         | Store Immediate at regS |
| **SBi**  | regS    | Imm     |         | ``0x35`` | 3    |        | RI         |                         |
| **MOV**  | regS    | regD    |         | ``0x36`` | 2    |        | RR         | move                    |
| **PUSH** | regS    | regD    |         | ``0x37`` | 2    |        | RR         | push to stack or heap   |
| **POP**  | regS    | regD    |         | ``0x38`` | 2    |        | RR         | pop from stack or heap  |

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
| **INC** | regS    | regD    |         | **ADD** 0x1 regS regD | ``0x01`` | increment by 1 |
| **DEC** | regS    | regD    |         | **SUB** 0x1 regS regD | ``0x04`` | decrement by 1 |
| **INC** | reg     |         |         | **ADD** 0x1 reg reg   | ``0x01`` |                |
| **DEC** | reg     |         |         | **SUB** 0x1 reg reg   | ``0x04`` |                |


## Logical
| Instr.    | Attr. 1 | Attr. 2 | Attr. 3 | translation             | OP-code  | info                |
| --------- | ------- | ------- | ------- | ----------------------- | -------- | ------------------- |
| **SHRl**  | regS    | regS    | regD    | **SHRa** regS regS regD | ``0x18`` | shift right logical |
| **SHRli** | regS    | regD    | Imm     | **SHRai** regS regD Imm | ``0x1B`` | shift right logical |

## Jumps
| Instr.  | Attr. 1    | Attr. 2 | Attr. 3 | translation             | OP-code  | info               |
| ------- | ---------- | ------- | ------- | ----------------------- | -------- | ------------------ |
| **JMP** | reg        | offs    |         | **ADDi** reg offs PC    | ``0x02`` | absolute jump      |
| **JAL** | offs/Label |         |         | **JALr** PC RA offs     | ``0x20`` | relative jump      |
| **JAL** | reg        | offs    |         | **JALr** PC reg offs    | ``0x20`` | custom RA register |
| **JZ**  | offs       |         |         | **JZr** PC x0 offs      | ``0x21`` | doesn't change RA  |
| **JNZ** | offs       |         |         | **JNZr** PC x0 offs     | ``0x22`` |                    |
| **JE**  | offs       |         |         | **JZr** PC x0 offs      | ``0x21`` |                    |
| **JNE** | offs       |         |         | **JNE** PC x0 offs      | ``0x22`` |                    |
| **JS**  | offs       |         |         | **JSr** PC x0 offs      | ``0x23`` |                    |
| **JNS** | offs       |         |         | **JNSr** PC x0 offs     | ``0x24`` |                    |
| **JC**  | offs       |         |         | **JCr** PC x0 offs      | ``0x25`` |                    |
| **JNC** | offs       |         |         | **JNCr** PC x0 offs     | ``0x26`` |                    |
| **JO**  | offs       |         |         | **JOr** PC x0 offs      | ``0x27`` |                    |
| **JNO** | offs       |         |         | **JNOr** PC x0 offs     | ``0x28`` |                    |
| **JP**  | offs       |         |         | **JPr** PC x0 offs      | ``0x29`` |                    |
| **JNP** | offs       |         |         | **JNPr** PC x0 offs     | ``0x2A`` |                    |
| **JG**  | offs       |         |         | **JGr** PC x0 offs      | ``0x2B`` |                    |
| **JLE** | offs       |         |         | **JLEr** PC x0 offs<br> | ``0x2C`` |                    |
| **JA**  | offs       |         |         | **JAr** PC x0 offs      | ``0x2D`` |                    |
| **JBE** | offs       |         |         | **JBEr** PC x0 offs     | ``0x2E`` |                    |

## Memory Operations
| Instr.      | Attr. 1 | Attr. 2 | Attr. 3 | translation          | OP-code  | info                              |
| ----------- | ------- | ------- | ------- | -------------------- | -------- | --------------------------------- |
| **WRITE**   | regS    | regS    | Imm     | **SW** regS regS Imm | ``0x30`` |                                   |
| **READ**    | regS    | regD    | Imm     | **LW** regS regD Imm | ``0x31`` |                                   |
| **WRITEb**  | regS    | regS    | Imm     | **SB** regS regS Imm | ``0x32`` |                                   |
| **READb**   | regS    | regD    | Imm     | **LB** regS regD Imm | ``0x33`` |                                   |
| **WRITEi**  | regS    | Imm     |         | **SWi** regS Imm     | ``0x34`` |                                   |
| **WRITEbi** | regS    | Imm     |         | **SBi** regS Imm     | ``0x35`` |                                   |
| **MV**      | regS    | regD    |         | **MOV** regS regD    | ``0x36`` |                                   |
| **MOVE**    | regS    | regD    |         | **MOV** regS regD    | ``0x36`` |                                   |
| **RET**     |         |         |         | **MOV** PC RA        | ``0x36`` | PC = RA (does not pop from stack) |
| **RETURN**  |         |         |         | **MOV** PC RA        | ``0x36`` |                                   |

## other Instructions
| Instr.     | Attr. 1 | Attr. 2 | Attr. 3 | translation    | OP-code  | info         |
| ---------- | ------- | ------- | ------- | -------------- | -------- | ------------ |
| **cFLAGS** |         |         |         | **MOV** x1F x0 | ``0x36`` | clears FLAGS |
