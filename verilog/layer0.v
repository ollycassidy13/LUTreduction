module layer0 (input [63:0] M0, output [127:0] M1);

wire [11:0] layer0_N0_wire = {M0[15], M0[14], M0[13], M0[12], M0[35], M0[34], M0[33], M0[32], M0[55], M0[54], M0[53], M0[52]};
layer0_N0 layer0_N0_inst (.M0(layer0_N0_wire), .M1(M1[3:0]));

wire [11:0] layer0_N1_wire = {M0[19], M0[18], M0[17], M0[16], M0[43], M0[42], M0[41], M0[40], M0[63], M0[62], M0[61], M0[60]};
layer0_N1 layer0_N1_inst (.M0(layer0_N1_wire), .M1(M1[7:4]));

wire [11:0] layer0_N2_wire = {M0[7], M0[6], M0[5], M0[4], M0[39], M0[38], M0[37], M0[36], M0[59], M0[58], M0[57], M0[56]};
layer0_N2 layer0_N2_inst (.M0(layer0_N2_wire), .M1(M1[11:8]));

wire [11:0] layer0_N3_wire = {M0[27], M0[26], M0[25], M0[24], M0[39], M0[38], M0[37], M0[36], M0[51], M0[50], M0[49], M0[48]};
layer0_N3 layer0_N3_inst (.M0(layer0_N3_wire), .M1(M1[15:12]));

wire [11:0] layer0_N4_wire = {M0[7], M0[6], M0[5], M0[4], M0[51], M0[50], M0[49], M0[48], M0[63], M0[62], M0[61], M0[60]};
layer0_N4 layer0_N4_inst (.M0(layer0_N4_wire), .M1(M1[19:16]));

wire [11:0] layer0_N5_wire = {M0[47], M0[46], M0[45], M0[44], M0[51], M0[50], M0[49], M0[48], M0[63], M0[62], M0[61], M0[60]};
layer0_N5 layer0_N5_inst (.M0(layer0_N5_wire), .M1(M1[23:20]));

wire [11:0] layer0_N6_wire = {M0[15], M0[14], M0[13], M0[12], M0[35], M0[34], M0[33], M0[32], M0[51], M0[50], M0[49], M0[48]};
layer0_N6 layer0_N6_inst (.M0(layer0_N6_wire), .M1(M1[27:24]));

wire [11:0] layer0_N7_wire = {M0[15], M0[14], M0[13], M0[12], M0[19], M0[18], M0[17], M0[16], M0[51], M0[50], M0[49], M0[48]};
layer0_N7 layer0_N7_inst (.M0(layer0_N7_wire), .M1(M1[31:28]));

wire [11:0] layer0_N8_wire = {M0[43], M0[42], M0[41], M0[40], M0[51], M0[50], M0[49], M0[48], M0[59], M0[58], M0[57], M0[56]};
layer0_N8 layer0_N8_inst (.M0(layer0_N8_wire), .M1(M1[35:32]));

wire [11:0] layer0_N9_wire = {M0[23], M0[22], M0[21], M0[20], M0[35], M0[34], M0[33], M0[32], M0[51], M0[50], M0[49], M0[48]};
layer0_N9 layer0_N9_inst (.M0(layer0_N9_wire), .M1(M1[39:36]));

wire [11:0] layer0_N10_wire = {M0[23], M0[22], M0[21], M0[20], M0[39], M0[38], M0[37], M0[36], M0[43], M0[42], M0[41], M0[40]};
layer0_N10 layer0_N10_inst (.M0(layer0_N10_wire), .M1(M1[43:40]));

wire [11:0] layer0_N11_wire = {M0[11], M0[10], M0[9], M0[8], M0[23], M0[22], M0[21], M0[20], M0[59], M0[58], M0[57], M0[56]};
layer0_N11 layer0_N11_inst (.M0(layer0_N11_wire), .M1(M1[47:44]));

wire [11:0] layer0_N12_wire = {M0[3], M0[2], M0[1], M0[0], M0[19], M0[18], M0[17], M0[16], M0[27], M0[26], M0[25], M0[24]};
layer0_N12 layer0_N12_inst (.M0(layer0_N12_wire), .M1(M1[51:48]));

wire [11:0] layer0_N13_wire = {M0[27], M0[26], M0[25], M0[24], M0[39], M0[38], M0[37], M0[36], M0[55], M0[54], M0[53], M0[52]};
layer0_N13 layer0_N13_inst (.M0(layer0_N13_wire), .M1(M1[55:52]));

wire [11:0] layer0_N14_wire = {M0[7], M0[6], M0[5], M0[4], M0[19], M0[18], M0[17], M0[16], M0[51], M0[50], M0[49], M0[48]};
layer0_N14 layer0_N14_inst (.M0(layer0_N14_wire), .M1(M1[59:56]));

wire [11:0] layer0_N15_wire = {M0[31], M0[30], M0[29], M0[28], M0[47], M0[46], M0[45], M0[44], M0[55], M0[54], M0[53], M0[52]};
layer0_N15 layer0_N15_inst (.M0(layer0_N15_wire), .M1(M1[63:60]));

wire [11:0] layer0_N16_wire = {M0[3], M0[2], M0[1], M0[0], M0[15], M0[14], M0[13], M0[12], M0[31], M0[30], M0[29], M0[28]};
layer0_N16 layer0_N16_inst (.M0(layer0_N16_wire), .M1(M1[67:64]));

wire [11:0] layer0_N17_wire = {M0[47], M0[46], M0[45], M0[44], M0[55], M0[54], M0[53], M0[52], M0[59], M0[58], M0[57], M0[56]};
layer0_N17 layer0_N17_inst (.M0(layer0_N17_wire), .M1(M1[71:68]));

wire [11:0] layer0_N18_wire = {M0[11], M0[10], M0[9], M0[8], M0[27], M0[26], M0[25], M0[24], M0[43], M0[42], M0[41], M0[40]};
layer0_N18 layer0_N18_inst (.M0(layer0_N18_wire), .M1(M1[75:72]));

wire [11:0] layer0_N19_wire = {M0[23], M0[22], M0[21], M0[20], M0[43], M0[42], M0[41], M0[40], M0[51], M0[50], M0[49], M0[48]};
layer0_N19 layer0_N19_inst (.M0(layer0_N19_wire), .M1(M1[79:76]));

wire [11:0] layer0_N20_wire = {M0[3], M0[2], M0[1], M0[0], M0[19], M0[18], M0[17], M0[16], M0[51], M0[50], M0[49], M0[48]};
layer0_N20 layer0_N20_inst (.M0(layer0_N20_wire), .M1(M1[83:80]));

wire [11:0] layer0_N21_wire = {M0[35], M0[34], M0[33], M0[32], M0[55], M0[54], M0[53], M0[52], M0[59], M0[58], M0[57], M0[56]};
layer0_N21 layer0_N21_inst (.M0(layer0_N21_wire), .M1(M1[87:84]));

wire [11:0] layer0_N22_wire = {M0[27], M0[26], M0[25], M0[24], M0[35], M0[34], M0[33], M0[32], M0[39], M0[38], M0[37], M0[36]};
layer0_N22 layer0_N22_inst (.M0(layer0_N22_wire), .M1(M1[91:88]));

wire [11:0] layer0_N23_wire = {M0[3], M0[2], M0[1], M0[0], M0[11], M0[10], M0[9], M0[8], M0[55], M0[54], M0[53], M0[52]};
layer0_N23 layer0_N23_inst (.M0(layer0_N23_wire), .M1(M1[95:92]));

wire [11:0] layer0_N24_wire = {M0[15], M0[14], M0[13], M0[12], M0[19], M0[18], M0[17], M0[16], M0[27], M0[26], M0[25], M0[24]};
layer0_N24 layer0_N24_inst (.M0(layer0_N24_wire), .M1(M1[99:96]));

wire [11:0] layer0_N25_wire = {M0[15], M0[14], M0[13], M0[12], M0[31], M0[30], M0[29], M0[28], M0[59], M0[58], M0[57], M0[56]};
layer0_N25 layer0_N25_inst (.M0(layer0_N25_wire), .M1(M1[103:100]));

wire [11:0] layer0_N26_wire = {M0[31], M0[30], M0[29], M0[28], M0[35], M0[34], M0[33], M0[32], M0[63], M0[62], M0[61], M0[60]};
layer0_N26 layer0_N26_inst (.M0(layer0_N26_wire), .M1(M1[107:104]));

wire [11:0] layer0_N27_wire = {M0[3], M0[2], M0[1], M0[0], M0[15], M0[14], M0[13], M0[12], M0[51], M0[50], M0[49], M0[48]};
layer0_N27 layer0_N27_inst (.M0(layer0_N27_wire), .M1(M1[111:108]));

wire [11:0] layer0_N28_wire = {M0[7], M0[6], M0[5], M0[4], M0[19], M0[18], M0[17], M0[16], M0[31], M0[30], M0[29], M0[28]};
layer0_N28 layer0_N28_inst (.M0(layer0_N28_wire), .M1(M1[115:112]));

wire [11:0] layer0_N29_wire = {M0[3], M0[2], M0[1], M0[0], M0[11], M0[10], M0[9], M0[8], M0[27], M0[26], M0[25], M0[24]};
layer0_N29 layer0_N29_inst (.M0(layer0_N29_wire), .M1(M1[119:116]));

wire [11:0] layer0_N30_wire = {M0[3], M0[2], M0[1], M0[0], M0[19], M0[18], M0[17], M0[16], M0[47], M0[46], M0[45], M0[44]};
layer0_N30 layer0_N30_inst (.M0(layer0_N30_wire), .M1(M1[123:120]));

wire [11:0] layer0_N31_wire = {M0[11], M0[10], M0[9], M0[8], M0[23], M0[22], M0[21], M0[20], M0[31], M0[30], M0[29], M0[28]};
layer0_N31 layer0_N31_inst (.M0(layer0_N31_wire), .M1(M1[127:124]));

endmodule