module Registers
(
	clk,
	rst_n,
	RSaddr_i,
	RTaddr_i,
	RDaddr_i, 
	RDdata_i,
	RegWrite_i, 
	RSdata_o, 
	RTdata_o 
);

// Ports.
input           clk;
input           rst_n;
input  [4 : 0]  RSaddr_i; //rs
input  [4 : 0]  RTaddr_i; //rt
input  [4 : 0]  RDaddr_i; //rd
input  [31 : 0] RDdata_i; //write data
input           RegWrite_i;
output [31 : 0] RSdata_o; //read data 1
output [31 : 0] RTdata_o; //read data 2

// Register file.
reg [31 : 0] register [0 : 31];

// Read data.
assign RSdata_o = register[RSaddr_i];
assign RTdata_o = register[RTaddr_i];

// Write data.
always @(posedge clk or negedge rst_n)
begin
	if(~rst_n) begin
		register[0] <= 0;
		register[1] <= 0;
		register[2] <= 0;
		register[3] <= 0;
		register[4] <= 0;
		register[5] <= 0;
		register[6] <= 0;
		register[7] <= 0;
		register[8] <= 0;
		register[9] <= 0;
		register[10] <= 0;
		register[11] <= 0;
		register[12] <= 0;
		register[13] <= 0;
		register[14] <= 0;
		register[15] <= 0;
		register[16] <= 0;
		register[17] <= 0;
		register[18] <= 0;
		register[19] <= 0;
		register[20] <= 0;
		register[21] <= 0;
		register[22] <= 0;
		register[23] <= 0;
		register[24] <= 0;
		register[25] <= 0;
		register[26] <= 0;
		register[27] <= 0;
		register[28] <= 0;
		register[29] <= 0;
		register[30] <= 0;
		register[31] <= 0;
	end
	else begin
		if(RegWrite_i)begin
			register[RDaddr_i] <= RDdata_i;
		end
		else begin
			register[RDaddr_i] <= register[RDaddr_i];
		end
	end
end

endmodule 
