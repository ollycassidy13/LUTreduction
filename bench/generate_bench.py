import os

def generate_testbench(module_name, inputs, outputs, input_file_path, clk='clk', rst='rst'):
    # Extracting the file name from the input file path
    input_file_name = os.path.basename(input_file_path)
    
    # Defining the output testbench file path
    tb_name = f"tb_{module_name}"
    tb_file_path = os.path.join(os.path.dirname(__file__), f"{tb_name}.v")

    def port_list(port_dict):
        return ', '.join(f".{name}({name})" for name in port_dict.keys())

    input_declarations = '\n'.join(f"reg [{width-1}:0] {name};" for name, width in inputs.items())
    output_declarations = '\n'.join(f"wire [{width-1}:0] {name};" for name, width in outputs.items())

    input_initialization = '\n'.join(f"{name} = 0;" for name in inputs.keys())

    tb_content = f"""
`timescale 1ns / 1ps

// Include the module file
`include "../compressresult-final/{input_file_name}"

module {tb_name}();

// Inputs
{input_declarations}
reg {clk};
reg {rst};

// Outputs
{output_declarations}

// Instantiate the Unit Under Test (UUT)
{module_name} uut (
    {port_list(inputs)},
    {port_list(outputs)},
    .{clk}({clk}),
    .{rst}({rst})
);

initial begin
    // Initialize Inputs
    {input_initialization}
    {clk} = 0;
    {rst} = 1;
    #100;
    {rst} = 0;

    // Add stimulus here

end

always #5 {clk} = ~{clk}; // Clock generation

endmodule
"""

    with open(tb_file_path, 'w') as f:
        f.write(tb_content)

    print(f"Testbench {tb_file_path} generated successfully!")

# Example usage:
module_name = "polylut"
inputs = {"address": 64}
outputs = {"M2": 20}
input_file_path = "../compressresult-final/polylut.v"  # Relative path from the script's location
generate_testbench(module_name, inputs, outputs, input_file_path)
