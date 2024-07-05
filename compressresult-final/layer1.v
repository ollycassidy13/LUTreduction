module layer1 (input [127:0] address, output [19:0] data);

wire [11:0] layer1_N0_wire = {address[3], address[2], address[1], address[0], address[27], address[26], address[25], address[24], address[107], address[106], address[105], address[104]};
layer1_N0 layer1_N0_inst (.address(layer1_N0_wire), .data(data[3:0]));

wire [11:0] layer1_N1_wire = {address[31], address[30], address[29], address[28], address[43], address[42], address[41], address[40], address[99], address[98], address[97], address[96]};
layer1_N1 layer1_N1_inst (.address(layer1_N1_wire), .data(data[7:4]));

wire [11:0] layer1_N2_wire = {address[23], address[22], address[21], address[20], address[59], address[58], address[57], address[56], address[95], address[94], address[93], address[92]};
layer1_N2 layer1_N2_inst (.address(layer1_N2_wire), .data(data[11:8]));

wire [11:0] layer1_N3_wire = {address[15], address[14], address[13], address[12], address[71], address[70], address[69], address[68], address[91], address[90], address[89], address[88]};
layer1_N3 layer1_N3_inst (.address(layer1_N3_wire), .data(data[15:12]));

wire [11:0] layer1_N4_wire = {address[19], address[18], address[17], address[16], address[27], address[26], address[25], address[24], address[103], address[102], address[101], address[100]};
layer1_N4 layer1_N4_inst (.address(layer1_N4_wire), .data(data[19:16]));

endmodule