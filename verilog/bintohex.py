import os

# Convert a binary string to a hexadecimal string
def bin_to_hex(bin_str, bits):
    hex_value = int(bin_str, 2)
    hex_width = (bits + 3) // 4  # calculate number of hex digits needed
    return '{:0{width}X}'.format(hex_value, width=hex_width)

def toHex(range_limit, layer_start_index, input_bits=12, output_bits=4):
    for x in range(range_limit):
        # Set location and layer name
        inname = f"layer{layer_start_index}_N{x}.v"
        # Set output names and location
        outname = f"results/layer{layer_start_index}_N{x}_hex.txt"

        try:
            if not os.path.isfile(inname):
                raise FileNotFoundError(f"File '{inname}' does not exist.")

            hex_pairs = []

            with open(inname, 'r') as input_file:
                for line in input_file:
                    input_pos = line.find(f"{input_bits}'b")
                    output_pos = line.find(f"{output_bits}'b")

                    input_hex = ''
                    output_hex = ''

                    # Convert input binary values to hex
                    if input_pos != -1 and (input_pos + 4 + input_bits <= len(line)):
                        bin_value = line[input_pos + 2 + len(str(input_bits)):input_pos + 2 + len(str(input_bits)) + input_bits]
                        input_hex = bin_to_hex(bin_value, input_bits)

                    # Convert output binary values to hex
                    if output_pos != -1 and (output_pos + 3 + output_bits <= len(line)):
                        bin_value = line[output_pos + 2 + len(str(output_bits)):output_pos + 2 + len(str(output_bits)) + output_bits]
                        output_hex = bin_to_hex(bin_value, output_bits)

                    if input_hex and output_hex:
                        hex_pairs.append((input_hex, output_hex))

            # Sort hex pairs by input hex values
            hex_pairs.sort(key=lambda pair: pair[0])

            # Write only the output hex values to the result file
            with open(outname, 'w') as final_file:
                for _, output_hex in hex_pairs:
                    final_file.write(output_hex + '\n')

            print(f"Conversion completed successfully for {inname}!")

        except FileNotFoundError as fnf_error:
            print(fnf_error)
            return 1
        except Exception as e:
            print(f"An error occurred: {e}")
            return 1

toHex(32, 0)
toHex(5, 1)
