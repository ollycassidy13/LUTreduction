module layer1 (input [127:0] M0, output [19:0] M1);

wire [11:0] layer1_N0_wire = {M0[3], M0[2], M0[1], M0[0], M0[27], M0[26], M0[25], M0[24], M0[107], M0[106], M0[105], M0[104]};
layer1_N0 layer1_N0_inst (.M0(layer1_N0_wire), .M1(M1[3:0]));

wire [11:0] layer1_N1_wire = {M0[31], M0[30], M0[29], M0[28], M0[43], M0[42], M0[41], M0[40], M0[99], M0[98], M0[97], M0[96]};
layer1_N1 layer1_N1_inst (.M0(layer1_N1_wire), .M1(M1[7:4]));

wire [11:0] layer1_N2_wire = {M0[23], M0[22], M0[21], M0[20], M0[59], M0[58], M0[57], M0[56], M0[95], M0[94], M0[93], M0[92]};
layer1_N2 layer1_N2_inst (.M0(layer1_N2_wire), .M1(M1[11:8]));

wire [11:0] layer1_N3_wire = {M0[15], M0[14], M0[13], M0[12], M0[71], M0[70], M0[69], M0[68], M0[91], M0[90], M0[89], M0[88]};
layer1_N3 layer1_N3_inst (.M0(layer1_N3_wire), .M1(M1[15:12]));

wire [11:0] layer1_N4_wire = {M0[19], M0[18], M0[17], M0[16], M0[27], M0[26], M0[25], M0[24], M0[103], M0[102], M0[101], M0[100]};
layer1_N4 layer1_N4_inst (.M0(layer1_N4_wire), .M1(M1[19:16]));

endmodule