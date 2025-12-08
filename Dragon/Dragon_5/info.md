#Dashboard #Dragon5 #Dragon
## general information
- 16bit CPU
- Pipelinded (? stages)
- separate data/instruction-cache
- dynamic instruction range
	- 16bit memory addr, 2 byte word (therefore no need for (auipc)

- Non-exclusive caches
- Directly Mapped Cache



- nibble = 4-bit
- byte = 8-bit
- word = 16-bit
- dword = 32-bit
- qword = 64-bit

## Instruction Cache
- Directly Mapped
- 64k Cache lines
- 4-bit tag
- 16-bit set
that makes realistically: 2x32k x 8 bit memory chips for tag + valid bit and 1x64k x 16 bit memory chip for data

1. Cache Miss
2. Stall Pipeline
3. Send nearest round down address to RAM, request data
4. Increment address by 1, storing receiving words in Cache
5. after counter at SIZE unstall pipeline

## Graphics
- banked memory
- set double frame buffer mode for half the memory size
# CPU comparison
## **Dragon 5:**
### Instruction count
**Total Instruction Count (used op-codes):** 56 (without pseudo)
**Maximal Instruction Count:** 64, 6-bit
### Features
**Pipelined:** yes
**Variable Instruction Length:** no

## **Dragon 4:**
### Instruction count
**Real Instruction Count:** 31 (without permutations)*
**Total Instruction Count (used op-codes):** 242 (with permutations)*
**Maximal Instruction Count:** 256, 8-bit
### Features
**Pipelined:** no
**Variable Instruction Length:** yes

## **6502:**
### Instruction count
**Real Instruction Count:** 56 (without illegal ones)
**Total Instruction Count (used op-codes):** ?
**Maximal Instruction Count** 256, 8-bit

### Features
**Pipelined:** no
**Variable Instruction Length:** yes



footnote *
permutations means e.g. all the different addressing modes from the 6502 or in case of the dragon 4  for every register combination to add a value you had a different instruction (ADD A B is different than ADD B A) which resulted in a lot of permutations...