Caches are complicated so I have to write down step by step what needs to happen in order to help me implement the Cache.

Each cache line has 16 words. Those are stored consecutively  in sram. To access those individually the word offset is needed. 
If I fetch something at address 0x415F the next 15 words are also fetched into the cache. 
The address is split into multiple parts:

| tag    | index  | word offset |
| ------ | ------ | ----------- |
| 15 bit | 12 bit | 4 bit       |

Cache SRAM layout:

| valid flag | tag    | data   |
| ---------- | ------ | ------ |
| 1 bit      | 15 bit | 16 bit |
So the Cache has 64k words with a word being 32 bit long.

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
Should I/O devices be able to write to memory at the same time? or buffering?

### I/O writes to main memory
When I/O writes to main memory, the cache could be incoherent with the main memory. The valid bit as the get unset in this case.