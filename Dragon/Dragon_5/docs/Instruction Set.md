# Arithmetic Operations

| Instr.     | Attr. 1 | Attr. 2 | Attr. 3 | OP-code  | size | pseudo | Instr type | info                                                      |
| ---------- | ------- | ------- | ------- | -------- | ---- | ------ | ---------- | --------------------------------------------------------- |
| **ADD**    | regD    | regS    | regS    | ``0x01`` | 3    |        | RRR        |                                                           |
| **ADDi**   | regD    | regS    | Imm     | ``0x02`` | 4    |        | RRI        |                                                           |
| **ADC**    | redD    | regS    | regS    | ``0x03`` | 3    |        | RRR        | add with carry                                            |
| **SUB**    | regD    | regS    | regS    | ``0x04`` | 3    |        | RRR        |                                                           |
| **SUBi**   | regD    | regS    | Imm     | ``0x05`` | 4    |        | RRI        |                                                           |
| **SBB**    | regD    | regS    | regS    | ``0x06`` | 3    |        | RRR        | sub with borrow                                           |
| **MUL**    | regD    | regS    | regS    | ``0x07`` | 3    |        | RR         | multiply lower half                                       |
| **MULH**   | regD    | regS    | regS    | ``0x08`` | 3    |        | RRR        | multiply upper half                                       |
| **MULHu**  | regD    | regS    | regS    | ``0x09`` | 3    |        | RRR        | multiply upper half unsigned                              |
| **MULHsu** | regD    | regS    | regS    | ``0x0A`` | 3    |        | RRR        | multiply upper half signed, unsigned                      |
| **DIV**    | regD    | regS    | regS    | ``0x0B`` | 3    |        | RRR        |                                                           |
| **DIVu**   | regD    | regS    | regS    | ``0x0C`` | 3    |        | RRR        |                                                           |
| **REM**    | regD    | regS    | regS    | ``0x0D`` | 3    |        | RRR        | remainder                                                 |
| **REMu**   | regD    | regS    | regS    | ``0x0E`` | 3    |        | RRR        |                                                           |
| **INC**    | regD    | regS    |         | ``0x01`` | 2    | yes    |            | increment by 1                                            |
| **DEC**    | regD    | regS    |         | ``0x04`` | 2    | yes    |            | decrement by 1                                            |
| **INC**    | regD    |         |         | ``0x01`` | 2    | yes    |            |                                                           |
| **DEC**    | regD    |         |         | ``0x04`` | 2    | yes    |            |                                                           |
| **CMP**    | regS    | regS    |         | ``0x0F`` | 2    |        | RR         | compare. Sub R1 and R2 and set flags without saving value |
# Logical Operations

| Instr.    | Attr. 1 | Attr. 2 | Attr. 3 | OP-code  | size | pseudo | Instr type | info                       |
| --------- | ------- | ------- | ------- | -------- | ---- | ------ | ---------- | -------------------------- |
| **AND**   | regD    | regS    | regS    | ``0x10`` | 3    |        | RRR        |                            |
| **OR**    | regD    | regS    | regS    | ``0x11`` | 3    |        | RRR        |                            |
| **XOR**   | regD    | regS    | regS    | ``0x12`` | 3    |        | RRR        |                            |
| **NOR**   | regD    | regS    | regS    | ``0x13`` | 3    |        | RRR        |                            |
| **NAND**  | regD    | regS    | regS    | ``0x14`` | 3    |        | RRR        |                            |
| **NOT**   | regD    | regS    |         | ``0x15`` | 2    |        | RR         | ~regS                      |
| **NEG**   | regD    | regS    |         | ``0x16`` | 2    |        | RR         | ~regS + 1                  |
| **SHL**   | regD    | regS    | regS    | ``0x17`` | 3    |        | RRR        | shift left                 |
| **SHR**   | regD    | regS    | regS    | ``0x18`` | 3    |        | RRR        | shift right (logical)      |
| **SHRa**  | regD    | regS    | regS    | ``0x19`` | 3    |        | RRR        | shift right (arithmetical) |
| **SHRl**  | regD    | regS    | regS    | ``0x18`` | 3    | yes    |            |                            |
| **SHLi**  | regD    | regS    | Imm     | ``0x1A`` | 4    |        | RRI        |                            |
| **SHRi**  | regD    | regS    | Imm     | ``0x1B`` | 4    |        | RRI        |                            |
| **SHRai** | regD    | regS    | Imm     | ``0x1C`` | 4    |        | RRI        |                            |
| **SHRli** | regD    | regS    | Imm     | ``0x1B`` | 4    | yes    |            |                            |
| **ROR**   | regD    | regS    |         | ``0x1D`` | 2    |        | RR         | rotate right               |
| **ROL**   | regD    | regS    |         | ``0x1E`` | 2    |        | RR         | rotate left                |
| **NOP**   |         |         |         | ``0x1F`` |      |        |            | reserved                   |


# Jumps and Branches
(Immediates/Labels in jumps are always an offset)
Every jump is variable. That means you can provide a destination register and a source register.
A normal jump would look like this:
**JZ** PC, PC, LABEL
Take the value of the PC and add it with the offset. Than put this value into the PC again.
**JZ** R1, R2, LABEL
Take the value of R2, add it with the offset and put it into R1.
How to jump with any flags:
Use CMP and compare FLAGS reg with your bitmask. Then JZ.

| Instr.    | Attr. 1 | Attr. 2 | Attr. 3 | OP-code  | size | pseudo | Instr type | info                                               |
| --------- | ------- | ------- | ------- | -------- | ---- | ------ | ---------- | -------------------------------------------------- |
| **JMPr**  | regD    | regS    | Imm     | ``0x20`` | 4    |        | RRI        | jump register                                      |
| **JMP**   | Imm     |         |         | ``0x20`` | 4    | yes    |            |                                                    |
| **JMP**   | regD    | Imm     |         | ``0x20`` | 4    | yes    |            |                                                    |
| **JALr**  | regD    | regS    | Imm     | ``0x21`` | 4    |        | RRI        | Jump and Link; PC = regS+Offs; regD = PC+4         |
| **JAL**   | Imm     |         |         | ``0x21`` | 4    | yes    |            | RA = PC+4; PC += offs                              |
| **JAL**   | regD    | Imm     |         | ``0x21`` | 4    | yes    |            | regD = PC+4; PC += offs                            |
| **JZr**   | regD    | regS    | Imm     | ``0x22`` | 4    |        | RRI        | Jump if Zero                                       |
| **JZ**    | Imm     |         |         | ``0x22`` | 4    | yes    |            |                                                    |
| **JNZr**  | regD    | regS    | Imm     | ``0x23`` | 4    |        | RRI        | Jump if not Zero                                   |
| **JNZ**   | Imm     |         |         | ``0x23`` | 4    | yes    |            |                                                    |
| **JSr**   | regD    | regS    | Imm     | ``0x24`` | 4    |        | RRI        | Jump if Signed                                     |
| **JS**    | Imm     |         |         | ``0x24`` | 4    | yes    |            |                                                    |
| **JNSr**  | regD    | regS    | Imm     | ``0x25`` | 4    |        | RRI        | Jump if not Signed                                 |
| **JNS**   | Imm     |         |         | ``0x25`` | 4    | yes    |            |                                                    |
| **JCr**   | regD    | regS    | Imm     | ``0x26`` | 4    |        | RRI        | Jump if Carry                                      |
| **JC**    | Imm     |         |         | ``0x26`` | 4    | yes    |            |                                                    |
| **JNCr**  | regD    | regS    | Imm     | ``0x27`` | 4    |        | RRI        | Jump if not Carry                                  |
| **JNC**   | Imm     |         |         | ``0x27`` | 4    | yes    |            |                                                    |
| **JOr**   | regD    | regS    | Imm     | ``0x28`` | 4    |        | RRI        | Jump if Overflow                                   |
| **JO**    | Imm     |         |         | ``0x28`` | 4    | yes    |            |                                                    |
| **JNOr**  | regD    | regS    | Imm     | -        | 4    | yes    |            | Jump if not Overflow (with bitmasking implemented) |
| **JNO**   | Imm     |         |         | -        | 4    | yes    |            |                                                    |
| **JPr**   | regD    | regS    | Imm     | ``0x29`` | 4    |        | RRI        | Jump if Parity                                     |
| **JP**    | Imm     |         |         | ``0x29`` | 4    | yes    |            |                                                    |
| **JNPr**  | regD    | regS    | Imm     | -        | 4    | yes    |            | Jump if not Parity (with bitmasking implemented)   |
| **JNP**   | Imm     |         |         | -        | 4    | yes    |            |                                                    |
| **BEQ**   | regS    | regS    | Imm     | ``0x2A`` | 4    |        | RRI        | Branch if Equal                                    |
| **BNEQ**  | regS    | regS    | Imm     | ``0x2B`` | 4    |        | RRI        | Branch if not Equal                                |
| **BGT**   | regS    | regS    | Imm     | -        | 4    | yes    |            | Branch if Greater Than                             |
| **BGTs**  | regS    | regS    | Imm     | -        | 4    | yes    |            |                                                    |
| **BLT**   | regS    | regS    | Imm     | ``0x2C`` | 4    |        | RRI        | Branch if Less Than                                |
| **BLTs**  | regS    | regS    | Imm     | ``0x2D`` | 4    |        | RRI        |                                                    |
| **BGEQ**  | regS    | regS    | Imm     | ``0x2E`` | 4    |        | RRI        | Branch if Greater or Equal                         |
| **BGEQs** | regS    | regS    | Imm     | ``0x2F`` | 4    |        | RRI        | Branch if Greater or Equal Than                    |
| **BLEQ**  | regS    | regS    | Imm     | -        | 4    | yes    |            | Branch if Less or Equal                            |
# Memory Operations

| Instr.      | Attr. 1 | Attr. 2 | Attr. 3 | OP-code  | size | pseudo | Instr type | info                    |
| ----------- | ------- | ------- | ------- | -------- | ---- | ------ | ---------- | ----------------------- |
| **SW**      | regS    | regS    | Imm     | ``0x30`` | 4    |        | RRI        | store word              |
| **LW**      | regD    | regS    | Imm     | ``0x31`` | 4    |        | RRI        | load word               |
| **SB**      | regS    | regS    | Imm     | ``0x32`` | 4    |        | RRI        | store byte              |
| **LB**      | regD    | regS    | Imm     | ``0x33`` | 4    |        | RRI        | load byte               |
| **WRITE**   | regS    | regS    | Imm     | ``0x30`` | 4    | yes    |            |                         |
| **READ**    | regD    | regS    | Imm     | ``0x31`` | 4    | yes    |            |                         |
| **WRITEb**  | regS    | regS    | Imm     | ``0x32`` | 4    | yes    |            |                         |
| **READb**   | regD    | regS    | Imm     | ``0x33`` | 4    | yes    |            |                         |
| **SWi**     | regS    | Imm     |         | ``0x34`` | 4    |        | RI         | Store Immediate at regS |
| **SBi**     | regS    | Imm     |         | ``0x35`` | 3    |        | RI         |                         |
| **WRITEi**  | regS    | Imm     |         | ``0x34`` | 4    | yes    |            |                         |
| **WRITEbi** | regS    | Imm     |         | ``0x35`` | 4    | yes    |            |                         |
| **MOV**     | regD    | regS    |         | ``0x36`` | 2    |        | RR         | move                    |
| **MV**      | regD    | regS    |         | ``0x36`` | 2    | yes    |            |                         |
| **MOVE**    | regD    | regS    |         | ``0x36`` | 2    | yes    |            |                         |
| **RET**     | -       | -       | -       | ``0x36`` | 2    | yes    |            |                         |
| **RETURN**  | -       | -       | -       | ``0x36`` | 2    | yes    |            | PC = RA                 |
| **PUSH**    | regD    | regS    |         | ``0x37`` | 2    |        | RR         | push to stack or heap   |
| **POP**     | regD    | regS    |         | ``0x38`` | 2    |        | RR         | pop from stack or heap  |

# Other Instructions

| Instr.     | Attr. 1 | Attr. 2 | Attr. 3 | OP-code  | size | pseudo | Instr type | info                                  |
| ---------- | ------- | ------- | ------- | -------- | ---- | ------ | ---------- | ------------------------------------- |
| **NOP**    | -       | -       | -       | ``0x00`` | 1    |        |            | No operation                          |
| **cFLAGS** | -       | -       | -       | ``0x36`` | 2    | yes    |            | clear flags register: (MOV FLAGS, x0) |
| **NOP**    |         |         |         | ``0x39`` |      |        |            | reserved                              |
| **NOP**    |         |         |         | ``0x3A`` |      |        |            | reserved                              |
| **NOP**    |         |         |         | ``0x3B`` |      |        |            | reserved                              |
| **NOP**    |         |         |         | ``0x3C`` |      |        |            | reserved                              |
| **NOP**    |         |         |         | ``0x3D`` |      |        |            | reserved                              |
| **NOP**    |         |         |         | ``0x3E`` |      |        |            | reserved                              |
| **HALT**   | -       | -       | -       | ``0x3F`` | 1    |        |            | halts the CPU                         |
