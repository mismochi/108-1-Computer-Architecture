module matvecmult(
    CLK,
    RST,
    vector_x,
    vector_b,
    vector_y,
    Q,
    A,
    finish
);

input               CLK;
input               RST;
input       [127:0]	vector_x;
input       [127:0]	vector_b;
output  reg [127:0]	vector_y;
input       [127:0]	Q;
output  reg [3:0]   A;
output  reg         finish;

reg [7:0] vector_x_r      [15:0];
reg [7:0] vector_b_r      [15:0];
reg [7:0] vector_y_r      [15:0], vector_y_w      [15:0];
reg [7:0] part_matrix_a_r [15:0], part_matrix_a_w [15:0];
reg [7:0] temp;
reg [3:0] counter_w, counter_r;
reg       finish_w, finish_r;

always @(posedge CLK) begin
    {vector_x_r[0],  vector_x_r[1],  vector_x_r[2],  vector_x_r[3],
     vector_x_r[4],  vector_x_r[5],  vector_x_r[6],  vector_x_r[7],
     vector_x_r[8],  vector_x_r[9],  vector_x_r[10], vector_x_r[11],
     vector_x_r[12], vector_x_r[13], vector_x_r[14], vector_x_r[15]} = vector_x;

    {vector_b_r[0],  vector_b_r[1],  vector_b_r[2],  vector_b_r[3],
     vector_b_r[4],  vector_b_r[5],  vector_b_r[6],  vector_b_r[7],
     vector_b_r[8],  vector_b_r[9],  vector_b_r[10], vector_b_r[11],
     vector_b_r[12], vector_b_r[13], vector_b_r[14], vector_b_r[15]} = vector_b;

    {part_matrix_a_w[15], part_matrix_a_w[14], part_matrix_a_w[13], part_matrix_a_w[12],
     part_matrix_a_w[11], part_matrix_a_w[10], part_matrix_a_w[9],  part_matrix_a_w[8],
     part_matrix_a_w[7],  part_matrix_a_w[6],  part_matrix_a_w[5],  part_matrix_a_w[4],
     part_matrix_a_w[3],  part_matrix_a_w[2],  part_matrix_a_w[1],  part_matrix_a_w[0]} = Q;

    temp = 2 * (vector_x_r[15] *  part_matrix_a_w[15] + 
                vector_x_r[14] *  part_matrix_a_w[14] + 
                vector_x_r[13] *  part_matrix_a_w[13] + 
                vector_x_r[12] *  part_matrix_a_w[12] + 
                vector_x_r[11] *  part_matrix_a_w[11] + 
                vector_x_r[10] *  part_matrix_a_w[10] + 
                vector_x_r[9]  *  part_matrix_a_w[9]  + 
                vector_x_r[8]  *  part_matrix_a_w[8]  + 
                vector_x_r[7]  *  part_matrix_a_w[7]  + 
                vector_x_r[6]  *  part_matrix_a_w[6]  + 
                vector_x_r[5]  *  part_matrix_a_w[5]  + 
                vector_x_r[4]  *  part_matrix_a_w[4]  + 
                vector_x_r[3]  *  part_matrix_a_w[3]  + 
                vector_x_r[2]  *  part_matrix_a_w[2]  + 
                vector_x_r[1]  *  part_matrix_a_w[1]  + 
                vector_x_r[0]  *  part_matrix_a_w[0]);

    counter_w = counter_r;

    if (RST) begin
        counter_w = 0;
        finish_w = 0;
        {vector_y_w[15], vector_y_w[14], vector_y_w[13], vector_y_w[12],
         vector_y_w[11], vector_y_w[10], vector_y_w[9],  vector_y_w[8],
         vector_y_w[7],  vector_y_w[6],  vector_y_w[5],  vector_y_w[4],
         vector_y_w[3],  vector_y_w[2],  vector_y_w[1],  vector_y_w[0]} = 128'b0;
    end
    else begin
        case (counter_r)
            4'b0000: begin
                vector_y_w[0] = vector_y_r[0] + temp + vector_b_r[15];
                counter_w = counter_r + 1'b1;
            end
            4'b0001: begin
                vector_y_w[1] = vector_y_r[1] + temp + vector_b_r[14];
                counter_w = counter_r + 1'b1;
            end
            4'b0010: begin
                vector_y_w[2] = vector_y_r[2] + temp + vector_b_r[13];
                counter_w = counter_r + 1'b1;
            end
            4'b0011: begin
                vector_y_w[3] = vector_y_r[3] + temp + vector_b_r[12];
                counter_w = counter_r + 1'b1;
            end
            4'b0100: begin
                vector_y_w[4] = vector_y_r[4] + temp + vector_b_r[11];
                counter_w = counter_r + 1'b1;
            end
            4'b0101: begin
                vector_y_w[5] = vector_y_r[5] + temp + vector_b_r[10];
                counter_w = counter_r + 1'b1;
            end
            4'b0110: begin
                vector_y_w[6] = vector_y_r[6] + temp + vector_b_r[9];
                counter_w = counter_r + 1'b1;
            end
            4'b0111: begin
                vector_y_w[7] = vector_y_r[7] + temp + vector_b_r[8];
                counter_w = counter_r + 1'b1;
            end
            4'b1000: begin
                vector_y_w[8] = vector_y_r[8] + temp + vector_b_r[7];
                counter_w = counter_r + 1'b1;
            end
            4'b1001: begin
                vector_y_w[9] = vector_y_r[9] + temp + vector_b_r[6];
                counter_w = counter_r + 1'b1;
            end
            4'b1010: begin
                vector_y_w[10] = vector_y_r[10] + temp + vector_b_r[5];
                counter_w = counter_r + 1'b1;
            end
            4'b1011: begin
                vector_y_w[11] = vector_y_r[11] + temp + vector_b_r[4];
                counter_w = counter_r + 1'b1;
            end
            4'b1100: begin
                vector_y_w[12] = vector_y_r[12] + temp + vector_b_r[3];
                counter_w = counter_r + 1'b1;
            end
            4'b1101: begin
                vector_y_w[13] = vector_y_r[13] + temp + vector_b_r[2];
                counter_w = counter_r + 1'b1;
            end
            4'b1110: begin
                vector_y_w[14] = vector_y_r[14] + temp + vector_b_r[1];
                counter_w = counter_r + 1'b1;
            end
            4'b1111: begin
                vector_y_w[15] = vector_y_r[15] + temp + vector_b_r[0];
                finish_w = 1;
            end
            default: begin
                counter_w = counter_r;
            end
        endcase
    end

    finish = finish_r;
    A = counter_w;
    vector_y = {vector_y_r[15], vector_y_r[14], vector_y_r[13], vector_y_r[12],
                vector_y_r[11], vector_y_r[10], vector_y_r[9],  vector_y_r[8],
                vector_y_r[7],  vector_y_r[6],  vector_y_r[5],  vector_y_r[4],
                vector_y_r[3],  vector_y_r[2],  vector_y_r[1],  vector_y_r[0]};
end


always @(posedge CLK or posedge RST) begin
    if (RST) begin
        // reset
        counter_r <= 0;
        finish_r <= 0;

        {vector_y_r[15], vector_y_r[14], vector_y_r[13], vector_y_r[12],
         vector_y_r[11], vector_y_r[10], vector_y_r[9],  vector_y_r[8],
         vector_y_r[7],  vector_y_r[6],  vector_y_r[5],  vector_y_r[4],
         vector_y_r[3],  vector_y_r[2],  vector_y_r[1],  vector_y_r[0]} <= 128'b0;

        {part_matrix_a_r[15], part_matrix_a_r[14], part_matrix_a_r[13], part_matrix_a_r[12],
         part_matrix_a_r[11], part_matrix_a_r[10], part_matrix_a_r[9],  part_matrix_a_r[8],
         part_matrix_a_r[7],  part_matrix_a_r[6],  part_matrix_a_r[5],  part_matrix_a_r[4],
         part_matrix_a_r[3],  part_matrix_a_r[2],  part_matrix_a_r[1],  part_matrix_a_r[0]} <= 128'b0;
    end
    else begin
        counter_r <= counter_w;
        finish_r <= finish_w;

        vector_y_r[15] <= vector_y_w[15];
        vector_y_r[14] <= vector_y_w[14];
        vector_y_r[13] <= vector_y_w[13];
        vector_y_r[12] <= vector_y_w[12];
        vector_y_r[11] <= vector_y_w[11];
        vector_y_r[10] <= vector_y_w[10];
        vector_y_r[9]  <= vector_y_w[9];
        vector_y_r[8]  <= vector_y_w[8];
        vector_y_r[7]  <= vector_y_w[7];
        vector_y_r[6]  <= vector_y_w[6];
        vector_y_r[5]  <= vector_y_w[5];
        vector_y_r[4]  <= vector_y_w[4];
        vector_y_r[3]  <= vector_y_w[3];
        vector_y_r[2]  <= vector_y_w[2];
        vector_y_r[1]  <= vector_y_w[1];
        vector_y_r[0]  <= vector_y_w[0];

        part_matrix_a_r[15] <= part_matrix_a_w[15];
        part_matrix_a_r[14] <= part_matrix_a_w[14];
        part_matrix_a_r[13] <= part_matrix_a_w[13];
        part_matrix_a_r[12] <= part_matrix_a_w[12];
        part_matrix_a_r[11] <= part_matrix_a_w[11];
        part_matrix_a_r[10] <= part_matrix_a_w[10];
        part_matrix_a_r[9]  <= part_matrix_a_w[9];
        part_matrix_a_r[8]  <= part_matrix_a_w[8];
        part_matrix_a_r[7]  <= part_matrix_a_w[7];
        part_matrix_a_r[6]  <= part_matrix_a_w[6];
        part_matrix_a_r[5]  <= part_matrix_a_w[5];
        part_matrix_a_r[4]  <= part_matrix_a_w[4];
        part_matrix_a_r[3]  <= part_matrix_a_w[3];
        part_matrix_a_r[2]  <= part_matrix_a_w[2];
        part_matrix_a_r[1]  <= part_matrix_a_w[1];
        part_matrix_a_r[0]  <= part_matrix_a_w[0];
    end
end

endmodule