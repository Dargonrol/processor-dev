### 01.09.2025
- created changelog
- redesigned "Jumps and Branches" in the ISA; renamed -> "Jumps"
- *after* thinking a lot, RISC-V type branches are going to be omitted in the ISA. The only advantage would be taking up 1 instruction less when branching. Only supporting jumps would get rid of the advantages of flags. Also, with our flag based jumps we can directly call a function with refreshing the RA in one instruction if the flags has been set beforehand.
- created flags documentation
- continued pseudo-instruction-translation-table
- removed pseudo-instruction-translation-table
- separate pseudo instruction from main instruction (put into separate table with translations included)
- (holy sh#t, the jump instructions are so much better now!!)

### 05.12.2025
- corrected Instruction Types documentation and added additional information
- continued Microarchitecture diagram (SVG)
- improved instruction decoding
	Since Instructions can and mostly are longer than 2 byte but we only have a 16bit Bus we have to fetch in 2 cycles. For the RRR-Type instructions I moved the destination register to the second word so that the pipeline can already start working with the first two bytes and no stall is needed. For every other Instruction with a destination register I moved the destination register to the last position to make decoding easier.
- added LogiSim file

### 05.12.2025 (2)
- continued microarchitecture diagram
- fixed jumps explanation in ISA
- after careful consideration, omitted the variable instruction length idea because it would make the architecture and microarchitecture a whole lot more complicated.
	An extra bit to decode the instruction length would be needed which would only allow for 15-bit immediates and with RRR-Types one register would need to be 4bit addressable instead of 5. Both are limitations I can live with but this makes the instructions not word aligned and decoding harder. instructions longer than 2 byte cannot any longer be fetched in 2 cycles but must be present as a whole on one cycle. **Therefore every instruction is now 4 Bytes long** Maybe make a Dragon-5V in the future...

### 06.12.2025
- continued Microarchitecture
- removed **JBIT** instruction.
	while it is totally possible to implement this instruction, it requires special logic outside of normal flag based jumps. Since I want to keep Dragon 5 "as simple as possible" I choose to not include this one.
- removed **SB** and **LB** instructions
	I decided that my memory will not by byte addressable and the smallest possible unit is 16 bits. This makes things simpler.
- made **PUSH** and **POP** instructions Pseudo instructions