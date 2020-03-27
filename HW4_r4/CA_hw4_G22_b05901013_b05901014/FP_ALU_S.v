/*`include "DW_fp_add.v"
`include "DW_fp_sub.v"
`include "DW_fp_mult.v"
`include "DW_fp_div.v"
`include "DW_fp_addsub.v"*/
module FP_ALU_S #(parameter frac_width = 23, exp_width = 8) (
	input [frac_width + exp_width:0] data1_i,
	input [frac_width + exp_width:0] data2_i,
	input [2:0] FP_ALUCtrl_i,
	/*output [frac_width + exp_width:0] sum,
	output [frac_width + exp_width:0] diff,
	output [frac_width + exp_width:0] prod,
	output [frac_width + exp_width:0] quot*/
	output [frac_width + exp_width:0] data_o,
	output zero_o //c.eq.s
);

	wire [frac_width + exp_width:0] sum, diff, prod, quot;
	reg [frac_width + exp_width:0] data_reg;

	assign data_o = data_reg;
	assign zero_o = (data_reg[30:0] == 0) ? 1 : 0;

	always @(*) begin
		case (FP_ALUCtrl_i)
			3'b010: data_reg = sum; //add.s
			3'b110: data_reg = diff; //sub.s
			3'b000: data_reg = prod; //mult.s
			3'b001: data_reg = quot; //div.s
			default: data_reg = diff; //no use
		endcase
	
	end

	DW_fp_add #(frac_width, exp_width) adder (
		.a(data1_i),
		.b(data2_i),
		.rnd(3'b000),
		.z(sum),
		.status()
		);

	DW_fp_sub #(frac_width, exp_width) subtracter (
		.a(data1_i),
		.b(data2_i),
		.rnd(3'b000),
		.z(diff),
		.status()
		);

	DW_fp_mult #(frac_width, exp_width) multiplier (
		.a(data1_i),
		.b(data2_i),
		.rnd(3'b000),
		.z(prod),
		.status()
		);

	DW_fp_div #(frac_width, exp_width) divider (
		.a(data1_i),
		.b(data2_i),
		.rnd(3'b000),
		.z(quot),
		.status()
		);

endmodule
