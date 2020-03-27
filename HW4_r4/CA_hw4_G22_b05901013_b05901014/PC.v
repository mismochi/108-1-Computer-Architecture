module PC
(
	clk,
	rst_n,
	PC_i,
	PC_o
);

// Ports.
input           clk;
input           rst_n;
input  [31 : 0] PC_i;
output [31 : 0] PC_o;

// Wires and registers.
reg [31 : 0] PC_o;

always @(posedge clk or negedge rst_n)
begin
	if (~rst_n)
	begin
		PC_o <= 32'b0;
	end
	else
	begin
		PC_o <= PC_i;
	end
end

endmodule
