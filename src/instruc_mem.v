
module Instruction_Memory(rst,A,RD);

  input rst;
  input [31:0]A;
  output [31:0]RD;

  reg [31:0] mem [1023:0];
  integer i ;
  assign RD = (~rst) ? {32{1'b0}} : mem[A[31:2]];

   initial begin
    // Initialize all memory locations to 0
    
    for (i = 0; i < 1024; i = i + 1)
      mem[i] = 32'h00000000;

    // -----------------------------------
    // Insert instructions directly here
    // -----------------------------------

    mem[0] = 32'h0062E3B3;  // xor x7, x5, x6
    mem[1] = 32'h0062F433;  // or x8, x5, x6
    mem[2] = 32'h006283B3;
    mem[3] = 32'h4062C433;

    end

endmodule
