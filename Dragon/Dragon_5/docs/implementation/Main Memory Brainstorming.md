Buffer for MMIO. Every time an IO device wants to write to memory, it writes into a buffer. Whenever the main memory is not occupied the buffer gets written to memory. 
If CPU reads from MMIO addresses, stall pipeline and empty buffer first. The buffer ist just another client in the bus arbitrator.
