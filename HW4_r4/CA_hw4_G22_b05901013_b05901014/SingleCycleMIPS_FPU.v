`include "FP_PC.v"
`include "Adder.v"
`include "shift_left_2.v"
`include "Registers.v"
`include "Sign_Extend.v"
`include "ALU.v"
`include "Control_all.v"
//`include "FPU_Control.v"
`include "FP_Registers.v"
`include "FP_ALU_S.v"
`include "FP_ALU_D.v"
//`include "MUX3.v"
//`include "ALU_Control.v"
module SingleCycleMIPS( 
    clk,
    rst_n,
    IR_addr,
    IR,
    ReadDataMem,
    CEN,
    WEN,
    A,
    Data2Mem,
    OEN
);

//==== in/out declaration =================================
    //-------- processor ----------------------------------
    input         clk, rst_n;
    input  [31:0] IR; //instruction
    output [31:0] IR_addr; //PC output
    //-------- data memory --------------------------------
    input  [31:0] ReadDataMem;  //data memory Q
    output        CEN;
    output        WEN; 
    output [ 6:0] A;  //data memory A
    output [31:0] Data2Mem;  //data memory D
    output        OEN;

//==== reg/wire declaration ===============================
//control signals for baseline
    wire Jump, JumpReg, Branch, BranchNot, MemRead, MemWrite, ALUSrc, RegWrite;
    wire [3:0] ALUCtrl;
    wire [1:0] RegDst, MemtoReg;
    wire ALUzero;
//control signals for FP
    wire FP_Branch, FPcondWrite, FP_RegDst, FP_MemtoReg; //maybe ALUSrc_FP is not needed
    wire [2:0] FP_ALUCtrl_S;
    wire [1:0] FP_RegWrite, FP_ALUCtrl_D;
    wire [1:0] writeDataPrecision;
    wire ALUzero_FP_S;
    wire FP_D_writestatus;
//data wires
    wire [31:0] PC_i, PC_next_no_branch, PC_next_branch, PC_next_no_jump, branch_amount_shifted;
    wire [31:0] IR_shifted, jump_address;
    wire [31:0] reg_write_data, reg_read_data_1, reg_read_data_2, ALU_in_2;
    wire [31:0] reg_write_data_FP_S, reg_read_data_1_FP_S, reg_read_data_2_FP_S;
    wire [63:0] reg_write_data_FP_D, reg_read_data_1_FP_D, reg_read_data_2_FP_D, ALU_result_FP_D;
    wire [ 4:0] write_register, write_register_FP;
    wire [31:0] imm_extended;
    wire [31:0] ALU_result, ALU_result_FP_S;
    wire        Fcond_i, Fcond_o;


//==== wire connection to submodule ======================
assign A = (FP_D_writestatus) ? ALU_result[8:2]+1 : ALU_result[8:2];
assign CEN = ((IR[31:26] == 6'h23) || (IR[31:26] == 6'h2b) || (IR[31:26] == 6'h39) || (IR[31:26] == 6'h3d) ||
              (IR[31:26] == 6'h31) || (IR[31:26] == 6'h35)) ? 0 : 1; //lw or sw
assign WEN = ~MemWrite; //sw
assign OEN = ~MemRead; //lw
assign Data2Mem = (writeDataPrecision==2'b00) ? reg_read_data_2 : (writeDataPrecision==2'b01) ? reg_read_data_2_FP_S : 
                  (FP_D_writestatus) ? reg_read_data_2_FP_D[31:0] : reg_read_data_2_FP_D[63:32]; //This is for determine where memory write data came from
//Data2Mem need to consider more for double FP!!

assign PC_i = (JumpReg) ? reg_read_data_1 : (Jump) ? jump_address : PC_next_no_jump;
assign PC_next_no_jump = ((ALUzero & Branch) || (~ALUzero & BranchNot) || (Fcond_o & FP_Branch)) ? PC_next_branch : PC_next_no_branch;
assign jump_address = {PC_next_no_branch[31:28], IR_shifted[27:0]};
assign reg_write_data = (MemtoReg==2'b00) ? ALU_result : (MemtoReg==2'b01) ? ReadDataMem : IR_addr+4;
assign reg_write_data_FP_S = (FP_MemtoReg==1'b0) ? ALU_result_FP_S : ReadDataMem;
assign reg_write_data_FP_D = ALU_result_FP_D;
assign Fcond_i = ALUzero_FP_S;
assign ALU_in_2 = (ALUSrc) ? imm_extended : reg_read_data_2;
assign write_register = (RegDst==2'b00) ? IR[20:16] : (RegDst==2'b01) ? IR[15:11] : 5'd31;
assign write_register_FP = (FP_RegDst==1'b0) ? ((FP_D_writestatus) ? IR[20:16]+1 : IR[20:16]) : IR[10:6];//TODO

PC pc(.clk(clk),
      .rst_n(rst_n),
      .opcode(IR[31:26]),
      .PC_i(PC_i),
      .PC_o(IR_addr),
      .FP_D_writestatus(FP_D_writestatus));

Adder adder_PC(.data1_i(IR_addr),
               .data2_i(32'd4),
               .data_o(PC_next_no_branch));

Adder adder_branch(.data1_i(PC_next_no_branch),
                   .data2_i(branch_amount_shifted),
                   .data_o(PC_next_branch));

shift_left_2 shift_jump(.data_i({6'b0, IR[25:0]}),
                        .data_o(IR_shifted));

shift_left_2 shift_branch(.data_i(imm_extended),
                          .data_o(branch_amount_shifted));

Registers register_memory(.clk(clk),
                          .rst_n(rst_n),
                          .RSaddr_i(IR[25:21]),
                          .RTaddr_i(IR[20:16]),
                          .RDaddr_i(write_register),
                          .RDdata_i(reg_write_data),
                          .RegWrite_i(RegWrite),
                          .RSdata_o(reg_read_data_1),
                          .RTdata_o(reg_read_data_2)); // TODO

Sign_Extend sign_extend(.data_i(IR[15:0]),
                        .data_o(imm_extended));

ALU alu(.data1_i(reg_read_data_1),
        .data2_i(ALU_in_2),
        .shamt_i(IR[10:6]),
        .ALUCtrl_i(ALUCtrl),
        .data_o(ALU_result),
        .zero_o(ALUzero));

Control control(.opcode(IR[31:26]),
                .fmt(IR[25:21]),
                .funct(IR[5:0]),
                .RegDst(RegDst),
                .Jump(Jump),
                .JumpReg(JumpReg),
                .Branch(Branch),
                .BranchNot(BranchNot),
                .MemRead(MemRead),
                .MemtoReg(MemtoReg),
                .ALUCtrl(ALUCtrl),
                .MemWrite(MemWrite),
                .ALUSrc(ALUSrc),
                .RegWrite(RegWrite),
                .FP_RegDst(FP_RegDst),
                .FP_MemtoReg(FP_MemtoReg),
                .FP_ALUCtrl_S(FP_ALUCtrl_S),
                .FP_ALUCtrl_D(FP_ALUCtrl_D),
                .FP_RegWrite(FP_RegWrite),
                .FP_Branch(FP_Branch),
                .FPcondWrite(FPcondWrite),
                .writeDataPrecision(writeDataPrecision));

FP_Registers fp_registers(.clk(clk),
                          .rst_n(rst_n),
                          .RSaddr_i(IR[15:11]),
                          .RTaddr_i(IR[20:16]),
                          .RDaddr_i(write_register_FP),
                          .RDdata_i(reg_write_data_FP_S),
                          .RDdata_D_i(reg_write_data_FP_D),
                          .Fcond_i(Fcond_i),
                          .RegWrite_i(FP_RegWrite),
                          .FPcondWrite(FPcondWrite),
                          .RSdata_o(reg_read_data_1_FP_S),
                          .RTdata_o(reg_read_data_2_FP_S),
                          .RSdata_D_o(reg_read_data_1_FP_D),
                          .RTdata_D_o(reg_read_data_2_FP_D),
                          .Fcond_o(Fcond_o));

FP_ALU_S fp_alu_s(.data1_i(reg_read_data_1_FP_S),
                  .data2_i(reg_read_data_2_FP_S),
                  .FP_ALUCtrl_i(FP_ALUCtrl_S),
                  .data_o(ALU_result_FP_S),
                  .zero_o(ALUzero_FP_S));

FP_ALU_D fp_alu_d(.data1_i(reg_read_data_1_FP_D),
                  .data2_i(reg_read_data_2_FP_D),
                  .FP_ALUCtrl_i(FP_ALUCtrl_D),
                  .data_o(ALU_result_FP_D));

//==== combinational part =================================







//==== sequential part ====================================
	


endmodule

// recommend you to use submodule for easier debugging 
//=========================================================
//Example:
//	module ctrl(
//		clk,
//		rst_n, ....


//	);





//	endmodule
		
