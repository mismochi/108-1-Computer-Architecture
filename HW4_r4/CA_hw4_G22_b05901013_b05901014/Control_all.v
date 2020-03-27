/*
+-------------+------+---------------+-----------+-----------------+
| Instruction | Type | Op Code (Hex) | FMT (Hex) | Func Code (Hex) |
+-------------+------+---------------+-----------+-----------------+
|     sll     |   R  |       0       |    N/A    |        00       |
+-------------+------+---------------+-----------+-----------------+
|     srl     |   R  |       0       |    N/A    |        02       |
+-------------+------+---------------+-----------+-----------------+
|     add     |   R  |       0       |    N/A    |        20       |
+-------------+------+---------------+-----------+-----------------+
|     sub     |   R  |       0       |    N/A    |        22       |
+-------------+------+---------------+-----------+-----------------+
|     and     |   R  |       0       |    N/A    |        24       |
+-------------+------+---------------+-----------+-----------------+
|      or     |   R  |       0       |    N/A    |        25       |
+-------------+------+---------------+-----------+-----------------+
|     slt     |   R  |       0       |    N/A    |        2A       |
+-------------+------+---------------+-----------+-----------------+
|     addi    |   I  |       8       |    N/A    |       N/A       |
+-------------+------+---------------+-----------+-----------------+
|      lw     |   I  |       23      |    N/A    |       N/A       |
+-------------+------+---------------+-----------+-----------------+
|      sw     |   I  |       2B      |    N/A    |       N/A       |
+-------------+------+---------------+-----------+-----------------+
|     beq     |   I  |       4       |    N/A    |       N/A       |
+-------------+------+---------------+-----------+-----------------+
|     bne     |   I  |       5       |    N/A    |       N/A       |
+-------------+------+---------------+-----------+-----------------+
|      j      |   J  |       2       |    N/A    |       N/A       |
+-------------+------+---------------+-----------+-----------------+
|     jal     |   J  |       3       |    N/A    |       N/A       |
+-------------+------+---------------+-----------+-----------------+
|      jr     |   R  |       0       |    N/A    |        8        |
+-------------+------+---------------+-----------+-----------------+
|    add.s    |  FR  |       11      |     10    |        00       |
+-------------+------+---------------+-----------+-----------------+
|    sub.s    |  FR  |       11      |     10    |        01       |
+-------------+------+---------------+-----------+-----------------+
|    mul.s    |  FR  |       11      |     10    |        02       |
+-------------+------+---------------+-----------+-----------------+
|    div.s    |  FR  |       11      |     10    |        03       |
+-------------+------+---------------+-----------+-----------------+
|     lwcl    |   I  |       31      |    N/A    |       N/A       |
+-------------+------+---------------+-----------+-----------------+
|     swcl    |   I  |       39      |    N/A    |       N/A       |
+-------------+------+---------------+-----------+-----------------+
|    c.eq.s   |  FR  |       11      |     10    |        32       |
+-------------+------+---------------+-----------+-----------------+
|     bclt    |  FI  |       11      |     8     |       N/A       |
+-------------+------+---------------+-----------+-----------------+
|    add.d    |  FR  |       11      |     11    |        00       |
+-------------+------+---------------+-----------+-----------------+
|    sub.d    |  FR  |       11      |     11    |        01       |
+-------------+------+---------------+-----------+-----------------+
|     ldcl    |   I  |       35      |    N/A    |       N/A       |
+-------------+------+---------------+-----------+-----------------+
|     sdcl    |   I  |       3D      |    N/A    |       N/A       |
+-------------+------+---------------+-----------+-----------------+
*/

module Control (
	input [5:0] opcode,
	input [4:0] fmt,
	input [5:0] funct,

	output reg [1:0] RegDst, //fp reg
	output reg Jump,
	output reg JumpReg,
	output reg Branch, //beq
	output reg BranchNot, //bne
	output reg MemRead,
	output reg [1:0] MemtoReg,
	output reg [3:0] ALUCtrl,
	output reg MemWrite,
	output reg ALUSrc,
	output reg RegWrite, //int reg

	output reg FP_RegDst, //fp reg
	output reg FP_MemtoReg, //fp reg
	output reg [2:0] FP_ALUCtrl_S, //single precision ALU
	output reg [1:0] FP_ALUCtrl_D, //double precision ALU
	output reg [1:0] FP_RegWrite, //fp reg
	output reg FP_Branch,
	output reg FPcondWrite, //c.eq.s

	output reg [1:0] writeDataPrecision //int:00, single:01, double:10
);

	always @(*) begin

		case (opcode)
			6'h0: begin //r-type
				case (funct)
					6'h00: begin //sll
						RegDst = 2'b01;
						Jump = 1'b0;
						JumpReg = 1'b0;
						Branch = 1'b0;
						BranchNot = 1'b0;
						MemRead = 1'b0;
						MemtoReg = 2'b00;
						ALUCtrl = 4'b1010;
						MemWrite = 1'b0;
						ALUSrc = 1'b0;
						RegWrite = 1'b1;
						FP_RegDst = 1'b0;
						FP_MemtoReg = 1'b0;
						FP_ALUCtrl_S = 3'b111;
						FP_ALUCtrl_D = 2'b11;
						FP_RegWrite = 2'b00;
						FP_Branch = 1'b0;
						FPcondWrite = 1'b0;
						writeDataPrecision = 2'b00; //int
					end

					6'h02: begin //srl
						RegDst = 2'b01;
						Jump = 1'b0;
						JumpReg = 1'b0;
						Branch = 1'b0;
						BranchNot= 1'b0;
						MemRead = 1'b0;
						MemtoReg = 2'b00;
						ALUCtrl = 4'b1100;
						MemWrite = 1'b0;
						ALUSrc = 1'b0;
						RegWrite = 1'b1;
						FP_RegDst = 1'b0;
						FP_MemtoReg = 1'b0;
						FP_ALUCtrl_S = 3'b111;
						FP_ALUCtrl_D = 2'b11;
						FP_RegWrite = 2'b00;
						FP_Branch = 1'b0;
						FPcondWrite = 1'b0;
						writeDataPrecision = 2'b00; //int
					end

					6'h20: begin //add
						RegDst = 2'b01;
						Jump = 1'b0;
						JumpReg = 1'b0;
						Branch = 1'b0;
						BranchNot = 1'b0;
						MemRead = 1'b0;
						MemtoReg = 2'b00;
						ALUCtrl = 4'b0010;
						MemWrite = 1'b0;
						ALUSrc = 1'b0;
						RegWrite = 1'b1;
						FP_RegDst = 1'b0;
						FP_MemtoReg = 1'b0;
						FP_ALUCtrl_S = 3'b111;
						FP_ALUCtrl_D = 2'b11;
						FP_RegWrite = 2'b00;
						FP_Branch = 1'b0;
						FPcondWrite = 1'b0;
						writeDataPrecision = 2'b00; //int
					end

					6'h22: begin //sub
						RegDst = 2'b01;
						Jump = 1'b0;
						JumpReg = 1'b0;
						Branch = 1'b0;
						BranchNot = 1'b0;
						MemRead = 1'b0;
						MemtoReg = 2'b00;
						ALUCtrl = 4'b0110;
						MemWrite = 1'b0;
						ALUSrc = 1'b0;
						RegWrite = 1'b1;
						FP_RegDst = 1'b0;
						FP_MemtoReg = 1'b0;
						FP_ALUCtrl_S = 3'b111;
						FP_ALUCtrl_D = 2'b11;
						FP_RegWrite = 2'b00;
						FP_Branch = 1'b0;
						FPcondWrite = 1'b0;
						writeDataPrecision = 2'b00; //int
					end

					6'h24: begin //and
						RegDst = 2'b01;
						Jump = 1'b0;
						JumpReg = 1'b0;
						Branch = 1'b0;
						BranchNot = 1'b0;
						MemRead = 1'b0;
						MemtoReg = 2'b00;
						ALUCtrl = 4'b0000;
						MemWrite = 1'b0;
						ALUSrc = 1'b0;
						RegWrite = 1'b1;
						FP_RegDst = 1'b0;
						FP_MemtoReg = 1'b0;
						FP_ALUCtrl_S = 3'b111;
						FP_ALUCtrl_D = 2'b11;
						FP_RegWrite = 2'b00;
						FP_Branch = 1'b0;
						FPcondWrite = 1'b0;
						writeDataPrecision = 2'b00; //int
					end

					6'h25: begin //or
						RegDst = 2'b01;
						Jump = 1'b0;
						JumpReg = 1'b0;
						Branch = 1'b0;
						BranchNot = 1'b0;
						MemRead = 1'b0;
						MemtoReg = 2'b00;
						ALUCtrl = 4'b0001;
						MemWrite = 1'b0;
						ALUSrc = 1'b0;
						RegWrite = 1'b1;
						FP_RegDst = 1'b0;
						FP_MemtoReg = 1'b0;
						FP_ALUCtrl_S = 3'b111;
						FP_ALUCtrl_D = 2'b11;
						FP_RegWrite = 2'b00;
						FP_Branch = 1'b0;
						FPcondWrite = 1'b0;
						writeDataPrecision = 2'b00; //int
					end

					6'h2a: begin //slt
						RegDst = 2'b01;
						Jump = 1'b0;
						JumpReg = 1'b0;
						Branch = 1'b0;
						BranchNot = 1'b0;
						MemRead = 1'b0;
						MemtoReg = 2'b00;
						ALUCtrl = 4'b0111;
						MemWrite = 1'b0;
						ALUSrc = 1'b0;
						RegWrite = 1'b1;
						FP_RegDst = 1'b0;
						FP_MemtoReg = 1'b0;
						FP_ALUCtrl_S = 3'b111;
						FP_ALUCtrl_D = 2'b11;
						FP_RegWrite = 2'b00;
						FP_Branch = 1'b0;
						FPcondWrite = 1'b0;
						writeDataPrecision = 2'b00; //int
					end

					6'h8: begin //jr
						RegDst = 2'b01;
						Jump = 1'b0;
						JumpReg = 1'b1;
						Branch = 1'b0;
						BranchNot = 1'b0;
						MemRead = 1'b0;
						MemtoReg = 2'b00;
						ALUCtrl = 4'b1111;
						MemWrite = 1'b0;
						ALUSrc = 1'b0;
						RegWrite = 1'b0;
						FP_RegDst = 1'b0;
						FP_MemtoReg = 1'b0;
						FP_ALUCtrl_S = 3'b111;
						FP_ALUCtrl_D = 2'b11;
						FP_RegWrite = 2'b00;
						FP_Branch = 1'b0;
						FPcondWrite = 1'b0;
						writeDataPrecision = 2'b00; //int
					end
				
					default : begin
						RegDst = 2'b00;
						Jump = 1'b0;
						JumpReg = 1'b0;
						Branch = 1'b0;
						BranchNot = 1'b0;
						MemRead = 1'b0;
						MemtoReg = 2'b00;
						ALUCtrl = 4'b1111;
						MemWrite = 1'b0;
						ALUSrc = 1'b0;
						RegWrite = 1'b0;
						FP_RegDst = 1'b0;
						FP_MemtoReg = 1'b0;
						FP_ALUCtrl_S = 3'b111;
						FP_ALUCtrl_D = 2'b11;
						FP_RegWrite = 2'b00;
						FP_Branch = 1'b0;
						FPcondWrite = 1'b0;
						writeDataPrecision = 2'b00; //int
					end
				endcase
			end

			6'h11: begin //fr & fi-type
				case (fmt)
					5'h10: begin //single precision
						case (funct)
							6'h00: begin //add.s
								RegDst = 2'b00;
								Jump = 1'b0;
								JumpReg = 1'b0;
								Branch = 1'b0;
								BranchNot = 1'b0;
								MemRead = 1'b0;
								MemtoReg = 2'b00;
								ALUCtrl = 4'b1111;
								MemWrite = 1'b0;
								ALUSrc = 1'b0;
								RegWrite = 1'b0;
								FP_RegDst = 1'b1;
								FP_MemtoReg = 1'b0;
								FP_ALUCtrl_S = 3'b010;
								FP_ALUCtrl_D = 2'b11;
								FP_RegWrite = 2'b01; //write to 1 reg
								FP_Branch = 1'b0;
								FPcondWrite = 1'b0;
								writeDataPrecision = 2'b01; //single
							end

							6'h01: begin //sub.s
								RegDst = 2'b00;
								Jump = 1'b0;
								JumpReg = 1'b0;
								Branch = 1'b0;
								BranchNot = 1'b0;
								MemRead = 1'b0;
								MemtoReg = 2'b00;
								ALUCtrl = 4'b1111;
								MemWrite = 1'b0;
								ALUSrc = 1'b0;
								RegWrite = 1'b0;
								FP_RegDst = 1'b1;
								FP_MemtoReg = 1'b0;
								FP_ALUCtrl_S = 3'b110;
								FP_ALUCtrl_D = 2'b11;
								FP_RegWrite = 2'b01; //write to 1 reg
								FP_Branch = 1'b0;
								FPcondWrite = 1'b0;
								writeDataPrecision = 2'b01; //single
							end

							6'h02: begin //mul.s
								RegDst = 2'b00;
								Jump = 1'b0;
								JumpReg = 1'b0;
								Branch = 1'b0;
								BranchNot = 1'b0;
								MemRead = 1'b0;
								MemtoReg = 2'b00;
								ALUCtrl = 4'b1111;
								MemWrite = 1'b0;
								ALUSrc = 1'b0;
								RegWrite = 1'b0;
								FP_RegDst = 1'b1;
								FP_MemtoReg = 1'b0;
								FP_ALUCtrl_S = 3'b000;
								FP_ALUCtrl_D = 2'b11;
								FP_RegWrite = 2'b01; //write to 1 reg
								FP_Branch = 1'b0;
								FPcondWrite = 1'b0;
								writeDataPrecision = 2'b01; //single
							end

							6'h03: begin //div.s
								RegDst = 2'b00;
								Jump = 1'b0;
								JumpReg = 1'b0;
								Branch = 1'b0;
								BranchNot = 1'b0;
								MemRead = 1'b0;
								MemtoReg = 2'b00;
								ALUCtrl = 4'b1111;
								MemWrite = 1'b0;
								ALUSrc = 1'b0;
								RegWrite = 1'b0;
								FP_RegDst = 1'b1;
								FP_MemtoReg = 1'b0;
								FP_ALUCtrl_S = 3'b001;
								FP_ALUCtrl_D = 2'b11;
								FP_RegWrite = 2'b01; //write to 1 reg
								FP_Branch = 1'b0;
								FPcondWrite = 1'b0;
								writeDataPrecision = 2'b01; //single
							end

							6'h32: begin //c.eq.s
								RegDst = 2'b00;
								Jump = 1'b0;
								JumpReg = 1'b0;
								Branch = 1'b0;
								BranchNot = 1'b0;
								MemRead = 1'b0;
								MemtoReg = 2'b00;
								ALUCtrl = 4'b1111;
								MemWrite = 1'b0;
								ALUSrc = 1'b0;
								RegWrite = 1'b0;
								FP_RegDst = 1'b1;
								FP_MemtoReg = 1'b0;
								FP_ALUCtrl_S = 3'b110; //sub.s
								FP_ALUCtrl_D = 2'b11;
								FP_RegWrite = 2'b00; //write to 1 reg
								FP_Branch = 1'b0;
								FPcondWrite = 1'b1; //fs == ft
								writeDataPrecision = 2'b01; //single
							end
						
							default : begin
								RegDst = 2'b00;
								Jump = 1'b0;
								JumpReg = 1'b0;
								Branch = 1'b0;
								BranchNot = 1'b0;
								MemRead = 1'b0;
								MemtoReg = 2'b00;
								ALUCtrl = 4'b1111;
								MemWrite = 1'b0;
								ALUSrc = 1'b0;
								RegWrite = 1'b0;
								FP_RegDst = 1'b0;
								FP_MemtoReg = 1'b0;
								FP_ALUCtrl_S = 3'b111;
								FP_ALUCtrl_D = 2'b11;
								FP_RegWrite = 2'b00;
								FP_Branch = 1'b0;
								FPcondWrite = 1'b0;
								writeDataPrecision = 2'b00; //int
							end
						endcase
					end

					5'h8: begin //bclt
						RegDst = 2'b00;
						Jump = 1'b0;
						JumpReg = 1'b0;
						Branch = 1'b0;
						BranchNot = 1'b0;
						MemRead = 1'b0;
						MemtoReg = 2'b00;
						ALUCtrl = 4'b1111;
						MemWrite = 1'b0;
						ALUSrc = 1'b0;
						RegWrite = 1'b0;
						FP_RegDst = 1'b0;
						FP_MemtoReg = 1'b0;
						FP_ALUCtrl_S = 3'b111;
						FP_ALUCtrl_D = 2'b11;
						FP_RegWrite = 2'b00;
						FP_Branch = 1'b1; //if(FPcond)PC=PC+4+BranchAddr
						FPcondWrite = 1'b0;
						writeDataPrecision = 2'b01; //single
					end

					5'h11: begin //double precision
						case (funct)
							6'h00: begin //add.d
								RegDst = 2'b00;
								Jump = 1'b0;
								JumpReg = 1'b0;
								Branch = 1'b0;
								BranchNot = 1'b0;
								MemRead = 1'b0;
								MemtoReg = 2'b00;
								ALUCtrl = 4'b1111;
								MemWrite = 1'b0;
								ALUSrc = 1'b0;
								RegWrite = 1'b0;
								FP_RegDst = 1'b1;
								FP_MemtoReg = 1'b0;
								FP_ALUCtrl_S = 3'b111;
								FP_ALUCtrl_D = 2'b00;
								FP_RegWrite = 2'b10; //write to 2 reg
								FP_Branch = 1'b0;
								FPcondWrite = 1'b0;
								writeDataPrecision = 2'b10; //double
							end

							6'h01: begin //sub.d
								RegDst = 2'b00;
								Jump = 1'b0;
								JumpReg = 1'b0;
								Branch = 1'b0;
								BranchNot = 1'b0;
								MemRead = 1'b0;
								MemtoReg = 2'b00;
								ALUCtrl = 4'b1111;
								MemWrite = 1'b0;
								ALUSrc = 1'b0;
								RegWrite = 1'b0;
								FP_RegDst = 1'b1;
								FP_MemtoReg = 1'b0;
								FP_ALUCtrl_S = 3'b111;
								FP_ALUCtrl_D = 2'b01;
								FP_RegWrite = 2'b10; //write to 2 reg
								FP_Branch = 1'b0;
								FPcondWrite = 1'b0;
								writeDataPrecision = 2'b10; //double
							end
						
							default : begin
								RegDst = 2'b00;
								Jump = 1'b0;
								JumpReg = 1'b0;
								Branch = 1'b0;
								BranchNot = 1'b0;
								MemRead = 1'b0;
								MemtoReg = 2'b00;
								ALUCtrl = 4'b1111;
								MemWrite = 1'b0;
								ALUSrc = 1'b0;
								RegWrite = 1'b0;
								FP_RegDst = 1'b0;
								FP_MemtoReg = 1'b0;
								FP_ALUCtrl_S = 3'b111;
								FP_ALUCtrl_D = 2'b11;
								FP_RegWrite = 2'b00;
								FP_Branch = 1'b0;
								FPcondWrite = 1'b0;
								writeDataPrecision = 2'b00; //int
							end
						endcase
					end
				
					default : begin
						RegDst = 2'b00;
						Jump = 1'b0;
						JumpReg = 1'b0;
						Branch = 1'b0;
						BranchNot = 1'b0;
						MemRead = 1'b0;
						MemtoReg = 2'b00;
						ALUCtrl = 4'b1111;
						MemWrite = 1'b0;
						ALUSrc = 1'b0;
						RegWrite = 1'b0;
						FP_RegDst = 1'b0;
						FP_MemtoReg = 1'b0;
						FP_ALUCtrl_S = 3'b111;
						FP_ALUCtrl_D = 2'b11;
						FP_RegWrite = 2'b00;
						FP_Branch = 1'b0;
						FPcondWrite = 1'b0;
						writeDataPrecision = 2'b00; //int
					end
				endcase
			end

			6'h8: begin //addi
				RegDst = 2'b00;
				Jump = 1'b0;
				JumpReg = 1'b0;
				Branch = 1'b0;
				BranchNot = 1'b0;
				MemRead = 1'b0;
				MemtoReg = 2'b00;
				ALUCtrl = 4'b0010; //add
				MemWrite = 1'b0;
				ALUSrc = 1'b1;
				RegWrite = 1'b1;
				FP_RegDst = 1'b0;
				FP_MemtoReg = 1'b0;
				FP_ALUCtrl_S = 3'b111;
				FP_ALUCtrl_D = 2'b11;
				FP_RegWrite = 2'b00;
				FP_Branch = 1'b0;
				FPcondWrite = 1'b0;
				writeDataPrecision = 2'b00;
			end

			6'h23: begin //lw
				RegDst = 2'b00;
				Jump = 1'b0;
				JumpReg = 1'b0;
				Branch = 1'b0;
				BranchNot = 1'b0;
				MemRead = 1'b1;
				MemtoReg = 2'b01;
				ALUCtrl = 4'b0010; //add
				MemWrite = 1'b0;
				ALUSrc = 1'b1;
				RegWrite = 1'b1;
				FP_RegDst = 1'b0;
				FP_MemtoReg = 1'b0;
				FP_ALUCtrl_S = 3'b111;
				FP_ALUCtrl_D = 2'b11;
				FP_RegWrite = 2'b00;
				FP_Branch = 1'b0;
				FPcondWrite = 1'b0;
				writeDataPrecision = 2'b00;
			end

			6'h2b: begin //sw
				RegDst = 2'b00;
				Jump = 1'b0;
				JumpReg = 1'b0;
				Branch = 1'b0;
				BranchNot = 1'b0;
				MemRead = 1'b0;
				MemtoReg = 2'b00;
				ALUCtrl = 4'b0010; //add
				MemWrite = 1'b1;
				ALUSrc = 1'b1;
				RegWrite = 1'b0;
				FP_RegDst = 1'b0;
				FP_MemtoReg = 1'b0;
				FP_ALUCtrl_S = 3'b111;
				FP_ALUCtrl_D = 2'b11;
				FP_RegWrite = 2'b00;
				FP_Branch = 1'b0;
				FPcondWrite = 1'b0;
				writeDataPrecision = 2'b00;
			end

			6'h4: begin //beq
				RegDst = 2'b00;
				Jump = 1'b0;
				JumpReg = 1'b0;
				Branch = 1'b1;
				BranchNot = 1'b0;
				MemRead = 1'b0;
				MemtoReg = 2'b00;
				ALUCtrl = 4'b0110; //sub
				MemWrite = 1'b0;
				ALUSrc = 1'b0;
				RegWrite = 1'b0;
				FP_RegDst = 1'b0;
				FP_MemtoReg = 1'b0;
				FP_ALUCtrl_S = 3'b111;
				FP_ALUCtrl_D = 2'b11;
				FP_RegWrite = 2'b00;
				FP_Branch = 1'b0;
				FPcondWrite = 1'b0;
				writeDataPrecision = 2'b00;
			end

			6'h5: begin //bne
				RegDst = 2'b00;
				Jump = 1'b0;
				JumpReg = 1'b0;
				Branch = 1'b0;
				BranchNot = 1'b1;
				MemRead = 1'b0;
				MemtoReg = 2'b00;
				ALUCtrl = 4'b0110; //sub
				MemWrite = 1'b0;
				ALUSrc = 1'b0;
				RegWrite = 1'b0;
				FP_RegDst = 1'b0;
				FP_MemtoReg = 1'b0;
				FP_ALUCtrl_S = 3'b111;
				FP_ALUCtrl_D = 2'b11;
				FP_RegWrite = 2'b00;
				FP_Branch = 1'b0;
				FPcondWrite = 1'b0;
				writeDataPrecision = 2'b00;
			end

			6'h2: begin //j
				RegDst = 2'b00;
				Jump = 1'b1;
				JumpReg = 1'b0;
				Branch = 1'b0;
				BranchNot = 1'b0;
				MemRead = 1'b0;
				MemtoReg = 2'b00;
				ALUCtrl = 4'b1111;
				MemWrite = 1'b0;
				ALUSrc = 1'b0;
				RegWrite = 1'b0;
				FP_RegDst = 1'b0;
				FP_MemtoReg = 1'b0;
				FP_ALUCtrl_S = 3'b111;
				FP_ALUCtrl_D = 2'b11;
				FP_RegWrite = 2'b00;
				FP_Branch = 1'b0;
				FPcondWrite = 1'b0;
				writeDataPrecision = 2'b00;
			end

			6'h3: begin //jal
				RegDst = 2'b10; //rt=31
				Jump = 1'b1;
				JumpReg = 1'b0;
				Branch = 1'b0;
				BranchNot = 1'b0;
				MemRead = 1'b0;
				MemtoReg = 2'b10;
				ALUCtrl = 4'b1111;
				MemWrite = 1'b0;
				ALUSrc = 1'b0;
				RegWrite = 1'b1;
				FP_RegDst = 1'b0;
				FP_MemtoReg = 1'b0;
				FP_ALUCtrl_S = 3'b111;
				FP_ALUCtrl_D = 2'b11;
				FP_RegWrite = 2'b00;
				FP_Branch = 1'b0;
				FPcondWrite = 1'b0;
				writeDataPrecision = 2'b00;
			end

			6'h31: begin //lwcl
				RegDst = 2'b00;
				Jump = 1'b0;
				JumpReg = 1'b0;
				Branch = 1'b0;
				BranchNot = 1'b0;
				MemRead = 1'b1;
				MemtoReg = 2'b00;
				ALUCtrl = 4'b0010; //add
				MemWrite = 1'b0;
				ALUSrc = 1'b1;
				RegWrite = 1'b0;
				FP_RegDst = 1'b0;
				FP_MemtoReg = 1'b1;
				FP_ALUCtrl_S = 3'b111;
				FP_ALUCtrl_D = 2'b11;
				FP_RegWrite = 2'b01; //write to 1 reg
				FP_Branch = 1'b0;
				FPcondWrite = 1'b0;
				writeDataPrecision = 2'b01; //single
			end

			6'h39: begin //swcl
				RegDst = 2'b00;
				Jump = 1'b0;
				JumpReg = 1'b0;
				Branch = 1'b0;
				BranchNot = 1'b0;
				MemRead = 1'b0;
				MemtoReg = 2'b00;
				ALUCtrl = 4'b0010; //add
				MemWrite = 1'b1;
				ALUSrc = 1'b1;
				RegWrite = 1'b0;
				FP_RegDst = 1'b0;
				FP_MemtoReg = 1'b0;
				FP_ALUCtrl_S = 3'b111;
				FP_ALUCtrl_D = 2'b11;
				FP_RegWrite = 2'b00; //write to 0 reg
				FP_Branch = 1'b0;
				FPcondWrite = 1'b0;
				writeDataPrecision = 2'b01; //single
			end

			6'h35: begin //ldcl
				RegDst = 2'b00;
				Jump = 1'b0;
				JumpReg = 1'b0;
				Branch = 1'b0;
				BranchNot = 1'b0;
				MemRead = 1'b1;
				MemtoReg = 2'b00;
				ALUCtrl = 4'b0010; //add
				MemWrite = 1'b0;
				ALUSrc = 1'b1;
				RegWrite = 1'b0;
				FP_RegDst = 1'b0;
				FP_MemtoReg = 1'b1;
				FP_ALUCtrl_S = 3'b111;
				FP_ALUCtrl_D = 2'b11;
				FP_RegWrite = 2'b01; //write to 2 reg
				FP_Branch = 1'b0;
				FPcondWrite = 1'b0;
				writeDataPrecision = 2'b10; //double
			end

			6'h3d: begin //sdcl
				RegDst = 2'b00;
				Jump = 1'b0;
				JumpReg = 1'b0;
				Branch = 1'b0;
				BranchNot = 1'b0;
				MemRead = 1'b0;
				MemtoReg = 2'b00;
				ALUCtrl = 4'b0010; //add
				MemWrite = 1'b1;
				ALUSrc = 1'b1;
				RegWrite = 1'b0;
				FP_RegDst = 1'b0;
				FP_MemtoReg = 1'b0;
				FP_ALUCtrl_S = 3'b111;
				FP_ALUCtrl_D = 2'b11;
				FP_RegWrite = 2'b00; //write to 0 reg
				FP_Branch = 1'b0;
				FPcondWrite = 1'b0;
				writeDataPrecision = 2'b10; //double
			end
		
			default : begin
				RegDst = 2'b00;
				Jump = 1'b0;
				JumpReg = 1'b0;
				Branch = 1'b0;
				BranchNot = 1'b0;
				MemRead = 1'b0;
				MemtoReg = 2'b00;
				ALUCtrl = 4'b1111;
				MemWrite = 1'b0;
				ALUSrc = 1'b0;
				RegWrite = 1'b0;
				FP_RegDst = 1'b0;
				FP_MemtoReg = 1'b0;
				FP_ALUCtrl_S = 3'b111;
				FP_ALUCtrl_D = 2'b00;
				FP_RegWrite = 2'b00;
				FP_Branch = 1'b0;
				FPcondWrite = 1'b0;
				writeDataPrecision = 2'b00; //int
			end
		endcase
	
	end

endmodule
