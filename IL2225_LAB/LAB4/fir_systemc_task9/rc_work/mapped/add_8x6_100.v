
// Generated by Cadence Encounter(R) RTL Compiler RC13.10 - v13.10-s006_1

module add_8x6_100(A, B, Z);
  input [7:0] A;
  input [5:0] B;
  output [7:0] Z;
  wire [7:0] A;
  wire [5:0] B;
  wire [7:0] Z;
  wire n_0, n_1, n_2, n_3, n_5, n_6, n_7, n_8;
  wire n_9, n_11, n_12, n_13, n_14, n_15, n_16, n_17;
  wire n_18, n_19, n_20, n_21, n_22, n_23, n_24, n_25;
  wire n_26, n_27, n_28, n_29, n_30, n_31, n_32, n_33;
  wire n_34, n_35, n_36, n_37, n_38, n_39, n_40, n_42;
  wire n_44, n_45, n_46, n_47, n_48, n_49, n_50, n_51;
  wire n_52, n_53, n_54, n_55, n_57, n_58, n_59, n_60;
  wire n_61, n_62, n_63, n_64, n_65, n_66, n_88, n_89;
  wire n_90, n_92;
  xor2 g14192(.A (n_66), .B (A[7]), .Y (Z[7]));
  xor2 g14191(.A (n_65), .B (A[6]), .Y (Z[6]));
  xor2 g14195(.A (n_64), .B (n_27), .Y (Z[5]));
  xor2 g14193(.A (n_63), .B (n_30), .Y (Z[4]));
  xor2 g14194(.A (n_61), .B (n_26), .Y (Z[3]));
  nand2 g14196(.A (n_62), .B (n_60), .Y (n_66));
  nand2 g14197(.A (n_59), .B (n_58), .Y (n_65));
  nor2 g14200(.A (n_46), .B (n_49), .Y (n_64));
  nor2 g14198(.A (n_53), .B (n_44), .Y (n_63));
  nor2 g14201(.A (n_48), .B (n_40), .Y (n_62));
  nor2 g14202(.A (n_55), .B (n_5), .Y (n_61));
  nand2 g14199(.A (n_52), .B (n_57), .Y (n_60));
  nor2 g14203(.A (n_50), .B (n_45), .Y (n_59));
  nand2 g14207(.A (n_42), .B (n_57), .Y (n_58));
  xor2 g14204(.A (n_54), .B (n_31), .Y (Z[2]));
  nor2 g14206(.A (n_54), .B (n_14), .Y (n_55));
  nor2 g14208(.A (n_54), .B (n_51), .Y (n_53));
  nor2 g14209(.A (n_38), .B (n_51), .Y (n_52));
  nor2 g14210(.A (n_89), .B (n_47), .Y (n_50));
  nand2 g14211(.A (n_36), .B (n_28), .Y (n_49));
  nor2 g14212(.A (n_35), .B (n_47), .Y (n_48));
  nor2 g14205(.A (n_54), .B (n_37), .Y (n_46));
  nor2 g14218(.A (n_39), .B (n_7), .Y (n_45));
  inv1 g14221(.A (n_88), .Y (n_44));
  nor2 g14224(.A (n_47), .B (n_51), .Y (n_42));
  xor2 g14213(.A (n_16), .B (n_17), .Y (Z[1]));
  nor2 g14214(.A (n_32), .B (n_39), .Y (n_40));
  inv1 g14216(.A (n_54), .Y (n_57));
  nand2 g14219(.A (n_12), .B (n_33), .Y (n_38));
  nand2 g14220(.A (n_15), .B (n_25), .Y (n_37));
  nand2 g14223(.A (n_21), .B (n_34), .Y (n_36));
  nand2 g14215(.A (n_11), .B (n_34), .Y (n_35));
  nor2 g14217(.A (n_18), .B (n_6), .Y (n_54));
  inv1 g14238(.A (n_23), .Y (n_39));
  nand2 g14240(.A (n_29), .B (n_33), .Y (n_47));
  nand2 g14231(.A (n_33), .B (A[6]), .Y (n_32));
  nand2 g14226(.A (n_24), .B (n_20), .Y (n_31));
  nand2 g14228(.A (n_29), .B (n_28), .Y (n_30));
  nand2 g14229(.A (n_33), .B (n_22), .Y (n_27));
  nand2 g14233(.A (n_25), .B (n_19), .Y (n_26));
  nand2 g14235(.A (n_25), .B (n_24), .Y (n_51));
  nand2 g14239(.A (n_28), .B (n_22), .Y (n_23));
  nor2 g14241(.A (n_13), .B (n_92), .Y (n_21));
  nand2 g14237(.A (n_20), .B (n_19), .Y (n_34));
  nor2 g14225(.A (n_2), .B (n_17), .Y (n_18));
  xor2 g14227(.A (n_0), .B (B[1]), .Y (n_16));
  nor2 g14230(.A (n_14), .B (n_13), .Y (n_15));
  nor2 g14232(.A (n_13), .B (n_9), .Y (n_12));
  nor2 g14234(.A (n_92), .B (n_9), .Y (n_11));
  nor2 g14236(.A (n_90), .B (n_20), .Y (n_8));
  inv1 g14249(.A (n_13), .Y (n_29));
  inv1 g14245(.A (n_14), .Y (n_24));
  inv1 g14247(.A (n_7), .Y (n_33));
  inv1 g14252(.A (n_1), .Y (n_6));
  inv1 g14259(.A (n_20), .Y (n_5));
  inv1 g14243(.A (n_92), .Y (n_25));
  xor2 g14242(.A (B[0]), .B (A[0]), .Y (Z[0]));
  inv1 g14257(.A (n_19), .Y (n_3));
  nor2 g14248(.A (B[5]), .B (A[5]), .Y (n_7));
  nor2 g14246(.A (B[2]), .B (A[2]), .Y (n_14));
  nand2 g14258(.A (A[3]), .B (B[3]), .Y (n_19));
  nor2 g14250(.A (A[4]), .B (B[4]), .Y (n_13));
  nand2 g14255(.A (A[0]), .B (B[0]), .Y (n_17));
  nor2 g14251(.A (A[1]), .B (B[1]), .Y (n_2));
  nand2 g14253(.A (A[1]), .B (B[1]), .Y (n_1));
  nand2 g14254(.A (A[5]), .B (B[5]), .Y (n_22));
  nand2 g14260(.A (A[2]), .B (B[2]), .Y (n_20));
  nand2 g14256(.A (A[4]), .B (B[4]), .Y (n_28));
  inv1 g14261(.A (A[6]), .Y (n_9));
  inv1 g14262(.A (A[1]), .Y (n_0));
  nor2 g14264(.A (n_8), .B (n_3), .Y (n_88));
  nor2 g14222_dup(.A (n_8), .B (n_3), .Y (n_89));
  nor2 g14244_dup14265(.A (B[3]), .B (A[3]), .Y (n_90));
  nor2 g14244_dup_dup14266(.A (B[3]), .B (A[3]), .Y (n_92));
endmodule
