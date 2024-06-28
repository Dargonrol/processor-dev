import os
import dragon4.colors as colors
import dragon4.config as config
import time
import tools


error_message_time = 1


def clear():
    os.system('cls' if os.name == 'nt' else 'clear')


def assembler(file_path):
    assembly_file = tools.file_reader(file_path)
    instruction_list = tools.file_reader("insctruction_table")
    for instruction in assembly_file:



def main_screen():
    clear()
    print("##########################################")
    print(colors.CYAN + "            Dragon 4 Assembler          " + colors.RESET)
    print("                  main                  ")
    print("##########################################")
    print()
    print(colors.YELLOW + "Welcome to the Dragon-4 Assembler. To assemble your Assembly-Code into machine Code, "
                          "copy your file directory below" + colors.RESET)
    print("The OUTPUT-path is in the directory of the script. Type quit to quit")
    print()
    user_input = input()

    match user_input:
        case "quit":
            exit()

        case _:
            assembler()


main_screen()
input('Press ENTER to exit')
