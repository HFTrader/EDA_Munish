// ==============================================================
// File generated by AutoESL - High-Level Synthesis System (C, C++, SystemC)
// Version: 2012.1
// Copyright (C) 2012 Xilinx Inc. All rights reserved.
// 
// ==============================================================


module sobel_filter_grp_fu_683_ACMP_mul_2_Mul2S_0(clk, ce, a, b, p);
input clk;
input ce;
input[8 - 1 : 0] a; // synthesis attribute keep a "true"
input[5 - 1 : 0] b; // synthesis attribute keep b "true"
output[13 - 1 : 0] p;
reg[13 - 1 : 0] p;
wire [13 - 1 : 0] tmp_product;

assign tmp_product = a * b;
always @ (posedge clk) begin
    if (ce) begin
        p <= tmp_product;
    end
end
endmodule
