import os

def replace_in_file(file_path, replacements):
    changes_made = False
    with open(file_path, 'r') as file:
        file_contents = file.read()
    
    original_contents = file_contents
    
    for old, new in replacements.items():
        if old in file_contents:
            file_contents = file_contents.replace(old, new)
            changes_made = True
    
    if changes_made:
        with open(file_path, 'w') as file:
            file.write(file_contents)
        
        print(f"Changes made in file: {file_path}")
        for old, new in replacements.items():
            if old in original_contents:
                occurrences = original_contents.count(old)
                print(f"Replaced {occurrences} occurrences of '{old}' with '{new}'")

def replace_in_directory(directory, script_name, replacements):
    for file_name in os.listdir(directory):
        file_path = os.path.join(directory, file_name)
        if os.path.isfile(file_path) and file_name != script_name:
            replace_in_file(file_path, replacements)

if __name__ == "__main__":
    directory_path = os.path.dirname(os.path.abspath(__file__))
    script_name = os.path.basename(__file__)
    #replace M0 with address and M1 with data in all files so polyLUT and compressedLUT files are consistent
    replacements = {
        "M0": "address",
        "M1": "data"
    }
    
    replace_in_directory(directory_path, script_name, replacements)
    print("Replacement complete.")
