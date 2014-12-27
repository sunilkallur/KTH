
module delay_line ( clk, sample_clk, rst_n, w_addr, w_en, sample_in, r_addr1, 
        sample_out1 );
  input [3:0] w_addr;
  input [9:0] sample_in;
  input [3:0] r_addr1;
  output [9:0] sample_out1;
  input clk, sample_clk, rst_n, w_en;
  wire   \data[10][9] , \data[10][8] , \data[10][7] , \data[10][6] ,
         \data[10][5] , \data[10][4] , \data[10][3] , \data[10][2] ,
         \data[10][1] , \data[10][0] , \data[9][9] , \data[9][8] ,
         \data[9][7] , \data[9][6] , \data[9][5] , \data[9][4] , \data[9][3] ,
         \data[9][2] , \data[9][1] , \data[9][0] , \data[8][9] , \data[8][8] ,
         \data[8][7] , \data[8][6] , \data[8][5] , \data[8][4] , \data[8][3] ,
         \data[8][2] , \data[8][1] , \data[8][0] , \data[7][9] , \data[7][8] ,
         \data[7][7] , \data[7][6] , \data[7][5] , \data[7][4] , \data[7][3] ,
         \data[7][2] , \data[7][1] , \data[7][0] , \data[6][9] , \data[6][8] ,
         \data[6][7] , \data[6][6] , \data[6][5] , \data[6][4] , \data[6][3] ,
         \data[6][2] , \data[6][1] , \data[6][0] , \data[5][9] , \data[5][8] ,
         \data[5][7] , \data[5][6] , \data[5][5] , \data[5][4] , \data[5][3] ,
         \data[5][2] , \data[5][1] , \data[5][0] , \data[4][9] , \data[4][8] ,
         \data[4][7] , \data[4][6] , \data[4][5] , \data[4][4] , \data[4][3] ,
         \data[4][2] , \data[4][1] , \data[4][0] , \data[3][9] , \data[3][8] ,
         \data[3][7] , \data[3][6] , \data[3][5] , \data[3][4] , \data[3][3] ,
         \data[3][2] , \data[3][1] , \data[3][0] , \data[2][9] , \data[2][8] ,
         \data[2][7] , \data[2][6] , \data[2][5] , \data[2][4] , \data[2][3] ,
         \data[2][2] , \data[2][1] , \data[2][0] , \data[1][9] , \data[1][8] ,
         \data[1][7] , \data[1][6] , \data[1][5] , \data[1][4] , \data[1][3] ,
         \data[1][2] , \data[1][1] , \data[1][0] , \data[0][9] , \data[0][8] ,
         \data[0][7] , \data[0][6] , \data[0][5] , \data[0][4] , \data[0][3] ,
         \data[0][2] , \data[0][1] , \data[0][0] , n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n107,
         n108, n110, n112, n114, n115, n117, n122, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n32, n33, n34, n35, n36, n37, n61, n62, n106, n109,
         n111, n113, n116, n118, n119, n120, n121, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135;

  EDFCNQD1 \data_reg[8][9]  ( .D(sample_in[9]), .E(n7), .CP(clk), .CDN(n119), 
        .Q(\data[8][9] ) );
  EDFCNQD1 \data_reg[8][8]  ( .D(sample_in[8]), .E(n7), .CP(clk), .CDN(n119), 
        .Q(\data[8][8] ) );
  EDFCNQD1 \data_reg[8][7]  ( .D(sample_in[7]), .E(n7), .CP(clk), .CDN(n119), 
        .Q(\data[8][7] ) );
  EDFCNQD1 \data_reg[8][6]  ( .D(sample_in[6]), .E(n7), .CP(clk), .CDN(n119), 
        .Q(\data[8][6] ) );
  EDFCNQD1 \data_reg[8][5]  ( .D(sample_in[5]), .E(n7), .CP(clk), .CDN(n119), 
        .Q(\data[8][5] ) );
  EDFCNQD1 \data_reg[8][4]  ( .D(sample_in[4]), .E(n7), .CP(clk), .CDN(n119), 
        .Q(\data[8][4] ) );
  EDFCNQD1 \data_reg[8][3]  ( .D(sample_in[3]), .E(n7), .CP(clk), .CDN(n119), 
        .Q(\data[8][3] ) );
  EDFCNQD1 \data_reg[8][2]  ( .D(sample_in[2]), .E(n7), .CP(clk), .CDN(n119), 
        .Q(\data[8][2] ) );
  EDFCNQD1 \data_reg[8][1]  ( .D(sample_in[1]), .E(n7), .CP(clk), .CDN(n120), 
        .Q(\data[8][1] ) );
  EDFCNQD1 \data_reg[8][0]  ( .D(sample_in[0]), .E(n7), .CP(clk), .CDN(n120), 
        .Q(\data[8][0] ) );
  EDFCNQD1 \data_reg[5][9]  ( .D(sample_in[9]), .E(n34), .CP(clk), .CDN(n121), 
        .Q(\data[5][9] ) );
  EDFCNQD1 \data_reg[5][8]  ( .D(sample_in[8]), .E(n34), .CP(clk), .CDN(n121), 
        .Q(\data[5][8] ) );
  EDFCNQD1 \data_reg[5][7]  ( .D(sample_in[7]), .E(n34), .CP(clk), .CDN(n123), 
        .Q(\data[5][7] ) );
  EDFCNQD1 \data_reg[5][6]  ( .D(sample_in[6]), .E(n34), .CP(clk), .CDN(n123), 
        .Q(\data[5][6] ) );
  EDFCNQD1 \data_reg[5][5]  ( .D(sample_in[5]), .E(n34), .CP(clk), .CDN(n123), 
        .Q(\data[5][5] ) );
  EDFCNQD1 \data_reg[5][4]  ( .D(sample_in[4]), .E(n34), .CP(clk), .CDN(n123), 
        .Q(\data[5][4] ) );
  EDFCNQD1 \data_reg[5][3]  ( .D(sample_in[3]), .E(n34), .CP(clk), .CDN(n123), 
        .Q(\data[5][3] ) );
  EDFCNQD1 \data_reg[5][2]  ( .D(sample_in[2]), .E(n34), .CP(clk), .CDN(n123), 
        .Q(\data[5][2] ) );
  EDFCNQD1 \data_reg[5][1]  ( .D(sample_in[1]), .E(n34), .CP(clk), .CDN(n123), 
        .Q(\data[5][1] ) );
  EDFCNQD1 \data_reg[5][0]  ( .D(sample_in[0]), .E(n34), .CP(clk), .CDN(n123), 
        .Q(\data[5][0] ) );
  EDFCNQD1 \data_reg[2][9]  ( .D(sample_in[9]), .E(n35), .CP(clk), .CDN(n125), 
        .Q(\data[2][9] ) );
  EDFCNQD1 \data_reg[2][8]  ( .D(sample_in[8]), .E(n35), .CP(clk), .CDN(n125), 
        .Q(\data[2][8] ) );
  EDFCNQD1 \data_reg[2][7]  ( .D(sample_in[7]), .E(n35), .CP(clk), .CDN(n125), 
        .Q(\data[2][7] ) );
  EDFCNQD1 \data_reg[2][6]  ( .D(sample_in[6]), .E(n35), .CP(clk), .CDN(n125), 
        .Q(\data[2][6] ) );
  EDFCNQD1 \data_reg[2][5]  ( .D(sample_in[5]), .E(n35), .CP(clk), .CDN(n125), 
        .Q(\data[2][5] ) );
  EDFCNQD1 \data_reg[2][4]  ( .D(sample_in[4]), .E(n35), .CP(clk), .CDN(n125), 
        .Q(\data[2][4] ) );
  EDFCNQD1 \data_reg[2][3]  ( .D(sample_in[3]), .E(n35), .CP(clk), .CDN(n125), 
        .Q(\data[2][3] ) );
  EDFCNQD1 \data_reg[2][2]  ( .D(sample_in[2]), .E(n35), .CP(clk), .CDN(n125), 
        .Q(\data[2][2] ) );
  EDFCNQD1 \data_reg[2][1]  ( .D(sample_in[1]), .E(n35), .CP(clk), .CDN(n126), 
        .Q(\data[2][1] ) );
  EDFCNQD1 \data_reg[2][0]  ( .D(sample_in[0]), .E(n35), .CP(clk), .CDN(n126), 
        .Q(\data[2][0] ) );
  EDFCNQD1 \data_reg[7][9]  ( .D(sample_in[9]), .E(n61), .CP(clk), .CDN(n120), 
        .Q(\data[7][9] ) );
  EDFCNQD1 \data_reg[7][8]  ( .D(sample_in[8]), .E(n61), .CP(clk), .CDN(n120), 
        .Q(\data[7][8] ) );
  EDFCNQD1 \data_reg[7][7]  ( .D(sample_in[7]), .E(n61), .CP(clk), .CDN(n120), 
        .Q(\data[7][7] ) );
  EDFCNQD1 \data_reg[7][6]  ( .D(sample_in[6]), .E(n61), .CP(clk), .CDN(n120), 
        .Q(\data[7][6] ) );
  EDFCNQD1 \data_reg[7][5]  ( .D(sample_in[5]), .E(n61), .CP(clk), .CDN(n120), 
        .Q(\data[7][5] ) );
  EDFCNQD1 \data_reg[7][4]  ( .D(sample_in[4]), .E(n61), .CP(clk), .CDN(n120), 
        .Q(\data[7][4] ) );
  EDFCNQD1 \data_reg[7][3]  ( .D(sample_in[3]), .E(n61), .CP(clk), .CDN(n120), 
        .Q(\data[7][3] ) );
  EDFCNQD1 \data_reg[7][2]  ( .D(sample_in[2]), .E(n61), .CP(clk), .CDN(n120), 
        .Q(\data[7][2] ) );
  EDFCNQD1 \data_reg[7][1]  ( .D(sample_in[1]), .E(n61), .CP(clk), .CDN(n120), 
        .Q(\data[7][1] ) );
  EDFCNQD1 \data_reg[7][0]  ( .D(sample_in[0]), .E(n61), .CP(clk), .CDN(n120), 
        .Q(\data[7][0] ) );
  EDFCNQD1 \data_reg[4][9]  ( .D(sample_in[9]), .E(n32), .CP(clk), .CDN(n123), 
        .Q(\data[4][9] ) );
  EDFCNQD1 \data_reg[4][8]  ( .D(sample_in[8]), .E(n32), .CP(clk), .CDN(n123), 
        .Q(\data[4][8] ) );
  EDFCNQD1 \data_reg[4][7]  ( .D(sample_in[7]), .E(n32), .CP(clk), .CDN(n123), 
        .Q(\data[4][7] ) );
  EDFCNQD1 \data_reg[4][6]  ( .D(sample_in[6]), .E(n32), .CP(clk), .CDN(n123), 
        .Q(\data[4][6] ) );
  EDFCNQD1 \data_reg[4][5]  ( .D(sample_in[5]), .E(n32), .CP(clk), .CDN(n124), 
        .Q(\data[4][5] ) );
  EDFCNQD1 \data_reg[4][4]  ( .D(sample_in[4]), .E(n32), .CP(clk), .CDN(n124), 
        .Q(\data[4][4] ) );
  EDFCNQD1 \data_reg[4][3]  ( .D(sample_in[3]), .E(n32), .CP(clk), .CDN(n124), 
        .Q(\data[4][3] ) );
  EDFCNQD1 \data_reg[4][2]  ( .D(sample_in[2]), .E(n32), .CP(clk), .CDN(n124), 
        .Q(\data[4][2] ) );
  EDFCNQD1 \data_reg[4][1]  ( .D(sample_in[1]), .E(n32), .CP(clk), .CDN(n124), 
        .Q(\data[4][1] ) );
  EDFCNQD1 \data_reg[4][0]  ( .D(sample_in[0]), .E(n32), .CP(clk), .CDN(n124), 
        .Q(\data[4][0] ) );
  EDFCNQD1 \data_reg[1][9]  ( .D(sample_in[9]), .E(n33), .CP(clk), .CDN(n126), 
        .Q(\data[1][9] ) );
  EDFCNQD1 \data_reg[1][8]  ( .D(sample_in[8]), .E(n33), .CP(clk), .CDN(n126), 
        .Q(\data[1][8] ) );
  EDFCNQD1 \data_reg[1][7]  ( .D(sample_in[7]), .E(n33), .CP(clk), .CDN(n126), 
        .Q(\data[1][7] ) );
  EDFCNQD1 \data_reg[1][6]  ( .D(sample_in[6]), .E(n33), .CP(clk), .CDN(n126), 
        .Q(\data[1][6] ) );
  EDFCNQD1 \data_reg[1][5]  ( .D(sample_in[5]), .E(n33), .CP(clk), .CDN(n126), 
        .Q(\data[1][5] ) );
  EDFCNQD1 \data_reg[1][4]  ( .D(sample_in[4]), .E(n33), .CP(clk), .CDN(n126), 
        .Q(\data[1][4] ) );
  EDFCNQD1 \data_reg[1][3]  ( .D(sample_in[3]), .E(n33), .CP(clk), .CDN(n126), 
        .Q(\data[1][3] ) );
  EDFCNQD1 \data_reg[1][2]  ( .D(sample_in[2]), .E(n33), .CP(clk), .CDN(n126), 
        .Q(\data[1][2] ) );
  EDFCNQD1 \data_reg[1][1]  ( .D(sample_in[1]), .E(n33), .CP(clk), .CDN(n126), 
        .Q(\data[1][1] ) );
  EDFCNQD1 \data_reg[1][0]  ( .D(sample_in[0]), .E(n33), .CP(clk), .CDN(n126), 
        .Q(\data[1][0] ) );
  EDFCNQD1 \data_reg[6][9]  ( .D(sample_in[9]), .E(n37), .CP(clk), .CDN(n121), 
        .Q(\data[6][9] ) );
  EDFCNQD1 \data_reg[6][8]  ( .D(sample_in[8]), .E(n37), .CP(clk), .CDN(n121), 
        .Q(\data[6][8] ) );
  EDFCNQD1 \data_reg[6][7]  ( .D(sample_in[7]), .E(n37), .CP(clk), .CDN(n121), 
        .Q(\data[6][7] ) );
  EDFCNQD1 \data_reg[6][6]  ( .D(sample_in[6]), .E(n37), .CP(clk), .CDN(n121), 
        .Q(\data[6][6] ) );
  EDFCNQD1 \data_reg[6][5]  ( .D(sample_in[5]), .E(n37), .CP(clk), .CDN(n121), 
        .Q(\data[6][5] ) );
  EDFCNQD1 \data_reg[6][4]  ( .D(sample_in[4]), .E(n37), .CP(clk), .CDN(n121), 
        .Q(\data[6][4] ) );
  EDFCNQD1 \data_reg[6][3]  ( .D(sample_in[3]), .E(n37), .CP(clk), .CDN(n121), 
        .Q(\data[6][3] ) );
  EDFCNQD1 \data_reg[6][2]  ( .D(sample_in[2]), .E(n37), .CP(clk), .CDN(n121), 
        .Q(\data[6][2] ) );
  EDFCNQD1 \data_reg[6][1]  ( .D(sample_in[1]), .E(n37), .CP(clk), .CDN(n121), 
        .Q(\data[6][1] ) );
  EDFCNQD1 \data_reg[6][0]  ( .D(sample_in[0]), .E(n37), .CP(clk), .CDN(n121), 
        .Q(\data[6][0] ) );
  EDFCNQD1 \data_reg[3][9]  ( .D(sample_in[9]), .E(n36), .CP(clk), .CDN(n124), 
        .Q(\data[3][9] ) );
  EDFCNQD1 \data_reg[3][8]  ( .D(sample_in[8]), .E(n36), .CP(clk), .CDN(n124), 
        .Q(\data[3][8] ) );
  EDFCNQD1 \data_reg[3][7]  ( .D(sample_in[7]), .E(n36), .CP(clk), .CDN(n124), 
        .Q(\data[3][7] ) );
  EDFCNQD1 \data_reg[3][6]  ( .D(sample_in[6]), .E(n36), .CP(clk), .CDN(n124), 
        .Q(\data[3][6] ) );
  EDFCNQD1 \data_reg[3][5]  ( .D(sample_in[5]), .E(n36), .CP(clk), .CDN(n124), 
        .Q(\data[3][5] ) );
  EDFCNQD1 \data_reg[3][4]  ( .D(sample_in[4]), .E(n36), .CP(clk), .CDN(n124), 
        .Q(\data[3][4] ) );
  EDFCNQD1 \data_reg[3][3]  ( .D(sample_in[3]), .E(n36), .CP(clk), .CDN(n125), 
        .Q(\data[3][3] ) );
  EDFCNQD1 \data_reg[3][2]  ( .D(sample_in[2]), .E(n36), .CP(clk), .CDN(n125), 
        .Q(\data[3][2] ) );
  EDFCNQD1 \data_reg[3][1]  ( .D(sample_in[1]), .E(n36), .CP(clk), .CDN(n125), 
        .Q(\data[3][1] ) );
  EDFCNQD1 \data_reg[3][0]  ( .D(sample_in[0]), .E(n36), .CP(clk), .CDN(n125), 
        .Q(\data[3][0] ) );
  EDFCNQD1 \data_reg[0][9]  ( .D(sample_in[9]), .E(n11), .CP(clk), .CDN(n127), 
        .Q(\data[0][9] ) );
  EDFCNQD1 \data_reg[0][8]  ( .D(sample_in[8]), .E(n11), .CP(clk), .CDN(n127), 
        .Q(\data[0][8] ) );
  EDFCNQD1 \data_reg[0][7]  ( .D(sample_in[7]), .E(n11), .CP(clk), .CDN(n127), 
        .Q(\data[0][7] ) );
  EDFCNQD1 \data_reg[0][6]  ( .D(sample_in[6]), .E(n11), .CP(clk), .CDN(n127), 
        .Q(\data[0][6] ) );
  EDFCNQD1 \data_reg[0][5]  ( .D(sample_in[5]), .E(n11), .CP(clk), .CDN(n127), 
        .Q(\data[0][5] ) );
  EDFCNQD1 \data_reg[0][4]  ( .D(sample_in[4]), .E(n11), .CP(clk), .CDN(n127), 
        .Q(\data[0][4] ) );
  EDFCNQD1 \data_reg[0][3]  ( .D(sample_in[3]), .E(n11), .CP(clk), .CDN(n127), 
        .Q(\data[0][3] ) );
  EDFCNQD1 \data_reg[0][2]  ( .D(sample_in[2]), .E(n11), .CP(clk), .CDN(n127), 
        .Q(\data[0][2] ) );
  EDFCNQD1 \data_reg[0][1]  ( .D(sample_in[1]), .E(n11), .CP(clk), .CDN(n127), 
        .Q(\data[0][1] ) );
  EDFCNQD1 \data_reg[0][0]  ( .D(sample_in[0]), .E(n11), .CP(clk), .CDN(n127), 
        .Q(\data[0][0] ) );
  EDFCNQD1 \data_reg[9][9]  ( .D(sample_in[9]), .E(n8), .CP(clk), .CDN(n118), 
        .Q(\data[9][9] ) );
  EDFCNQD1 \data_reg[9][8]  ( .D(sample_in[8]), .E(n8), .CP(clk), .CDN(n118), 
        .Q(\data[9][8] ) );
  EDFCNQD1 \data_reg[9][7]  ( .D(sample_in[7]), .E(n8), .CP(clk), .CDN(n118), 
        .Q(\data[9][7] ) );
  EDFCNQD1 \data_reg[9][6]  ( .D(sample_in[6]), .E(n8), .CP(clk), .CDN(n118), 
        .Q(\data[9][6] ) );
  EDFCNQD1 \data_reg[9][5]  ( .D(sample_in[5]), .E(n8), .CP(clk), .CDN(n118), 
        .Q(\data[9][5] ) );
  EDFCNQD1 \data_reg[9][4]  ( .D(sample_in[4]), .E(n8), .CP(clk), .CDN(n118), 
        .Q(\data[9][4] ) );
  EDFCNQD1 \data_reg[9][3]  ( .D(sample_in[3]), .E(n8), .CP(clk), .CDN(n119), 
        .Q(\data[9][3] ) );
  EDFCNQD1 \data_reg[9][2]  ( .D(sample_in[2]), .E(n8), .CP(clk), .CDN(n119), 
        .Q(\data[9][2] ) );
  EDFCNQD1 \data_reg[9][1]  ( .D(sample_in[1]), .E(n8), .CP(clk), .CDN(n119), 
        .Q(\data[9][1] ) );
  EDFCNQD1 \data_reg[9][0]  ( .D(sample_in[0]), .E(n8), .CP(clk), .CDN(n119), 
        .Q(\data[9][0] ) );
  EDFCNQD1 \data_reg[10][9]  ( .D(sample_in[9]), .E(n9), .CP(clk), .CDN(n116), 
        .Q(\data[10][9] ) );
  EDFCNQD1 \data_reg[10][8]  ( .D(sample_in[8]), .E(n9), .CP(clk), .CDN(n116), 
        .Q(\data[10][8] ) );
  EDFCNQD1 \data_reg[10][7]  ( .D(sample_in[7]), .E(n9), .CP(clk), .CDN(n116), 
        .Q(\data[10][7] ) );
  EDFCNQD1 \data_reg[10][6]  ( .D(sample_in[6]), .E(n9), .CP(clk), .CDN(n116), 
        .Q(\data[10][6] ) );
  EDFCNQD1 \data_reg[10][5]  ( .D(sample_in[5]), .E(n9), .CP(clk), .CDN(n118), 
        .Q(\data[10][5] ) );
  EDFCNQD1 \data_reg[10][4]  ( .D(sample_in[4]), .E(n9), .CP(clk), .CDN(n118), 
        .Q(\data[10][4] ) );
  EDFCNQD1 \data_reg[10][3]  ( .D(sample_in[3]), .E(n9), .CP(clk), .CDN(n118), 
        .Q(\data[10][3] ) );
  EDFCNQD1 \data_reg[10][2]  ( .D(sample_in[2]), .E(n9), .CP(clk), .CDN(n118), 
        .Q(\data[10][2] ) );
  EDFCNQD1 \data_reg[10][1]  ( .D(sample_in[1]), .E(n9), .CP(clk), .CDN(n118), 
        .Q(\data[10][1] ) );
  EDFCNQD1 \data_reg[10][0]  ( .D(sample_in[0]), .E(n9), .CP(clk), .CDN(n118), 
        .Q(\data[10][0] ) );
  EDFCND1 \data_reg[12][9]  ( .D(sample_in[9]), .E(n62), .CP(clk), .CDN(n113), 
        .QN(n12) );
  EDFCND1 \data_reg[12][8]  ( .D(sample_in[8]), .E(n62), .CP(clk), .CDN(n113), 
        .QN(n13) );
  EDFCND1 \data_reg[12][7]  ( .D(sample_in[7]), .E(n62), .CP(clk), .CDN(n113), 
        .QN(n14) );
  EDFCND1 \data_reg[12][6]  ( .D(sample_in[6]), .E(n62), .CP(clk), .CDN(n113), 
        .QN(n15) );
  EDFCND1 \data_reg[12][4]  ( .D(sample_in[4]), .E(n62), .CP(clk), .CDN(n113), 
        .QN(n17) );
  EDFCND1 \data_reg[12][3]  ( .D(sample_in[3]), .E(n62), .CP(clk), .CDN(n113), 
        .QN(n18) );
  EDFCND1 \data_reg[12][2]  ( .D(sample_in[2]), .E(n62), .CP(clk), .CDN(n113), 
        .QN(n19) );
  EDFCND1 \data_reg[12][1]  ( .D(sample_in[1]), .E(n62), .CP(clk), .CDN(n113), 
        .QN(n20) );
  EDFCND1 \data_reg[12][0]  ( .D(sample_in[0]), .E(n62), .CP(clk), .CDN(n113), 
        .QN(n21) );
  EDFCND1 \data_reg[11][9]  ( .D(sample_in[9]), .E(n10), .CP(clk), .CDN(n113), 
        .QN(n22) );
  EDFCND1 \data_reg[11][8]  ( .D(sample_in[8]), .E(n10), .CP(clk), .CDN(n113), 
        .QN(n23) );
  EDFCND1 \data_reg[11][7]  ( .D(sample_in[7]), .E(n10), .CP(clk), .CDN(n116), 
        .QN(n24) );
  EDFCND1 \data_reg[11][6]  ( .D(sample_in[6]), .E(n10), .CP(clk), .CDN(n116), 
        .QN(n25) );
  EDFCND1 \data_reg[11][4]  ( .D(sample_in[4]), .E(n10), .CP(clk), .CDN(n116), 
        .QN(n27) );
  EDFCND1 \data_reg[11][3]  ( .D(sample_in[3]), .E(n10), .CP(clk), .CDN(n116), 
        .QN(n28) );
  EDFCND1 \data_reg[11][2]  ( .D(sample_in[2]), .E(n10), .CP(clk), .CDN(n116), 
        .QN(n29) );
  EDFCND1 \data_reg[11][1]  ( .D(sample_in[1]), .E(n10), .CP(clk), .CDN(n116), 
        .QN(n30) );
  EDFCND1 \data_reg[11][0]  ( .D(sample_in[0]), .E(n10), .CP(clk), .CDN(n116), 
        .QN(n31) );
  EDFCND1 \data_reg[12][5]  ( .D(sample_in[5]), .E(n62), .CP(clk), .CDN(n113), 
        .QN(n16) );
  EDFCND1 \data_reg[11][5]  ( .D(sample_in[5]), .E(n10), .CP(clk), .CDN(n116), 
        .QN(n26) );
  BUFFD4 U2 ( .I(n55), .Z(n1) );
  ND4D3 U3 ( .A1(n81), .A2(n82), .A3(n83), .A4(n84), .ZN(sample_out1[3]) );
  AOI221D1 U4 ( .A1(\data[10][9] ), .A2(n42), .B1(\data[9][9] ), .B2(n2), .C(
        n44), .ZN(n41) );
  BUFFD4 U5 ( .I(n43), .Z(n2) );
  AOI222D1 U6 ( .A1(\data[3][9] ), .A2(n4), .B1(\data[5][9] ), .B2(n51), .C1(
        \data[4][9] ), .C2(n106), .ZN(n39) );
  BUFFD4 U7 ( .I(n50), .Z(n4) );
  AOI222D2 U8 ( .A1(\data[6][1] ), .A2(n47), .B1(\data[8][1] ), .B2(n48), .C1(
        \data[7][1] ), .C2(n3), .ZN(n93) );
  AOI221D0 U9 ( .A1(\data[10][7] ), .A2(n42), .B1(\data[9][7] ), .B2(n2), .C(
        n65), .ZN(n64) );
  AOI222D0 U10 ( .A1(\data[0][6] ), .A2(n53), .B1(\data[2][6] ), .B2(n54), 
        .C1(\data[1][6] ), .C2(n1), .ZN(n66) );
  NR2D1 U11 ( .A1(r_addr1[2]), .A2(r_addr1[3]), .ZN(n105) );
  BUFFD2 U12 ( .I(n52), .Z(n106) );
  AN2D1 U13 ( .A1(n102), .A2(r_addr1[2]), .Z(n51) );
  AN3D1 U14 ( .A1(r_addr1[3]), .A2(n133), .A3(n104), .Z(n48) );
  AOI222D1 U15 ( .A1(\data[6][0] ), .A2(n47), .B1(\data[8][0] ), .B2(n48), 
        .C1(\data[7][0] ), .C2(n3), .ZN(n98) );
  AOI222D2 U16 ( .A1(\data[0][1] ), .A2(n53), .B1(\data[2][1] ), .B2(n54), 
        .C1(\data[1][1] ), .C2(n1), .ZN(n91) );
  AN2D2 U17 ( .A1(n103), .A2(r_addr1[3]), .Z(n42) );
  AOI222D1 U18 ( .A1(\data[0][0] ), .A2(n53), .B1(\data[2][0] ), .B2(n54), 
        .C1(\data[1][0] ), .C2(n1), .ZN(n96) );
  ND4D2 U19 ( .A1(n91), .A2(n92), .A3(n93), .A4(n94), .ZN(sample_out1[1]) );
  AOI222D1 U20 ( .A1(\data[6][5] ), .A2(n47), .B1(\data[8][5] ), .B2(n48), 
        .C1(\data[7][5] ), .C2(n3), .ZN(n73) );
  AOI222D1 U21 ( .A1(\data[0][5] ), .A2(n53), .B1(\data[2][5] ), .B2(n54), 
        .C1(\data[1][5] ), .C2(n1), .ZN(n71) );
  AOI222D1 U22 ( .A1(\data[6][4] ), .A2(n47), .B1(\data[8][4] ), .B2(n48), 
        .C1(\data[7][4] ), .C2(n3), .ZN(n78) );
  ND4D2 U23 ( .A1(n86), .A2(n87), .A3(n88), .A4(n89), .ZN(sample_out1[2]) );
  AOI221D1 U24 ( .A1(\data[10][2] ), .A2(n42), .B1(\data[9][2] ), .B2(n2), .C(
        n90), .ZN(n89) );
  AOI222D2 U25 ( .A1(\data[6][3] ), .A2(n47), .B1(\data[8][3] ), .B2(n48), 
        .C1(\data[7][3] ), .C2(n3), .ZN(n83) );
  AOI222D1 U26 ( .A1(\data[6][9] ), .A2(n47), .B1(\data[8][9] ), .B2(n48), 
        .C1(\data[7][9] ), .C2(n3), .ZN(n40) );
  AOI222D1 U27 ( .A1(\data[3][2] ), .A2(n4), .B1(\data[5][2] ), .B2(n51), .C1(
        \data[4][2] ), .C2(n106), .ZN(n87) );
  AOI222D1 U28 ( .A1(\data[6][2] ), .A2(n47), .B1(\data[8][2] ), .B2(n48), 
        .C1(\data[7][2] ), .C2(n3), .ZN(n88) );
  NR2D1 U29 ( .A1(r_addr1[0]), .A2(r_addr1[1]), .ZN(n104) );
  AN2D1 U30 ( .A1(r_addr1[0]), .A2(n134), .Z(n102) );
  INVD1 U31 ( .I(r_addr1[1]), .ZN(n134) );
  BUFFD4 U32 ( .I(n49), .Z(n3) );
  AN2D2 U33 ( .A1(n103), .A2(r_addr1[2]), .Z(n47) );
  CKND2D2 U34 ( .A1(n101), .A2(r_addr1[3]), .ZN(n45) );
  CKAN2D0 U35 ( .A1(r_addr1[1]), .A2(r_addr1[0]), .Z(n101) );
  AOI221D1 U36 ( .A1(\data[10][1] ), .A2(n42), .B1(\data[9][1] ), .B2(n2), .C(
        n95), .ZN(n94) );
  AOI222D1 U37 ( .A1(\data[0][9] ), .A2(n53), .B1(\data[2][9] ), .B2(n54), 
        .C1(\data[1][9] ), .C2(n1), .ZN(n38) );
  INR3D0 U38 ( .A1(n104), .B1(n133), .B2(r_addr1[3]), .ZN(n52) );
  AN2D1 U39 ( .A1(n105), .A2(n104), .Z(n53) );
  AOI222D1 U40 ( .A1(\data[0][2] ), .A2(n53), .B1(\data[2][2] ), .B2(n54), 
        .C1(\data[1][2] ), .C2(n1), .ZN(n86) );
  AOI222D2 U41 ( .A1(\data[0][3] ), .A2(n53), .B1(\data[2][3] ), .B2(n54), 
        .C1(\data[1][3] ), .C2(n1), .ZN(n81) );
  AOI222D1 U42 ( .A1(\data[0][4] ), .A2(n53), .B1(\data[2][4] ), .B2(n54), 
        .C1(\data[1][4] ), .C2(n1), .ZN(n76) );
  AOI221D1 U43 ( .A1(\data[10][3] ), .A2(n42), .B1(\data[9][3] ), .B2(n2), .C(
        n85), .ZN(n84) );
  NR2D0 U44 ( .A1(n134), .A2(r_addr1[0]), .ZN(n103) );
  AN2D2 U45 ( .A1(n105), .A2(n103), .Z(n54) );
  AN2D0 U46 ( .A1(n101), .A2(r_addr1[2]), .Z(n49) );
  AN2D0 U47 ( .A1(n105), .A2(n101), .Z(n50) );
  AN2D0 U48 ( .A1(n105), .A2(n102), .Z(n55) );
  ND4D1 U49 ( .A1(n66), .A2(n67), .A3(n68), .A4(n69), .ZN(sample_out1[6]) );
  AOI221D0 U50 ( .A1(\data[10][4] ), .A2(n42), .B1(\data[9][4] ), .B2(n2), .C(
        n80), .ZN(n79) );
  OAI22D0 U51 ( .A1(n45), .A2(n30), .B1(n46), .B2(n20), .ZN(n95) );
  ND4D8 U52 ( .A1(n71), .A2(n72), .A3(n73), .A4(n74), .ZN(sample_out1[5]) );
  AN2D0 U53 ( .A1(n102), .A2(r_addr1[3]), .Z(n43) );
  ND4D1 U54 ( .A1(n5), .A2(n6), .A3(n63), .A4(n64), .ZN(sample_out1[7]) );
  AOI222D0 U55 ( .A1(\data[0][7] ), .A2(n53), .B1(\data[2][7] ), .B2(n54), 
        .C1(\data[1][7] ), .C2(n1), .ZN(n5) );
  AOI222D0 U56 ( .A1(\data[3][7] ), .A2(n4), .B1(\data[5][7] ), .B2(n51), .C1(
        \data[4][7] ), .C2(n106), .ZN(n6) );
  AOI222D0 U57 ( .A1(\data[3][5] ), .A2(n4), .B1(\data[5][5] ), .B2(n51), .C1(
        \data[4][5] ), .C2(n106), .ZN(n72) );
  INVD0 U58 ( .I(r_addr1[2]), .ZN(n133) );
  AOI222D1 U59 ( .A1(\data[3][1] ), .A2(n4), .B1(\data[5][1] ), .B2(n51), .C1(
        \data[4][1] ), .C2(n106), .ZN(n92) );
  BUFFD0 U60 ( .I(n128), .Z(n126) );
  BUFFD0 U61 ( .I(n128), .Z(n125) );
  BUFFD0 U62 ( .I(n129), .Z(n124) );
  BUFFD0 U63 ( .I(n129), .Z(n123) );
  BUFFD0 U64 ( .I(n129), .Z(n121) );
  BUFFD0 U65 ( .I(n130), .Z(n120) );
  BUFFD0 U66 ( .I(n130), .Z(n119) );
  BUFFD0 U67 ( .I(n130), .Z(n118) );
  BUFFD0 U68 ( .I(n128), .Z(n127) );
  AN2D0 U69 ( .A1(n122), .A2(n108), .Z(n7) );
  AN2D0 U70 ( .A1(n122), .A2(n110), .Z(n8) );
  AN2D0 U71 ( .A1(n122), .A2(n112), .Z(n9) );
  AN2D0 U72 ( .A1(n122), .A2(n114), .Z(n10) );
  AN2D0 U73 ( .A1(n107), .A2(n108), .Z(n11) );
  AN2D0 U74 ( .A1(n117), .A2(n108), .Z(n32) );
  AN2D0 U75 ( .A1(n110), .A2(n107), .Z(n33) );
  AN2D0 U76 ( .A1(n117), .A2(n110), .Z(n34) );
  AN2D0 U77 ( .A1(n112), .A2(n107), .Z(n35) );
  AN2D0 U78 ( .A1(n114), .A2(n107), .Z(n36) );
  AN2D0 U79 ( .A1(n117), .A2(n112), .Z(n37) );
  AN2D0 U80 ( .A1(n117), .A2(n114), .Z(n61) );
  INVD1 U81 ( .I(w_en), .ZN(n135) );
  BUFFD0 U82 ( .I(n131), .Z(n113) );
  BUFFD0 U83 ( .I(n131), .Z(n116) );
  BUFFD0 U84 ( .I(n109), .Z(n128) );
  BUFFD0 U85 ( .I(n109), .Z(n129) );
  BUFFD0 U86 ( .I(n109), .Z(n130) );
  AOI222D0 U87 ( .A1(\data[6][7] ), .A2(n47), .B1(\data[8][7] ), .B2(n48), 
        .C1(\data[7][7] ), .C2(n3), .ZN(n63) );
  AOI222D0 U88 ( .A1(\data[6][8] ), .A2(n47), .B1(\data[8][8] ), .B2(n48), 
        .C1(\data[7][8] ), .C2(n3), .ZN(n58) );
  AOI222D0 U89 ( .A1(\data[6][6] ), .A2(n47), .B1(\data[8][6] ), .B2(n48), 
        .C1(\data[7][6] ), .C2(n3), .ZN(n68) );
  AOI221D0 U90 ( .A1(\data[10][5] ), .A2(n42), .B1(\data[9][5] ), .B2(n2), .C(
        n75), .ZN(n74) );
  OAI22D0 U91 ( .A1(n45), .A2(n28), .B1(n46), .B2(n18), .ZN(n85) );
  OAI22D0 U92 ( .A1(n45), .A2(n24), .B1(n46), .B2(n14), .ZN(n65) );
  OAI22D0 U93 ( .A1(n45), .A2(n26), .B1(n46), .B2(n16), .ZN(n75) );
  OAI22D0 U94 ( .A1(n45), .A2(n22), .B1(n46), .B2(n12), .ZN(n44) );
  OAI22D0 U95 ( .A1(n45), .A2(n25), .B1(n46), .B2(n15), .ZN(n70) );
  OAI22D0 U96 ( .A1(n45), .A2(n27), .B1(n46), .B2(n17), .ZN(n80) );
  OAI22D0 U97 ( .A1(n45), .A2(n29), .B1(n46), .B2(n19), .ZN(n90) );
  OAI22D0 U98 ( .A1(n45), .A2(n31), .B1(n46), .B2(n21), .ZN(n100) );
  OAI22D0 U99 ( .A1(n45), .A2(n23), .B1(n46), .B2(n13), .ZN(n60) );
  AOI222D1 U100 ( .A1(\data[3][3] ), .A2(n4), .B1(\data[5][3] ), .B2(n51), 
        .C1(\data[4][3] ), .C2(n106), .ZN(n82) );
  ND4D1 U101 ( .A1(n38), .A2(n39), .A3(n40), .A4(n41), .ZN(sample_out1[9]) );
  ND4D1 U102 ( .A1(n56), .A2(n57), .A3(n58), .A4(n59), .ZN(sample_out1[8]) );
  AOI221D0 U103 ( .A1(\data[10][8] ), .A2(n42), .B1(\data[9][8] ), .B2(n2), 
        .C(n60), .ZN(n59) );
  AOI222D0 U104 ( .A1(\data[3][8] ), .A2(n4), .B1(\data[5][8] ), .B2(n51), 
        .C1(\data[4][8] ), .C2(n106), .ZN(n57) );
  AOI222D0 U105 ( .A1(\data[0][8] ), .A2(n53), .B1(\data[2][8] ), .B2(n54), 
        .C1(\data[1][8] ), .C2(n1), .ZN(n56) );
  AOI221D0 U106 ( .A1(\data[10][6] ), .A2(n42), .B1(\data[9][6] ), .B2(n2), 
        .C(n70), .ZN(n69) );
  AOI222D0 U107 ( .A1(\data[3][6] ), .A2(n4), .B1(\data[5][6] ), .B2(n51), 
        .C1(\data[4][6] ), .C2(n106), .ZN(n67) );
  ND4D1 U108 ( .A1(n76), .A2(n77), .A3(n78), .A4(n79), .ZN(sample_out1[4]) );
  AOI222D0 U109 ( .A1(\data[3][4] ), .A2(n4), .B1(\data[5][4] ), .B2(n51), 
        .C1(\data[4][4] ), .C2(n106), .ZN(n77) );
  ND2D1 U110 ( .A1(r_addr1[3]), .A2(r_addr1[2]), .ZN(n46) );
  ND4D1 U111 ( .A1(n96), .A2(n97), .A3(n98), .A4(n99), .ZN(sample_out1[0]) );
  AOI221D0 U112 ( .A1(\data[10][0] ), .A2(n42), .B1(\data[9][0] ), .B2(n2), 
        .C(n100), .ZN(n99) );
  AOI222D0 U113 ( .A1(\data[3][0] ), .A2(n4), .B1(\data[5][0] ), .B2(n51), 
        .C1(\data[4][0] ), .C2(n106), .ZN(n97) );
  INR3D0 U114 ( .A1(w_addr[3]), .B1(n135), .B2(w_addr[2]), .ZN(n122) );
  INR2D1 U115 ( .A1(n115), .B1(w_addr[2]), .ZN(n107) );
  NR2D1 U116 ( .A1(n135), .A2(w_addr[3]), .ZN(n115) );
  AN2D0 U117 ( .A1(w_addr[2]), .A2(n115), .Z(n117) );
  NR2D1 U118 ( .A1(w_addr[0]), .A2(w_addr[1]), .ZN(n108) );
  NR2D1 U119 ( .A1(n132), .A2(w_addr[1]), .ZN(n110) );
  AN2D0 U120 ( .A1(w_addr[1]), .A2(n132), .Z(n112) );
  AN2D0 U121 ( .A1(w_addr[1]), .A2(w_addr[0]), .Z(n114) );
  AN4D1 U122 ( .A1(w_addr[3]), .A2(w_addr[2]), .A3(n108), .A4(w_en), .Z(n62)
         );
  INVD1 U123 ( .I(w_addr[0]), .ZN(n132) );
  BUFFD0 U124 ( .I(rst_n), .Z(n109) );
  BUFFD0 U125 ( .I(n111), .Z(n131) );
  BUFFD0 U126 ( .I(rst_n), .Z(n111) );
endmodule


module Coef_ROM ( coeff_addr, coeff );
  input [3:0] coeff_addr;
  output [9:0] coeff;
  wire   n5, n6, n7, n8, n9, n1, n2, n4;
  assign coeff[0] = 1'b1;
  assign coeff[7] = 1'b0;
  assign coeff[8] = 1'b0;
  assign coeff[9] = 1'b0;

  INVD1 U3 ( .I(coeff[4]), .ZN(n2) );
  ND2D1 U4 ( .A1(coeff_addr[0]), .A2(n4), .ZN(n7) );
  OR2D4 U5 ( .A1(n6), .A2(coeff[3]), .Z(coeff[2]) );
  OAI211D2 U6 ( .A1(n1), .A2(n7), .B(n8), .C(n2), .ZN(coeff[3]) );
  AOI21D1 U7 ( .A1(coeff_addr[2]), .A2(coeff_addr[0]), .B(coeff[6]), .ZN(n5)
         );
  XNR2D2 U8 ( .A1(coeff_addr[3]), .A2(coeff_addr[2]), .ZN(n9) );
  INVD2 U9 ( .I(coeff_addr[1]), .ZN(n4) );
  ND3D0 U10 ( .A1(coeff_addr[1]), .A2(n1), .A3(coeff_addr[0]), .ZN(n8) );
  INVD0 U11 ( .I(coeff_addr[3]), .ZN(n1) );
  AN2D2 U12 ( .A1(coeff_addr[2]), .A2(n6), .Z(coeff[6]) );
  ND3D1 U13 ( .A1(n2), .A2(n4), .A3(n7), .ZN(coeff[1]) );
  OAI31D1 U14 ( .A1(n9), .A2(coeff_addr[1]), .A3(coeff_addr[0]), .B(n5), .ZN(
        coeff[4]) );
  NR2D1 U15 ( .A1(n4), .A2(coeff_addr[0]), .ZN(n6) );
  INVD0 U16 ( .I(n5), .ZN(coeff[5]) );
endmodule


module MAC_DW_mult_tc_0 ( a, b, product );
  input [9:0] a;
  input [9:0] b;
  output [19:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n32,
         n33, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n119, n120, n121, n122, n123, n124, n125, n126,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377;

  CMPE32D1 U15 ( .A(n78), .B(n75), .CI(n15), .CO(n14), .S(product[5]) );
  CMPE22D1 U19 ( .A(n86), .B(n136), .CO(n18), .S(product[1]) );
  CMPE32D1 U21 ( .A(n97), .B(n88), .CI(n25), .CO(n21), .S(n22) );
  CMPE32D1 U22 ( .A(n89), .B(n302), .CI(n27), .CO(n23), .S(n24) );
  CMPE42D1 U24 ( .A(n107), .B(n98), .C(n33), .CIX(n30), .D(n90), .CO(n28), 
        .COX(n27), .S(n29) );
  CMPE42D1 U25 ( .A(n99), .B(n91), .C(n299), .CIX(n35), .D(n38), .CO(n31), 
        .COX(n30), .S(n32) );
  CMPE42D1 U27 ( .A(n108), .B(n100), .C(n43), .CIX(n40), .D(n39), .CO(n36), 
        .COX(n35), .S(n37) );
  CMPE32D1 U28 ( .A(n117), .B(n92), .CI(n45), .CO(n38), .S(n39) );
  CMPE42D1 U29 ( .A(n297), .B(n52), .C(n50), .CIX(n47), .D(n44), .CO(n41), 
        .COX(n40), .S(n42) );
  CMPE32D1 U30 ( .A(n93), .B(n101), .CI(n109), .CO(n43), .S(n44) );
  CMPE42D1 U32 ( .A(n59), .B(n53), .C(n57), .CIX(n54), .D(n51), .CO(n48), 
        .COX(n47), .S(n49) );
  CMPE32D1 U33 ( .A(n94), .B(n102), .CI(n110), .CO(n50), .S(n51) );
  CMPE42D1 U36 ( .A(n128), .B(n60), .C(n64), .CIX(n61), .D(n58), .CO(n55), 
        .COX(n54), .S(n56) );
  CMPE32D1 U37 ( .A(n111), .B(n103), .CI(n119), .CO(n57), .S(n58) );
  CMPE22D1 U38 ( .A(n95), .B(n82), .CO(n59), .S(n60) );
  CMPE42D1 U39 ( .A(n120), .B(n104), .C(n69), .CIX(n66), .D(n65), .CO(n62), 
        .COX(n61), .S(n63) );
  CMPE32D1 U40 ( .A(n96), .B(n112), .CI(n129), .CO(n64), .S(n65) );
  CMPE42D1 U41 ( .A(n130), .B(n113), .C(n121), .CIX(n71), .D(n70), .CO(n67), 
        .COX(n66), .S(n68) );
  CMPE42D1 U43 ( .A(n106), .B(n131), .C(n122), .CIX(n76), .D(n114), .CO(n72), 
        .COX(n71), .S(n73) );
  CMPE32D1 U46 ( .A(n116), .B(n133), .CI(n124), .CO(n78), .S(n79) );
  INVD4 U210 ( .I(b[2]), .ZN(n306) );
  CMPE32D2 U211 ( .A(n126), .B(n135), .CI(n18), .CO(n17), .S(product[2]) );
  OAI22D0 U212 ( .A1(n351), .A2(n284), .B1(n352), .B2(n296), .ZN(n130) );
  FA1D1 U213 ( .A(n132), .B(n123), .CI(n77), .CO(n74), .S(n75) );
  INVD1 U214 ( .I(a[6]), .ZN(n292) );
  CKND1 U215 ( .CLK(a[9]), .CN(n304) );
  XNR2D0 U216 ( .A1(n281), .A2(a[6]), .ZN(n377) );
  XNR2D1 U217 ( .A1(n301), .A2(a[4]), .ZN(n370) );
  INVD2 U218 ( .I(n283), .ZN(n284) );
  INVD1 U219 ( .I(n332), .ZN(n283) );
  XNR2D1 U220 ( .A1(n304), .A2(n308), .ZN(n323) );
  INVD2 U221 ( .I(n282), .ZN(n286) );
  XNR2D1 U222 ( .A1(n286), .A2(n308), .ZN(n372) );
  XNR2D1 U223 ( .A1(n301), .A2(n306), .ZN(n364) );
  ND2D3 U224 ( .A1(n293), .A2(n294), .ZN(n316) );
  CMPE22D1 U225 ( .A(n115), .B(n290), .CO(n76), .S(n77) );
  BUFFD6 U226 ( .I(n320), .Z(n285) );
  HA1D2 U227 ( .A(n134), .B(n125), .CO(n80), .S(n81) );
  ND2D3 U228 ( .A1(n333), .A2(n361), .ZN(n334) );
  FA1D1 U229 ( .A(n80), .B(n79), .CI(n16), .CO(n15), .S(product[4]) );
  INVD1 U230 ( .I(n1), .ZN(product[19]) );
  INVD1 U231 ( .I(a[7]), .ZN(n281) );
  INVD1 U232 ( .I(n281), .ZN(n282) );
  OAI32D1 U233 ( .A1(n304), .A2(b[0]), .A3(n285), .B1(n304), .B2(n322), .ZN(
        n82) );
  OAI32D2 U234 ( .A1(n301), .A2(b[0]), .A3(n289), .B1(n301), .B2(n336), .ZN(
        n84) );
  CMPE32D2 U235 ( .A(n85), .B(n81), .CI(n17), .CO(n16), .S(product[3]) );
  OAI22D1 U236 ( .A1(n362), .A2(n336), .B1(n289), .B2(n363), .ZN(n115) );
  OAI22D1 U237 ( .A1(n321), .A2(n322), .B1(n285), .B2(n323), .ZN(n95) );
  ND2D3 U238 ( .A1(n285), .A2(n345), .ZN(n322) );
  XNR2D1 U239 ( .A1(n300), .A2(a[2]), .ZN(n361) );
  XNR2D2 U240 ( .A1(n300), .A2(n308), .ZN(n355) );
  INVD2 U241 ( .I(b[1]), .ZN(n308) );
  ND2D8 U242 ( .A1(n289), .A2(n370), .ZN(n336) );
  OAI22D2 U243 ( .A1(n348), .A2(n284), .B1(n349), .B2(n296), .ZN(n133) );
  XNR2D2 U244 ( .A1(n298), .A2(n305), .ZN(n348) );
  OAI22D4 U245 ( .A1(n347), .A2(n284), .B1(n348), .B2(n296), .ZN(n134) );
  OAI22D4 U246 ( .A1(n346), .A2(n284), .B1(n347), .B2(n296), .ZN(n135) );
  OAI22D1 U247 ( .A1(n357), .A2(n334), .B1(n333), .B2(n358), .ZN(n122) );
  OAI22D1 U248 ( .A1(n356), .A2(n334), .B1(n333), .B2(n357), .ZN(n123) );
  OR2D1 U249 ( .A1(n333), .A2(n355), .Z(n288) );
  CKND2D0 U250 ( .A1(a[1]), .A2(n296), .ZN(n332) );
  BUFFD2 U251 ( .I(n84), .Z(n290) );
  OAI22D1 U252 ( .A1(n350), .A2(n284), .B1(n351), .B2(n296), .ZN(n131) );
  CKND2 U253 ( .CLK(a[0]), .CN(n296) );
  XNR2D2 U254 ( .A1(n298), .A2(n308), .ZN(n346) );
  OAI22D1 U255 ( .A1(n364), .A2(n336), .B1(n289), .B2(n365), .ZN(n113) );
  XNR2D2 U256 ( .A1(n300), .A2(n306), .ZN(n356) );
  OAI22D1 U257 ( .A1(b[0]), .A2(n284), .B1(n346), .B2(n296), .ZN(n136) );
  XNR2D2 U258 ( .A1(n298), .A2(n306), .ZN(n347) );
  XNR2D2 U259 ( .A1(n301), .A2(n308), .ZN(n363) );
  INVD0 U260 ( .I(b[4]), .ZN(n307) );
  CMPE22D2 U261 ( .A(n105), .B(n83), .CO(n69), .S(n70) );
  OAI32D4 U262 ( .A1(n286), .A2(b[0]), .A3(n316), .B1(n286), .B2(n315), .ZN(
        n83) );
  OR2D0 U263 ( .A1(n354), .A2(n334), .Z(n287) );
  ND2D1 U264 ( .A1(n287), .A2(n288), .ZN(n125) );
  XOR2D4 U265 ( .A1(n298), .A2(a[2]), .Z(n333) );
  XNR2D0 U266 ( .A1(n286), .A2(n305), .ZN(n374) );
  XNR2D0 U267 ( .A1(n286), .A2(n306), .ZN(n373) );
  XNR2D1 U268 ( .A1(n311), .A2(n286), .ZN(n371) );
  XOR2D0 U269 ( .A1(n300), .A2(a[4]), .Z(n335) );
  XNR2D0 U270 ( .A1(n311), .A2(n301), .ZN(n362) );
  INVD0 U271 ( .I(a[5]), .ZN(n291) );
  BUFFD6 U272 ( .I(n335), .Z(n289) );
  XNR2D0 U273 ( .A1(n301), .A2(n305), .ZN(n365) );
  XNR2D0 U274 ( .A1(n301), .A2(n307), .ZN(n366) );
  ND2D1 U275 ( .A1(n291), .A2(n292), .ZN(n294) );
  CKND4 U276 ( .CLK(a[5]), .CN(n301) );
  ND2D2 U277 ( .A1(n316), .A2(n377), .ZN(n315) );
  ND2D0 U278 ( .A1(a[5]), .A2(a[6]), .ZN(n293) );
  FA1D1 U279 ( .A(n67), .B(n63), .CI(n12), .CO(n11), .S(product[8]) );
  FA1D1 U280 ( .A(n74), .B(n73), .CI(n14), .CO(n13), .S(product[6]) );
  NR2D1 U281 ( .A1(n316), .A2(n311), .ZN(n106) );
  OAI22D1 U282 ( .A1(n371), .A2(n315), .B1(n316), .B2(n372), .ZN(n105) );
  CKND2 U283 ( .CLK(a[3]), .CN(n300) );
  CKND2 U284 ( .CLK(a[1]), .CN(n298) );
  FA1D1 U285 ( .A(n37), .B(n41), .CI(n8), .CO(n7), .S(product[12]) );
  FA1D1 U286 ( .A(n32), .B(n36), .CI(n7), .CO(n6), .S(product[13]) );
  INVD1 U287 ( .I(n45), .ZN(n297) );
  INVD1 U288 ( .I(n33), .ZN(n299) );
  INVD1 U289 ( .I(b[5]), .ZN(n310) );
  INVD1 U290 ( .I(b[6]), .ZN(n309) );
  INVD1 U291 ( .I(n25), .ZN(n302) );
  INVD1 U292 ( .I(b[3]), .ZN(n305) );
  FA1D1 U293 ( .A(n22), .B(n23), .CI(n4), .CO(n3), .S(product[16]) );
  FA1D1 U294 ( .A(n303), .B(n21), .CI(n3), .CO(n2), .S(product[17]) );
  INVD1 U295 ( .I(n19), .ZN(n303) );
  FA1D1 U296 ( .A(n42), .B(n48), .CI(n9), .CO(n8), .S(product[11]) );
  FA1D1 U297 ( .A(n24), .B(n28), .CI(n5), .CO(n4), .S(product[15]) );
  FA1D1 U298 ( .A(n55), .B(n49), .CI(n10), .CO(n9), .S(product[10]) );
  FA1D1 U299 ( .A(n62), .B(n56), .CI(n11), .CO(n10), .S(product[9]) );
  FA1D1 U300 ( .A(n29), .B(n31), .CI(n6), .CO(n5), .S(product[14]) );
  XNR2D1 U301 ( .A1(n282), .A2(a[8]), .ZN(n320) );
  FA1D1 U302 ( .A(n87), .B(n19), .CI(n2), .CO(n1), .S(product[18]) );
  INVD1 U303 ( .I(b[0]), .ZN(n311) );
  INVD1 U304 ( .I(b[8]), .ZN(n313) );
  INVD1 U305 ( .I(b[7]), .ZN(n312) );
  CMPE32D1 U306 ( .A(n72), .B(n68), .CI(n13), .CO(n12), .S(product[7]) );
  OAI22D1 U307 ( .A1(n355), .A2(n334), .B1(n333), .B2(n356), .ZN(n124) );
  NR2D0 U308 ( .A1(n296), .A2(n311), .ZN(product[0]) );
  OAI22D0 U309 ( .A1(n314), .A2(n315), .B1(n316), .B2(n317), .ZN(n99) );
  OAI22D0 U310 ( .A1(n317), .A2(n315), .B1(n316), .B2(n318), .ZN(n98) );
  XNR2D0 U311 ( .A1(n286), .A2(n312), .ZN(n317) );
  AO21D0 U312 ( .A1(n315), .A2(n316), .B(n319), .Z(n97) );
  NR2D0 U313 ( .A1(n285), .A2(n311), .ZN(n96) );
  XNR2D0 U314 ( .A1(n311), .A2(n304), .ZN(n321) );
  OAI22D0 U315 ( .A1(n323), .A2(n322), .B1(n285), .B2(n324), .ZN(n94) );
  OAI22D0 U316 ( .A1(n324), .A2(n322), .B1(n285), .B2(n325), .ZN(n93) );
  XNR2D0 U317 ( .A1(n304), .A2(n306), .ZN(n324) );
  OAI22D0 U318 ( .A1(n325), .A2(n322), .B1(n285), .B2(n326), .ZN(n92) );
  XNR2D0 U319 ( .A1(n304), .A2(n305), .ZN(n325) );
  OAI22D0 U320 ( .A1(n326), .A2(n322), .B1(n285), .B2(n327), .ZN(n91) );
  XNR2D0 U321 ( .A1(n304), .A2(n307), .ZN(n326) );
  OAI22D0 U322 ( .A1(n327), .A2(n322), .B1(n285), .B2(n328), .ZN(n90) );
  XNR2D0 U323 ( .A1(n304), .A2(n310), .ZN(n327) );
  OAI22D0 U324 ( .A1(n328), .A2(n322), .B1(n285), .B2(n329), .ZN(n89) );
  XNR2D0 U325 ( .A1(n304), .A2(n309), .ZN(n328) );
  OAI22D0 U326 ( .A1(n329), .A2(n322), .B1(n285), .B2(n330), .ZN(n88) );
  XNR2D0 U327 ( .A1(n304), .A2(n312), .ZN(n329) );
  AO21D0 U328 ( .A1(n322), .A2(n285), .B(n331), .Z(n87) );
  OAI21D0 U329 ( .A1(b[0]), .A2(n298), .B(n284), .ZN(n86) );
  OAI32D0 U330 ( .A1(n300), .A2(b[0]), .A3(n333), .B1(n300), .B2(n334), .ZN(
        n85) );
  XNR2D0 U331 ( .A1(n337), .A2(n338), .ZN(n53) );
  ND2D0 U332 ( .A1(n337), .A2(n338), .ZN(n52) );
  AOI21D0 U333 ( .A1(n296), .A2(n284), .B(n339), .ZN(n338) );
  OA22D0 U334 ( .A1(n340), .A2(n334), .B1(n333), .B2(n341), .Z(n337) );
  OAI22D0 U335 ( .A1(n333), .A2(n342), .B1(n341), .B2(n334), .ZN(n45) );
  XNR2D0 U336 ( .A1(n300), .A2(n313), .ZN(n341) );
  OAI22D0 U337 ( .A1(n289), .A2(n343), .B1(n344), .B2(n336), .ZN(n33) );
  OAI22D0 U338 ( .A1(n318), .A2(n315), .B1(n316), .B2(n319), .ZN(n25) );
  XNR2D0 U339 ( .A1(n282), .A2(b[9]), .ZN(n319) );
  XNR2D0 U340 ( .A1(n286), .A2(n313), .ZN(n318) );
  OAI22D0 U341 ( .A1(n330), .A2(n322), .B1(n285), .B2(n331), .ZN(n19) );
  XNR2D0 U342 ( .A1(a[9]), .A2(b[9]), .ZN(n331) );
  XNR2D0 U343 ( .A1(n304), .A2(a[8]), .ZN(n345) );
  XNR2D0 U344 ( .A1(n304), .A2(n313), .ZN(n330) );
  OAI22D0 U345 ( .A1(n349), .A2(n284), .B1(n350), .B2(n296), .ZN(n132) );
  XNR2D0 U346 ( .A1(n298), .A2(n307), .ZN(n349) );
  XNR2D0 U347 ( .A1(n298), .A2(n310), .ZN(n350) );
  XNR2D0 U348 ( .A1(n298), .A2(n309), .ZN(n351) );
  OAI22D0 U349 ( .A1(n352), .A2(n284), .B1(n353), .B2(n296), .ZN(n129) );
  XNR2D0 U350 ( .A1(n298), .A2(n312), .ZN(n352) );
  OAI22D0 U351 ( .A1(n353), .A2(n284), .B1(n339), .B2(n296), .ZN(n128) );
  XNR2D0 U352 ( .A1(a[1]), .A2(b[9]), .ZN(n339) );
  XNR2D0 U353 ( .A1(n298), .A2(n313), .ZN(n353) );
  NR2D0 U354 ( .A1(n333), .A2(n311), .ZN(n126) );
  XNR2D0 U355 ( .A1(n311), .A2(n300), .ZN(n354) );
  XNR2D0 U356 ( .A1(n300), .A2(n305), .ZN(n357) );
  OAI22D0 U357 ( .A1(n358), .A2(n334), .B1(n333), .B2(n359), .ZN(n121) );
  XNR2D0 U358 ( .A1(n300), .A2(n307), .ZN(n358) );
  OAI22D0 U359 ( .A1(n359), .A2(n334), .B1(n333), .B2(n360), .ZN(n120) );
  XNR2D0 U360 ( .A1(n300), .A2(n310), .ZN(n359) );
  OAI22D0 U361 ( .A1(n360), .A2(n334), .B1(n333), .B2(n340), .ZN(n119) );
  XNR2D0 U362 ( .A1(n300), .A2(n312), .ZN(n340) );
  XNR2D0 U363 ( .A1(n300), .A2(n309), .ZN(n360) );
  AO21D0 U364 ( .A1(n334), .A2(n333), .B(n342), .Z(n117) );
  XNR2D0 U365 ( .A1(a[3]), .A2(b[9]), .ZN(n342) );
  NR2D0 U366 ( .A1(n289), .A2(n311), .ZN(n116) );
  OAI22D0 U367 ( .A1(n363), .A2(n336), .B1(n289), .B2(n364), .ZN(n114) );
  OAI22D0 U368 ( .A1(n365), .A2(n336), .B1(n289), .B2(n366), .ZN(n112) );
  OAI22D0 U369 ( .A1(n366), .A2(n336), .B1(n289), .B2(n367), .ZN(n111) );
  OAI22D0 U370 ( .A1(n367), .A2(n336), .B1(n289), .B2(n368), .ZN(n110) );
  XNR2D0 U371 ( .A1(n301), .A2(n310), .ZN(n367) );
  OAI22D0 U372 ( .A1(n368), .A2(n336), .B1(n289), .B2(n369), .ZN(n109) );
  XNR2D0 U373 ( .A1(n301), .A2(n309), .ZN(n368) );
  OAI22D0 U374 ( .A1(n369), .A2(n336), .B1(n289), .B2(n344), .ZN(n108) );
  XNR2D0 U375 ( .A1(n301), .A2(n313), .ZN(n344) );
  XNR2D0 U376 ( .A1(n301), .A2(n312), .ZN(n369) );
  AO21D0 U377 ( .A1(n336), .A2(n289), .B(n343), .Z(n107) );
  XNR2D0 U378 ( .A1(a[5]), .A2(b[9]), .ZN(n343) );
  OAI22D0 U379 ( .A1(n372), .A2(n315), .B1(n316), .B2(n373), .ZN(n104) );
  OAI22D0 U380 ( .A1(n373), .A2(n315), .B1(n316), .B2(n374), .ZN(n103) );
  OAI22D0 U381 ( .A1(n374), .A2(n315), .B1(n316), .B2(n375), .ZN(n102) );
  OAI22D0 U382 ( .A1(n375), .A2(n315), .B1(n316), .B2(n376), .ZN(n101) );
  XNR2D0 U383 ( .A1(n286), .A2(n307), .ZN(n375) );
  OAI22D0 U384 ( .A1(n376), .A2(n315), .B1(n316), .B2(n314), .ZN(n100) );
  XNR2D0 U385 ( .A1(n286), .A2(n309), .ZN(n314) );
  XNR2D0 U386 ( .A1(n286), .A2(n310), .ZN(n376) );
endmodule


module MAC_DW01_add_0 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [23:1] carry;

  CMPE32D1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  CMPE32D1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3D1 U1_23 ( .A1(A[23]), .A2(B[23]), .A3(carry[23]), .Z(SUM[23]) );
  FA1D1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  CMPE32D1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  CMPE32D1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  CMPE32D1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  CMPE32D1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  CMPE32D1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  CMPE32D1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  CMPE32D1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  CMPE32D1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  CMPE32D1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  CMPE32D1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  CMPE32D1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  CMPE32D1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  CMPE32D1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  CMPE32D1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  CMPE32D2 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  CMPE32D2 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA1D1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  CMPE32D2 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  AN2D0 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  CKXOR2D0 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module MAC ( sample_in, coeff, acc, result );
  input [9:0] sample_in;
  input [9:0] coeff;
  input [23:0] acc;
  output [23:0] result;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N19, N18, N17, N16, N15, N14, N13,
         N12, N11, N10, N1, N0;

  MAC_DW_mult_tc_0 mult_16 ( .a(sample_in), .b(coeff), .product({N19, N18, N17, 
        N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, 
        N0}) );
  MAC_DW01_add_0 add_16 ( .A({N19, N19, N19, N19, N19, N18, N17, N16, N15, N14, 
        N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(acc), 
        .CI(1'b0), .SUM(result) );
endmodule


module Arith_Unit ( clk, rst_n, rst_mac_n, sample1, coeff, result1 );
  input [9:0] sample1;
  input [9:0] coeff;
  output [23:0] result1;
  input clk, rst_n, rst_mac_n;
  wire   N0, n1;
  wire   [23:0] MAC_result1;

  MAC MAC1 ( .sample_in(sample1), .coeff(coeff), .acc(result1), .result(
        MAC_result1) );
  DFCNQD1 \tmp_result1_reg[19]  ( .D(MAC_result1[19]), .CP(clk), .CDN(n1), .Q(
        result1[19]) );
  DFCNQD1 \tmp_result1_reg[20]  ( .D(MAC_result1[20]), .CP(clk), .CDN(n1), .Q(
        result1[20]) );
  DFCNQD1 \tmp_result1_reg[21]  ( .D(MAC_result1[21]), .CP(clk), .CDN(n1), .Q(
        result1[21]) );
  DFCNQD1 \tmp_result1_reg[22]  ( .D(MAC_result1[22]), .CP(clk), .CDN(n1), .Q(
        result1[22]) );
  DFCNQD1 \tmp_result1_reg[23]  ( .D(MAC_result1[23]), .CP(clk), .CDN(n1), .Q(
        result1[23]) );
  DFCNQD1 \tmp_result1_reg[2]  ( .D(MAC_result1[2]), .CP(clk), .CDN(n1), .Q(
        result1[2]) );
  DFCNQD1 \tmp_result1_reg[3]  ( .D(MAC_result1[3]), .CP(clk), .CDN(n1), .Q(
        result1[3]) );
  DFCNQD1 \tmp_result1_reg[4]  ( .D(MAC_result1[4]), .CP(clk), .CDN(n1), .Q(
        result1[4]) );
  DFCNQD1 \tmp_result1_reg[5]  ( .D(MAC_result1[5]), .CP(clk), .CDN(n1), .Q(
        result1[5]) );
  DFCNQD1 \tmp_result1_reg[6]  ( .D(MAC_result1[6]), .CP(clk), .CDN(n1), .Q(
        result1[6]) );
  DFCNQD1 \tmp_result1_reg[7]  ( .D(MAC_result1[7]), .CP(clk), .CDN(n1), .Q(
        result1[7]) );
  DFCNQD1 \tmp_result1_reg[8]  ( .D(MAC_result1[8]), .CP(clk), .CDN(n1), .Q(
        result1[8]) );
  DFCNQD1 \tmp_result1_reg[9]  ( .D(MAC_result1[9]), .CP(clk), .CDN(n1), .Q(
        result1[9]) );
  DFCNQD1 \tmp_result1_reg[10]  ( .D(MAC_result1[10]), .CP(clk), .CDN(n1), .Q(
        result1[10]) );
  DFCNQD1 \tmp_result1_reg[11]  ( .D(MAC_result1[11]), .CP(clk), .CDN(n1), .Q(
        result1[11]) );
  DFCNQD1 \tmp_result1_reg[12]  ( .D(MAC_result1[12]), .CP(clk), .CDN(n1), .Q(
        result1[12]) );
  DFCNQD1 \tmp_result1_reg[13]  ( .D(MAC_result1[13]), .CP(clk), .CDN(n1), .Q(
        result1[13]) );
  DFCNQD1 \tmp_result1_reg[14]  ( .D(MAC_result1[14]), .CP(clk), .CDN(n1), .Q(
        result1[14]) );
  DFCNQD1 \tmp_result1_reg[15]  ( .D(MAC_result1[15]), .CP(clk), .CDN(n1), .Q(
        result1[15]) );
  DFCNQD1 \tmp_result1_reg[16]  ( .D(MAC_result1[16]), .CP(clk), .CDN(n1), .Q(
        result1[16]) );
  DFCNQD1 \tmp_result1_reg[17]  ( .D(MAC_result1[17]), .CP(clk), .CDN(n1), .Q(
        result1[17]) );
  DFCNQD1 \tmp_result1_reg[18]  ( .D(MAC_result1[18]), .CP(clk), .CDN(n1), .Q(
        result1[18]) );
  DFCNQD1 \tmp_result1_reg[1]  ( .D(MAC_result1[1]), .CP(clk), .CDN(n1), .Q(
        result1[1]) );
  DFCNQD1 \tmp_result1_reg[0]  ( .D(MAC_result1[0]), .CP(clk), .CDN(n1), .Q(
        result1[0]) );
  INVD1 U3 ( .I(N0), .ZN(n1) );
  ND2D1 U4 ( .A1(rst_n), .A2(rst_mac_n), .ZN(N0) );
endmodule


module FSM ( rst_n, clk, sample_clk, delayLineWrEn, delayLineAdr, delayLineR1, 
        dav, rst_mac_n, coeffAdr );
  output [3:0] delayLineAdr;
  output [3:0] delayLineR1;
  output [3:0] coeffAdr;
  input rst_n, clk, sample_clk;
  output delayLineWrEn, dav, rst_mac_n;
  wire   N26, N27, N28, N29, N31, N32, N33, N47, N48, N49, N50, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n37;
  wire   [3:0] count;
  wire   [1:0] present_state;

  DFCNQD2 \adrR1_reg[0]  ( .D(N47), .CP(clk), .CDN(rst_n), .Q(delayLineR1[0])
         );
  DFCNQD2 \adrR1_reg[2]  ( .D(N49), .CP(clk), .CDN(rst_n), .Q(delayLineR1[2])
         );
  DFCNQD2 \adrR1_reg[1]  ( .D(N48), .CP(clk), .CDN(rst_n), .Q(delayLineR1[1])
         );
  EDFCNQD1 \wrAdr_reg[3]  ( .D(N29), .E(sample_clk), .CP(clk), .CDN(rst_n), 
        .Q(delayLineAdr[3]) );
  EDFCNQD1 \wrAdr_reg[0]  ( .D(N26), .E(sample_clk), .CP(clk), .CDN(rst_n), 
        .Q(delayLineAdr[0]) );
  EDFCNQD1 \wrAdr_reg[2]  ( .D(N28), .E(sample_clk), .CP(clk), .CDN(rst_n), 
        .Q(delayLineAdr[2]) );
  DFCNQD2 \count_reg[3]  ( .D(N33), .CP(clk), .CDN(rst_mac_n), .Q(count[3]) );
  DFCNQD2 \count_reg[2]  ( .D(N32), .CP(clk), .CDN(rst_mac_n), .Q(count[2]) );
  DFCNQD4 \count_reg[0]  ( .D(n12), .CP(clk), .CDN(rst_mac_n), .Q(count[0]) );
  DFCNQD4 \present_state_reg[0]  ( .D(n36), .CP(clk), .CDN(rst_n), .Q(
        present_state[0]) );
  EDFCND1 \wrAdr_reg[1]  ( .D(N27), .E(sample_clk), .CP(clk), .CDN(rst_n), .Q(
        delayLineAdr[1]), .QN(n4) );
  DFCNQD2 \adrR1_reg[3]  ( .D(N50), .CP(clk), .CDN(rst_n), .Q(delayLineR1[3])
         );
  DFCNQD2 \present_state_reg[1]  ( .D(n35), .CP(clk), .CDN(rst_n), .Q(
        present_state[1]) );
  DFCNQD2 \count_reg[1]  ( .D(N31), .CP(clk), .CDN(rst_mac_n), .Q(count[1]) );
  NR2D4 U3 ( .A1(n21), .A2(count[2]), .ZN(n19) );
  CKND2D4 U4 ( .A1(n14), .A2(n12), .ZN(n21) );
  NR2D8 U5 ( .A1(n11), .A2(present_state[1]), .ZN(n16) );
  INVD6 U6 ( .I(present_state[0]), .ZN(n11) );
  INVD3 U7 ( .I(count[1]), .ZN(n14) );
  AN2D1 U8 ( .A1(present_state[1]), .A2(n11), .Z(dav) );
  ND2D1 U9 ( .A1(count[1]), .A2(count[0]), .ZN(n30) );
  INVD3 U10 ( .I(count[0]), .ZN(n12) );
  ND4D4 U11 ( .A1(count[3]), .A2(count[2]), .A3(count[0]), .A4(n14), .ZN(n22)
         );
  ND2D4 U12 ( .A1(n16), .A2(n22), .ZN(n18) );
  NR2D2 U13 ( .A1(N31), .A2(n9), .ZN(coeffAdr[1]) );
  NR2D8 U14 ( .A1(n9), .A2(count[0]), .ZN(coeffAdr[0]) );
  INVD4 U15 ( .I(n20), .ZN(n9) );
  AO33D2 U16 ( .A1(coeffAdr[0]), .A2(n13), .A3(n14), .B1(n20), .B2(n21), .B3(
        count[2]), .Z(coeffAdr[2]) );
  AOI21D4 U17 ( .A1(n15), .A2(n19), .B(n18), .ZN(n20) );
  INVD0 U18 ( .I(count[2]), .ZN(n13) );
  INVD0 U19 ( .I(count[3]), .ZN(n15) );
  OAI32D0 U20 ( .A1(n17), .A2(present_state[1]), .A3(present_state[0]), .B1(
        n10), .B2(n11), .ZN(n36) );
  NR2D0 U21 ( .A1(n7), .A2(delayLineR1[3]), .ZN(n24) );
  NR2D0 U22 ( .A1(n8), .A2(delayLineR1[2]), .ZN(n26) );
  NR2D0 U23 ( .A1(delayLineR1[1]), .A2(delayLineR1[0]), .ZN(n28) );
  OAI32D0 U24 ( .A1(n24), .A2(sample_clk), .A3(delayLineR1[0]), .B1(n37), .B2(
        n3), .ZN(N47) );
  XOR2D0 U25 ( .A1(count[3]), .A2(n29), .Z(N33) );
  NR2D0 U26 ( .A1(n13), .A2(n30), .ZN(n29) );
  AO211D0 U27 ( .A1(n11), .A2(sample_clk), .B(n16), .C(dav), .Z(rst_mac_n) );
  NR3D0 U28 ( .A1(n9), .A2(n19), .A3(n15), .ZN(coeffAdr[3]) );
  AN2D0 U29 ( .A1(n30), .A2(n21), .Z(N31) );
  AOI21D0 U30 ( .A1(n4), .A2(n34), .B(N26), .ZN(n33) );
  INVD1 U31 ( .I(n26), .ZN(n7) );
  INVD1 U32 ( .I(n28), .ZN(n8) );
  AN2D0 U33 ( .A1(n34), .A2(n3), .Z(N26) );
  INVD1 U34 ( .I(n17), .ZN(n10) );
  XOR2D1 U35 ( .A1(n30), .A2(n13), .Z(N32) );
  AN2D0 U36 ( .A1(n16), .A2(n10), .Z(n35) );
  NR3D0 U37 ( .A1(n37), .A2(present_state[1]), .A3(present_state[0]), .ZN(
        delayLineWrEn) );
  ND4D1 U38 ( .A1(delayLineAdr[2]), .A2(delayLineAdr[3]), .A3(n3), .A4(n4), 
        .ZN(n34) );
  OAI22D0 U39 ( .A1(n37), .A2(n6), .B1(sample_clk), .B2(n23), .ZN(N50) );
  AOI21D0 U40 ( .A1(delayLineR1[3]), .A2(n7), .B(n24), .ZN(n23) );
  INVD1 U41 ( .I(delayLineAdr[0]), .ZN(n3) );
  OAI32D1 U42 ( .A1(n31), .A2(delayLineAdr[3]), .A3(n5), .B1(n32), .B2(n6), 
        .ZN(N29) );
  AN2D0 U43 ( .A1(delayLineAdr[2]), .A2(n33), .Z(n32) );
  OAI32D1 U44 ( .A1(n27), .A2(sample_clk), .A3(n24), .B1(n37), .B2(n4), .ZN(
        N48) );
  AOI21D0 U45 ( .A1(delayLineR1[1]), .A2(delayLineR1[0]), .B(n28), .ZN(n27) );
  OAI21D0 U46 ( .A1(sample_clk), .A2(present_state[0]), .B(n18), .ZN(n17) );
  OAI22D0 U47 ( .A1(n37), .A2(n5), .B1(sample_clk), .B2(n25), .ZN(N49) );
  AOI21D0 U48 ( .A1(delayLineR1[2]), .A2(n8), .B(n26), .ZN(n25) );
  OAI22D0 U49 ( .A1(n33), .A2(n5), .B1(delayLineAdr[2]), .B2(n31), .ZN(N28) );
  INVD1 U50 ( .I(delayLineAdr[2]), .ZN(n5) );
  ND2D1 U51 ( .A1(delayLineAdr[0]), .A2(delayLineAdr[1]), .ZN(n31) );
  INVD1 U52 ( .I(delayLineAdr[3]), .ZN(n6) );
  XOR2D1 U53 ( .A1(delayLineAdr[1]), .A2(delayLineAdr[0]), .Z(N27) );
  INVD1 U54 ( .I(sample_clk), .ZN(n37) );
endmodule


module Top_Serial_FIR ( clk, rst_n, sample_clk, sample, conv_sum, dav );
  input [9:0] sample;
  output [23:0] conv_sum;
  input clk, rst_n, sample_clk;
  output dav;
  wire   w_en, rst_mac_n;
  wire   [3:0] w_addr;
  wire   [3:0] r_addr1;
  wire   [9:0] sample_out1;
  wire   [3:0] coeff_addr;
  wire   [9:0] coeff;
  wire   [23:0] result;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  delay_line D1 ( .clk(clk), .sample_clk(sample_clk), .rst_n(rst_n), .w_addr(
        w_addr), .w_en(w_en), .sample_in(sample), .r_addr1(r_addr1), 
        .sample_out1(sample_out1) );
  Coef_ROM C1 ( .coeff_addr(coeff_addr), .coeff({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, coeff[6:1], 
        SYNOPSYS_UNCONNECTED__3}) );
  Arith_Unit A1 ( .clk(clk), .rst_n(rst_n), .rst_mac_n(rst_mac_n), .sample1(
        sample_out1), .coeff({1'b0, 1'b0, 1'b0, coeff[6:1], 1'b1}), .result1(
        result) );
  FSM F1 ( .rst_n(rst_n), .clk(clk), .sample_clk(sample_clk), .delayLineWrEn(
        w_en), .delayLineAdr(w_addr), .delayLineR1(r_addr1), .dav(dav), 
        .rst_mac_n(rst_mac_n), .coeffAdr(coeff_addr) );
  AN2D0 U26 ( .A1(result[0]), .A2(dav), .Z(conv_sum[0]) );
  AN2D0 U27 ( .A1(result[1]), .A2(dav), .Z(conv_sum[1]) );
  AN2D0 U28 ( .A1(result[2]), .A2(dav), .Z(conv_sum[2]) );
  AN2D0 U29 ( .A1(result[3]), .A2(dav), .Z(conv_sum[3]) );
  AN2D0 U30 ( .A1(result[4]), .A2(dav), .Z(conv_sum[4]) );
  AN2D0 U31 ( .A1(result[5]), .A2(dav), .Z(conv_sum[5]) );
  AN2D0 U32 ( .A1(result[6]), .A2(dav), .Z(conv_sum[6]) );
  AN2D0 U33 ( .A1(result[7]), .A2(dav), .Z(conv_sum[7]) );
  AN2D0 U34 ( .A1(result[8]), .A2(dav), .Z(conv_sum[8]) );
  AN2D0 U35 ( .A1(result[9]), .A2(dav), .Z(conv_sum[9]) );
  AN2D0 U36 ( .A1(result[10]), .A2(dav), .Z(conv_sum[10]) );
  AN2D0 U37 ( .A1(result[11]), .A2(dav), .Z(conv_sum[11]) );
  AN2D0 U38 ( .A1(result[12]), .A2(dav), .Z(conv_sum[12]) );
  AN2D0 U39 ( .A1(result[13]), .A2(dav), .Z(conv_sum[13]) );
  AN2D0 U40 ( .A1(result[14]), .A2(dav), .Z(conv_sum[14]) );
  AN2D0 U41 ( .A1(result[15]), .A2(dav), .Z(conv_sum[15]) );
  AN2D0 U42 ( .A1(result[16]), .A2(dav), .Z(conv_sum[16]) );
  AN2D0 U43 ( .A1(result[17]), .A2(dav), .Z(conv_sum[17]) );
  AN2D0 U44 ( .A1(result[18]), .A2(dav), .Z(conv_sum[18]) );
  AN2D0 U45 ( .A1(result[19]), .A2(dav), .Z(conv_sum[19]) );
  AN2D0 U46 ( .A1(result[20]), .A2(dav), .Z(conv_sum[20]) );
  AN2D0 U47 ( .A1(result[21]), .A2(dav), .Z(conv_sum[21]) );
  AN2D0 U48 ( .A1(result[22]), .A2(dav), .Z(conv_sum[22]) );
  AN2D0 U49 ( .A1(result[23]), .A2(dav), .Z(conv_sum[23]) );
endmodule

