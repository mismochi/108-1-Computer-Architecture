module FP_Registers
(
	clk,
	rst_n,
	RSaddr_i,
	RTaddr_i,
	RDaddr_i, 
	RDdata_i,
	RDdata_D_i,
	Fcond_i,
	RegWrite_i, 
	FPcondWrite,
	RSdata_o, 
	RTdata_o,
	RSdata_D_o,
	RTdata_D_o,
	Fcond_o
);

// Ports.
input           clk;
input           rst_n;
input  [ 4 : 0] RSaddr_i; //rs
input  [ 4 : 0] RTaddr_i; //rt
input  [ 4 : 0] RDaddr_i; //rd
input  [31 : 0] RDdata_i; //write data
input  [63 : 0] RDdata_D_i; //write data for double FP
input           Fcond_i;  //Fcond in
input  [ 1 : 0] RegWrite_i; //control signal for register to write or not
input           FPcondWrite; //control signal for Fcond to write or not
output [31 : 0] RSdata_o; //read data 1
output [31 : 0] RTdata_o; //read data 2
output [63 : 0] RSdata_D_o; //read data 1 for double FP
output [63 : 0] RTdata_D_o; //read data 2 for double FP
output          Fcond_o; //Fcond output

// Register file.
reg [31 : 0] register [0 : 31];
reg Fcond;

// Read data.
assign RSdata_o = register[RSaddr_i];
assign RTdata_o = register[RTaddr_i];
assign RSdata_D_o = {register[RSaddr_i], register[RSaddr_i+1]};
assign RTdata_D_o = {register[RTaddr_i], register[RTaddr_i+1]};
assign Fcond_o  = Fcond;

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
		Fcond <= 0;
	end
	else begin
		if(RegWrite_i==2'b01)begin
			register[RDaddr_i] <= RDdata_i;
		end
		else if(RegWrite_i==2'b10)begin
			register[RDaddr_i] <= RDdata_D_i[63:32];
			register[RDaddr_i+1] <= RDdata_D_i[31:0];
		end
		else begin
			register[RDaddr_i] <= register[RDaddr_i];
		end
		if(FPcondWrite)begin
			Fcond <= Fcond_i;
		end
		else begin
			Fcond <= Fcond;
		end
	end
end

endmodule 
