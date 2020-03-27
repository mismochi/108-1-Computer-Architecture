module ALU
(
	data1_i,
	data2_i,
	shamt_i,
	ALUCtrl_i,
	data_o,
	zero_o
);

input  [31 : 0] data1_i;
input  [31 : 0] data2_i;
input  [ 4 : 0] shamt_i;
input  [ 3 : 0] ALUCtrl_i;
output [31 : 0] data_o;
output          zero_o;

reg    [31 : 0] data_reg;

assign data_o = data_reg;
assign zero_o = (data_reg == 32'b0)? 1'b1 : 1'b0;

always @(*)
begin
	case (ALUCtrl_i)
		4'b0000: data_reg = data1_i & data2_i; //AND
		4'b0001: data_reg = data1_i | data2_i; //OR
		4'b0010: data_reg = data1_i + data2_i; //ADD
		4'b0110: data_reg = data1_i - data2_i; //SUB
		4'b0111: data_reg = ($signed(data1_i) < $signed(data2_i)) ? 1 : 0; //slt
		4'b1100: data_reg = data2_i >> (shamt_i); //srl
		4'b1010: data_reg = data2_i << (shamt_i); //sll
		default: data_reg = 0;
	endcase
end

endmodule
