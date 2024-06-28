import dragon4.config as config
import dragon4.colors as colors

global rom_data
global num_instructions

num_instructions = ((~config.area_instructions & 0x7FFF) >> 3)
rom_data = []


def which_data_to_write(address):
    # if we are in fetch area
    if ((address | config.area_fetch) - config.area_fetch) <= config.max_steps_fetch:
        return "fetch"

    # if we have to deal with a flag
    elif (address >> 11) != 0:
        return "flag"

    elif not isinstance(address, int):
        print(config.colors.FAIL + "def: where_are_we_at(address) did not got an integer")

    # if it's not a flag nor fetch, it has to be an instruction
    else:
        return "instruction"


def write_data(type, address, rom):
    step = ((address | (~config.area_instructions & 0x7FFF)) | (~config.area_flags & 0x7FFF)) - ((~config.area_instructions & 0x7FFF) | (~config.area_flags & 0x7FFF))
    instruction = ((address | (~config.area_flags & 0x7FFF)) - (~config.area_flags & 0x7FFF)) >> 3
    flag = address >> 11

    if type == "fetch":
        if not isinstance(config.fetch[rom], list):
            if step >= 1:
                rom_data.append(0x00)
                return
            else:
                rom_data.append(config.fetch[rom])
                return
        else:
            if step >= len(config.fetch[rom]):
                rom_data.append(0x00)
                return
            else:
                rom_data.append(config.fetch[rom][step])
                return

    elif type == "flag" or type == "instruction":
        for element in config.instructions:
            # is this the instruction we want?
            if element[0] == instruction:

                # is there even a flag to handle?
                if element[1] is None:
                    # if no, append the data
                    if (step - (config.max_steps_fetch + 1)) <= (len(element[rom + 2]) - 1):
                        rom_data.append(element[rom + 2][step - (config.max_steps_fetch + 1)])
                        return
                    else:
                        rom_data.append(0x00)
                        return
                # check if the current flag is given flag
                if flag & element[1] == element[1]:
                    # if yes, write data
                    if (step - (config.max_steps_fetch + 1)) <= (len(element[rom + 2]) - 1):
                        rom_data.append(element[rom + 2][step - (config.max_steps_fetch + 1)])
                        return
                    else:
                        rom_data.append(0x00)
                        return


def create_and_write_data_for_rom(rom):
    rom_data.clear()
    address = 0
    print(f"assembling data for ROM: {rom}")
    while address < config.rom_size:
        write_data(which_data_to_write(address), address, rom)
        address += 1

    print("writing to file...")
    byte_array = bytearray(rom_data)
    with open(config.save_to_path + f"/ROM_{rom}", "wb") as file:
        file.write(byte_array)
    print(colors.GREEN + "finished!\n" + colors.RESET)
