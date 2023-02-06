# search over the passed folder location to identify previction
# and prefetching activity on aarch64 programs

import os, sys
from Match import main
import glob
import time
import subprocess
import json


def save_json(data_dict, pattern_name, arch, filename):
    fname = f"{filename}_{arch}_{pattern_name}.json"
    
    with open("/home/michael/projects/plumber/data/json/" + fname, 'w') as f:
        json.dump(data_dict, f, indent=3)

def scan_one(bin_file, arch, pattern_file, save=True):

    bin_name = bin_file.split("/")[-1]
    pat_name = pattern_file.split("/")[-1][:-4]

    # cast results to string
    matches = [str(m) for m in main(bin_file, pattern_file)]

    pat_dict = {bin_name: matches}

    if save:
        save_json(pat_dict, pat_name, arch, filename=bin_name)

    return pat_dict


def filter_files(folder_path):
    # scan each of the filtered ELF files and save to dict to write to json
    bin_files = sorted(glob.glob(folder_path + "/*"))
    print(f"filtering {len(bin_files)} binaries for ELFs only")

    # pre-process for non ELF files
    non_elf_count = 0
    elf_count = 0
    for bf in bin_files:
        ret = subprocess.run(["file", bf], capture_output=True, text=True)
        if "ELF" not in ret.__dict__['stdout']:
            non_elf_count += 1
            bin_files.remove(bf)
            #print(f"removed non-elf program {bf}")
        else:
            elf_count += 1
    print(f"len filtered bf files: {len(bin_files)}")
    print(f"elf count: {elf_count}")
    print(f"non-elf count: {non_elf_count}")
    return bin_files



def run(folder_path, pattern_file):

    bin_files = filter_files(folder_path)
    bin_pattern_dict = {}
    warn_list = []
    for binary in bin_files[:4]:

        print(f"now scanning {binary.split('/')[-1]} for {pattern_file}...")
        s = time.time()
        matches = scan_one(binary, pattern_file)
        e = time.time()
        print(f"completed scan in {e-s}s")

        print(f"num matches found for {binary}: {len(matches)}")
        if matches:
            #print(matches)
            serialized_matches = [str(m) for m in matches]
            #print(serialized_matches)
            bin_pattern_dict[binary.split("/")[-1]] = serialized_matches
        else:
            warn_list.append(binary)

    save_json(bin_pattern_dict, pattern_file.split("/")[-1][:-4], filename="test_amp_2")




if __name__ == "__main__":
    
    # bin_folder = sys.argv[1]
    # pattern_file = sys.argv[2]
    # assert os.path.exists(bin_folder), f"{bin_folder} does not exist!"
    #run(bin_folder, pattern_file)
    #amp_c9_bin = "/home/michael/projects/plumber/data/amp_bins/program_c"
    
    obj_path = "/home/michael/projects/plumber/data/amp_bins/obj_files"
    #"/home/michael/projects/plumber/data/test_bins/hello"
    arch = "arm32"
    pat = "./previction.pat"
    for obj_file in os.listdir(obj_path):
        print(f"scanning {obj_file} for {pat} vulns")
        scan_one(os.path.join(obj_path, obj_file), arch, pat)
    