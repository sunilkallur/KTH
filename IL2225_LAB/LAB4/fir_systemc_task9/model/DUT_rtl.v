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
module DUT_rtl(clk, reset, sample, result);
  input clk;
  input reset;
  input signed [7:0] sample;
  output signed [7:0] result;
  wire signed [7:0] i_0;
  wire signed [7:0] i_1;
  wire signed [7:0] i_2;
  wire signed [7:0] i_3;
  wire signed [7:0] i_4;

  FIR_behavior FIR_behavior(.clk(clk), .reset(reset), .sample(sample), .result(
               result), .i_0(i_0), .i_1(i_1), .i_2(i_2), .i_3(i_3), .i_4(i_4));
endmodule


