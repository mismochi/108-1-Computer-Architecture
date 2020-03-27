module PC
(
	clk,
	rst_n,
	opcode,
	PC_i,
	PC_o,
	FP_D_writestatus
);

// Ports.
input           clk;
input           rst_n;
input  [ 5 : 0] opcode;
input  [31 : 0] PC_i;
output [31 : 0] PC_o;
output          FP_D_writestatus;

// Wires and registers.
reg [31 : 0] PC_o;
reg FP_D_writestatus;

always @(posedge clk or negedge rst_n)
begin
	if (~rst_n)
	begin
		PC_o <= 32'b0;
		FP_D_writestatus <= 1'b0;
	end
	else
	begin
		if(opcode==6'h35||opcode==6'h3d)begin
			PC_o <= (FP_D_writestatus) ? PC_i : PC_o;
			FP_D_writestatus <= ~FP_D_writestatus;
		end
		else begin
			PC_o <= PC_i;
			FP_D_writestatus <= FP_D_writestatus;
		end
	end
end

endmodule
