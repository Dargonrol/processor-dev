Caches are complicated so I have to write down step by step what needs to happen in order to help me implement the Cache.

Each cache line has 16 words. Those are stored consecutively  in sram. To access those individually the word offset is needed. 
If I fetch something at address 0x415F the next 15 words are also fetched into the cache. 
The address is split into multiple parts:

| tag   | index  | word offset |
| ----- | ------ | ----------- |
| 7 bit | 12 bit | 4 bit       |

Cache SRAM layout:

| valid flag | tag   | data   |
| ---------- | ----- | ------ |
| 1 bit      | 7 bit | 16 bit |
So the Cache has 64k words with a word being 24 bit long.

## What needs to happen
Whenever an read or write is performed either of two things can happen:
- **Cache miss**
- **Cache hit**

### Cache Hit
The pipeline accesses the cache at it's address and performs it's action on the location. 
If the value is just *read*, nothing special needs to happen.
If the value is *modified*, we update both the value in the cache and main memory.
This is called **Write-Through, write-allocate**. 


### Cache Miss
If the given address is not in the Cache, it has to be fetched. 
The Pipeline is stalled and the Control Logic gives full bus control to the cache controller. The cache controller fetches 16 words from the main memory and loads it into the cache. the valid bit get's set.

### I/O writes to main memory
I forgot that I have memory mapped I/O (MMIO). With MMIO I/O devides cannot simply write into main memory. MMIO should also not be cached so if the CPU accesses those addresses, the Cache get's bypassed.

## Cache invalidation
When a store instruction wrote to the main memory the cache could be incoherent. A potential solution would be an invalidation buffer. If the Data cache writes, send the address to the instruction cache and buffer it. When the cache is not busy work through the buffer. if an address in the buffer is also in the cache, invalidate it. If the Instruction Cache is read and invalidation buffer not empty, stall pipeline, work through buffer then read.
-> Too much work, too much hardware... Self modifying code not allowed! (not enforced) + simple instruction to invalid single line of cache.
Then neither the Instruction Cache nor the Data Cache need any coherence mechanisms which saves a lot of hardware, pcb real-estate and time. 