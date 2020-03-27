module Control(
	input [5:0] opcode,
	input [5:0] funct,
	output reg [1:0] RegDst,
	output reg Jump,
	output reg JumpReg,
	output reg Branch,
	output reg BranchNot,
	output reg MemRead,
	output reg [1:0] MemtoReg,
	//output reg [1:0] ALUOp,
	output reg [3:0] ALUCtrl,
	output reg MemWrite,
	output reg ALUSrc,
	output reg RegWrite);

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
						MemtoReg = 2'b0;
						//ALUOp = 2'b10;
						ALUCtrl = 4'b1010;
						MemWrite = 1'b0;
						ALUSrc = 1'b0;
						RegWrite = 1'b1;
					end

					6'h02: begin //srl
						RegDst = 2'b01;
						Jump = 1'b0;
						JumpReg = 1'b0;
						Branch = 1'b0;
						BranchNot= 1'b0;
						MemRead = 1'b0;
						MemtoReg = 2'b00;
						//ALUOp = 2'b10;
						ALUCtrl = 4'b1100;
						MemWrite = 1'b0;
						ALUSrc = 1'b0;
						RegWrite = 1'b1;
					end

					6'h20: begin //add
						RegDst = 2'b01;
						Jump = 1'b0;
						JumpReg = 1'b0;
						Branch = 1'b0;
						BranchNot = 1'b0;
						MemRead = 1'b0;
						MemtoReg = 2'b00;
						//ALUOp = 2'b10;
						ALUCtrl = 4'b0010;
						MemWrite = 1'b0;
						ALUSrc = 1'b0;
						RegWrite = 1'b1;
					end

					6'h22: begin //sub
						RegDst = 2'b01;
						Jump = 1'b0;
						JumpReg = 1'b0;
						Branch = 1'b0;
						BranchNot = 1'b0;
						MemRead = 1'b0;
						MemtoReg = 2'b00;
						//ALUOp = 2'b10;
						ALUCtrl = 4'b0110;
						MemWrite = 1'b0;
						ALUSrc = 1'b0;
						RegWrite = 1'b1;
					end

					6'h24: begin //and
						RegDst = 2'b01;
						Jump = 1'b0;
						JumpReg = 1'b0;
						Branch = 1'b0;
						BranchNot = 1'b0;
						MemRead = 1'b0;
						MemtoReg = 2'b00;
						//ALUOp = 2'b10;
						ALUCtrl = 4'b0000;
						MemWrite = 1'b0;
						ALUSrc = 1'b0;
						RegWrite = 1'b1;
					end

					6'h25: begin //or
						RegDst = 2'b01;
						Jump = 1'b0;
						JumpReg = 1'b0;
						Branch = 1'b0;
						BranchNot = 1'b0;
						MemRead = 1'b0;
						MemtoReg = 2'b00;
						//ALUOp = 2'b10;
						ALUCtrl = 4'b0001;
						MemWrite = 1'b0;
						ALUSrc = 1'b0;
						RegWrite = 1'b1;
					end

					6'h2a: begin //slt
						RegDst = 2'b01;
						Jump = 1'b0;
						JumpReg = 1'b0;
						Branch = 1'b0;
						BranchNot = 1'b0;
						MemRead = 1'b0;
						MemtoReg = 2'b00;
						//ALUOp = 2'b10;
						ALUCtrl = 4'b0111;
						MemWrite = 1'b0;
						ALUSrc = 1'b0;
						RegWrite = 1'b1;
					end

					6'h8: begin //jr
						RegDst = 2'b01;
						Jump = 1'b0;
						JumpReg = 1'b1;
						Branch = 1'b0;
						BranchNot = 1'b0;
						MemRead = 1'b0;
						MemtoReg = 2'b00;
						//ALUOp = 2'b10;
						ALUCtrl = 4'b1111;
						MemWrite = 1'b0;
						ALUSrc = 1'b0;
						RegWrite = 1'b0;
					end

					default : begin
						RegDst = 2'b00;
						Jump = 1'b0;
						JumpReg = 1'b0;
						Branch = 1'b0;
						BranchNot = 1'b0;
						MemRead = 1'b0;
						MemtoReg = 2'b00;
						//ALUOp = 2'b10;
						ALUCtrl = 4'b1111;
						MemWrite = 1'b0;
						ALUSrc = 1'b1;
						RegWrite = 1'b0;
					end
				endcase
				/*RegDst = 1'b1;
				Jump = 1'b0;
				Branch = 1'b0;
				MemRead = 1'b0;
				MemtoReg = 1'b0;
				ALUOp = 2'b10;
				MemWrite = 1'b0;
				ALUSrc = 1'b0;
				RegWrite = 1'b1;*/
			end

			6'h8: begin //addi
				RegDst = 2'b00;
				Jump = 1'b0;
				JumpReg = 1'b0;
				Branch = 1'b0;
				BranchNot = 1'b0;
				MemRead = 1'b0;
				MemtoReg = 2'b00;
				//ALUOp = 2'b00;
				ALUCtrl = 4'b0010;
				MemWrite = 1'b0;
				ALUSrc = 1'b1;
				RegWrite = 1'b1;
			end

			6'h23: begin //lw
				RegDst = 2'b00;
				Jump = 1'b0;
				JumpReg = 1'b0;
				Branch = 1'b0;
				BranchNot = 1'b0;
				MemRead = 1'b1;
				MemtoReg = 2'b01;
				//ALUOp = 2'b00;
				ALUCtrl = 4'b0010;
				MemWrite = 1'b0;
				ALUSrc = 1'b1;
				RegWrite = 1'b1;
			end

			6'h2b: begin //sw
				RegDst = 2'bx;
				Jump = 1'b0;
				JumpReg = 1'b0;
				Branch = 1'b0;
				BranchNot = 1'b0;
				MemRead = 1'b0;
				MemtoReg = 2'bx;
				//ALUOp = 2'b00;
				ALUCtrl = 4'b0010;
				MemWrite = 1'b1;
				ALUSrc = 1'b1;
				RegWrite = 1'b0;
			end

			6'h4: begin //beq
				RegDst = 2'bx;
				Jump = 1'b0;
				JumpReg = 1'b0;
				Branch = 1'b1;
				BranchNot = 1'b0;
				MemRead = 1'b0;
				MemtoReg = 2'bx;
				//ALUOp = 2'b01;
				ALUCtrl = 4'b0110;
				MemWrite = 1'b0;
				ALUSrc = 1'b0;
				RegWrite = 1'b0;
			end

			6'h5: begin //bne
				RegDst = 2'bx;
				Jump = 1'b0;
				JumpReg = 1'b0;
				Branch = 1'b0;
				BranchNot = 1'b1;
				MemRead = 1'b0;
				MemtoReg = 2'bx;
				//ALUOp = 2'b01;
				ALUCtrl = 4'b0110;
				MemWrite = 1'b0;
				ALUSrc = 1'b0;
				RegWrite = 1'b0;
			end

			6'h2: begin //j
				RegDst = 2'bx;
				Jump = 1'b1;
				JumpReg = 1'b0;
				Branch = 1'b0;
				BranchNot = 1'b0;
				MemRead = 1'b0;
				MemtoReg = 2'bx;
				//ALUOp = 2'bx;
				ALUCtrl = 4'b1111;
				MemWrite = 1'b0;
				ALUSrc = 1'bx;
				RegWrite = 1'b0;
			end

			6'h3: begin //jal
				RegDst = 2'b10;
				Jump = 1'b1;
				JumpReg = 1'b0;
				Branch = 1'b0;
				BranchNot = 1'b0;
				MemRead = 1'b0;
				MemtoReg = 2'b10;
				//ALUOp = 2'bx;
				ALUCtrl = 4'b1111;
				MemWrite = 1'b0;
				ALUSrc = 1'bx;
				RegWrite = 1'b1;
			end

			default : begin 
				RegDst = 2'b00;
				Jump = 1'b0;
				JumpReg = 1'b0;
				Branch = 1'b0;
				BranchNot = 1'b0;
				MemRead = 1'b0;
				MemtoReg = 2'b00;
				//ALUOp = 2'b11;
				ALUCtrl = 4'b1111;
				MemWrite = 1'b0;
				ALUSrc = 1'b1;
				RegWrite = 1'b0;
			end
		endcase
	
	end

endmodule
