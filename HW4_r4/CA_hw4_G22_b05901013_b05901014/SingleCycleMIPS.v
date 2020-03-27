`include "PC.v"
`include "Adder.v"
`include "shift_left_2.v"
`include "Registers.v"
`include "Sign_Extend.v"
`include "ALU.v"
`include "Control.v"
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
//control signals
    wire Jump, JumpReg, Branch, BranchNot, MemRead, MemWrite, ALUSrc, RegWrite;
    wire [ 3:0] ALUCtrl;
    wire [ 1:0] RegDst, MemtoReg;
    wire ALUzero;
//data wires
    wire [31:0] PC_i, PC_next_no_branch, PC_next_branch, PC_next_no_jump, branch_amount_shifted;
    wire [31:0] IR_shifted, jump_address;
    wire [31:0] reg_write_data, reg_read_data_1, ALU_in_2;
    wire [ 4:0] write_register;
    wire [31:0] imm_extended;
    wire [31:0] ALU_result;


//==== wire connection to submodule ======================
assign A = ALU_result[8:2];
assign CEN = ((IR[31:26] == 6'h23) || (IR[31:26] == 6'h2b)) ? 0 : 1; //lw or sw
assign WEN = ~MemWrite; //sw
assign OEN = ~MemRead; //lw

assign PC_i = (JumpReg) ? reg_read_data_1 : (Jump) ? jump_address : PC_next_no_jump;
assign PC_next_no_jump = ((ALUzero & Branch) || (~ALUzero & BranchNot)) ? PC_next_branch : PC_next_no_branch;
assign jump_address = {PC_next_no_branch[31:28], IR_shifted[27:0]};
//assign write_register = (RegDst) ? IR[15:11] : IR[20:16];
assign ALU_in_2 = (ALUSrc) ? imm_extended : Data2Mem;
//assign reg_write_data = (MemtoReg) ? ReadDataMem : ALU_result;

PC pc(.clk(clk),
      .rst_n(rst_n),
      .PC_i(PC_i),
      .PC_o(IR_addr));

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
                          .RTdata_o(Data2Mem));

Sign_Extend sign_extend(.data_i(IR[15:0]),
                        .data_o(imm_extended));

ALU alu(.data1_i(reg_read_data_1),
        .data2_i(ALU_in_2),
        .shamt_i(IR[10:6]),
        .ALUCtrl_i(ALUCtrl),
        .data_o(ALU_result),
        .zero_o(ALUzero));

Control control(.opcode(IR[31:26]),
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
                .RegWrite(RegWrite));

/*MUX3 #(.DATA_WIDTH(32))
mux3_MemtoReg(.data1_i(ALU_result),
              .data2_i(ReadDataMem),
              .data3_i(IR_addr + 4), //TODO
              .ctrl_i(MemtoReg),
              .data_o(reg_write_data));*/

assign reg_write_data = (MemtoReg==2'b00) ? ALU_result : (MemtoReg==2'b01) ? ReadDataMem : IR_addr+4;

/*MUX3 #(.DATA_WIDTH(5))
mux3_RegDst(.data1_i(IR[20:16]),
            .data2_i(IR[15:11]),
            .data3_i(5'd31),
            .ctrl_i(RegDst),
            .data_o(write_register));*/
assign write_register = (RegDst==2'b00) ? IR[20:16] : (RegDst==2'b01) ? IR[15:11] : 5'd31;

/*ALU_Control alu_control(.funct(IR[5:0]),
                        .ALUOp(ALUOp),
                        .ALU_control(ALUCtrl))*/




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
		
