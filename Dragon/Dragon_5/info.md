#Dashboard #Dragon5 #Dragon
## general information
- 16bit CPU
- Pipelinded (5 stages)
- separate data/instruction-cache
- dynamic instruction range
	- 16bit memory addr, 2 byte word (therefore no need for (auipc)

- Non-exclusive caches
- 



- nibble = 4-bit
- byte = 8-bit
- word = 16-bit
- dword = 32-bit
- qword = 64-bit

# CPU comparison
## **Dragon 5:**
### Instruction count
**Total Instruction Count (used op-codes):** 57 (without pseudo)
**Maximal Instruction Count:** 64, 6-bit
### Features
**Pipelined:** yes
**Variable Instruction Length:** no (maybe in the future)

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