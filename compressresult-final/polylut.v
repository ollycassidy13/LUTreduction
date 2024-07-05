module polylut (input [63:0] address, input clk, input rst, output[19:0] M2);
wire [63:0] addressw;
myreg #(.DataWidth(64)) layer0_reg (.data_in(address), .clk(clk), .rst(rst), .data_out(addressw));
wire [127:0] data;
layer0 layer0_inst (.address(addressw), .data(data));
wire [127:0] dataw;
myreg #(.DataWidth(128)) layer1_reg (.data_in(data), .clk(clk), .rst(rst), .data_out(dataw));
layer1 layer1_inst (.address(dataw), .data(M2));

endmodule
