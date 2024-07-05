import subprocess
import os
import re

#leaves only the smallest verilog file for each LUT
def clean_compressresult_folder():
    compressresult_dir = os.path.join(os.path.dirname(__file__), 'compressresult2')

    if not os.path.exists(compressresult_dir):
        print(f"Directory '{compressresult_dir}' does not exist.")
        return

    files = os.listdir(compressresult_dir)
    v_files = {}

    for filename in files:
        file_path = os.path.join(compressresult_dir, filename)

        if filename.endswith('.v'):
            match = re.search(r'_v(\d+)', filename)
            if match:
                version = int(match.group(1))
                base_name = filename[:match.start()] + '.v'

                if base_name not in v_files:
                    v_files[base_name] = (version, filename)
                else:
                    if version > v_files[base_name][0]:
                        #delete the older version
                        old_file_path = os.path.join(compressresult_dir, v_files[base_name][1])
                        try:
                            os.remove(old_file_path)
                            print(f"Removed older version file: {old_file_path}")
                        except Exception as e:
                            print(f"Error removing file {old_file_path}: {e}")

                        #update to the new version
                        v_files[base_name] = (version, filename)
                    else:
                        #delete the current file as it's an older version
                        try:
                            os.remove(file_path)
                            print(f"Removed older version file: {file_path}")
                        except Exception as e:
                            print(f"Error removing file {file_path}: {e}")
            else:
                #no version, just store it with a version of 0
                base_name = filename
                if base_name not in v_files or v_files[base_name][0] == 0:
                    if base_name in v_files:
                        old_file_path = os.path.join(compressresult_dir, v_files[base_name][1])
                        try:
                            os.remove(old_file_path)
                            print(f"Removed file: {old_file_path}")
                        except Exception as e:
                            print(f"Error removing file {old_file_path}: {e}")
                    v_files[base_name] = (0, filename)
        else:
            try:
                if os.path.isfile(file_path):
                    os.remove(file_path)
                    print(f"Removed non-.v file: {file_path}")
                else:
                    print(f"Skipped non-file entry: {file_path}")
            except Exception as e:
                print(f"Error removing file {file_path}: {e}")

    #rename the highest version files to remove the _vx suffix
    for base_name, (_, filename) in v_files.items():
        old_file_path = os.path.join(compressresult_dir, filename)
        new_file_path = os.path.join(compressresult_dir, base_name)
        if old_file_path != new_file_path:
            try:
                os.rename(old_file_path, new_file_path)
                print(f"Renamed file: {old_file_path} to {new_file_path}")
            except Exception as e:
                print(f"Error renaming file {old_file_path}: {e}")

def run_compressedlut(range_limit, layer_start_index):
    #define the path to the directory with the hex LUT values
    results_dir = os.path.join(os.path.dirname(__file__), 'verilog', 'results')

    for x in range(range_limit):

        executable_base_path = './compressedlut'
        table_argument = '-table'
        table_file = os.path.join(results_dir, f'layer{layer_start_index}_N{x}_hex.txt')
        name_argument = '-name'
        name_value = f'layer{layer_start_index}_N{x}'
        output_argument = '-output'
        output_value = 'compressresult2'

        try:
            #run the executable and capture the output
            result = subprocess.run(
                [executable_base_path, table_argument, table_file, name_argument, name_value, output_argument, output_value],
                check=True,
                universal_newlines=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE
            )
            
            #executable output
            print("Output from C++ executable:")
            print(result.stdout)

        except subprocess.CalledProcessError as e:
            print(f"Error running the executable: {e}")
            print("Standard output:")
            print(e.stdout)
            print("Standard error:")
            print(e.stderr)

        except FileNotFoundError:
            print("Executable not found. Please check the path.")

#function calls
run_compressedlut(32, 0)
run_compressedlut(5, 1)
clean_compressresult_folder()