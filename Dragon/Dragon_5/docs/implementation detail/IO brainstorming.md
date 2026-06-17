Remember, with MMIO no I/O data is in RAM. The address decoder detects that I am accessing IO and just pulls data from them.
on every I/O card dip switches to set start address? that way we do not have to convert addresses from CPU address space to IO address space. This also makes it possible to split addresses dynamically aka making having a device more MMIO then usual. 
IO address and data bus is the same with main address and data bus.
Dip switches are 16 bit. They select the address range of the device. we need two dip switches to select a range. The MMIO bit is always set.
``0bxxxx 1xxx xxxx xxxx``
When interrupt, send the upper 4 bits to Interrupt reg. it automatically completes to the full 16bit address.   