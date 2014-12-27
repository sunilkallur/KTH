// *****************************************************************************
//                         Cadence C-to-Silicon Compiler
//          Version 14.10-s200  (32 bit), build 78898 Tue, 01 Jul 2014
// 
// File created on Thu Dec  4 10:21:13 2014
// 
// The code contained herein is generated for Cadences customer and third
// parties authorized by customer.  It may be used in accordance with a
// previously executed license agreement between Cadence and that customer.
// Absolutely no disassembling, decompiling, reverse-translations or
// reverse-engineering of the generated code is allowed.
// 
//*****************************************************************************
module FIR_behavior(clk, reset, sample, result, i_0, i_1, i_2, i_3, i_4);
  input clk;
  input reset;
  input signed [7:0] sample;
  output reg signed [7:0] result;
  output reg signed [7:0] i_0;
  output reg signed [7:0] i_1;
  output reg signed [7:0] i_2;
  output reg signed [7:0] i_3;
  output reg signed [7:0] i_4;
  reg [7:0] result_d;
  reg [7:0] i_0_d;
  reg [7:0] i_1_d;
  reg [7:0] i_2_d;
  reg [7:0] i_3_d;
  reg [7:0] i_4_d;

  // pragma async_set_reset_local FIR_behavior_seq_block reset
  always @(posedge clk or posedge reset) // FIR_behavior_sequential
    begin : FIR_behavior_seq_block
      if (reset) // Initialize state and outputs
      result <= 8'h0;
      else // Update Q values
      result <= result_d;
    end
  always @(posedge clk) // FIR_behavior_0_sequential
    begin
      i_0 <= i_0_d;
      i_1 <= i_1_d;
      i_2 <= i_2_d;
      i_3 <= i_3_d;
      i_4 <= i_4_d;
    end
  always @(*) begin : FIR_behavior_combinational
      reg [6:0] add_ln36_unr0_z;
      reg [7:0] add_ln36_unr1_0_z;
      reg [7:0] add_ln36_unr2_0_z;
      reg [7:0] add_ln36_unr1_z;
      reg [7:0] add_ln36_unr2_z;
      reg [6:0] add_ln36_unr3_z;
      reg [7:0] add_ln36_unr4_z;

      add_ln36_unr0_z = sample[7:1] + i_0[6:0];
      add_ln36_unr1_0_z = {i_1[6:0], 1'b0} + i_1;
      add_ln36_unr2_0_z = {i_2[6:0], 1'b0} + i_2;
      i_0_d = sample;
      i_1_d = i_0;
      i_2_d = i_1;
      i_3_d = i_2;
      i_4_d = i_3;
      add_ln36_unr1_z = {add_ln36_unr0_z, sample[0]} + add_ln36_unr1_0_z;
      add_ln36_unr2_z = add_ln36_unr1_z + add_ln36_unr2_0_z;
      add_ln36_unr3_z = add_ln36_unr2_z[7:1] + i_3[6:0];
      add_ln36_unr4_z = {add_ln36_unr3_z, add_ln36_unr2_z[0]} + i_4;
      result_d = add_ln36_unr4_z;
    end
endmodule


