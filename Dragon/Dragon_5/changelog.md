### 01.09.2025
- created changelog
- redesigned "Jumps and Branches" in the ISA; renamed -> "Jumps"
- *after* thinking a lot, RISC-V type branches are going to be omitted in the ISA. The only advantage would be taking up 1 instruction less when branching. Only supporting jumps would get rid of the advantages of flags. Also, with our flag based jumps we can directly call a function with refreshing the RA in one instruction if the flags has been set beforehand.
- created flags documentation
- continued pseudo-instruction-translation-table
- removed pseudo-instruction-translation-table
- separate pseudo instruction from main instruction (put into separate table with translations included)
- (holy sh#t, the jump instructions are so much better now!!)



