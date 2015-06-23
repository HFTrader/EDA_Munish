// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.1
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

module image_processor_mul_8ns_21ns_29_3_MulnS_2(clk, ce, a, b, p);
input clk;
input ce;
input[8 - 1 : 0] a; // synthesis attribute keep a "true"
input[21 - 1 : 0] b; // synthesis attribute keep b "true"
output[29 - 1 : 0] p;
reg[8 - 1 : 0] a_reg;
reg[21 - 1 : 0] b_reg;
wire [29 - 1 : 0] tmp_product;
reg[29 - 1 : 0] buff0;

assign p = buff0;
assign tmp_product = a_reg * b_reg;
always @ (posedge clk) begin
    if (ce) begin
        a_reg <= a;
        b_reg <= b;
        buff0 <= tmp_product;
    end
end
endmodule

`timescale 1 ns / 1 ps
module image_processor_mul_8ns_21ns_29_3(
    clk,
    reset,
    ce,
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;




image_processor_mul_8ns_21ns_29_3_MulnS_2 image_processor_mul_8ns_21ns_29_3_MulnS_2_U(
    .clk( clk ),
    .ce( ce ),
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

