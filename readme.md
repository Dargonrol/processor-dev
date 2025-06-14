# Project overview

| Project-name | Architecture    | Microarchitecture | ISA      | status        |
| ------------ | --------------- | ----------------- | -------- | ------------- |
| **Dragon-1** | SAP-1           | SAP-1             | Dragon-1 | **completed** |
| Dragon-2     | SAP-1           | SAP-1 (mod.)      | Dragon-2 | abandoned     |
| Dragon-3     | JAM-1 (mod.)    | JAM-1 (mod.)      | -        | abandoned     |
| **Dragon-4** | Dragon-4        | Dragon-4          | Dragon-4 | **completed** |
| *Dragon-5*   | RISC-D (Dragon) | Dragon-5          | Dragon-5 | *WIP*         |
| LED+         | LED             | LED-ext.          | LED      | abandoned     |
| Phoenix-1    | -               | -                 | -        | in planning   |
| Surtr-1      | -               | -                 | -        | in planning   |

# Descriptions
## Dragon-1
My first try to build an CPU. Basically followed Ben-Eaters breadboard CPU series and read the book Digital Computer Electronics from Albert P. Malvino. I did however implement and thought of my own ISA. It was a good project to get into processors and I'd recommend anyone interested giving building a simple SAP-1 a try.

## Dragon-2
Here is when I went creative and tried to implement all sorts of things I came up with. I only heard of interrupts without knowing what exactly they are and tried to implement them. I also tried to add a display. Both went horribly wrong. It was fun though coming up with all those interesting solutions. It was definitely an important learning step even if it never came to life.

## Dragon-3
Dragon-3 is when I watched a lot of James Sherman and his great homebrew CPU series. Seriously, if you have watched Ben Eater and want to step up things, go ahead and watch James Sherman. You will learn a lot. This is also when I first came across pipelining. Interestingly enough, James implemented it quite differently then a standard risc-V microarchitecture.
Anyway I tried to build my own pipelined CPU but ended up (mostly) copying James which I didn't like so I abandoned it. I am sure it would have come out quite differently if I would have continued but there was really no time to do that because at that time I got in contact with a person who would change my processor development journey for ever. He convinced me to participate at a German science tournament called 'Jugend Forscht'.

## Dragon-4
Knowing I need something proper for this (and especially not a copy of James's CPU) for Jugend Forscht, I began developing the Dragon-4. Due to time constrains I knew, that I couldn't make Dragon-4 pipelined since that would have been much more complicated.  Even tough I tried to not copy James, I was still heavily influenced by him and that's why the rough architecture is quite similar to his JAM-1. It is also the first CPU I build in reallife which added a lot of interesting challenges. If you are interested in the design process and inner workings, I'd recommend reading my 'paper' I had to write for the tournament.
If I had to name one feature of the Dragon-4, it would be that the ISA is horrible. Dragon-4 has 31 instructions, but uses 242 op-codes for them!!! That would be fine if I would have implemented different addressing modes like the 6502 but most of the instructions where just permutations to perform the same action with different registers. E.g. ADD A B, ADD B A, ADD A C etc...
The logic simulation was fine but for some reason I never got the flags working in the real-life version. 
The control logic is also really bad since it consists of 4x32kb of ROMs to decode instructions. This is also why Dragon-4 is really difficult to recreate in games.

## Dragon-5
My current work of art. Made to be easily build in computer games but at the same time being quite capable. Performance wise it should be comparable with a commodore 128 or even better.
Still WIP so is this description...

## LED+
This CPU was developed as an more capable successor to the LED-CPU in the game 'Turing Complete'. LED+ was basically completed but since I wasn't happy I kept trying to improve it but ultimately failed. There were even more iterations of the LED like LED++ and LED+++ but I decided to not include them in this list because they never got really far. Eventually the need for a good processor ingame let to the beginning of the development of the Dragon-5.
Fun-fact: 
Originally Dragon-5 was going to be Phoenix-1 and Phonix-1 was going to be Dragon-5.  Since Dragon-4 was my first real CPU I wanted the most capable and powerful CPU to be the successor of that. And Phoenix-1 was supposed to be the CPU 'for games'. However the reason why I did not do it that way was because the architecture and microarchitecture of the Dragon-4 (if you can even call it architecture) was really simple which fits to the now Dragon-5 (of course Dragon-5 is much more capable and is heavily inspired by the RISC-V). Phoenix-1 is going to be much more complicated therefore I thought a new name would be more fitting.

## Phönix-1
Phoenix-1 is going to be my most capable processor yet. While Dragon-5 was designed to be easy to implement in games while being quite capable, Phoenix-1 is of another caliber. In future it should be able to run a simple operating system etc. (Description WIP)
- Has things like DMA, Branch prediction etc.

## Surtr-1
Surtr-1 is not going to be one of my most powerful machines, but is rather supposed to imitate an old gaming console...