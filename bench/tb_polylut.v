
`timescale 1ns / 1ps

// Include the module file
`include "../compressresult-final/polylut.v"

module tb_polylut();

// Inputs
reg [63:0] address;
reg clk;
reg rst;

// Outputs
wire [19:0] M2;

// Instantiate the Unit Under Test (UUT)
polylut uut (
    .address(address),
    .M2(M2),
    .clk(clk),
    .rst(rst)
);

initial begin
    // Initialize Inputs
    address = 0;
    clk = 0;
    rst = 1;
    #100;
    rst = 0;

    // Add stimulus here

end

always #5 clk = ~clk; // Clock generation

endmodule
