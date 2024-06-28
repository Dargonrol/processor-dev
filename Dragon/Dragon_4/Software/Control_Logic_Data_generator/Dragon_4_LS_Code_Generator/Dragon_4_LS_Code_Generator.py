import dragon4.config as config

ROM_size = 0x7fff
address_jump = 0x10
file_header = "v3.0 hex words addressed"

# Fetch
fetch_area = 0b111111111111000
fetch = ["b0", ["01", "08"], "00", "00"]
# b0 = IR load
# 01 = assert pc

# defined Instructions/ look up table
instructions = config.instructions_2


# which DATA belongs to THIS address in THIS ROM
def write_instruction(address, ROM):
    data_to_write = ""
    mod_address_flags = (address >> 3)
    mod_address = (mod_address_flags | 0b111100000000) - 0b111100000000
    i = 0
    while i < len(instructions):
        if mod_address == instructions[i][0]:
            if instructions[i][1] is None or instructions[i][1] == 0:
                if ((address | 0b111111111111010) - 0b111111111111010) == 0:
                    if 1 > len(instructions[i][ROM + 2]):
                        return False
                    else:
                        data_to_write = f"{instructions[i][ROM + 2][0]} "
                        return data_to_write

                elif ((address | 0b111111111111011) - 0b111111111111011) == 0:
                    if 2 > len(instructions[i][ROM + 2]):
                        return False
                    else:
                        data_to_write = f"{instructions[i][ROM + 2][1]} "
                        return data_to_write
                if ((address | 0b111111111111100) - 0b111111111111100) == 0:
                    if 3 > len(instructions[i][ROM + 2]):
                        return False
                    else:
                        data_to_write = f"{instructions[i][ROM + 2][2]} "
                        return data_to_write

                elif ((address | 0b111111111111101) - 0b111111111111101) == 0:
                    if 4 > len(instructions[i][ROM + 2]):
                        return False
                    else:
                        data_to_write = f"{instructions[i][ROM + 2][3]} "
                        return data_to_write

                elif ((address | 0b111111111111110) - 0b111111111111110) == 0:
                    if 5 > len(instructions[i][ROM + 2]):
                        return False
                    else:
                        data_to_write = f"{instructions[i][ROM + 2][4]} "
                        return data_to_write

                elif ((address | 0b111111111111111) - 0b111111111111111) == 0:
                    if 6 > len(instructions[i][ROM + 2]):
                        return False
                    else:
                        data_to_write = f"{instructions[i][ROM + 2][5]} "
                        return data_to_write

                    '''
            elif instructions[i] [1] != None and not 0:
                specific_flag_address = (address | (instructions[i] [1] << 11 + 0x7FF) - (instructions[i] [1] << 11 + 0x7FF)
                if specific_flag_address == address
                '''

        i += 1
    return False


def file_builder(ROM):
    ROM_data = []
    ROM_data.append(f"{file_header}\n")
    ROM_file = open(f"C:/Users/dargo/OneDrive/Prozessor_Entwicklung/Dragon_4/ROM_DATA2/ROM_{ROM}_Data", "w")
    for address in range(ROM_size + 1):
        did_something = False
        if address % address_jump == 0 and not address == 0:
            ROM_data.append("\n")

        if address % address_jump == 0:
            str_addr = str(hex(address))
            if len(str_addr) <= 3:
                display_addr = f"000{str_addr[2:len(str_addr)]}"
            elif len(str_addr) <= 4:
                display_addr = f"00{str_addr[2:len(str_addr)]}"
            elif len(str_addr) <= 5:
                display_addr = f"0{str_addr[2:len(str_addr)]}"
            elif len(str_addr) <= 6:
                display_addr = f"{str_addr[2:len(str_addr)]}"

            ROM_data.append(f"{display_addr}: ")

        did_something = False

        if ((address | fetch_area) - fetch_area) == 0 and not did_something:
            if ((address | 0b111111111111000) - 0b111111111111000) == 0:
                if not 1 > len(fetch[ROM]):
                    ROM_data.append(f"{fetch[ROM][0]} ")
                    did_something = True

            elif ((address | 0b111111111111001) - 0b111111111111001) == 0:
                if not 2 > len(fetch[ROM]):
                    ROM_data.append(f"{fetch[ROM][0]} ")
                    did_something = True

        if not did_something:
            to_write = write_instruction(address, ROM)
        else:
            to_write = False

        if to_write != False:
            did_something = True
            ROM_data.append(to_write)

        if not address % address_jump == 0 and not did_something:
            ROM_data.append("00 ")

    for item in ROM_data:
        ROM_file.write(item)
    ROM_data = []


for i in range(4):
    print(f"writing ROM-Data for ROM: {i}")
    file_builder(i)

print("finished")
