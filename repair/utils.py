# insert specified operation to the specified
# ARM assembly instructions using radare and /or angr
# current supported operations are: NOP 

import json
import r2pipe
import os

BASE_PATH = os.path.dirname(os.path.abspath(os.getcwd()))
DATA_PATH = os.path.join(BASE_PATH, 'data', 'json') # where the json data live 
BIN_PATH = os.path.join(BASE_PATH, 'data', 'test_bins')  # where the binaries live

print(DATA_PATH)
print(BIN_PATH)


def load_data(bin_name, pattern="prev"):
    # get data from json file based on desired pattern
    assert pattern in ["prev", "pref"]
    print(bin_name)

def insert_op(bin_name, op="nop"):
    pass


if __name__ == "__main__":
    bin_name = "cat"
    r = r2pipe.open(os.path.join(BIN_PATH, bin_name), flags=['-w'])
    