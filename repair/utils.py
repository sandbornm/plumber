# insert specified operation to the specified
# ARM assembly instructions using radare and /or angr
# current supported operations are: NOP 

import json
import r2pipe
import os
import subprocess
import glob


BASE_PATH = os.path.dirname(os.path.abspath(os.getcwd()))
DATA_PATH = os.path.join(BASE_PATH, 'data')
JSON_PATH = os.path.join(DATA_PATH, 'json') # where the json data live 
BIN_PATH = os.path.join(DATA_PATH, 'amp_bins')  # where the binaries live
OBJDUMP_ASM_PATH = os.path.join(DATA_PATH, 'objdump', 'arm32')
ASM_PATH = os.path.join(DATA_PATH, 'asm', 'arm32')

# print(DATA_PATH)
# print(BIN_PATH)

class Parser:
    def parse():
        pass


class AsmParser(Parser):
    """
    Parse a file containing assembly instructions either directly from .S or from
    objdump disassembly, parse based on flag in class construction or by auto detection
    """
    def __init__(self, asmfile, from_objdump=False):
        self.asmfile = asmfile
        self.sections = {}
        self.from_objdump = from_objdump

    def read_lines(self):
        with open(self.asmfile, 'r') as f:
            lines = f.readlines()
        self.lines = lines

    def objdump_parse(self):
        pass

    def pure_asm_parse(self):
        print("pure asm parse")
        arm_instructions = sorted(["and", "eor", "sub", "rsb", "add", "adc",
                            "sbc", "rsc", "tst", "teq", "cmp", "cmn",
                            "orr", "mov", "bic", "mvn", "mul", "mla", 
                            "umull", "umlal", "smull", "smlal", "ldr", 
                            "str", "ldrb", "strb", "ldrh", "strh",
                            "ldrsb", "ldrsh", "bl", "b", "beq", "bne",
                            "bcs", "bcc", "bmi", "bpl", "bvs", "bvc", 
                            "bhi", "bls", "bge", "blt", "bgt", "ble",
                            "swi", "cpy", "bkpt", "push", "pop", "cbz", 
                            "cbnz", "bx", "blx", "sxth", "sxtb", "uxth",
                            "uxtb", "rev", "rev16", "revsh", "ldm", "stm", 
                            "svc", "rsb", "clz", "mrs", "msr", "dsb",
                            "dmb", "isb", "nop", "yield", "wfe", "wfi", "sev"])

        # init dictionary to hold the sections of the asm file delimited by ":\n" line ending
        section_names = []  # {section_header (str) : [opcode_list]}
        section_idxs = []
        for idx, line in enumerate(self.lines):
            if line.endswith(":\n"):
                section_header = line.strip()
                section_idxs.append(idx)
                print(f"current section: {section_header} at index: {idx}")
                section_names.append(section_header)  # init instruction list
        print(f"num code sections: {len(section_idxs)}")
        
        # compute the length of instructions between sequences to store for later
        section_sizes = []
        for i in range(len(section_idxs)-1):
            section_sizes.append(section_idxs[i+1] - section_idxs[i] - 1)

        print(len(section_names))
        print(len(section_idxs))
        print(len(section_sizes))
        # now populate the sections dict with entries keyed by section name only with the valid
        # ARM assembly instructions - just include the opcodes for now, worry about operands later
        #for section in sections:

        for cur_idx, sec_start_idx in enumerate(section_idxs[:1]):
            
            sec_end_idx = sec_start_idx + section_sizes[cur_idx] + 1
            print(f"current section {section_names[cur_idx]} at index {sec_start_idx} with size {section_sizes[cur_idx]}")
            
            inst_list = [ins.strip().replace("\t", " ") for ins in self.lines[sec_start_idx+1:sec_end_idx]]

            for inst in inst_list:
                print(inst)

        

    def parse(self):
        self.read_lines()

        if self.from_objdump:
            self.objdump_parse()
        else:
            self.pure_asm_parse()

    def _match_to_vuln_inst_seq(self, vuln_inst_seq):
        """ assuming the target file has been parsed into opcode and operand lists 
            depending on input file type, this function will match by index the vulnerable
            instruction sequence
        """
        pass

    def _locate_nop_insertion(self, vuln_inst_idx, pattern="previction"):
        """
            read the pattern and identify location to insert nop
        """
        pass

    def insert_nop(self, nop_location):
        """
        with open("path_to_file", "r") as f:
            contents = f.readlines()

        contents.insert(index, value)

        with open("path_to_file", "w") as f:
            contents = "".join(contents)
        f.write(contents)
        """
        pass
        


# test objdumpparser class
sfiles = glob.glob("/home/michael/projects/plumber/data/objdump/arm32/*.S")
parser = AsmParser("/home/michael/projects/plumber/data/asm/arm32/main.s")
parser.parse()


def load_data(filename, bin_name):
    # get data from json file based on desired pattern
    # assert pattern in ["prev", "pref"]

    # json_path = os.path.join(DATA_PATH, "previction_28.json")
    with open(filename, 'r') as f:
        sequences = json.load(f)
    #assert bin_name in sequences
    isnonempty = not bool(sequences[bin_name])
    print(f"empty sequence list for {bin_name}?: {isnonempty}")
    return sequences[bin_name] if not isnonempty else None

def save_data(filename, data):
    if ".json" not in filename:
        filename += ".json"
    with open(filename, 'w') as f:
        json.dump(data, f)
    print(f"saved data to {filename}")


def get_instruction_lst_from_json(filename, bin_name):
    inst_list = load_data(filename, bin_name)
    return inst_list # just want a list of instructions

def convert_inst_list_to_multiline_string(inst_list):
    split_inst = inst_list[0].strip('[').strip(']').split(", ")
    opcode_lst = []
    for inst in split_inst:
        inst = inst.strip("<asm obj").strip(">").strip("@")
        print(inst)
        opcode = inst[inst.find("(")+1:inst.find(")")]
        opcode_lst.append(opcode)
    return opcode_lst

if __name__ == "__main__":

    inst_list = get_instruction_lst_from_json("/home/michael/projects/plumber/data/json/main.o_arm32_previction.json", "main.o")
    multiline_string = convert_inst_list_to_multiline_string(inst_list)
    print(multiline_string)