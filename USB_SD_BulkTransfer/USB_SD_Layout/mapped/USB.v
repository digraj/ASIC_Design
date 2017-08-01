/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Thu Apr 27 12:08:58 2017
/////////////////////////////////////////////////////////////


module fiforam_1 ( wclk, wenable, waddr, raddr, wdata, rdata );
  input [2:0] waddr;
  input [2:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wenable;
  wire   N10, N11, N12, N13, N14, N15, \fiforeg[0][7] , \fiforeg[0][6] ,
         \fiforeg[0][5] , \fiforeg[0][4] , \fiforeg[0][3] , \fiforeg[0][2] ,
         \fiforeg[0][1] , \fiforeg[0][0] , \fiforeg[1][7] , \fiforeg[1][6] ,
         \fiforeg[1][5] , \fiforeg[1][4] , \fiforeg[1][3] , \fiforeg[1][2] ,
         \fiforeg[1][1] , \fiforeg[1][0] , \fiforeg[2][7] , \fiforeg[2][6] ,
         \fiforeg[2][5] , \fiforeg[2][4] , \fiforeg[2][3] , \fiforeg[2][2] ,
         \fiforeg[2][1] , \fiforeg[2][0] , \fiforeg[3][7] , \fiforeg[3][6] ,
         \fiforeg[3][5] , \fiforeg[3][4] , \fiforeg[3][3] , \fiforeg[3][2] ,
         \fiforeg[3][1] , \fiforeg[3][0] , \fiforeg[4][7] , \fiforeg[4][6] ,
         \fiforeg[4][5] , \fiforeg[4][4] , \fiforeg[4][3] , \fiforeg[4][2] ,
         \fiforeg[4][1] , \fiforeg[4][0] , \fiforeg[5][7] , \fiforeg[5][6] ,
         \fiforeg[5][5] , \fiforeg[5][4] , \fiforeg[5][3] , \fiforeg[5][2] ,
         \fiforeg[5][1] , \fiforeg[5][0] , \fiforeg[6][7] , \fiforeg[6][6] ,
         \fiforeg[6][5] , \fiforeg[6][4] , \fiforeg[6][3] , \fiforeg[6][2] ,
         \fiforeg[6][1] , \fiforeg[6][0] , \fiforeg[7][7] , \fiforeg[7][6] ,
         \fiforeg[7][5] , \fiforeg[7][4] , \fiforeg[7][3] , \fiforeg[7][2] ,
         \fiforeg[7][1] , \fiforeg[7][0] , N17, N18, N19, N20, N21, N22, N23,
         N24, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262;
  assign N10 = raddr[0];
  assign N11 = raddr[1];
  assign N12 = raddr[2];
  assign N13 = waddr[0];
  assign N14 = waddr[1];
  assign N15 = waddr[2];

  DFFPOSX1 \fiforeg_reg[0][7]  ( .D(n152), .CLK(wclk), .Q(\fiforeg[0][7] ) );
  DFFPOSX1 \fiforeg_reg[0][6]  ( .D(n151), .CLK(wclk), .Q(\fiforeg[0][6] ) );
  DFFPOSX1 \fiforeg_reg[0][5]  ( .D(n150), .CLK(wclk), .Q(\fiforeg[0][5] ) );
  DFFPOSX1 \fiforeg_reg[0][4]  ( .D(n149), .CLK(wclk), .Q(\fiforeg[0][4] ) );
  DFFPOSX1 \fiforeg_reg[0][3]  ( .D(n148), .CLK(wclk), .Q(\fiforeg[0][3] ) );
  DFFPOSX1 \fiforeg_reg[0][2]  ( .D(n147), .CLK(wclk), .Q(\fiforeg[0][2] ) );
  DFFPOSX1 \fiforeg_reg[0][1]  ( .D(n146), .CLK(wclk), .Q(\fiforeg[0][1] ) );
  DFFPOSX1 \fiforeg_reg[0][0]  ( .D(n145), .CLK(wclk), .Q(\fiforeg[0][0] ) );
  DFFPOSX1 \fiforeg_reg[1][7]  ( .D(n144), .CLK(wclk), .Q(\fiforeg[1][7] ) );
  DFFPOSX1 \fiforeg_reg[1][6]  ( .D(n143), .CLK(wclk), .Q(\fiforeg[1][6] ) );
  DFFPOSX1 \fiforeg_reg[1][5]  ( .D(n142), .CLK(wclk), .Q(\fiforeg[1][5] ) );
  DFFPOSX1 \fiforeg_reg[1][4]  ( .D(n141), .CLK(wclk), .Q(\fiforeg[1][4] ) );
  DFFPOSX1 \fiforeg_reg[1][3]  ( .D(n140), .CLK(wclk), .Q(\fiforeg[1][3] ) );
  DFFPOSX1 \fiforeg_reg[1][2]  ( .D(n139), .CLK(wclk), .Q(\fiforeg[1][2] ) );
  DFFPOSX1 \fiforeg_reg[1][1]  ( .D(n138), .CLK(wclk), .Q(\fiforeg[1][1] ) );
  DFFPOSX1 \fiforeg_reg[1][0]  ( .D(n137), .CLK(wclk), .Q(\fiforeg[1][0] ) );
  DFFPOSX1 \fiforeg_reg[2][7]  ( .D(n136), .CLK(wclk), .Q(\fiforeg[2][7] ) );
  DFFPOSX1 \fiforeg_reg[2][6]  ( .D(n135), .CLK(wclk), .Q(\fiforeg[2][6] ) );
  DFFPOSX1 \fiforeg_reg[2][5]  ( .D(n134), .CLK(wclk), .Q(\fiforeg[2][5] ) );
  DFFPOSX1 \fiforeg_reg[2][4]  ( .D(n133), .CLK(wclk), .Q(\fiforeg[2][4] ) );
  DFFPOSX1 \fiforeg_reg[2][3]  ( .D(n132), .CLK(wclk), .Q(\fiforeg[2][3] ) );
  DFFPOSX1 \fiforeg_reg[2][2]  ( .D(n131), .CLK(wclk), .Q(\fiforeg[2][2] ) );
  DFFPOSX1 \fiforeg_reg[2][1]  ( .D(n130), .CLK(wclk), .Q(\fiforeg[2][1] ) );
  DFFPOSX1 \fiforeg_reg[2][0]  ( .D(n129), .CLK(wclk), .Q(\fiforeg[2][0] ) );
  DFFPOSX1 \fiforeg_reg[3][7]  ( .D(n128), .CLK(wclk), .Q(\fiforeg[3][7] ) );
  DFFPOSX1 \fiforeg_reg[3][6]  ( .D(n127), .CLK(wclk), .Q(\fiforeg[3][6] ) );
  DFFPOSX1 \fiforeg_reg[3][5]  ( .D(n126), .CLK(wclk), .Q(\fiforeg[3][5] ) );
  DFFPOSX1 \fiforeg_reg[3][4]  ( .D(n125), .CLK(wclk), .Q(\fiforeg[3][4] ) );
  DFFPOSX1 \fiforeg_reg[3][3]  ( .D(n124), .CLK(wclk), .Q(\fiforeg[3][3] ) );
  DFFPOSX1 \fiforeg_reg[3][2]  ( .D(n123), .CLK(wclk), .Q(\fiforeg[3][2] ) );
  DFFPOSX1 \fiforeg_reg[3][1]  ( .D(n122), .CLK(wclk), .Q(\fiforeg[3][1] ) );
  DFFPOSX1 \fiforeg_reg[3][0]  ( .D(n121), .CLK(wclk), .Q(\fiforeg[3][0] ) );
  DFFPOSX1 \fiforeg_reg[4][7]  ( .D(n120), .CLK(wclk), .Q(\fiforeg[4][7] ) );
  DFFPOSX1 \fiforeg_reg[4][6]  ( .D(n119), .CLK(wclk), .Q(\fiforeg[4][6] ) );
  DFFPOSX1 \fiforeg_reg[4][5]  ( .D(n118), .CLK(wclk), .Q(\fiforeg[4][5] ) );
  DFFPOSX1 \fiforeg_reg[4][4]  ( .D(n117), .CLK(wclk), .Q(\fiforeg[4][4] ) );
  DFFPOSX1 \fiforeg_reg[4][3]  ( .D(n116), .CLK(wclk), .Q(\fiforeg[4][3] ) );
  DFFPOSX1 \fiforeg_reg[4][2]  ( .D(n115), .CLK(wclk), .Q(\fiforeg[4][2] ) );
  DFFPOSX1 \fiforeg_reg[4][1]  ( .D(n114), .CLK(wclk), .Q(\fiforeg[4][1] ) );
  DFFPOSX1 \fiforeg_reg[4][0]  ( .D(n113), .CLK(wclk), .Q(\fiforeg[4][0] ) );
  DFFPOSX1 \fiforeg_reg[5][7]  ( .D(n112), .CLK(wclk), .Q(\fiforeg[5][7] ) );
  DFFPOSX1 \fiforeg_reg[5][6]  ( .D(n111), .CLK(wclk), .Q(\fiforeg[5][6] ) );
  DFFPOSX1 \fiforeg_reg[5][5]  ( .D(n110), .CLK(wclk), .Q(\fiforeg[5][5] ) );
  DFFPOSX1 \fiforeg_reg[5][4]  ( .D(n109), .CLK(wclk), .Q(\fiforeg[5][4] ) );
  DFFPOSX1 \fiforeg_reg[5][3]  ( .D(n108), .CLK(wclk), .Q(\fiforeg[5][3] ) );
  DFFPOSX1 \fiforeg_reg[5][2]  ( .D(n107), .CLK(wclk), .Q(\fiforeg[5][2] ) );
  DFFPOSX1 \fiforeg_reg[5][1]  ( .D(n106), .CLK(wclk), .Q(\fiforeg[5][1] ) );
  DFFPOSX1 \fiforeg_reg[5][0]  ( .D(n105), .CLK(wclk), .Q(\fiforeg[5][0] ) );
  DFFPOSX1 \fiforeg_reg[6][7]  ( .D(n104), .CLK(wclk), .Q(\fiforeg[6][7] ) );
  DFFPOSX1 \fiforeg_reg[6][6]  ( .D(n103), .CLK(wclk), .Q(\fiforeg[6][6] ) );
  DFFPOSX1 \fiforeg_reg[6][5]  ( .D(n102), .CLK(wclk), .Q(\fiforeg[6][5] ) );
  DFFPOSX1 \fiforeg_reg[6][4]  ( .D(n101), .CLK(wclk), .Q(\fiforeg[6][4] ) );
  DFFPOSX1 \fiforeg_reg[6][3]  ( .D(n100), .CLK(wclk), .Q(\fiforeg[6][3] ) );
  DFFPOSX1 \fiforeg_reg[6][2]  ( .D(n99), .CLK(wclk), .Q(\fiforeg[6][2] ) );
  DFFPOSX1 \fiforeg_reg[6][1]  ( .D(n98), .CLK(wclk), .Q(\fiforeg[6][1] ) );
  DFFPOSX1 \fiforeg_reg[6][0]  ( .D(n97), .CLK(wclk), .Q(\fiforeg[6][0] ) );
  DFFPOSX1 \fiforeg_reg[7][7]  ( .D(n96), .CLK(wclk), .Q(\fiforeg[7][7] ) );
  DFFPOSX1 \fiforeg_reg[7][6]  ( .D(n95), .CLK(wclk), .Q(\fiforeg[7][6] ) );
  DFFPOSX1 \fiforeg_reg[7][5]  ( .D(n94), .CLK(wclk), .Q(\fiforeg[7][5] ) );
  DFFPOSX1 \fiforeg_reg[7][4]  ( .D(n93), .CLK(wclk), .Q(\fiforeg[7][4] ) );
  DFFPOSX1 \fiforeg_reg[7][3]  ( .D(n92), .CLK(wclk), .Q(\fiforeg[7][3] ) );
  DFFPOSX1 \fiforeg_reg[7][2]  ( .D(n91), .CLK(wclk), .Q(\fiforeg[7][2] ) );
  DFFPOSX1 \fiforeg_reg[7][1]  ( .D(n90), .CLK(wclk), .Q(\fiforeg[7][1] ) );
  DFFPOSX1 \fiforeg_reg[7][0]  ( .D(n89), .CLK(wclk), .Q(\fiforeg[7][0] ) );
  BUFX2 U2 ( .A(n54), .Y(n1) );
  BUFX2 U3 ( .A(n56), .Y(n2) );
  BUFX2 U4 ( .A(n175), .Y(n3) );
  BUFX2 U5 ( .A(n53), .Y(n4) );
  BUFX2 U6 ( .A(n172), .Y(n5) );
  BUFX2 U7 ( .A(n173), .Y(n6) );
  BUFX2 U8 ( .A(n55), .Y(n7) );
  BUFX2 U9 ( .A(n174), .Y(n8) );
  NOR2X1 U10 ( .A(n63), .B(N11), .Y(n54) );
  NOR2X1 U11 ( .A(n63), .B(n62), .Y(n53) );
  AOI22X1 U12 ( .A(\fiforeg[4][0] ), .B(n1), .C(\fiforeg[6][0] ), .D(n4), .Y(
        n10) );
  NOR2X1 U13 ( .A(N11), .B(N12), .Y(n56) );
  NOR2X1 U14 ( .A(n62), .B(N12), .Y(n55) );
  AOI22X1 U15 ( .A(\fiforeg[0][0] ), .B(n2), .C(\fiforeg[2][0] ), .D(n7), .Y(
        n9) );
  AOI21X1 U16 ( .A(n10), .B(n9), .C(N10), .Y(n14) );
  AOI22X1 U17 ( .A(\fiforeg[5][0] ), .B(n1), .C(\fiforeg[7][0] ), .D(n4), .Y(
        n12) );
  AOI22X1 U18 ( .A(\fiforeg[1][0] ), .B(n2), .C(\fiforeg[3][0] ), .D(n7), .Y(
        n11) );
  AOI21X1 U19 ( .A(n12), .B(n11), .C(n61), .Y(n13) );
  OR2X1 U20 ( .A(n14), .B(n13), .Y(rdata[0]) );
  AOI22X1 U21 ( .A(\fiforeg[4][1] ), .B(n1), .C(\fiforeg[6][1] ), .D(n4), .Y(
        n16) );
  AOI22X1 U22 ( .A(\fiforeg[0][1] ), .B(n2), .C(\fiforeg[2][1] ), .D(n7), .Y(
        n15) );
  AOI21X1 U23 ( .A(n16), .B(n15), .C(N10), .Y(n20) );
  AOI22X1 U24 ( .A(\fiforeg[5][1] ), .B(n1), .C(\fiforeg[7][1] ), .D(n4), .Y(
        n18) );
  AOI22X1 U25 ( .A(\fiforeg[1][1] ), .B(n2), .C(\fiforeg[3][1] ), .D(n7), .Y(
        n17) );
  AOI21X1 U26 ( .A(n18), .B(n17), .C(n61), .Y(n19) );
  OR2X1 U27 ( .A(n20), .B(n19), .Y(rdata[1]) );
  AOI22X1 U28 ( .A(\fiforeg[4][2] ), .B(n1), .C(\fiforeg[6][2] ), .D(n4), .Y(
        n22) );
  AOI22X1 U29 ( .A(\fiforeg[0][2] ), .B(n2), .C(\fiforeg[2][2] ), .D(n7), .Y(
        n21) );
  AOI21X1 U30 ( .A(n22), .B(n21), .C(N10), .Y(n26) );
  AOI22X1 U31 ( .A(\fiforeg[5][2] ), .B(n1), .C(\fiforeg[7][2] ), .D(n4), .Y(
        n24) );
  AOI22X1 U32 ( .A(\fiforeg[1][2] ), .B(n2), .C(\fiforeg[3][2] ), .D(n7), .Y(
        n23) );
  AOI21X1 U33 ( .A(n24), .B(n23), .C(n61), .Y(n25) );
  OR2X1 U34 ( .A(n26), .B(n25), .Y(rdata[2]) );
  AOI22X1 U35 ( .A(\fiforeg[4][3] ), .B(n1), .C(\fiforeg[6][3] ), .D(n4), .Y(
        n28) );
  AOI22X1 U36 ( .A(\fiforeg[0][3] ), .B(n2), .C(\fiforeg[2][3] ), .D(n7), .Y(
        n27) );
  AOI21X1 U37 ( .A(n28), .B(n27), .C(N10), .Y(n32) );
  AOI22X1 U38 ( .A(\fiforeg[5][3] ), .B(n1), .C(\fiforeg[7][3] ), .D(n4), .Y(
        n30) );
  AOI22X1 U39 ( .A(\fiforeg[1][3] ), .B(n2), .C(\fiforeg[3][3] ), .D(n7), .Y(
        n29) );
  AOI21X1 U40 ( .A(n30), .B(n29), .C(n61), .Y(n31) );
  OR2X1 U41 ( .A(n32), .B(n31), .Y(rdata[3]) );
  AOI22X1 U42 ( .A(\fiforeg[4][4] ), .B(n1), .C(\fiforeg[6][4] ), .D(n4), .Y(
        n34) );
  AOI22X1 U43 ( .A(\fiforeg[0][4] ), .B(n2), .C(\fiforeg[2][4] ), .D(n7), .Y(
        n33) );
  AOI21X1 U44 ( .A(n34), .B(n33), .C(N10), .Y(n38) );
  AOI22X1 U45 ( .A(\fiforeg[5][4] ), .B(n1), .C(\fiforeg[7][4] ), .D(n4), .Y(
        n36) );
  AOI22X1 U46 ( .A(\fiforeg[1][4] ), .B(n2), .C(\fiforeg[3][4] ), .D(n7), .Y(
        n35) );
  AOI21X1 U47 ( .A(n36), .B(n35), .C(n61), .Y(n37) );
  OR2X1 U48 ( .A(n38), .B(n37), .Y(rdata[4]) );
  AOI22X1 U49 ( .A(\fiforeg[4][5] ), .B(n1), .C(\fiforeg[6][5] ), .D(n4), .Y(
        n40) );
  AOI22X1 U50 ( .A(\fiforeg[0][5] ), .B(n2), .C(\fiforeg[2][5] ), .D(n7), .Y(
        n39) );
  AOI21X1 U51 ( .A(n40), .B(n39), .C(N10), .Y(n44) );
  AOI22X1 U52 ( .A(\fiforeg[5][5] ), .B(n1), .C(\fiforeg[7][5] ), .D(n4), .Y(
        n42) );
  AOI22X1 U53 ( .A(\fiforeg[1][5] ), .B(n2), .C(\fiforeg[3][5] ), .D(n7), .Y(
        n41) );
  AOI21X1 U54 ( .A(n42), .B(n41), .C(n61), .Y(n43) );
  OR2X1 U55 ( .A(n44), .B(n43), .Y(rdata[5]) );
  AOI22X1 U56 ( .A(\fiforeg[4][6] ), .B(n1), .C(\fiforeg[6][6] ), .D(n4), .Y(
        n46) );
  AOI22X1 U57 ( .A(\fiforeg[0][6] ), .B(n2), .C(\fiforeg[2][6] ), .D(n7), .Y(
        n45) );
  AOI21X1 U58 ( .A(n46), .B(n45), .C(N10), .Y(n50) );
  AOI22X1 U59 ( .A(\fiforeg[5][6] ), .B(n1), .C(\fiforeg[7][6] ), .D(n4), .Y(
        n48) );
  AOI22X1 U60 ( .A(\fiforeg[1][6] ), .B(n2), .C(\fiforeg[3][6] ), .D(n7), .Y(
        n47) );
  AOI21X1 U61 ( .A(n48), .B(n47), .C(n61), .Y(n49) );
  OR2X1 U62 ( .A(n50), .B(n49), .Y(rdata[6]) );
  AOI22X1 U63 ( .A(\fiforeg[4][7] ), .B(n1), .C(\fiforeg[6][7] ), .D(n4), .Y(
        n52) );
  AOI22X1 U64 ( .A(\fiforeg[0][7] ), .B(n2), .C(\fiforeg[2][7] ), .D(n7), .Y(
        n51) );
  AOI21X1 U65 ( .A(n52), .B(n51), .C(N10), .Y(n60) );
  AOI22X1 U66 ( .A(\fiforeg[5][7] ), .B(n1), .C(\fiforeg[7][7] ), .D(n4), .Y(
        n58) );
  AOI22X1 U67 ( .A(\fiforeg[1][7] ), .B(n2), .C(\fiforeg[3][7] ), .D(n7), .Y(
        n57) );
  AOI21X1 U68 ( .A(n58), .B(n57), .C(n61), .Y(n59) );
  OR2X1 U69 ( .A(n60), .B(n59), .Y(rdata[7]) );
  INVX2 U70 ( .A(N10), .Y(n61) );
  INVX2 U71 ( .A(N11), .Y(n62) );
  INVX2 U72 ( .A(N12), .Y(n63) );
  NOR2X1 U73 ( .A(n211), .B(N14), .Y(n173) );
  NOR2X1 U74 ( .A(n211), .B(n180), .Y(n172) );
  AOI22X1 U75 ( .A(\fiforeg[4][0] ), .B(n6), .C(\fiforeg[6][0] ), .D(n5), .Y(
        n65) );
  NOR2X1 U76 ( .A(N14), .B(N15), .Y(n175) );
  NOR2X1 U77 ( .A(n180), .B(N15), .Y(n174) );
  AOI22X1 U78 ( .A(\fiforeg[0][0] ), .B(n3), .C(\fiforeg[2][0] ), .D(n8), .Y(
        n64) );
  AOI21X1 U79 ( .A(n65), .B(n64), .C(N13), .Y(n69) );
  AOI22X1 U80 ( .A(\fiforeg[5][0] ), .B(n6), .C(\fiforeg[7][0] ), .D(n5), .Y(
        n67) );
  AOI22X1 U81 ( .A(\fiforeg[1][0] ), .B(n3), .C(\fiforeg[3][0] ), .D(n8), .Y(
        n66) );
  AOI21X1 U82 ( .A(n67), .B(n66), .C(n212), .Y(n68) );
  OR2X1 U83 ( .A(n69), .B(n68), .Y(N24) );
  AOI22X1 U84 ( .A(\fiforeg[4][1] ), .B(n6), .C(\fiforeg[6][1] ), .D(n5), .Y(
        n71) );
  AOI22X1 U85 ( .A(\fiforeg[0][1] ), .B(n3), .C(\fiforeg[2][1] ), .D(n8), .Y(
        n70) );
  AOI21X1 U86 ( .A(n71), .B(n70), .C(N13), .Y(n75) );
  AOI22X1 U87 ( .A(\fiforeg[5][1] ), .B(n6), .C(\fiforeg[7][1] ), .D(n5), .Y(
        n73) );
  AOI22X1 U88 ( .A(\fiforeg[1][1] ), .B(n3), .C(\fiforeg[3][1] ), .D(n8), .Y(
        n72) );
  AOI21X1 U89 ( .A(n73), .B(n72), .C(n212), .Y(n74) );
  OR2X1 U90 ( .A(n75), .B(n74), .Y(N23) );
  AOI22X1 U91 ( .A(\fiforeg[4][2] ), .B(n6), .C(\fiforeg[6][2] ), .D(n5), .Y(
        n77) );
  AOI22X1 U92 ( .A(\fiforeg[0][2] ), .B(n3), .C(\fiforeg[2][2] ), .D(n8), .Y(
        n76) );
  AOI21X1 U93 ( .A(n77), .B(n76), .C(N13), .Y(n81) );
  AOI22X1 U94 ( .A(\fiforeg[5][2] ), .B(n6), .C(\fiforeg[7][2] ), .D(n5), .Y(
        n79) );
  AOI22X1 U95 ( .A(\fiforeg[1][2] ), .B(n3), .C(\fiforeg[3][2] ), .D(n8), .Y(
        n78) );
  AOI21X1 U96 ( .A(n79), .B(n78), .C(n212), .Y(n80) );
  OR2X1 U97 ( .A(n81), .B(n80), .Y(N22) );
  AOI22X1 U98 ( .A(\fiforeg[4][3] ), .B(n6), .C(\fiforeg[6][3] ), .D(n5), .Y(
        n83) );
  AOI22X1 U99 ( .A(\fiforeg[0][3] ), .B(n3), .C(\fiforeg[2][3] ), .D(n8), .Y(
        n82) );
  AOI21X1 U100 ( .A(n83), .B(n82), .C(N13), .Y(n87) );
  AOI22X1 U101 ( .A(\fiforeg[5][3] ), .B(n6), .C(\fiforeg[7][3] ), .D(n5), .Y(
        n85) );
  AOI22X1 U102 ( .A(\fiforeg[1][3] ), .B(n3), .C(\fiforeg[3][3] ), .D(n8), .Y(
        n84) );
  AOI21X1 U103 ( .A(n85), .B(n84), .C(n212), .Y(n86) );
  OR2X1 U104 ( .A(n87), .B(n86), .Y(N21) );
  AOI22X1 U105 ( .A(\fiforeg[4][4] ), .B(n6), .C(\fiforeg[6][4] ), .D(n5), .Y(
        n153) );
  AOI22X1 U106 ( .A(\fiforeg[0][4] ), .B(n3), .C(\fiforeg[2][4] ), .D(n8), .Y(
        n88) );
  AOI21X1 U107 ( .A(n153), .B(n88), .C(N13), .Y(n157) );
  AOI22X1 U108 ( .A(\fiforeg[5][4] ), .B(n6), .C(\fiforeg[7][4] ), .D(n5), .Y(
        n155) );
  AOI22X1 U109 ( .A(\fiforeg[1][4] ), .B(n3), .C(\fiforeg[3][4] ), .D(n8), .Y(
        n154) );
  AOI21X1 U110 ( .A(n155), .B(n154), .C(n212), .Y(n156) );
  OR2X1 U111 ( .A(n157), .B(n156), .Y(N20) );
  AOI22X1 U112 ( .A(\fiforeg[4][5] ), .B(n6), .C(\fiforeg[6][5] ), .D(n5), .Y(
        n159) );
  AOI22X1 U113 ( .A(\fiforeg[0][5] ), .B(n3), .C(\fiforeg[2][5] ), .D(n8), .Y(
        n158) );
  AOI21X1 U114 ( .A(n159), .B(n158), .C(N13), .Y(n163) );
  AOI22X1 U115 ( .A(\fiforeg[5][5] ), .B(n6), .C(\fiforeg[7][5] ), .D(n5), .Y(
        n161) );
  AOI22X1 U116 ( .A(\fiforeg[1][5] ), .B(n3), .C(\fiforeg[3][5] ), .D(n8), .Y(
        n160) );
  AOI21X1 U117 ( .A(n161), .B(n160), .C(n212), .Y(n162) );
  OR2X1 U118 ( .A(n163), .B(n162), .Y(N19) );
  AOI22X1 U119 ( .A(\fiforeg[4][6] ), .B(n6), .C(\fiforeg[6][6] ), .D(n5), .Y(
        n165) );
  AOI22X1 U120 ( .A(\fiforeg[0][6] ), .B(n3), .C(\fiforeg[2][6] ), .D(n8), .Y(
        n164) );
  AOI21X1 U121 ( .A(n165), .B(n164), .C(N13), .Y(n169) );
  AOI22X1 U122 ( .A(\fiforeg[5][6] ), .B(n6), .C(\fiforeg[7][6] ), .D(n5), .Y(
        n167) );
  AOI22X1 U123 ( .A(\fiforeg[1][6] ), .B(n3), .C(\fiforeg[3][6] ), .D(n8), .Y(
        n166) );
  AOI21X1 U124 ( .A(n167), .B(n166), .C(n212), .Y(n168) );
  OR2X1 U125 ( .A(n169), .B(n168), .Y(N18) );
  AOI22X1 U126 ( .A(\fiforeg[4][7] ), .B(n6), .C(\fiforeg[6][7] ), .D(n5), .Y(
        n171) );
  AOI22X1 U127 ( .A(\fiforeg[0][7] ), .B(n3), .C(\fiforeg[2][7] ), .D(n8), .Y(
        n170) );
  AOI21X1 U128 ( .A(n171), .B(n170), .C(N13), .Y(n179) );
  AOI22X1 U129 ( .A(\fiforeg[5][7] ), .B(n6), .C(\fiforeg[7][7] ), .D(n5), .Y(
        n177) );
  AOI22X1 U130 ( .A(\fiforeg[1][7] ), .B(n3), .C(\fiforeg[3][7] ), .D(n8), .Y(
        n176) );
  AOI21X1 U131 ( .A(n177), .B(n176), .C(n212), .Y(n178) );
  OR2X1 U132 ( .A(n179), .B(n178), .Y(N17) );
  INVX2 U133 ( .A(N14), .Y(n180) );
  MUX2X1 U134 ( .B(n181), .A(n182), .S(n183), .Y(n99) );
  INVX1 U135 ( .A(\fiforeg[6][2] ), .Y(n182) );
  MUX2X1 U136 ( .B(n184), .A(n185), .S(n183), .Y(n98) );
  INVX1 U137 ( .A(\fiforeg[6][1] ), .Y(n185) );
  MUX2X1 U138 ( .B(n186), .A(n187), .S(n183), .Y(n97) );
  INVX1 U139 ( .A(\fiforeg[6][0] ), .Y(n187) );
  MUX2X1 U140 ( .B(n188), .A(n189), .S(n190), .Y(n96) );
  INVX1 U141 ( .A(\fiforeg[7][7] ), .Y(n189) );
  MUX2X1 U142 ( .B(n191), .A(n192), .S(n190), .Y(n95) );
  INVX1 U143 ( .A(\fiforeg[7][6] ), .Y(n192) );
  MUX2X1 U144 ( .B(n193), .A(n194), .S(n190), .Y(n94) );
  INVX1 U145 ( .A(\fiforeg[7][5] ), .Y(n194) );
  MUX2X1 U146 ( .B(n195), .A(n196), .S(n190), .Y(n93) );
  INVX1 U147 ( .A(\fiforeg[7][4] ), .Y(n196) );
  MUX2X1 U148 ( .B(n197), .A(n198), .S(n190), .Y(n92) );
  INVX1 U149 ( .A(\fiforeg[7][3] ), .Y(n198) );
  MUX2X1 U150 ( .B(n181), .A(n199), .S(n190), .Y(n91) );
  INVX1 U151 ( .A(\fiforeg[7][2] ), .Y(n199) );
  MUX2X1 U152 ( .B(n184), .A(n200), .S(n190), .Y(n90) );
  INVX1 U153 ( .A(\fiforeg[7][1] ), .Y(n200) );
  MUX2X1 U154 ( .B(n186), .A(n201), .S(n190), .Y(n89) );
  NAND3X1 U155 ( .A(N15), .B(N14), .C(N13), .Y(n190) );
  INVX1 U156 ( .A(\fiforeg[7][0] ), .Y(n201) );
  MUX2X1 U157 ( .B(n188), .A(n202), .S(n203), .Y(n152) );
  INVX1 U158 ( .A(\fiforeg[0][7] ), .Y(n202) );
  MUX2X1 U159 ( .B(n191), .A(n204), .S(n203), .Y(n151) );
  INVX1 U160 ( .A(\fiforeg[0][6] ), .Y(n204) );
  MUX2X1 U161 ( .B(n193), .A(n205), .S(n203), .Y(n150) );
  INVX1 U162 ( .A(\fiforeg[0][5] ), .Y(n205) );
  MUX2X1 U163 ( .B(n195), .A(n206), .S(n203), .Y(n149) );
  INVX1 U164 ( .A(\fiforeg[0][4] ), .Y(n206) );
  MUX2X1 U165 ( .B(n197), .A(n207), .S(n203), .Y(n148) );
  INVX1 U166 ( .A(\fiforeg[0][3] ), .Y(n207) );
  MUX2X1 U167 ( .B(n181), .A(n208), .S(n203), .Y(n147) );
  INVX1 U168 ( .A(\fiforeg[0][2] ), .Y(n208) );
  MUX2X1 U169 ( .B(n184), .A(n209), .S(n203), .Y(n146) );
  INVX1 U170 ( .A(\fiforeg[0][1] ), .Y(n209) );
  MUX2X1 U171 ( .B(n186), .A(n210), .S(n203), .Y(n145) );
  NAND3X1 U172 ( .A(n180), .B(n211), .C(n212), .Y(n203) );
  INVX1 U173 ( .A(\fiforeg[0][0] ), .Y(n210) );
  MUX2X1 U174 ( .B(n188), .A(n213), .S(n214), .Y(n144) );
  INVX1 U175 ( .A(\fiforeg[1][7] ), .Y(n213) );
  MUX2X1 U176 ( .B(n191), .A(n215), .S(n214), .Y(n143) );
  INVX1 U177 ( .A(\fiforeg[1][6] ), .Y(n215) );
  MUX2X1 U178 ( .B(n193), .A(n216), .S(n214), .Y(n142) );
  INVX1 U179 ( .A(\fiforeg[1][5] ), .Y(n216) );
  MUX2X1 U180 ( .B(n195), .A(n217), .S(n214), .Y(n141) );
  INVX1 U181 ( .A(\fiforeg[1][4] ), .Y(n217) );
  MUX2X1 U182 ( .B(n197), .A(n218), .S(n214), .Y(n140) );
  INVX1 U183 ( .A(\fiforeg[1][3] ), .Y(n218) );
  MUX2X1 U184 ( .B(n181), .A(n219), .S(n214), .Y(n139) );
  INVX1 U185 ( .A(\fiforeg[1][2] ), .Y(n219) );
  MUX2X1 U186 ( .B(n184), .A(n220), .S(n214), .Y(n138) );
  INVX1 U187 ( .A(\fiforeg[1][1] ), .Y(n220) );
  MUX2X1 U188 ( .B(n186), .A(n221), .S(n214), .Y(n137) );
  NAND3X1 U189 ( .A(n180), .B(n211), .C(N13), .Y(n214) );
  INVX1 U190 ( .A(\fiforeg[1][0] ), .Y(n221) );
  MUX2X1 U191 ( .B(n188), .A(n222), .S(n223), .Y(n136) );
  INVX1 U192 ( .A(\fiforeg[2][7] ), .Y(n222) );
  MUX2X1 U193 ( .B(n191), .A(n224), .S(n223), .Y(n135) );
  INVX1 U194 ( .A(\fiforeg[2][6] ), .Y(n224) );
  MUX2X1 U195 ( .B(n193), .A(n225), .S(n223), .Y(n134) );
  INVX1 U196 ( .A(\fiforeg[2][5] ), .Y(n225) );
  MUX2X1 U197 ( .B(n195), .A(n226), .S(n223), .Y(n133) );
  INVX1 U198 ( .A(\fiforeg[2][4] ), .Y(n226) );
  MUX2X1 U199 ( .B(n197), .A(n227), .S(n223), .Y(n132) );
  INVX1 U200 ( .A(\fiforeg[2][3] ), .Y(n227) );
  MUX2X1 U201 ( .B(n181), .A(n228), .S(n223), .Y(n131) );
  INVX1 U202 ( .A(\fiforeg[2][2] ), .Y(n228) );
  MUX2X1 U203 ( .B(n184), .A(n229), .S(n223), .Y(n130) );
  INVX1 U204 ( .A(\fiforeg[2][1] ), .Y(n229) );
  MUX2X1 U205 ( .B(n186), .A(n230), .S(n223), .Y(n129) );
  NAND3X1 U206 ( .A(n212), .B(n211), .C(N14), .Y(n223) );
  INVX1 U207 ( .A(\fiforeg[2][0] ), .Y(n230) );
  MUX2X1 U208 ( .B(n188), .A(n231), .S(n232), .Y(n128) );
  INVX1 U209 ( .A(\fiforeg[3][7] ), .Y(n231) );
  MUX2X1 U210 ( .B(n191), .A(n233), .S(n232), .Y(n127) );
  INVX1 U211 ( .A(\fiforeg[3][6] ), .Y(n233) );
  MUX2X1 U212 ( .B(n193), .A(n234), .S(n232), .Y(n126) );
  INVX1 U213 ( .A(\fiforeg[3][5] ), .Y(n234) );
  MUX2X1 U214 ( .B(n195), .A(n235), .S(n232), .Y(n125) );
  INVX1 U215 ( .A(\fiforeg[3][4] ), .Y(n235) );
  MUX2X1 U216 ( .B(n197), .A(n236), .S(n232), .Y(n124) );
  INVX1 U217 ( .A(\fiforeg[3][3] ), .Y(n236) );
  MUX2X1 U218 ( .B(n181), .A(n237), .S(n232), .Y(n123) );
  INVX1 U219 ( .A(\fiforeg[3][2] ), .Y(n237) );
  MUX2X1 U220 ( .B(n184), .A(n238), .S(n232), .Y(n122) );
  INVX1 U221 ( .A(\fiforeg[3][1] ), .Y(n238) );
  MUX2X1 U222 ( .B(n186), .A(n239), .S(n232), .Y(n121) );
  NAND3X1 U223 ( .A(N14), .B(n211), .C(N13), .Y(n232) );
  INVX1 U224 ( .A(N15), .Y(n211) );
  INVX1 U225 ( .A(\fiforeg[3][0] ), .Y(n239) );
  MUX2X1 U226 ( .B(n188), .A(n240), .S(n241), .Y(n120) );
  INVX1 U227 ( .A(\fiforeg[4][7] ), .Y(n240) );
  MUX2X1 U228 ( .B(n191), .A(n242), .S(n241), .Y(n119) );
  INVX1 U229 ( .A(\fiforeg[4][6] ), .Y(n242) );
  MUX2X1 U230 ( .B(n193), .A(n243), .S(n241), .Y(n118) );
  INVX1 U231 ( .A(\fiforeg[4][5] ), .Y(n243) );
  MUX2X1 U232 ( .B(n195), .A(n244), .S(n241), .Y(n117) );
  INVX1 U233 ( .A(\fiforeg[4][4] ), .Y(n244) );
  MUX2X1 U234 ( .B(n197), .A(n245), .S(n241), .Y(n116) );
  INVX1 U235 ( .A(\fiforeg[4][3] ), .Y(n245) );
  MUX2X1 U236 ( .B(n181), .A(n246), .S(n241), .Y(n115) );
  INVX1 U237 ( .A(\fiforeg[4][2] ), .Y(n246) );
  MUX2X1 U238 ( .B(n184), .A(n247), .S(n241), .Y(n114) );
  INVX1 U239 ( .A(\fiforeg[4][1] ), .Y(n247) );
  MUX2X1 U240 ( .B(n186), .A(n248), .S(n241), .Y(n113) );
  NAND3X1 U241 ( .A(n212), .B(n180), .C(N15), .Y(n241) );
  INVX1 U242 ( .A(\fiforeg[4][0] ), .Y(n248) );
  MUX2X1 U243 ( .B(n188), .A(n249), .S(n250), .Y(n112) );
  INVX1 U244 ( .A(\fiforeg[5][7] ), .Y(n249) );
  MUX2X1 U245 ( .B(n191), .A(n251), .S(n250), .Y(n111) );
  INVX1 U246 ( .A(\fiforeg[5][6] ), .Y(n251) );
  MUX2X1 U247 ( .B(n193), .A(n252), .S(n250), .Y(n110) );
  INVX1 U248 ( .A(\fiforeg[5][5] ), .Y(n252) );
  MUX2X1 U249 ( .B(n195), .A(n253), .S(n250), .Y(n109) );
  INVX1 U250 ( .A(\fiforeg[5][4] ), .Y(n253) );
  MUX2X1 U251 ( .B(n197), .A(n254), .S(n250), .Y(n108) );
  INVX1 U252 ( .A(\fiforeg[5][3] ), .Y(n254) );
  MUX2X1 U253 ( .B(n181), .A(n255), .S(n250), .Y(n107) );
  INVX1 U254 ( .A(\fiforeg[5][2] ), .Y(n255) );
  MUX2X1 U255 ( .B(N22), .A(wdata[2]), .S(wenable), .Y(n181) );
  MUX2X1 U256 ( .B(n184), .A(n256), .S(n250), .Y(n106) );
  INVX1 U257 ( .A(\fiforeg[5][1] ), .Y(n256) );
  MUX2X1 U258 ( .B(N23), .A(wdata[1]), .S(wenable), .Y(n184) );
  MUX2X1 U259 ( .B(n186), .A(n257), .S(n250), .Y(n105) );
  NAND3X1 U260 ( .A(N15), .B(n180), .C(N13), .Y(n250) );
  INVX1 U261 ( .A(\fiforeg[5][0] ), .Y(n257) );
  MUX2X1 U262 ( .B(N24), .A(wdata[0]), .S(wenable), .Y(n186) );
  MUX2X1 U263 ( .B(n188), .A(n258), .S(n183), .Y(n104) );
  INVX1 U264 ( .A(\fiforeg[6][7] ), .Y(n258) );
  MUX2X1 U265 ( .B(N17), .A(wdata[7]), .S(wenable), .Y(n188) );
  MUX2X1 U266 ( .B(n191), .A(n259), .S(n183), .Y(n103) );
  INVX1 U267 ( .A(\fiforeg[6][6] ), .Y(n259) );
  MUX2X1 U268 ( .B(N18), .A(wdata[6]), .S(wenable), .Y(n191) );
  MUX2X1 U269 ( .B(n193), .A(n260), .S(n183), .Y(n102) );
  INVX1 U270 ( .A(\fiforeg[6][5] ), .Y(n260) );
  MUX2X1 U271 ( .B(N19), .A(wdata[5]), .S(wenable), .Y(n193) );
  MUX2X1 U272 ( .B(n195), .A(n261), .S(n183), .Y(n101) );
  INVX1 U273 ( .A(\fiforeg[6][4] ), .Y(n261) );
  MUX2X1 U274 ( .B(N20), .A(wdata[4]), .S(wenable), .Y(n195) );
  MUX2X1 U275 ( .B(n197), .A(n262), .S(n183), .Y(n100) );
  NAND3X1 U276 ( .A(N14), .B(n212), .C(N15), .Y(n183) );
  INVX1 U277 ( .A(N13), .Y(n212) );
  INVX1 U278 ( .A(\fiforeg[6][3] ), .Y(n262) );
  MUX2X1 U279 ( .B(N21), .A(wdata[3]), .S(wenable), .Y(n197) );
endmodule


module write_ptr_1 ( wclk, rst_n, wenable, wptr, wptr_nxt );
  output [3:0] wptr;
  output [3:0] wptr_nxt;
  input wclk, rst_n, wenable;
  wire   n9, n10, n11, n12;
  wire   [2:0] binary_nxt;
  wire   [3:0] binary_r;

  DFFSR \binary_r_reg[0]  ( .D(binary_nxt[0]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[0]) );
  DFFSR \binary_r_reg[1]  ( .D(binary_nxt[1]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[1]) );
  DFFSR \binary_r_reg[2]  ( .D(binary_nxt[2]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[2]) );
  DFFSR \binary_r_reg[3]  ( .D(wptr_nxt[3]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[3]) );
  DFFSR \gray_r_reg[3]  ( .D(wptr_nxt[3]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[3]) );
  DFFSR \gray_r_reg[2]  ( .D(wptr_nxt[2]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[2]) );
  DFFSR \gray_r_reg[1]  ( .D(wptr_nxt[1]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[1]) );
  DFFSR \gray_r_reg[0]  ( .D(wptr_nxt[0]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[0]) );
  XOR2X1 U11 ( .A(wptr_nxt[3]), .B(binary_nxt[2]), .Y(wptr_nxt[2]) );
  XNOR2X1 U12 ( .A(n9), .B(binary_r[3]), .Y(wptr_nxt[3]) );
  NAND2X1 U13 ( .A(binary_r[2]), .B(n10), .Y(n9) );
  XOR2X1 U14 ( .A(binary_nxt[2]), .B(binary_nxt[1]), .Y(wptr_nxt[1]) );
  XOR2X1 U15 ( .A(binary_nxt[1]), .B(binary_nxt[0]), .Y(wptr_nxt[0]) );
  XOR2X1 U16 ( .A(n10), .B(binary_r[2]), .Y(binary_nxt[2]) );
  INVX1 U17 ( .A(n11), .Y(n10) );
  NAND3X1 U18 ( .A(binary_r[1]), .B(binary_r[0]), .C(wenable), .Y(n11) );
  XNOR2X1 U19 ( .A(n12), .B(binary_r[1]), .Y(binary_nxt[1]) );
  NAND2X1 U20 ( .A(wenable), .B(binary_r[0]), .Y(n12) );
  XOR2X1 U21 ( .A(binary_r[0]), .B(wenable), .Y(binary_nxt[0]) );
endmodule


module write_fifo_ctrl_1 ( wclk, rst_n, wenable, rptr, wenable_fifo, wptr, 
        waddr, full_flag );
  input [3:0] rptr;
  output [3:0] wptr;
  output [2:0] waddr;
  input wclk, rst_n, wenable;
  output wenable_fifo, full_flag;
  wire   n22, \gray_wptr[2] , N5, n2, n3, n16, n17, n18, n19, n20, n21;
  wire   [3:0] wptr_nxt;
  wire   [3:0] wrptr_r2;
  wire   [3:0] wrptr_r1;

  DFFSR \wrptr_r1_reg[3]  ( .D(rptr[3]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[3]) );
  DFFSR \wrptr_r1_reg[2]  ( .D(rptr[2]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[2]) );
  DFFSR \wrptr_r1_reg[1]  ( .D(rptr[1]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[1]) );
  DFFSR \wrptr_r1_reg[0]  ( .D(rptr[0]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[0]) );
  DFFSR \wrptr_r2_reg[3]  ( .D(wrptr_r1[3]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[3]) );
  DFFSR \wrptr_r2_reg[2]  ( .D(wrptr_r1[2]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[2]) );
  DFFSR \wrptr_r2_reg[1]  ( .D(wrptr_r1[1]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[1]) );
  DFFSR \wrptr_r2_reg[0]  ( .D(wrptr_r1[0]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[0]) );
  DFFSR full_flag_r_reg ( .D(N5), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        full_flag) );
  DFFSR \waddr_reg[2]  ( .D(\gray_wptr[2] ), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(waddr[2]) );
  DFFSR \waddr_reg[1]  ( .D(wptr_nxt[1]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        waddr[1]) );
  DFFSR \waddr_reg[0]  ( .D(wptr_nxt[0]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        waddr[0]) );
  write_ptr_1 WPU1 ( .wclk(wclk), .rst_n(rst_n), .wenable(wenable_fifo), 
        .wptr(wptr), .wptr_nxt(wptr_nxt) );
  BUFX2 U15 ( .A(n22), .Y(wenable_fifo) );
  NOR2X1 U16 ( .A(full_flag), .B(n2), .Y(n22) );
  INVX1 U17 ( .A(wenable), .Y(n2) );
  NOR2X1 U18 ( .A(n3), .B(n16), .Y(N5) );
  NAND2X1 U19 ( .A(n17), .B(n18), .Y(n16) );
  XOR2X1 U20 ( .A(n19), .B(\gray_wptr[2] ), .Y(n18) );
  XOR2X1 U21 ( .A(wptr_nxt[3]), .B(wptr_nxt[2]), .Y(\gray_wptr[2] ) );
  XNOR2X1 U22 ( .A(wrptr_r2[3]), .B(wrptr_r2[2]), .Y(n19) );
  XNOR2X1 U23 ( .A(wrptr_r2[1]), .B(wptr_nxt[1]), .Y(n17) );
  NAND2X1 U24 ( .A(n20), .B(n21), .Y(n3) );
  XOR2X1 U25 ( .A(wrptr_r2[3]), .B(wptr_nxt[3]), .Y(n21) );
  XNOR2X1 U26 ( .A(wrptr_r2[0]), .B(wptr_nxt[0]), .Y(n20) );
endmodule


module read_ptr_1 ( rclk, rst_n, renable, rptr, rptr_nxt );
  output [3:0] rptr;
  output [3:0] rptr_nxt;
  input rclk, rst_n, renable;
  wire   n9, n10, n11, n12;
  wire   [2:0] binary_nxt;
  wire   [3:0] binary_r;

  DFFSR \binary_r_reg[0]  ( .D(binary_nxt[0]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[0]) );
  DFFSR \binary_r_reg[1]  ( .D(binary_nxt[1]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[1]) );
  DFFSR \binary_r_reg[2]  ( .D(binary_nxt[2]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[2]) );
  DFFSR \binary_r_reg[3]  ( .D(rptr_nxt[3]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[3]) );
  DFFSR \gray_r_reg[3]  ( .D(rptr_nxt[3]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[3]) );
  DFFSR \gray_r_reg[2]  ( .D(rptr_nxt[2]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[2]) );
  DFFSR \gray_r_reg[1]  ( .D(rptr_nxt[1]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[1]) );
  DFFSR \gray_r_reg[0]  ( .D(rptr_nxt[0]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[0]) );
  XOR2X1 U11 ( .A(rptr_nxt[3]), .B(binary_nxt[2]), .Y(rptr_nxt[2]) );
  XNOR2X1 U12 ( .A(n9), .B(binary_r[3]), .Y(rptr_nxt[3]) );
  NAND2X1 U13 ( .A(binary_r[2]), .B(n10), .Y(n9) );
  XOR2X1 U14 ( .A(binary_nxt[2]), .B(binary_nxt[1]), .Y(rptr_nxt[1]) );
  XOR2X1 U15 ( .A(binary_nxt[1]), .B(binary_nxt[0]), .Y(rptr_nxt[0]) );
  XOR2X1 U16 ( .A(n10), .B(binary_r[2]), .Y(binary_nxt[2]) );
  INVX1 U17 ( .A(n11), .Y(n10) );
  NAND3X1 U18 ( .A(binary_r[1]), .B(binary_r[0]), .C(renable), .Y(n11) );
  XNOR2X1 U19 ( .A(n12), .B(binary_r[1]), .Y(binary_nxt[1]) );
  NAND2X1 U20 ( .A(renable), .B(binary_r[0]), .Y(n12) );
  XOR2X1 U21 ( .A(binary_r[0]), .B(renable), .Y(binary_nxt[0]) );
endmodule


module read_fifo_ctrl_1 ( rclk, rst_n, renable, wptr, rptr, raddr, empty_flag
 );
  input [3:0] wptr;
  output [3:0] rptr;
  output [2:0] raddr;
  input rclk, rst_n, renable;
  output empty_flag;
  wire   renable_p2, \gray_rptr[2] , N3, n1, n2, n3, n16, n17, n18, n19, n20;
  wire   [3:0] rptr_nxt;
  wire   [3:0] rwptr_r2;
  wire   [3:0] rwptr_r1;

  DFFSR \rwptr_r1_reg[3]  ( .D(wptr[3]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[3]) );
  DFFSR \rwptr_r1_reg[2]  ( .D(wptr[2]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[2]) );
  DFFSR \rwptr_r1_reg[1]  ( .D(wptr[1]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[1]) );
  DFFSR \rwptr_r1_reg[0]  ( .D(wptr[0]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[0]) );
  DFFSR \rwptr_r2_reg[3]  ( .D(rwptr_r1[3]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[3]) );
  DFFSR \rwptr_r2_reg[2]  ( .D(rwptr_r1[2]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[2]) );
  DFFSR \rwptr_r2_reg[1]  ( .D(rwptr_r1[1]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[1]) );
  DFFSR \rwptr_r2_reg[0]  ( .D(rwptr_r1[0]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[0]) );
  DFFSR empty_flag_r_reg ( .D(N3), .CLK(rclk), .R(1'b1), .S(rst_n), .Q(
        empty_flag) );
  DFFSR \raddr_reg[2]  ( .D(\gray_rptr[2] ), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(raddr[2]) );
  DFFSR \raddr_reg[1]  ( .D(rptr_nxt[1]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        raddr[1]) );
  DFFSR \raddr_reg[0]  ( .D(rptr_nxt[0]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        raddr[0]) );
  read_ptr_1 RPU1 ( .rclk(rclk), .rst_n(rst_n), .renable(renable_p2), .rptr(
        rptr), .rptr_nxt(rptr_nxt) );
  NOR2X1 U15 ( .A(empty_flag), .B(n1), .Y(renable_p2) );
  INVX1 U16 ( .A(renable), .Y(n1) );
  NOR2X1 U17 ( .A(n2), .B(n3), .Y(N3) );
  NAND2X1 U18 ( .A(n16), .B(n17), .Y(n3) );
  XOR2X1 U19 ( .A(n18), .B(\gray_rptr[2] ), .Y(n17) );
  XOR2X1 U20 ( .A(rptr_nxt[3]), .B(rptr_nxt[2]), .Y(\gray_rptr[2] ) );
  XNOR2X1 U21 ( .A(rwptr_r2[3]), .B(rwptr_r2[2]), .Y(n18) );
  XNOR2X1 U22 ( .A(rwptr_r2[1]), .B(rptr_nxt[1]), .Y(n16) );
  NAND2X1 U23 ( .A(n19), .B(n20), .Y(n2) );
  XNOR2X1 U24 ( .A(rwptr_r2[0]), .B(rptr_nxt[0]), .Y(n20) );
  XNOR2X1 U25 ( .A(rptr_nxt[3]), .B(rwptr_r2[3]), .Y(n19) );
endmodule


module fifo_1 ( r_clk, w_clk, n_rst, r_enable, w_enable, w_data, r_data, empty, 
        full );
  input [7:0] w_data;
  output [7:0] r_data;
  input r_clk, w_clk, n_rst, r_enable, w_enable;
  output empty, full;
  wire   wenable_fifo;
  wire   [2:0] waddr;
  wire   [2:0] raddr;
  wire   [3:0] rptr;
  wire   [3:0] wptr;

  fiforam_1 UFIFORAM ( .wclk(w_clk), .wenable(wenable_fifo), .waddr(waddr), 
        .raddr(raddr), .wdata(w_data), .rdata(r_data) );
  write_fifo_ctrl_1 UWFC ( .wclk(w_clk), .rst_n(n_rst), .wenable(w_enable), 
        .rptr(rptr), .wenable_fifo(wenable_fifo), .wptr(wptr), .waddr(waddr), 
        .full_flag(full) );
  read_fifo_ctrl_1 URFC ( .rclk(r_clk), .rst_n(n_rst), .renable(r_enable), 
        .wptr(wptr), .rptr(rptr), .raddr(raddr), .empty_flag(empty) );
endmodule


module readFIFO ( clk, n_rst, read_enable, write_enable, write_data, read_data, 
        fifo_empty, fifo_full );
  input [7:0] write_data;
  output [7:0] read_data;
  input clk, n_rst, read_enable, write_enable;
  output fifo_empty, fifo_full;


  fifo_1 F1 ( .r_clk(clk), .w_clk(clk), .n_rst(n_rst), .r_enable(read_enable), 
        .w_enable(write_enable), .w_data(write_data), .r_data(read_data), 
        .empty(fifo_empty), .full(fifo_full) );
endmodule


module bd_controller ( clk, n_rst, rcving, txing, rcvd_exp_hs, send_nack_in, 
        addr_dne, tx_complete, pckt_rcvd, rx_en, tx_en, send_data, send_ack, 
        send_nack_out, rx_exp_hs, ack_packet_rcv );
  input [2:0] pckt_rcvd;
  input clk, n_rst, rcving, txing, rcvd_exp_hs, send_nack_in, addr_dne,
         tx_complete;
  output rx_en, tx_en, send_data, send_ack, send_nack_out, rx_exp_hs,
         ack_packet_rcv;
  wire   n74, n75, n76, n77, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65;
  wire   [3:0] curr_state;

  DFFSR \curr_state_reg[0]  ( .D(n77), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr_state[0]) );
  DFFSR \curr_state_reg[2]  ( .D(n74), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr_state[2]) );
  DFFSR \curr_state_reg[3]  ( .D(n76), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr_state[3]) );
  DFFSR \curr_state_reg[1]  ( .D(n75), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr_state[1]) );
  NAND3X1 U7 ( .A(n5), .B(n6), .C(n7), .Y(tx_en) );
  AOI21X1 U8 ( .A(n8), .B(n9), .C(n10), .Y(n7) );
  NOR2X1 U9 ( .A(curr_state[1]), .B(n11), .Y(n8) );
  INVX1 U10 ( .A(n5), .Y(send_data) );
  NAND3X1 U11 ( .A(n12), .B(n13), .C(n14), .Y(n5) );
  OAI21X1 U12 ( .A(n15), .B(n16), .C(n17), .Y(send_ack) );
  AOI21X1 U13 ( .A(curr_state[3]), .B(n11), .C(n10), .Y(n17) );
  INVX1 U14 ( .A(curr_state[2]), .Y(n15) );
  INVX1 U15 ( .A(n18), .Y(rx_exp_hs) );
  OAI21X1 U16 ( .A(n19), .B(n20), .C(n21), .Y(n77) );
  OAI21X1 U17 ( .A(n22), .B(n23), .C(n24), .Y(n21) );
  OAI21X1 U18 ( .A(n16), .B(n25), .C(n26), .Y(n23) );
  OAI21X1 U19 ( .A(n27), .B(n28), .C(n29), .Y(n25) );
  NAND2X1 U20 ( .A(n30), .B(n31), .Y(n28) );
  NOR2X1 U21 ( .A(n32), .B(n33), .Y(n27) );
  NAND2X1 U22 ( .A(n34), .B(n35), .Y(n33) );
  NAND3X1 U23 ( .A(n36), .B(n37), .C(n38), .Y(n76) );
  AOI21X1 U24 ( .A(n14), .B(n11), .C(n22), .Y(n38) );
  OAI21X1 U25 ( .A(n39), .B(n40), .C(curr_state[3]), .Y(n36) );
  OAI21X1 U26 ( .A(n19), .B(n13), .C(n41), .Y(n75) );
  AOI21X1 U27 ( .A(n24), .B(n42), .C(n43), .Y(n41) );
  INVX1 U28 ( .A(n26), .Y(n43) );
  OAI21X1 U29 ( .A(n12), .B(n44), .C(n45), .Y(n42) );
  NAND2X1 U30 ( .A(n39), .B(n46), .Y(n45) );
  OAI21X1 U31 ( .A(n47), .B(n48), .C(n49), .Y(n46) );
  NAND2X1 U32 ( .A(n29), .B(n50), .Y(n48) );
  XOR2X1 U33 ( .A(pckt_rcvd[1]), .B(pckt_rcvd[0]), .Y(n50) );
  NAND2X1 U34 ( .A(n35), .B(n31), .Y(n47) );
  INVX1 U35 ( .A(send_nack_in), .Y(n31) );
  INVX1 U36 ( .A(n40), .Y(n19) );
  NAND3X1 U37 ( .A(n51), .B(n52), .C(n53), .Y(n74) );
  AOI22X1 U38 ( .A(n9), .B(n54), .C(curr_state[2]), .D(n40), .Y(n53) );
  OAI21X1 U39 ( .A(n55), .B(n56), .C(n24), .Y(n40) );
  INVX1 U40 ( .A(n57), .Y(n24) );
  OAI22X1 U41 ( .A(rcvd_exp_hs), .B(n18), .C(tx_complete), .D(n58), .Y(n57) );
  NAND2X1 U42 ( .A(rx_en), .B(curr_state[0]), .Y(n18) );
  INVX1 U43 ( .A(n59), .Y(rx_en) );
  NAND2X1 U44 ( .A(n58), .B(n60), .Y(n56) );
  INVX1 U45 ( .A(n22), .Y(n60) );
  OAI21X1 U46 ( .A(curr_state[0]), .B(n61), .C(n62), .Y(n22) );
  OAI21X1 U47 ( .A(n14), .B(n9), .C(n39), .Y(n62) );
  AOI21X1 U48 ( .A(n54), .B(curr_state[3]), .C(send_nack_out), .Y(n58) );
  INVX1 U49 ( .A(n6), .Y(send_nack_out) );
  NAND2X1 U50 ( .A(n29), .B(n11), .Y(n6) );
  INVX1 U51 ( .A(n12), .Y(n11) );
  NAND3X1 U52 ( .A(n37), .B(n59), .C(n44), .Y(n55) );
  NAND2X1 U53 ( .A(curr_state[1]), .B(n14), .Y(n59) );
  NOR2X1 U54 ( .A(n49), .B(curr_state[2]), .Y(n14) );
  NAND2X1 U55 ( .A(n16), .B(n12), .Y(n54) );
  NAND2X1 U56 ( .A(curr_state[0]), .B(n13), .Y(n12) );
  NAND3X1 U57 ( .A(n39), .B(n29), .C(n63), .Y(n52) );
  AOI21X1 U58 ( .A(n30), .B(n64), .C(send_nack_in), .Y(n63) );
  NAND3X1 U59 ( .A(pckt_rcvd[1]), .B(n35), .C(pckt_rcvd[0]), .Y(n64) );
  INVX1 U60 ( .A(pckt_rcvd[2]), .Y(n35) );
  NAND3X1 U61 ( .A(n34), .B(n32), .C(pckt_rcvd[2]), .Y(n30) );
  INVX1 U62 ( .A(pckt_rcvd[1]), .Y(n32) );
  INVX1 U63 ( .A(pckt_rcvd[0]), .Y(n34) );
  INVX1 U64 ( .A(n16), .Y(n39) );
  AND2X1 U65 ( .A(n26), .B(n37), .Y(n51) );
  NAND2X1 U66 ( .A(n10), .B(curr_state[0]), .Y(n37) );
  INVX1 U67 ( .A(n61), .Y(n10) );
  NAND3X1 U68 ( .A(rcvd_exp_hs), .B(n9), .C(n65), .Y(n26) );
  NOR2X1 U69 ( .A(curr_state[0]), .B(n13), .Y(n65) );
  INVX1 U70 ( .A(n44), .Y(n9) );
  OAI21X1 U71 ( .A(n44), .B(n16), .C(n61), .Y(ack_packet_rcv) );
  NAND2X1 U72 ( .A(curr_state[1]), .B(n29), .Y(n61) );
  NOR2X1 U73 ( .A(curr_state[2]), .B(curr_state[3]), .Y(n29) );
  NAND2X1 U74 ( .A(n20), .B(n13), .Y(n16) );
  INVX1 U75 ( .A(curr_state[1]), .Y(n13) );
  INVX1 U76 ( .A(curr_state[0]), .Y(n20) );
  NAND2X1 U77 ( .A(curr_state[2]), .B(n49), .Y(n44) );
  INVX1 U78 ( .A(curr_state[3]), .Y(n49) );
endmodule


module tcu ( clk, n_rst, send_data, tx_ena, buff_empty, tx_nack, write_done, 
        tx_ack, cnt_done, tx_complete, eop, fifo_en, start_read, trans, 
        sd_tx_en_write, load_ena, load_sync, load_data_pid, load_data_1_crc, 
        load_data_2_crc, load_ack, load_nack, clear );
  input clk, n_rst, send_data, tx_ena, buff_empty, tx_nack, write_done, tx_ack,
         cnt_done;
  output tx_complete, eop, fifo_en, start_read, trans, sd_tx_en_write,
         load_ena, load_sync, load_data_pid, load_data_1_crc, load_data_2_crc,
         load_ack, load_nack, clear;
  wire   n116, n117, n118, n119, n120, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93;
  wire   [4:0] curr_state;

  DFFSR \curr_state_reg[0]  ( .D(n120), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr_state[0]) );
  DFFSR \curr_state_reg[3]  ( .D(n119), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr_state[3]) );
  DFFSR \curr_state_reg[1]  ( .D(n118), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr_state[1]) );
  DFFSR \curr_state_reg[2]  ( .D(n117), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr_state[2]) );
  DFFSR \curr_state_reg[4]  ( .D(n116), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr_state[4]) );
  INVX1 U8 ( .A(n6), .Y(load_ena) );
  OAI21X1 U9 ( .A(n7), .B(n8), .C(n9), .Y(n120) );
  OAI21X1 U10 ( .A(n10), .B(n11), .C(n12), .Y(n9) );
  NAND2X1 U11 ( .A(n13), .B(n14), .Y(n11) );
  OR2X1 U12 ( .A(n15), .B(n16), .Y(n10) );
  OAI21X1 U13 ( .A(trans), .B(n17), .C(n18), .Y(n16) );
  NAND2X1 U14 ( .A(n19), .B(n20), .Y(n119) );
  OAI21X1 U15 ( .A(n21), .B(n22), .C(n12), .Y(n20) );
  OAI21X1 U16 ( .A(send_data), .B(trans), .C(n14), .Y(n22) );
  AOI21X1 U17 ( .A(n23), .B(n24), .C(n25), .Y(n14) );
  OAI21X1 U18 ( .A(n26), .B(n27), .C(n28), .Y(n25) );
  INVX1 U19 ( .A(buff_empty), .Y(n26) );
  OAI21X1 U20 ( .A(n29), .B(n30), .C(n31), .Y(n21) );
  NOR2X1 U21 ( .A(load_data_1_crc), .B(load_data_2_crc), .Y(n31) );
  INVX1 U22 ( .A(n32), .Y(load_data_2_crc) );
  OAI21X1 U23 ( .A(n33), .B(n34), .C(curr_state[3]), .Y(n19) );
  INVX1 U24 ( .A(n35), .Y(n33) );
  OAI21X1 U25 ( .A(n7), .B(n36), .C(n37), .Y(n118) );
  AND2X1 U26 ( .A(n38), .B(n39), .Y(n37) );
  OAI21X1 U27 ( .A(n40), .B(n41), .C(n12), .Y(n38) );
  OAI21X1 U28 ( .A(tx_ack), .B(n42), .C(n43), .Y(n41) );
  NAND3X1 U29 ( .A(n35), .B(n44), .C(n45), .Y(n40) );
  INVX1 U30 ( .A(load_sync), .Y(n44) );
  OAI21X1 U31 ( .A(n7), .B(n46), .C(n47), .Y(n117) );
  OAI21X1 U32 ( .A(n48), .B(n49), .C(n12), .Y(n47) );
  NAND3X1 U33 ( .A(n50), .B(n51), .C(n43), .Y(n49) );
  NOR2X1 U34 ( .A(n52), .B(n53), .Y(n43) );
  OAI22X1 U35 ( .A(n27), .B(buff_empty), .C(trans), .D(send_data), .Y(n52) );
  INVX1 U36 ( .A(n54), .Y(n50) );
  NAND3X1 U37 ( .A(n28), .B(n55), .C(n32), .Y(n48) );
  INVX1 U38 ( .A(n34), .Y(n7) );
  NAND2X1 U39 ( .A(n12), .B(n56), .Y(n34) );
  MUX2X1 U40 ( .B(n57), .A(n58), .S(n12), .Y(n116) );
  AOI21X1 U41 ( .A(n59), .B(sd_tx_en_write), .C(n60), .Y(n12) );
  AOI21X1 U42 ( .A(n61), .B(n62), .C(n63), .Y(n60) );
  OAI21X1 U43 ( .A(n64), .B(n65), .C(n66), .Y(n63) );
  OAI21X1 U44 ( .A(tx_ack), .B(tx_nack), .C(n67), .Y(n66) );
  OAI22X1 U45 ( .A(start_read), .B(n68), .C(n69), .D(n64), .Y(n67) );
  INVX1 U46 ( .A(n62), .Y(start_read) );
  NAND2X1 U47 ( .A(n42), .B(trans), .Y(n65) );
  INVX1 U48 ( .A(cnt_done), .Y(n64) );
  OAI21X1 U49 ( .A(n68), .B(n17), .C(n69), .Y(n61) );
  INVX1 U50 ( .A(trans), .Y(n69) );
  INVX1 U51 ( .A(send_data), .Y(n17) );
  INVX1 U52 ( .A(tx_ena), .Y(n68) );
  INVX1 U53 ( .A(write_done), .Y(n59) );
  NOR2X1 U54 ( .A(n70), .B(n71), .Y(n58) );
  NAND2X1 U55 ( .A(n13), .B(n42), .Y(n71) );
  INVX1 U56 ( .A(n72), .Y(n13) );
  NAND3X1 U57 ( .A(n73), .B(n74), .C(n56), .Y(n70) );
  OR2X1 U58 ( .A(n75), .B(n76), .Y(n56) );
  NAND3X1 U59 ( .A(n27), .B(trans), .C(n77), .Y(n76) );
  INVX1 U60 ( .A(n53), .Y(n77) );
  NAND3X1 U61 ( .A(n78), .B(n74), .C(n18), .Y(n53) );
  INVX1 U62 ( .A(fifo_en), .Y(n18) );
  NOR2X1 U63 ( .A(n79), .B(n55), .Y(fifo_en) );
  INVX1 U64 ( .A(sd_tx_en_write), .Y(n78) );
  NOR2X1 U65 ( .A(n30), .B(n55), .Y(sd_tx_en_write) );
  NAND3X1 U66 ( .A(n24), .B(n80), .C(n81), .Y(trans) );
  NAND3X1 U67 ( .A(n24), .B(curr_state[3]), .C(n81), .Y(n27) );
  INVX1 U68 ( .A(n82), .Y(n24) );
  NAND3X1 U69 ( .A(n83), .B(n62), .C(n84), .Y(n75) );
  INVX1 U70 ( .A(clear), .Y(n84) );
  NOR3X1 U71 ( .A(n54), .B(n15), .C(n85), .Y(n62) );
  OAI21X1 U72 ( .A(n30), .B(n29), .C(n42), .Y(n85) );
  NAND3X1 U73 ( .A(curr_state[0]), .B(n23), .C(curr_state[1]), .Y(n42) );
  INVX1 U74 ( .A(n86), .Y(n23) );
  OAI21X1 U75 ( .A(n82), .B(n55), .C(n35), .Y(n15) );
  NAND2X1 U76 ( .A(n87), .B(n8), .Y(n35) );
  OAI22X1 U77 ( .A(n86), .B(n82), .C(n8), .D(n73), .Y(n54) );
  INVX1 U78 ( .A(tx_complete), .Y(n83) );
  NOR2X1 U79 ( .A(n79), .B(n29), .Y(tx_complete) );
  INVX1 U80 ( .A(eop), .Y(n74) );
  OAI22X1 U81 ( .A(n86), .B(n30), .C(n82), .D(n29), .Y(eop) );
  NAND3X1 U82 ( .A(curr_state[2]), .B(n80), .C(curr_state[4]), .Y(n29) );
  NAND3X1 U83 ( .A(n88), .B(n32), .C(n89), .Y(clear) );
  NOR2X1 U84 ( .A(load_data_pid), .B(n72), .Y(n89) );
  NAND3X1 U85 ( .A(n90), .B(n6), .C(n39), .Y(n72) );
  INVX1 U86 ( .A(load_nack), .Y(n39) );
  NOR2X1 U87 ( .A(n79), .B(n73), .Y(load_nack) );
  NAND3X1 U88 ( .A(curr_state[1]), .B(curr_state[0]), .C(n91), .Y(n6) );
  INVX1 U89 ( .A(n55), .Y(n91) );
  NAND3X1 U90 ( .A(n80), .B(n57), .C(curr_state[2]), .Y(n55) );
  INVX1 U91 ( .A(load_ack), .Y(n90) );
  NOR2X1 U92 ( .A(n82), .B(n73), .Y(load_ack) );
  NAND3X1 U93 ( .A(n46), .B(n80), .C(curr_state[4]), .Y(n73) );
  INVX1 U94 ( .A(curr_state[2]), .Y(n46) );
  NAND2X1 U95 ( .A(n8), .B(n36), .Y(n82) );
  INVX1 U96 ( .A(n51), .Y(load_data_pid) );
  NAND3X1 U97 ( .A(curr_state[0]), .B(n80), .C(n87), .Y(n51) );
  NAND3X1 U98 ( .A(curr_state[0]), .B(curr_state[3]), .C(n87), .Y(n32) );
  AND2X1 U99 ( .A(n81), .B(curr_state[1]), .Y(n87) );
  NOR2X1 U100 ( .A(load_sync), .B(load_data_1_crc), .Y(n88) );
  INVX1 U101 ( .A(n45), .Y(load_data_1_crc) );
  NAND3X1 U102 ( .A(n81), .B(curr_state[3]), .C(n92), .Y(n45) );
  INVX1 U103 ( .A(n30), .Y(n92) );
  OAI21X1 U104 ( .A(n30), .B(n93), .C(n28), .Y(load_sync) );
  OR2X1 U105 ( .A(n79), .B(n86), .Y(n28) );
  NAND3X1 U106 ( .A(curr_state[2]), .B(n57), .C(curr_state[3]), .Y(n86) );
  INVX1 U107 ( .A(curr_state[4]), .Y(n57) );
  NAND2X1 U108 ( .A(curr_state[1]), .B(n8), .Y(n79) );
  INVX1 U109 ( .A(curr_state[0]), .Y(n8) );
  NAND2X1 U110 ( .A(n81), .B(n80), .Y(n93) );
  INVX1 U111 ( .A(curr_state[3]), .Y(n80) );
  NOR2X1 U112 ( .A(curr_state[4]), .B(curr_state[2]), .Y(n81) );
  NAND2X1 U113 ( .A(curr_state[0]), .B(n36), .Y(n30) );
  INVX1 U114 ( .A(curr_state[1]), .Y(n36) );
endmodule


module flex_pts_sr_NUM_BITS8_SHIFT_MSB0 ( clk, n_rst, shift_enable, 
        load_enable, load_sync, load_data_pid, load_data_1_crc, 
        load_data_2_crc, load_ack, load_nack, parallel_in, serial_out );
  input [7:0] parallel_in;
  input clk, n_rst, shift_enable, load_enable, load_sync, load_data_pid,
         load_data_1_crc, load_data_2_crc, load_ack, load_nack;
  output serial_out;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46;
  wire   [7:0] mid_state;
  wire   [7:1] curr_state;

  DFFSR \curr_state_reg[7]  ( .D(mid_state[7]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(curr_state[7]) );
  DFFSR \curr_state_reg[6]  ( .D(mid_state[6]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(curr_state[6]) );
  DFFSR \curr_state_reg[5]  ( .D(mid_state[5]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(curr_state[5]) );
  DFFSR \curr_state_reg[4]  ( .D(mid_state[4]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(curr_state[4]) );
  DFFSR \curr_state_reg[3]  ( .D(mid_state[3]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(curr_state[3]) );
  DFFSR \curr_state_reg[2]  ( .D(mid_state[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(curr_state[2]) );
  DFFSR \curr_state_reg[1]  ( .D(mid_state[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(curr_state[1]) );
  DFFSR \curr_state_reg[0]  ( .D(mid_state[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(serial_out) );
  OR2X1 U11 ( .A(n9), .B(n10), .Y(mid_state[7]) );
  OAI21X1 U12 ( .A(n11), .B(n12), .C(n13), .Y(n10) );
  MUX2X1 U13 ( .B(parallel_in[7]), .A(load_sync), .S(n14), .Y(n13) );
  INVX1 U14 ( .A(curr_state[7]), .Y(n12) );
  INVX1 U15 ( .A(n15), .Y(n11) );
  NAND2X1 U16 ( .A(n16), .B(n17), .Y(n9) );
  NAND2X1 U17 ( .A(n18), .B(n19), .Y(mid_state[6]) );
  AOI21X1 U18 ( .A(curr_state[6]), .B(n15), .C(n20), .Y(n19) );
  AOI22X1 U19 ( .A(n21), .B(curr_state[7]), .C(parallel_in[6]), .D(load_enable), .Y(n18) );
  NAND2X1 U20 ( .A(n22), .B(n23), .Y(mid_state[5]) );
  AOI21X1 U21 ( .A(curr_state[5]), .B(n15), .C(n24), .Y(n23) );
  AOI22X1 U22 ( .A(n21), .B(curr_state[6]), .C(parallel_in[5]), .D(load_enable), .Y(n22) );
  NAND2X1 U23 ( .A(n25), .B(n26), .Y(mid_state[4]) );
  AOI22X1 U24 ( .A(curr_state[4]), .B(n15), .C(curr_state[5]), .D(n21), .Y(n26) );
  AOI22X1 U25 ( .A(load_ack), .B(n27), .C(parallel_in[4]), .D(load_enable), 
        .Y(n25) );
  OAI21X1 U26 ( .A(n14), .B(n28), .C(n29), .Y(mid_state[3]) );
  AOI22X1 U27 ( .A(curr_state[3]), .B(n15), .C(curr_state[4]), .D(n21), .Y(n29) );
  INVX1 U28 ( .A(parallel_in[3]), .Y(n28) );
  NAND2X1 U29 ( .A(n30), .B(n31), .Y(mid_state[2]) );
  AOI21X1 U30 ( .A(curr_state[2]), .B(n15), .C(n24), .Y(n31) );
  INVX1 U31 ( .A(n17), .Y(n24) );
  OAI21X1 U32 ( .A(load_ack), .B(load_nack), .C(n27), .Y(n17) );
  AOI22X1 U33 ( .A(curr_state[3]), .B(n21), .C(parallel_in[2]), .D(load_enable), .Y(n30) );
  NAND2X1 U34 ( .A(n32), .B(n33), .Y(mid_state[1]) );
  AOI21X1 U35 ( .A(curr_state[1]), .B(n15), .C(n20), .Y(n33) );
  INVX1 U36 ( .A(n16), .Y(n20) );
  AOI22X1 U37 ( .A(curr_state[2]), .B(n21), .C(parallel_in[1]), .D(load_enable), .Y(n32) );
  NAND2X1 U38 ( .A(n34), .B(n35), .Y(mid_state[0]) );
  AOI21X1 U39 ( .A(serial_out), .B(n15), .C(n36), .Y(n35) );
  OAI21X1 U40 ( .A(n37), .B(n38), .C(n16), .Y(n36) );
  NAND3X1 U41 ( .A(n14), .B(n39), .C(load_data_pid), .Y(n16) );
  INVX1 U42 ( .A(load_sync), .Y(n39) );
  INVX1 U43 ( .A(load_enable), .Y(n14) );
  NAND2X1 U44 ( .A(n27), .B(n40), .Y(n38) );
  NOR2X1 U45 ( .A(n41), .B(shift_enable), .Y(n15) );
  AOI22X1 U46 ( .A(curr_state[1]), .B(n21), .C(parallel_in[0]), .D(load_enable), .Y(n34) );
  NOR2X1 U47 ( .A(n42), .B(n41), .Y(n21) );
  NAND3X1 U48 ( .A(n40), .B(n37), .C(n27), .Y(n41) );
  INVX1 U49 ( .A(n43), .Y(n27) );
  NAND3X1 U50 ( .A(n44), .B(n45), .C(n46), .Y(n43) );
  NOR2X1 U51 ( .A(load_data_2_crc), .B(load_data_1_crc), .Y(n46) );
  INVX1 U52 ( .A(load_data_pid), .Y(n45) );
  NOR2X1 U53 ( .A(load_sync), .B(load_enable), .Y(n44) );
  INVX1 U54 ( .A(load_nack), .Y(n37) );
  INVX1 U55 ( .A(load_ack), .Y(n40) );
  INVX1 U56 ( .A(shift_enable), .Y(n42) );
endmodule


module flex_counter_NUM_CNT_BITS3_1 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [2:0] rollover_val;
  output [2:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   n45, n46, n47, n1, n2, n3, n4, n5, n6, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39;

  DFFSR \count_out_reg[0]  ( .D(n47), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \count_out_reg[2]  ( .D(n45), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[1]  ( .D(n46), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR rollover_flag_reg ( .D(n39), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  OAI21X1 U7 ( .A(n1), .B(n2), .C(n3), .Y(n39) );
  NAND2X1 U8 ( .A(rollover_flag), .B(n4), .Y(n3) );
  MUX2X1 U9 ( .B(n5), .A(n6), .S(rollover_val[1]), .Y(n2) );
  NOR2X1 U10 ( .A(n11), .B(n12), .Y(n6) );
  MUX2X1 U11 ( .B(n13), .A(n14), .S(count_out[1]), .Y(n12) );
  AND2X1 U12 ( .A(n15), .B(rollover_val[0]), .Y(n14) );
  MUX2X1 U13 ( .B(n16), .A(n17), .S(count_out[1]), .Y(n5) );
  NAND2X1 U14 ( .A(n13), .B(n11), .Y(n17) );
  NAND2X1 U15 ( .A(rollover_val[0]), .B(n18), .Y(n16) );
  OAI22X1 U16 ( .A(rollover_val[2]), .B(count_out[2]), .C(count_out[0]), .D(
        n11), .Y(n18) );
  OAI22X1 U17 ( .A(n15), .B(n19), .C(n20), .D(n1), .Y(n47) );
  OAI21X1 U18 ( .A(n21), .B(n19), .C(n22), .Y(n46) );
  MUX2X1 U19 ( .B(n23), .A(n24), .S(n25), .Y(n22) );
  NOR2X1 U20 ( .A(clear), .B(n20), .Y(n24) );
  NOR2X1 U21 ( .A(n1), .B(n26), .Y(n23) );
  OAI21X1 U22 ( .A(n27), .B(n19), .C(n28), .Y(n45) );
  MUX2X1 U23 ( .B(n29), .A(n30), .S(n31), .Y(n28) );
  NOR2X1 U24 ( .A(n32), .B(n27), .Y(n31) );
  NOR2X1 U25 ( .A(clear), .B(n33), .Y(n30) );
  INVX1 U26 ( .A(n34), .Y(n33) );
  NOR2X1 U27 ( .A(n1), .B(n34), .Y(n29) );
  NAND2X1 U28 ( .A(n20), .B(n25), .Y(n34) );
  NOR2X1 U29 ( .A(n21), .B(n32), .Y(n25) );
  INVX1 U30 ( .A(n35), .Y(n32) );
  INVX1 U31 ( .A(n26), .Y(n20) );
  NAND2X1 U32 ( .A(count_out[0]), .B(n35), .Y(n26) );
  NAND3X1 U33 ( .A(n36), .B(n37), .C(n38), .Y(n35) );
  AOI21X1 U34 ( .A(rollover_val[0]), .B(n15), .C(n13), .Y(n38) );
  NOR2X1 U35 ( .A(n15), .B(rollover_val[0]), .Y(n13) );
  INVX1 U36 ( .A(count_out[0]), .Y(n15) );
  INVX1 U37 ( .A(n11), .Y(n37) );
  XOR2X1 U38 ( .A(rollover_val[2]), .B(count_out[2]), .Y(n11) );
  XOR2X1 U39 ( .A(rollover_val[1]), .B(n21), .Y(n36) );
  INVX1 U40 ( .A(count_out[1]), .Y(n21) );
  OR2X1 U41 ( .A(n4), .B(clear), .Y(n1) );
  INVX1 U42 ( .A(n4), .Y(n19) );
  NOR2X1 U43 ( .A(count_enable), .B(clear), .Y(n4) );
  INVX1 U44 ( .A(count_out[2]), .Y(n27) );
endmodule


module bit_stuffer ( clk, n_rst, d_orig, flag_8, pause );
  input clk, n_rst, d_orig, flag_8;
  output pause;
  wire   _1_net_, n1;

  flex_counter_NUM_CNT_BITS3_1 BIT_STUFFER_CNTR ( .clk(clk), .n_rst(n_rst), 
        .clear(n1), .count_enable(_1_net_), .rollover_val({1'b1, 1'b1, 1'b0}), 
        .rollover_flag(pause) );
  INVX1 U3 ( .A(d_orig), .Y(n1) );
  AND2X1 U4 ( .A(flag_8), .B(d_orig), .Y(_1_net_) );
endmodule


module flex_counter_NUM_CNT_BITS4_3 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   n46, n47, n48, n49, n1, n2, n3, n4, n5, n6, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45;

  DFFSR \count_out_reg[0]  ( .D(n49), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \count_out_reg[1]  ( .D(n48), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n47), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n46), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR rollover_flag_reg ( .D(n45), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  OAI21X1 U8 ( .A(n1), .B(n2), .C(n3), .Y(n45) );
  NAND2X1 U9 ( .A(rollover_flag), .B(n4), .Y(n3) );
  AOI21X1 U10 ( .A(n5), .B(n6), .C(n12), .Y(n1) );
  NOR2X1 U11 ( .A(n13), .B(n14), .Y(n12) );
  NAND3X1 U12 ( .A(n15), .B(n16), .C(rollover_val[0]), .Y(n14) );
  NAND3X1 U13 ( .A(n17), .B(n18), .C(n19), .Y(n13) );
  NOR2X1 U14 ( .A(rollover_val[3]), .B(rollover_val[2]), .Y(n19) );
  MUX2X1 U15 ( .B(n20), .A(n21), .S(rollover_val[0]), .Y(n6) );
  OAI21X1 U16 ( .A(count_out[1]), .B(n18), .C(n22), .Y(n21) );
  OAI21X1 U17 ( .A(n23), .B(n15), .C(count_out[0]), .Y(n20) );
  AOI21X1 U18 ( .A(rollover_val[2]), .B(n24), .C(n25), .Y(n5) );
  MUX2X1 U19 ( .B(n26), .A(n27), .S(n23), .Y(n25) );
  NOR2X1 U20 ( .A(rollover_val[0]), .B(rollover_val[1]), .Y(n23) );
  NOR2X1 U21 ( .A(n15), .B(n28), .Y(n27) );
  OAI21X1 U22 ( .A(rollover_val[2]), .B(n24), .C(n29), .Y(n28) );
  OAI22X1 U23 ( .A(n22), .B(n30), .C(n31), .D(n2), .Y(n49) );
  INVX1 U24 ( .A(count_out[0]), .Y(n22) );
  OAI22X1 U25 ( .A(n15), .B(n30), .C(n32), .D(n2), .Y(n48) );
  XNOR2X1 U26 ( .A(n33), .B(n31), .Y(n32) );
  OAI22X1 U27 ( .A(n16), .B(n30), .C(n34), .D(n2), .Y(n47) );
  XNOR2X1 U28 ( .A(n35), .B(n36), .Y(n34) );
  INVX1 U29 ( .A(count_out[2]), .Y(n16) );
  OAI22X1 U30 ( .A(n17), .B(n30), .C(n37), .D(n2), .Y(n46) );
  OR2X1 U31 ( .A(n4), .B(clear), .Y(n2) );
  XOR2X1 U32 ( .A(n38), .B(n39), .Y(n37) );
  NOR2X1 U33 ( .A(n35), .B(n36), .Y(n39) );
  NAND2X1 U34 ( .A(count_out[2]), .B(n40), .Y(n36) );
  NAND2X1 U35 ( .A(n33), .B(n31), .Y(n35) );
  AND2X1 U36 ( .A(count_out[0]), .B(n40), .Y(n31) );
  AND2X1 U37 ( .A(count_out[1]), .B(n40), .Y(n33) );
  NAND2X1 U38 ( .A(count_out[3]), .B(n40), .Y(n38) );
  OR2X1 U39 ( .A(n41), .B(n42), .Y(n40) );
  OAI21X1 U40 ( .A(count_out[1]), .B(n18), .C(n26), .Y(n42) );
  NOR2X1 U41 ( .A(n29), .B(n43), .Y(n26) );
  OAI21X1 U42 ( .A(rollover_val[1]), .B(n15), .C(n44), .Y(n43) );
  INVX1 U43 ( .A(n24), .Y(n44) );
  XOR2X1 U44 ( .A(rollover_val[3]), .B(count_out[3]), .Y(n24) );
  INVX1 U45 ( .A(count_out[1]), .Y(n15) );
  XOR2X1 U46 ( .A(count_out[2]), .B(rollover_val[2]), .Y(n29) );
  INVX1 U47 ( .A(rollover_val[1]), .Y(n18) );
  XOR2X1 U48 ( .A(rollover_val[0]), .B(count_out[0]), .Y(n41) );
  INVX1 U49 ( .A(n4), .Y(n30) );
  NOR2X1 U50 ( .A(count_enable), .B(clear), .Y(n4) );
  INVX1 U51 ( .A(count_out[3]), .Y(n17) );
endmodule


module flex_counter_NUM_CNT_BITS4_2 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   n1, n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n50, n51, n52,
         n53;

  DFFSR \count_out_reg[0]  ( .D(n50), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \count_out_reg[1]  ( .D(n51), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n52), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n53), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR rollover_flag_reg ( .D(n45), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  OAI21X1 U8 ( .A(n1), .B(n2), .C(n3), .Y(n45) );
  NAND2X1 U9 ( .A(rollover_flag), .B(n4), .Y(n3) );
  AOI21X1 U10 ( .A(n5), .B(n6), .C(n12), .Y(n1) );
  NOR2X1 U11 ( .A(n13), .B(n14), .Y(n12) );
  NAND3X1 U12 ( .A(n15), .B(n16), .C(rollover_val[0]), .Y(n14) );
  NAND3X1 U13 ( .A(n17), .B(n18), .C(n19), .Y(n13) );
  NOR2X1 U14 ( .A(rollover_val[3]), .B(rollover_val[2]), .Y(n19) );
  MUX2X1 U15 ( .B(n20), .A(n21), .S(rollover_val[0]), .Y(n6) );
  OAI21X1 U16 ( .A(count_out[1]), .B(n18), .C(n22), .Y(n21) );
  OAI21X1 U17 ( .A(n23), .B(n15), .C(count_out[0]), .Y(n20) );
  AOI21X1 U18 ( .A(rollover_val[2]), .B(n24), .C(n25), .Y(n5) );
  MUX2X1 U19 ( .B(n26), .A(n27), .S(n23), .Y(n25) );
  NOR2X1 U20 ( .A(rollover_val[0]), .B(rollover_val[1]), .Y(n23) );
  NOR2X1 U21 ( .A(n15), .B(n28), .Y(n27) );
  OAI21X1 U22 ( .A(rollover_val[2]), .B(n24), .C(n29), .Y(n28) );
  OAI22X1 U23 ( .A(n22), .B(n30), .C(n31), .D(n2), .Y(n50) );
  INVX1 U24 ( .A(count_out[0]), .Y(n22) );
  OAI22X1 U25 ( .A(n15), .B(n30), .C(n32), .D(n2), .Y(n51) );
  XNOR2X1 U26 ( .A(n33), .B(n31), .Y(n32) );
  OAI22X1 U27 ( .A(n16), .B(n30), .C(n34), .D(n2), .Y(n52) );
  XNOR2X1 U28 ( .A(n35), .B(n36), .Y(n34) );
  INVX1 U29 ( .A(count_out[2]), .Y(n16) );
  OAI22X1 U30 ( .A(n17), .B(n30), .C(n37), .D(n2), .Y(n53) );
  OR2X1 U31 ( .A(n4), .B(clear), .Y(n2) );
  XOR2X1 U32 ( .A(n38), .B(n39), .Y(n37) );
  NOR2X1 U33 ( .A(n35), .B(n36), .Y(n39) );
  NAND2X1 U34 ( .A(count_out[2]), .B(n40), .Y(n36) );
  NAND2X1 U35 ( .A(n33), .B(n31), .Y(n35) );
  AND2X1 U36 ( .A(count_out[0]), .B(n40), .Y(n31) );
  AND2X1 U37 ( .A(count_out[1]), .B(n40), .Y(n33) );
  NAND2X1 U38 ( .A(count_out[3]), .B(n40), .Y(n38) );
  OR2X1 U39 ( .A(n41), .B(n42), .Y(n40) );
  OAI21X1 U40 ( .A(count_out[1]), .B(n18), .C(n26), .Y(n42) );
  NOR2X1 U41 ( .A(n29), .B(n43), .Y(n26) );
  OAI21X1 U42 ( .A(rollover_val[1]), .B(n15), .C(n44), .Y(n43) );
  INVX1 U43 ( .A(n24), .Y(n44) );
  XOR2X1 U44 ( .A(rollover_val[3]), .B(count_out[3]), .Y(n24) );
  INVX1 U45 ( .A(count_out[1]), .Y(n15) );
  XOR2X1 U46 ( .A(count_out[2]), .B(rollover_val[2]), .Y(n29) );
  INVX1 U47 ( .A(rollover_val[1]), .Y(n18) );
  XOR2X1 U48 ( .A(rollover_val[0]), .B(count_out[0]), .Y(n41) );
  INVX1 U49 ( .A(n4), .Y(n30) );
  NOR2X1 U50 ( .A(count_enable), .B(clear), .Y(n4) );
  INVX1 U51 ( .A(count_out[3]), .Y(n17) );
endmodule


module tx_timer ( clk, n_rst, pause, count_up, clear_64, shift_en, byte_rcvd, 
        flag_8 );
  input clk, n_rst, pause, count_up, clear_64;
  output shift_en, byte_rcvd, flag_8;
  wire   n1;

  flex_counter_NUM_CNT_BITS4_3 BIT_TX ( .clk(clk), .n_rst(n_rst), .clear(1'b0), 
        .count_enable(count_up), .rollover_val({1'b1, 1'b0, 1'b0, 1'b0}), 
        .rollover_flag(flag_8) );
  flex_counter_NUM_CNT_BITS4_2 BYTE_TX ( .clk(clk), .n_rst(n_rst), .clear(
        clear_64), .count_enable(flag_8), .rollover_val({1'b1, 1'b0, 1'b0, 
        1'b0}), .rollover_flag(byte_rcvd) );
  NOR2X1 U3 ( .A(pause), .B(n1), .Y(shift_en) );
  INVX1 U4 ( .A(flag_8), .Y(n1) );
endmodule


module nrzi_encode ( clk, n_rst, pause, d_orig, flag_8, eop, d_plus, d_minus
 );
  input clk, n_rst, pause, d_orig, flag_8, eop;
  output d_plus, d_minus;
  wire   prev_d, n15, n16, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;

  DFFSR prev_d_reg ( .D(n13), .CLK(clk), .R(1'b1), .S(n_rst), .Q(prev_d) );
  DFFSR d_plus_reg ( .D(n16), .CLK(clk), .R(1'b1), .S(n_rst), .Q(d_plus) );
  DFFSR d_minus_reg ( .D(n15), .CLK(clk), .R(1'b1), .S(n_rst), .Q(d_minus) );
  INVX1 U6 ( .A(n4), .Y(n13) );
  MUX2X1 U7 ( .B(d_orig), .A(prev_d), .S(n5), .Y(n4) );
  OAI21X1 U8 ( .A(n5), .B(n6), .C(n7), .Y(n16) );
  NAND2X1 U9 ( .A(d_plus), .B(n8), .Y(n7) );
  NAND3X1 U10 ( .A(n9), .B(n10), .C(flag_8), .Y(n5) );
  INVX1 U11 ( .A(pause), .Y(n10) );
  MUX2X1 U12 ( .B(n11), .A(n12), .S(n8), .Y(n15) );
  INVX1 U13 ( .A(flag_8), .Y(n8) );
  INVX1 U14 ( .A(d_minus), .Y(n12) );
  OAI21X1 U15 ( .A(pause), .B(n6), .C(n9), .Y(n11) );
  INVX1 U16 ( .A(eop), .Y(n9) );
  XOR2X1 U17 ( .A(prev_d), .B(d_orig), .Y(n6) );
endmodule


module usb_transmitter ( clk, n_rst, send_data, tx_ena, tx_nack, write_done, 
        tx_ack, parallel_in, buff_empty, d_plus, d_minus, trans, fifo_en, 
        tx_complete, sd_tx_en_write );
  input [7:0] parallel_in;
  input clk, n_rst, send_data, tx_ena, tx_nack, write_done, tx_ack, buff_empty;
  output d_plus, d_minus, trans, fifo_en, tx_complete, sd_tx_en_write;
  wire   byte_rcvd, clear, eop, start_read, load_enable, load_sync,
         load_data_pid, load_data_1_crc, load_data_2_crc, load_ack, load_nack,
         shift_en, bit_out, flag_8, pause;

  tcu CONTROLLER ( .clk(clk), .n_rst(n_rst), .send_data(send_data), .tx_ena(
        tx_ena), .buff_empty(buff_empty), .tx_nack(tx_nack), .write_done(
        write_done), .tx_ack(tx_ack), .cnt_done(byte_rcvd), .tx_complete(
        tx_complete), .eop(eop), .fifo_en(fifo_en), .start_read(start_read), 
        .trans(trans), .sd_tx_en_write(sd_tx_en_write), .load_ena(load_enable), 
        .load_sync(load_sync), .load_data_pid(load_data_pid), 
        .load_data_1_crc(load_data_1_crc), .load_data_2_crc(load_data_2_crc), 
        .load_ack(load_ack), .load_nack(load_nack), .clear(clear) );
  flex_pts_sr_NUM_BITS8_SHIFT_MSB0 FLEX_PTS ( .clk(clk), .n_rst(n_rst), 
        .shift_enable(shift_en), .load_enable(load_enable), .load_sync(
        load_sync), .load_data_pid(load_data_pid), .load_data_1_crc(
        load_data_1_crc), .load_data_2_crc(load_data_2_crc), .load_ack(
        load_ack), .load_nack(load_nack), .parallel_in(parallel_in), 
        .serial_out(bit_out) );
  bit_stuffer STUFF ( .clk(clk), .n_rst(n_rst), .d_orig(bit_out), .flag_8(
        flag_8), .pause(pause) );
  tx_timer TIMER ( .clk(clk), .n_rst(n_rst), .pause(pause), .count_up(
        start_read), .clear_64(clear), .shift_en(shift_en), .byte_rcvd(
        byte_rcvd), .flag_8(flag_8) );
  nrzi_encode ENCODE ( .clk(clk), .n_rst(n_rst), .pause(pause), .d_orig(
        bit_out), .flag_8(flag_8), .eop(eop), .d_plus(d_plus), .d_minus(
        d_minus) );
endmodule


module serial_2_parallel ( clk, n_rst, shift_enable, pause, serial_in, 
        parallel_out );
  output [7:0] parallel_out;
  input clk, n_rst, shift_enable, pause, serial_in;
  wire   n21, n22, n23, n24, n25, n26, n27, n28, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18;

  DFFSR \parallel_out_reg[0]  ( .D(n28), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[0]) );
  DFFSR \parallel_out_reg[1]  ( .D(n27), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[1]) );
  DFFSR \parallel_out_reg[2]  ( .D(n26), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[2]) );
  DFFSR \parallel_out_reg[3]  ( .D(n25), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[3]) );
  DFFSR \parallel_out_reg[4]  ( .D(n24), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[4]) );
  DFFSR \parallel_out_reg[5]  ( .D(n23), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[5]) );
  DFFSR \parallel_out_reg[6]  ( .D(n22), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[6]) );
  DFFSR \parallel_out_reg[7]  ( .D(n21), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[7]) );
  INVX1 U10 ( .A(n9), .Y(n28) );
  MUX2X1 U11 ( .B(parallel_out[0]), .A(serial_in), .S(n10), .Y(n9) );
  INVX1 U12 ( .A(n11), .Y(n27) );
  MUX2X1 U13 ( .B(parallel_out[1]), .A(parallel_out[0]), .S(n10), .Y(n11) );
  INVX1 U14 ( .A(n12), .Y(n26) );
  MUX2X1 U15 ( .B(parallel_out[2]), .A(parallel_out[1]), .S(n10), .Y(n12) );
  INVX1 U16 ( .A(n13), .Y(n25) );
  MUX2X1 U17 ( .B(parallel_out[3]), .A(parallel_out[2]), .S(n10), .Y(n13) );
  INVX1 U18 ( .A(n14), .Y(n24) );
  MUX2X1 U19 ( .B(parallel_out[4]), .A(parallel_out[3]), .S(n10), .Y(n14) );
  INVX1 U20 ( .A(n15), .Y(n23) );
  MUX2X1 U21 ( .B(parallel_out[5]), .A(parallel_out[4]), .S(n10), .Y(n15) );
  INVX1 U22 ( .A(n16), .Y(n22) );
  MUX2X1 U23 ( .B(parallel_out[6]), .A(parallel_out[5]), .S(n10), .Y(n16) );
  INVX1 U24 ( .A(n17), .Y(n21) );
  MUX2X1 U25 ( .B(parallel_out[7]), .A(parallel_out[6]), .S(n10), .Y(n17) );
  NOR2X1 U26 ( .A(n18), .B(pause), .Y(n10) );
  INVX1 U27 ( .A(shift_enable), .Y(n18) );
endmodule


module nrzi_decode ( clk, n_rst, d_plus, d_minus, bit_rcvd, d_orig, eop );
  input clk, n_rst, d_plus, d_minus, bit_rcvd;
  output d_orig, eop;
  wire   prev_d, curr_d, n4, n5, n6, n7, n8;

  DFFSR eop_reg ( .D(n8), .CLK(clk), .R(n_rst), .S(1'b1), .Q(eop) );
  DFFSR prev_d_reg ( .D(curr_d), .CLK(clk), .R(1'b1), .S(n_rst), .Q(prev_d) );
  DFFSR d_orig_reg ( .D(curr_d), .CLK(clk), .R(1'b1), .S(n_rst), .Q(d_orig) );
  MUX2X1 U6 ( .B(n4), .A(n5), .S(n6), .Y(curr_d) );
  NOR2X1 U7 ( .A(n7), .B(n8), .Y(n6) );
  XNOR2X1 U8 ( .A(d_plus), .B(d_minus), .Y(n8) );
  INVX1 U9 ( .A(bit_rcvd), .Y(n7) );
  XOR2X1 U10 ( .A(prev_d), .B(d_plus), .Y(n5) );
  INVX1 U11 ( .A(d_orig), .Y(n4) );
endmodule


module flex_counter_NUM_CNT_BITS3_0 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [2:0] rollover_val;
  output [2:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   n1, n2, n3, n4, n5, n6, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42;

  DFFSR \count_out_reg[0]  ( .D(n40), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \count_out_reg[2]  ( .D(n42), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[1]  ( .D(n41), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR rollover_flag_reg ( .D(n39), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  OAI21X1 U7 ( .A(n1), .B(n2), .C(n3), .Y(n39) );
  NAND2X1 U8 ( .A(rollover_flag), .B(n4), .Y(n3) );
  MUX2X1 U9 ( .B(n5), .A(n6), .S(rollover_val[1]), .Y(n2) );
  NOR2X1 U10 ( .A(n11), .B(n12), .Y(n6) );
  MUX2X1 U11 ( .B(n13), .A(n14), .S(count_out[1]), .Y(n12) );
  AND2X1 U12 ( .A(n15), .B(rollover_val[0]), .Y(n14) );
  MUX2X1 U13 ( .B(n16), .A(n17), .S(count_out[1]), .Y(n5) );
  NAND2X1 U14 ( .A(n13), .B(n11), .Y(n17) );
  NAND2X1 U15 ( .A(rollover_val[0]), .B(n18), .Y(n16) );
  OAI22X1 U16 ( .A(rollover_val[2]), .B(count_out[2]), .C(count_out[0]), .D(
        n11), .Y(n18) );
  OAI22X1 U17 ( .A(n15), .B(n19), .C(n20), .D(n1), .Y(n40) );
  OAI21X1 U18 ( .A(n21), .B(n19), .C(n22), .Y(n41) );
  MUX2X1 U19 ( .B(n23), .A(n24), .S(n25), .Y(n22) );
  NOR2X1 U20 ( .A(clear), .B(n20), .Y(n24) );
  NOR2X1 U21 ( .A(n1), .B(n26), .Y(n23) );
  OAI21X1 U22 ( .A(n27), .B(n19), .C(n28), .Y(n42) );
  MUX2X1 U23 ( .B(n29), .A(n30), .S(n31), .Y(n28) );
  NOR2X1 U24 ( .A(n32), .B(n27), .Y(n31) );
  NOR2X1 U25 ( .A(clear), .B(n33), .Y(n30) );
  INVX1 U26 ( .A(n34), .Y(n33) );
  NOR2X1 U27 ( .A(n1), .B(n34), .Y(n29) );
  NAND2X1 U28 ( .A(n20), .B(n25), .Y(n34) );
  NOR2X1 U29 ( .A(n21), .B(n32), .Y(n25) );
  INVX1 U30 ( .A(n35), .Y(n32) );
  INVX1 U31 ( .A(n26), .Y(n20) );
  NAND2X1 U32 ( .A(count_out[0]), .B(n35), .Y(n26) );
  NAND3X1 U33 ( .A(n36), .B(n37), .C(n38), .Y(n35) );
  AOI21X1 U34 ( .A(rollover_val[0]), .B(n15), .C(n13), .Y(n38) );
  NOR2X1 U35 ( .A(n15), .B(rollover_val[0]), .Y(n13) );
  INVX1 U36 ( .A(count_out[0]), .Y(n15) );
  INVX1 U37 ( .A(n11), .Y(n37) );
  XOR2X1 U38 ( .A(rollover_val[2]), .B(count_out[2]), .Y(n11) );
  XOR2X1 U39 ( .A(rollover_val[1]), .B(n21), .Y(n36) );
  INVX1 U40 ( .A(count_out[1]), .Y(n21) );
  OR2X1 U41 ( .A(n4), .B(clear), .Y(n1) );
  INVX1 U42 ( .A(n4), .Y(n19) );
  NOR2X1 U43 ( .A(count_enable), .B(clear), .Y(n4) );
  INVX1 U44 ( .A(count_out[2]), .Y(n27) );
endmodule


module bit_destuff ( clk, n_rst, bit_rcvd, d_orig, pause );
  input clk, n_rst, bit_rcvd, d_orig;
  output pause;
  wire   _0_net_, _1_net_, n1;

  flex_counter_NUM_CNT_BITS3_0 IN1 ( .clk(clk), .n_rst(n_rst), .clear(_0_net_), 
        .count_enable(_1_net_), .rollover_val({1'b1, 1'b1, 1'b0}), 
        .rollover_flag(pause) );
  AND2X1 U3 ( .A(bit_rcvd), .B(d_orig), .Y(_1_net_) );
  NOR2X1 U4 ( .A(d_orig), .B(n1), .Y(_0_net_) );
  INVX1 U5 ( .A(bit_rcvd), .Y(n1) );
endmodule


module flex_counter_NUM_CNT_BITS4_1 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   n1, n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n50, n51, n52,
         n53;

  DFFSR \count_out_reg[0]  ( .D(n50), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \count_out_reg[1]  ( .D(n51), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n52), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n53), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR rollover_flag_reg ( .D(n45), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  OAI21X1 U8 ( .A(n1), .B(n2), .C(n3), .Y(n45) );
  NAND2X1 U9 ( .A(rollover_flag), .B(n4), .Y(n3) );
  AOI21X1 U10 ( .A(n5), .B(n6), .C(n12), .Y(n1) );
  NOR2X1 U11 ( .A(n13), .B(n14), .Y(n12) );
  NAND3X1 U12 ( .A(n15), .B(n16), .C(rollover_val[0]), .Y(n14) );
  NAND3X1 U13 ( .A(n17), .B(n18), .C(n19), .Y(n13) );
  NOR2X1 U14 ( .A(rollover_val[3]), .B(rollover_val[2]), .Y(n19) );
  MUX2X1 U15 ( .B(n20), .A(n21), .S(rollover_val[0]), .Y(n6) );
  OAI21X1 U16 ( .A(count_out[1]), .B(n18), .C(n22), .Y(n21) );
  OAI21X1 U17 ( .A(n23), .B(n15), .C(count_out[0]), .Y(n20) );
  AOI21X1 U18 ( .A(rollover_val[2]), .B(n24), .C(n25), .Y(n5) );
  MUX2X1 U19 ( .B(n26), .A(n27), .S(n23), .Y(n25) );
  NOR2X1 U20 ( .A(rollover_val[0]), .B(rollover_val[1]), .Y(n23) );
  NOR2X1 U21 ( .A(n15), .B(n28), .Y(n27) );
  OAI21X1 U22 ( .A(rollover_val[2]), .B(n24), .C(n29), .Y(n28) );
  OAI22X1 U23 ( .A(n22), .B(n30), .C(n31), .D(n2), .Y(n50) );
  INVX1 U24 ( .A(count_out[0]), .Y(n22) );
  OAI22X1 U25 ( .A(n15), .B(n30), .C(n32), .D(n2), .Y(n51) );
  XNOR2X1 U26 ( .A(n33), .B(n31), .Y(n32) );
  OAI22X1 U27 ( .A(n16), .B(n30), .C(n34), .D(n2), .Y(n52) );
  XNOR2X1 U28 ( .A(n35), .B(n36), .Y(n34) );
  INVX1 U29 ( .A(count_out[2]), .Y(n16) );
  OAI22X1 U30 ( .A(n17), .B(n30), .C(n37), .D(n2), .Y(n53) );
  OR2X1 U31 ( .A(n4), .B(clear), .Y(n2) );
  XOR2X1 U32 ( .A(n38), .B(n39), .Y(n37) );
  NOR2X1 U33 ( .A(n35), .B(n36), .Y(n39) );
  NAND2X1 U34 ( .A(count_out[2]), .B(n40), .Y(n36) );
  NAND2X1 U35 ( .A(n33), .B(n31), .Y(n35) );
  AND2X1 U36 ( .A(count_out[0]), .B(n40), .Y(n31) );
  AND2X1 U37 ( .A(count_out[1]), .B(n40), .Y(n33) );
  NAND2X1 U38 ( .A(count_out[3]), .B(n40), .Y(n38) );
  OR2X1 U39 ( .A(n41), .B(n42), .Y(n40) );
  OAI21X1 U40 ( .A(count_out[1]), .B(n18), .C(n26), .Y(n42) );
  NOR2X1 U41 ( .A(n29), .B(n43), .Y(n26) );
  OAI21X1 U42 ( .A(rollover_val[1]), .B(n15), .C(n44), .Y(n43) );
  INVX1 U43 ( .A(n24), .Y(n44) );
  XOR2X1 U44 ( .A(rollover_val[3]), .B(count_out[3]), .Y(n24) );
  INVX1 U45 ( .A(count_out[1]), .Y(n15) );
  XOR2X1 U46 ( .A(count_out[2]), .B(rollover_val[2]), .Y(n29) );
  INVX1 U47 ( .A(rollover_val[1]), .Y(n18) );
  XOR2X1 U48 ( .A(rollover_val[0]), .B(count_out[0]), .Y(n41) );
  INVX1 U49 ( .A(n4), .Y(n30) );
  NOR2X1 U50 ( .A(count_enable), .B(clear), .Y(n4) );
  INVX1 U51 ( .A(count_out[3]), .Y(n17) );
endmodule


module flex_counter_NUM_CNT_BITS4_0 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   n1, n2, n3, n4, n5, n6, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n50, n51, n52,
         n53;

  DFFSR \count_out_reg[0]  ( .D(n50), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \count_out_reg[1]  ( .D(n51), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n52), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n53), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR rollover_flag_reg ( .D(n45), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  OAI21X1 U8 ( .A(n1), .B(n2), .C(n3), .Y(n45) );
  NAND2X1 U9 ( .A(rollover_flag), .B(n4), .Y(n3) );
  AOI21X1 U10 ( .A(n5), .B(n6), .C(n12), .Y(n1) );
  NOR2X1 U11 ( .A(n13), .B(n14), .Y(n12) );
  NAND3X1 U12 ( .A(n15), .B(n16), .C(rollover_val[0]), .Y(n14) );
  NAND3X1 U13 ( .A(n17), .B(n18), .C(n19), .Y(n13) );
  NOR2X1 U14 ( .A(rollover_val[3]), .B(rollover_val[2]), .Y(n19) );
  MUX2X1 U15 ( .B(n20), .A(n21), .S(rollover_val[0]), .Y(n6) );
  OAI21X1 U16 ( .A(count_out[1]), .B(n18), .C(n22), .Y(n21) );
  OAI21X1 U17 ( .A(n23), .B(n15), .C(count_out[0]), .Y(n20) );
  AOI21X1 U18 ( .A(rollover_val[2]), .B(n24), .C(n25), .Y(n5) );
  MUX2X1 U19 ( .B(n26), .A(n27), .S(n23), .Y(n25) );
  NOR2X1 U20 ( .A(rollover_val[0]), .B(rollover_val[1]), .Y(n23) );
  NOR2X1 U21 ( .A(n15), .B(n28), .Y(n27) );
  OAI21X1 U22 ( .A(rollover_val[2]), .B(n24), .C(n29), .Y(n28) );
  OAI22X1 U23 ( .A(n22), .B(n30), .C(n31), .D(n2), .Y(n50) );
  INVX1 U24 ( .A(count_out[0]), .Y(n22) );
  OAI22X1 U25 ( .A(n15), .B(n30), .C(n32), .D(n2), .Y(n51) );
  XNOR2X1 U26 ( .A(n33), .B(n31), .Y(n32) );
  OAI22X1 U27 ( .A(n16), .B(n30), .C(n34), .D(n2), .Y(n52) );
  XNOR2X1 U28 ( .A(n35), .B(n36), .Y(n34) );
  INVX1 U29 ( .A(count_out[2]), .Y(n16) );
  OAI22X1 U30 ( .A(n17), .B(n30), .C(n37), .D(n2), .Y(n53) );
  OR2X1 U31 ( .A(n4), .B(clear), .Y(n2) );
  XOR2X1 U32 ( .A(n38), .B(n39), .Y(n37) );
  NOR2X1 U33 ( .A(n35), .B(n36), .Y(n39) );
  NAND2X1 U34 ( .A(count_out[2]), .B(n40), .Y(n36) );
  NAND2X1 U35 ( .A(n33), .B(n31), .Y(n35) );
  AND2X1 U36 ( .A(count_out[0]), .B(n40), .Y(n31) );
  AND2X1 U37 ( .A(count_out[1]), .B(n40), .Y(n33) );
  NAND2X1 U38 ( .A(count_out[3]), .B(n40), .Y(n38) );
  OR2X1 U39 ( .A(n41), .B(n42), .Y(n40) );
  OAI21X1 U40 ( .A(count_out[1]), .B(n18), .C(n26), .Y(n42) );
  NOR2X1 U41 ( .A(n29), .B(n43), .Y(n26) );
  OAI21X1 U42 ( .A(rollover_val[1]), .B(n15), .C(n44), .Y(n43) );
  INVX1 U43 ( .A(n24), .Y(n44) );
  XOR2X1 U44 ( .A(rollover_val[3]), .B(count_out[3]), .Y(n24) );
  INVX1 U45 ( .A(count_out[1]), .Y(n15) );
  XOR2X1 U46 ( .A(count_out[2]), .B(rollover_val[2]), .Y(n29) );
  INVX1 U47 ( .A(rollover_val[1]), .Y(n18) );
  XOR2X1 U48 ( .A(rollover_val[0]), .B(count_out[0]), .Y(n41) );
  INVX1 U49 ( .A(n4), .Y(n30) );
  NOR2X1 U50 ( .A(count_enable), .B(clear), .Y(n4) );
  INVX1 U51 ( .A(count_out[3]), .Y(n17) );
endmodule


module counter ( clk, n_rst, cnt_up, clear, pause, d_plus, byte_rcvd, bit_rcvd
 );
  input clk, n_rst, cnt_up, clear, pause, d_plus;
  output byte_rcvd, bit_rcvd;
  wire   _1_net_, n1;

  flex_counter_NUM_CNT_BITS4_1 IN1 ( .clk(clk), .n_rst(n_rst), .clear(clear), 
        .count_enable(cnt_up), .rollover_val({1'b1, 1'b0, 1'b0, 1'b0}), 
        .rollover_flag(bit_rcvd) );
  flex_counter_NUM_CNT_BITS4_0 IN2 ( .clk(clk), .n_rst(n_rst), .clear(clear), 
        .count_enable(_1_net_), .rollover_val({1'b1, 1'b0, 1'b0, 1'b0}), 
        .rollover_flag(byte_rcvd) );
  NOR2X1 U3 ( .A(pause), .B(n1), .Y(_1_net_) );
  INVX1 U4 ( .A(bit_rcvd), .Y(n1) );
endmodule


module usb_rcv_controller ( clk, n_rst, rx_en, eop, byte_rcvd, crc_status_5, 
        crc_status_16, hs_rcv, fifo_empty, fifo_full, read_done, 
        ack_packet_rcv, data_rx, rcving, count_up, dbuff_clr, rcvd_exp_hs, 
        send_nack, addr_dne, fill_dbuff, sd_rx_en_read, clear, pckt_rcvd, 
        pckt_rcvd_temp );
  input [7:0] data_rx;
  output [2:0] pckt_rcvd;
  output [2:0] pckt_rcvd_temp;
  input clk, n_rst, rx_en, eop, byte_rcvd, crc_status_5, crc_status_16, hs_rcv,
         fifo_empty, fifo_full, read_done, ack_packet_rcv;
  output rcving, count_up, dbuff_clr, rcvd_exp_hs, send_nack, addr_dne,
         fill_dbuff, sd_rx_en_read, clear;
  wire   N501, N502, N503, N504, N505, N506, N507, N508, n224, n225, n226,
         n227, n228, n229, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193;
  wire   [5:0] curr_state;

  DFFSR \curr_state_reg[0]  ( .D(n229), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr_state[0]) );
  DFFSR \curr_state_reg[1]  ( .D(n224), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr_state[1]) );
  DFFSR \curr_state_reg[2]  ( .D(n225), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr_state[2]) );
  DFFSR \curr_state_reg[3]  ( .D(n226), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr_state[3]) );
  DFFSR \curr_state_reg[5]  ( .D(n228), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr_state[5]) );
  DFFSR \curr_state_reg[4]  ( .D(n227), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        curr_state[4]) );
  LATCH \pckt_rcvd_temp_reg[2]  ( .CLK(N505), .D(N508), .Q(pckt_rcvd_temp[2])
         );
  LATCH \pckt_rcvd_temp_reg[1]  ( .CLK(N505), .D(N507), .Q(pckt_rcvd_temp[1])
         );
  LATCH \pckt_rcvd_temp_reg[0]  ( .CLK(N505), .D(N506), .Q(pckt_rcvd_temp[0])
         );
  LATCH \pckt_rcvd_reg[2]  ( .CLK(N501), .D(N504), .Q(pckt_rcvd[2]) );
  LATCH \pckt_rcvd_reg[1]  ( .CLK(N501), .D(N503), .Q(pckt_rcvd[1]) );
  LATCH \pckt_rcvd_reg[0]  ( .CLK(N501), .D(N502), .Q(pckt_rcvd[0]) );
  MUX2X1 U9 ( .B(n7), .A(n8), .S(n9), .Y(n229) );
  NOR2X1 U10 ( .A(n10), .B(n11), .Y(n8) );
  NAND3X1 U11 ( .A(n12), .B(n13), .C(n14), .Y(n11) );
  NOR2X1 U12 ( .A(n15), .B(n16), .Y(n14) );
  OAI21X1 U13 ( .A(n17), .B(n18), .C(n19), .Y(n16) );
  NAND2X1 U14 ( .A(n20), .B(n21), .Y(n10) );
  AOI21X1 U15 ( .A(n22), .B(n23), .C(n24), .Y(n21) );
  OR2X1 U16 ( .A(n25), .B(fill_dbuff), .Y(n24) );
  MUX2X1 U17 ( .B(n26), .A(n27), .S(data_rx[5]), .Y(n22) );
  NAND3X1 U18 ( .A(n28), .B(n29), .C(n30), .Y(n27) );
  NOR2X1 U19 ( .A(n31), .B(n32), .Y(n30) );
  NOR2X1 U20 ( .A(data_rx[1]), .B(n33), .Y(n28) );
  NAND3X1 U21 ( .A(n34), .B(n35), .C(n36), .Y(n26) );
  INVX1 U22 ( .A(data_rx[7]), .Y(n35) );
  INVX1 U23 ( .A(n37), .Y(n20) );
  OAI22X1 U24 ( .A(n38), .B(n39), .C(n7), .D(n40), .Y(n37) );
  NAND2X1 U25 ( .A(n41), .B(n42), .Y(n228) );
  AOI21X1 U26 ( .A(n43), .B(curr_state[5]), .C(n15), .Y(n42) );
  AOI21X1 U27 ( .A(n44), .B(crc_status_16), .C(n45), .Y(n41) );
  NAND3X1 U28 ( .A(n46), .B(n47), .C(n48), .Y(n227) );
  NOR2X1 U29 ( .A(n49), .B(n50), .Y(n48) );
  OAI21X1 U30 ( .A(n51), .B(n52), .C(n53), .Y(n50) );
  INVX1 U31 ( .A(n54), .Y(n49) );
  NOR2X1 U32 ( .A(n25), .B(n55), .Y(n47) );
  INVX1 U33 ( .A(n56), .Y(n46) );
  OAI22X1 U34 ( .A(n57), .B(n40), .C(n58), .D(crc_status_5), .Y(n56) );
  MUX2X1 U35 ( .B(n59), .A(n60), .S(n9), .Y(n226) );
  NOR2X1 U36 ( .A(n61), .B(n62), .Y(n60) );
  NAND3X1 U37 ( .A(n63), .B(n54), .C(n64), .Y(n62) );
  INVX1 U38 ( .A(n65), .Y(n64) );
  OAI22X1 U39 ( .A(n59), .B(n40), .C(n52), .D(n66), .Y(n65) );
  NOR2X1 U40 ( .A(n67), .B(n68), .Y(n54) );
  OAI21X1 U41 ( .A(n69), .B(n70), .C(n71), .Y(n68) );
  NAND3X1 U42 ( .A(n17), .B(n72), .C(n73), .Y(n67) );
  NAND3X1 U43 ( .A(n74), .B(n75), .C(n76), .Y(n61) );
  AOI22X1 U44 ( .A(n77), .B(n78), .C(n79), .D(n80), .Y(n76) );
  NAND3X1 U45 ( .A(n81), .B(n82), .C(n83), .Y(n80) );
  NOR2X1 U46 ( .A(data_rx[4]), .B(data_rx[2]), .Y(n83) );
  INVX1 U47 ( .A(n84), .Y(n77) );
  NAND3X1 U48 ( .A(n85), .B(n38), .C(n86), .Y(n75) );
  NOR2X1 U49 ( .A(n87), .B(n39), .Y(n86) );
  INVX1 U50 ( .A(n88), .Y(n87) );
  NAND3X1 U51 ( .A(data_rx[4]), .B(n81), .C(n89), .Y(n38) );
  NOR2X1 U52 ( .A(n82), .B(n32), .Y(n89) );
  INVX1 U53 ( .A(n90), .Y(n81) );
  NAND3X1 U54 ( .A(n33), .B(n91), .C(n29), .Y(n90) );
  INVX1 U55 ( .A(data_rx[0]), .Y(n33) );
  NOR2X1 U56 ( .A(addr_dne), .B(fill_dbuff), .Y(n74) );
  OAI21X1 U57 ( .A(n92), .B(n93), .C(n94), .Y(n225) );
  OAI21X1 U58 ( .A(n95), .B(n96), .C(n9), .Y(n94) );
  NAND3X1 U59 ( .A(n97), .B(n98), .C(n99), .Y(n96) );
  AOI21X1 U60 ( .A(crc_status_5), .B(n100), .C(n101), .Y(n99) );
  OAI22X1 U61 ( .A(n18), .B(n102), .C(n103), .D(n104), .Y(n101) );
  INVX1 U62 ( .A(n105), .Y(n104) );
  INVX1 U63 ( .A(fifo_full), .Y(n18) );
  AOI22X1 U64 ( .A(n106), .B(n107), .C(n108), .D(n109), .Y(n97) );
  INVX1 U65 ( .A(n110), .Y(n106) );
  OR2X1 U66 ( .A(n111), .B(n112), .Y(n95) );
  NAND3X1 U67 ( .A(n113), .B(n17), .C(n71), .Y(n112) );
  NAND3X1 U68 ( .A(n39), .B(n114), .C(n115), .Y(n111) );
  INVX1 U69 ( .A(addr_dne), .Y(n114) );
  INVX1 U70 ( .A(n43), .Y(n92) );
  NAND2X1 U71 ( .A(n40), .B(n9), .Y(n43) );
  MUX2X1 U72 ( .B(n116), .A(n117), .S(n9), .Y(n224) );
  NOR2X1 U73 ( .A(n118), .B(n119), .Y(n9) );
  OAI21X1 U74 ( .A(read_done), .B(n113), .C(n120), .Y(n119) );
  AOI22X1 U75 ( .A(n121), .B(n122), .C(n45), .D(n123), .Y(n120) );
  INVX1 U76 ( .A(fifo_empty), .Y(n123) );
  INVX1 U77 ( .A(n17), .Y(n122) );
  NOR2X1 U78 ( .A(fifo_full), .B(byte_rcvd), .Y(n121) );
  OAI21X1 U79 ( .A(rx_en), .B(n12), .C(n124), .Y(n118) );
  AOI21X1 U80 ( .A(n125), .B(n126), .C(n127), .Y(n124) );
  AOI21X1 U81 ( .A(n128), .B(n71), .C(eop), .Y(n127) );
  INVX1 U82 ( .A(byte_rcvd), .Y(n126) );
  NAND3X1 U83 ( .A(n129), .B(n130), .C(n19), .Y(n125) );
  INVX1 U84 ( .A(n131), .Y(n19) );
  OAI21X1 U85 ( .A(n132), .B(n133), .C(n73), .Y(n131) );
  AOI21X1 U86 ( .A(n134), .B(n135), .C(n136), .Y(n12) );
  INVX1 U87 ( .A(n137), .Y(n134) );
  NOR2X1 U88 ( .A(n138), .B(n139), .Y(n117) );
  NAND3X1 U89 ( .A(n63), .B(n13), .C(n140), .Y(n139) );
  AOI21X1 U90 ( .A(n109), .B(n107), .C(n141), .Y(n140) );
  OAI22X1 U91 ( .A(fifo_full), .B(n102), .C(n40), .D(n116), .Y(n141) );
  AOI22X1 U92 ( .A(n84), .B(n78), .C(n142), .D(n143), .Y(n40) );
  NOR3X1 U93 ( .A(n15), .B(n144), .C(n145), .Y(n143) );
  OAI21X1 U94 ( .A(n66), .B(n137), .C(n128), .Y(n145) );
  AOI21X1 U95 ( .A(n107), .B(n146), .C(rcvd_exp_hs), .Y(n128) );
  NOR2X1 U96 ( .A(n110), .B(n66), .Y(rcvd_exp_hs) );
  OAI21X1 U97 ( .A(n147), .B(n52), .C(n148), .Y(n15) );
  NOR2X1 U98 ( .A(n149), .B(n150), .Y(n148) );
  AOI21X1 U99 ( .A(n151), .B(n110), .C(n51), .Y(n150) );
  AOI21X1 U100 ( .A(n133), .B(n70), .C(n66), .Y(n149) );
  INVX1 U101 ( .A(n152), .Y(n142) );
  NAND3X1 U102 ( .A(n153), .B(n129), .C(n154), .Y(n152) );
  AND2X1 U103 ( .A(n73), .B(n71), .Y(n154) );
  OR2X1 U104 ( .A(n51), .B(n133), .Y(n73) );
  OR2X1 U105 ( .A(n155), .B(n156), .Y(n129) );
  NOR2X1 U106 ( .A(n44), .B(n55), .Y(n153) );
  INVX1 U107 ( .A(n31), .Y(n78) );
  NAND2X1 U108 ( .A(hs_rcv), .B(n157), .Y(n31) );
  NAND3X1 U109 ( .A(data_rx[2]), .B(n29), .C(n158), .Y(n84) );
  NOR2X1 U110 ( .A(n91), .B(n159), .Y(n158) );
  NAND2X1 U111 ( .A(n160), .B(n82), .Y(n159) );
  XOR2X1 U112 ( .A(data_rx[4]), .B(data_rx[0]), .Y(n160) );
  INVX1 U113 ( .A(n161), .Y(n29) );
  NAND3X1 U114 ( .A(n162), .B(n34), .C(data_rx[7]), .Y(n161) );
  INVX1 U115 ( .A(data_rx[6]), .Y(n34) );
  INVX1 U116 ( .A(n155), .Y(n109) );
  NOR3X1 U117 ( .A(n79), .B(send_nack), .C(n163), .Y(n13) );
  OAI21X1 U118 ( .A(n103), .B(n105), .C(n98), .Y(n163) );
  AOI21X1 U119 ( .A(n135), .B(n164), .C(n165), .Y(n98) );
  OAI21X1 U120 ( .A(n39), .B(n85), .C(n72), .Y(n165) );
  NAND2X1 U121 ( .A(n44), .B(n166), .Y(n72) );
  INVX1 U122 ( .A(crc_status_16), .Y(n166) );
  NOR2X1 U123 ( .A(n151), .B(n66), .Y(n44) );
  NAND3X1 U124 ( .A(n167), .B(n91), .C(data_rx[1]), .Y(n85) );
  INVX1 U125 ( .A(data_rx[5]), .Y(n91) );
  INVX1 U126 ( .A(n52), .Y(n164) );
  NOR2X1 U127 ( .A(n168), .B(n169), .Y(n105) );
  NAND3X1 U128 ( .A(data_rx[3]), .B(data_rx[1]), .C(data_rx[5]), .Y(n169) );
  NAND3X1 U129 ( .A(data_rx[7]), .B(n32), .C(n170), .Y(n168) );
  NOR2X1 U130 ( .A(data_rx[6]), .B(data_rx[4]), .Y(n170) );
  NOR2X1 U131 ( .A(n69), .B(n137), .Y(send_nack) );
  NOR3X1 U132 ( .A(n100), .B(N508), .C(n171), .Y(n63) );
  OAI21X1 U133 ( .A(n51), .B(n172), .C(n113), .Y(n171) );
  INVX1 U134 ( .A(n58), .Y(n100) );
  OR2X1 U135 ( .A(n173), .B(n174), .Y(n138) );
  OAI21X1 U136 ( .A(n39), .B(n88), .C(n71), .Y(n174) );
  OR2X1 U137 ( .A(n151), .B(n69), .Y(n71) );
  NAND3X1 U138 ( .A(n167), .B(n82), .C(data_rx[5]), .Y(n88) );
  INVX1 U139 ( .A(data_rx[1]), .Y(n82) );
  NOR2X1 U140 ( .A(n175), .B(n176), .Y(n167) );
  NAND3X1 U141 ( .A(data_rx[6]), .B(data_rx[0]), .C(data_rx[7]), .Y(n176) );
  NAND3X1 U142 ( .A(n162), .B(n23), .C(n32), .Y(n175) );
  INVX1 U143 ( .A(data_rx[2]), .Y(n32) );
  INVX1 U144 ( .A(data_rx[4]), .Y(n23) );
  INVX1 U145 ( .A(data_rx[3]), .Y(n162) );
  NAND2X1 U146 ( .A(n157), .B(n177), .Y(n39) );
  INVX1 U147 ( .A(hs_rcv), .Y(n177) );
  NAND3X1 U148 ( .A(n115), .B(n178), .C(n130), .Y(n173) );
  INVX1 U149 ( .A(n55), .Y(n130) );
  NOR2X1 U150 ( .A(n179), .B(n69), .Y(n55) );
  INVX1 U151 ( .A(n178), .Y(dbuff_clr) );
  OR2X1 U152 ( .A(n180), .B(rcving), .Y(count_up) );
  NAND3X1 U153 ( .A(n144), .B(n17), .C(n181), .Y(rcving) );
  NOR2X1 U154 ( .A(n182), .B(n183), .Y(n181) );
  NAND3X1 U155 ( .A(n17), .B(n184), .C(n185), .Y(n144) );
  NOR2X1 U156 ( .A(n183), .B(n180), .Y(n185) );
  NAND3X1 U157 ( .A(n186), .B(n178), .C(n113), .Y(n183) );
  INVX1 U158 ( .A(sd_rx_en_read), .Y(n113) );
  NOR2X1 U159 ( .A(n132), .B(n137), .Y(sd_rx_en_read) );
  NOR2X1 U160 ( .A(addr_dne), .B(n45), .Y(n178) );
  NOR2X1 U161 ( .A(n51), .B(n137), .Y(n45) );
  NAND3X1 U162 ( .A(curr_state[5]), .B(n93), .C(n187), .Y(n137) );
  NOR2X1 U163 ( .A(curr_state[4]), .B(curr_state[3]), .Y(n187) );
  NOR2X1 U164 ( .A(n51), .B(n179), .Y(addr_dne) );
  NAND2X1 U165 ( .A(n108), .B(n146), .Y(n17) );
  INVX1 U166 ( .A(n184), .Y(clear) );
  NOR2X1 U167 ( .A(n182), .B(n136), .Y(n184) );
  NAND3X1 U168 ( .A(n53), .B(n58), .C(n188), .Y(n182) );
  NOR2X1 U169 ( .A(n157), .B(n79), .Y(n188) );
  NOR2X1 U170 ( .A(n66), .B(n155), .Y(n79) );
  NOR2X1 U171 ( .A(n172), .B(n132), .Y(n157) );
  NAND2X1 U172 ( .A(n146), .B(n189), .Y(n58) );
  INVX1 U173 ( .A(n70), .Y(n146) );
  NAND3X1 U174 ( .A(curr_state[3]), .B(n190), .C(curr_state[4]), .Y(n70) );
  INVX1 U175 ( .A(n191), .Y(n53) );
  NAND3X1 U176 ( .A(n115), .B(n103), .C(n102), .Y(n191) );
  INVX1 U177 ( .A(fill_dbuff), .Y(n102) );
  NOR2X1 U178 ( .A(n151), .B(n132), .Y(fill_dbuff) );
  NAND3X1 U179 ( .A(curr_state[3]), .B(n192), .C(curr_state[4]), .Y(n151) );
  OR2X1 U180 ( .A(n179), .B(n66), .Y(n103) );
  INVX1 U181 ( .A(n36), .Y(n115) );
  NOR2X1 U182 ( .A(n133), .B(n69), .Y(n36) );
  NAND3X1 U183 ( .A(n192), .B(n59), .C(curr_state[4]), .Y(n133) );
  NOR2X1 U184 ( .A(n193), .B(n172), .Y(N507) );
  NOR2X1 U185 ( .A(n156), .B(n172), .Y(N506) );
  NOR2X1 U186 ( .A(n108), .B(n107), .Y(n156) );
  INVX1 U187 ( .A(n186), .Y(N505) );
  NOR2X1 U188 ( .A(N508), .B(n25), .Y(n186) );
  AOI21X1 U189 ( .A(n69), .B(n193), .C(n172), .Y(n25) );
  NAND3X1 U190 ( .A(n59), .B(n57), .C(n192), .Y(n172) );
  NOR2X1 U191 ( .A(n110), .B(n147), .Y(N508) );
  NOR2X1 U192 ( .A(n189), .B(n107), .Y(n147) );
  INVX1 U193 ( .A(n69), .Y(n107) );
  NAND2X1 U194 ( .A(curr_state[0]), .B(n116), .Y(n69) );
  INVX1 U195 ( .A(n132), .Y(n189) );
  NAND3X1 U196 ( .A(n190), .B(n57), .C(curr_state[3]), .Y(n110) );
  AND2X1 U197 ( .A(pckt_rcvd_temp[2]), .B(n180), .Y(N504) );
  AND2X1 U198 ( .A(pckt_rcvd_temp[1]), .B(n180), .Y(N503) );
  AND2X1 U199 ( .A(pckt_rcvd_temp[0]), .B(n180), .Y(N502) );
  OR2X1 U200 ( .A(n180), .B(n136), .Y(N501) );
  NOR2X1 U201 ( .A(n155), .B(n132), .Y(n136) );
  NAND3X1 U202 ( .A(n59), .B(n57), .C(n190), .Y(n155) );
  OAI22X1 U203 ( .A(n132), .B(n179), .C(n193), .D(n52), .Y(n180) );
  NAND3X1 U204 ( .A(n192), .B(n57), .C(curr_state[3]), .Y(n52) );
  INVX1 U205 ( .A(curr_state[4]), .Y(n57) );
  NOR2X1 U206 ( .A(n93), .B(curr_state[5]), .Y(n192) );
  INVX1 U207 ( .A(curr_state[2]), .Y(n93) );
  NOR2X1 U208 ( .A(n135), .B(n108), .Y(n193) );
  INVX1 U209 ( .A(n51), .Y(n108) );
  NAND2X1 U210 ( .A(curr_state[1]), .B(curr_state[0]), .Y(n51) );
  INVX1 U211 ( .A(n66), .Y(n135) );
  NAND2X1 U212 ( .A(curr_state[1]), .B(n7), .Y(n66) );
  NAND3X1 U213 ( .A(n190), .B(n59), .C(curr_state[4]), .Y(n179) );
  INVX1 U214 ( .A(curr_state[3]), .Y(n59) );
  NOR2X1 U215 ( .A(curr_state[5]), .B(curr_state[2]), .Y(n190) );
  NAND2X1 U216 ( .A(n116), .B(n7), .Y(n132) );
  INVX1 U217 ( .A(curr_state[0]), .Y(n7) );
  INVX1 U218 ( .A(curr_state[1]), .Y(n116) );
endmodule


module USB_rx ( clk, n_rst, d_plus, d_minus, read_done, rx_en, hs_rcv, 
        crc_status, fifo_empty, fifo_full, ack_packet_rcv, rcving, send_nack, 
        rcvd_exp_hs, sd_rx_en_read, addr_dne, dbuff_clr, fill_dbuff, data, 
        pckt_rcvd );
  output [7:0] data;
  output [2:0] pckt_rcvd;
  input clk, n_rst, d_plus, d_minus, read_done, rx_en, hs_rcv, crc_status,
         fifo_empty, fifo_full, ack_packet_rcv;
  output rcving, send_nack, rcvd_exp_hs, sd_rx_en_read, addr_dne, dbuff_clr,
         fill_dbuff;
  wire   bit_rcvd, pause, d_orig, eop, cnt_up, clear, byte_rcvd;

  serial_2_parallel STP ( .clk(clk), .n_rst(n_rst), .shift_enable(bit_rcvd), 
        .pause(pause), .serial_in(d_orig), .parallel_out(data) );
  nrzi_decode DEC ( .clk(clk), .n_rst(n_rst), .d_plus(d_plus), .d_minus(
        d_minus), .bit_rcvd(bit_rcvd), .d_orig(d_orig), .eop(eop) );
  bit_destuff BIT_DE ( .clk(clk), .n_rst(n_rst), .bit_rcvd(bit_rcvd), .d_orig(
        d_orig), .pause(pause) );
  counter CNT ( .clk(clk), .n_rst(n_rst), .cnt_up(cnt_up), .clear(clear), 
        .pause(pause), .d_plus(d_plus), .byte_rcvd(byte_rcvd), .bit_rcvd(
        bit_rcvd) );
  usb_rcv_controller RCU ( .clk(clk), .n_rst(n_rst), .rx_en(rx_en), .eop(eop), 
        .byte_rcvd(byte_rcvd), .crc_status_5(crc_status), .crc_status_16(
        crc_status), .hs_rcv(hs_rcv), .fifo_empty(fifo_empty), .fifo_full(
        fifo_full), .read_done(read_done), .ack_packet_rcv(ack_packet_rcv), 
        .data_rx(data), .rcving(rcving), .count_up(cnt_up), .dbuff_clr(
        dbuff_clr), .rcvd_exp_hs(rcvd_exp_hs), .send_nack(send_nack), 
        .addr_dne(addr_dne), .fill_dbuff(fill_dbuff), .sd_rx_en_read(
        sd_rx_en_read), .clear(clear), .pckt_rcvd(pckt_rcvd) );
endmodule


module fiforam_0 ( wclk, wenable, waddr, raddr, wdata, rdata );
  input [2:0] waddr;
  input [2:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wenable;
  wire   N10, N11, N12, N13, N14, N15, \fiforeg[0][7] , \fiforeg[0][6] ,
         \fiforeg[0][5] , \fiforeg[0][4] , \fiforeg[0][3] , \fiforeg[0][2] ,
         \fiforeg[0][1] , \fiforeg[0][0] , \fiforeg[1][7] , \fiforeg[1][6] ,
         \fiforeg[1][5] , \fiforeg[1][4] , \fiforeg[1][3] , \fiforeg[1][2] ,
         \fiforeg[1][1] , \fiforeg[1][0] , \fiforeg[2][7] , \fiforeg[2][6] ,
         \fiforeg[2][5] , \fiforeg[2][4] , \fiforeg[2][3] , \fiforeg[2][2] ,
         \fiforeg[2][1] , \fiforeg[2][0] , \fiforeg[3][7] , \fiforeg[3][6] ,
         \fiforeg[3][5] , \fiforeg[3][4] , \fiforeg[3][3] , \fiforeg[3][2] ,
         \fiforeg[3][1] , \fiforeg[3][0] , \fiforeg[4][7] , \fiforeg[4][6] ,
         \fiforeg[4][5] , \fiforeg[4][4] , \fiforeg[4][3] , \fiforeg[4][2] ,
         \fiforeg[4][1] , \fiforeg[4][0] , \fiforeg[5][7] , \fiforeg[5][6] ,
         \fiforeg[5][5] , \fiforeg[5][4] , \fiforeg[5][3] , \fiforeg[5][2] ,
         \fiforeg[5][1] , \fiforeg[5][0] , \fiforeg[6][7] , \fiforeg[6][6] ,
         \fiforeg[6][5] , \fiforeg[6][4] , \fiforeg[6][3] , \fiforeg[6][2] ,
         \fiforeg[6][1] , \fiforeg[6][0] , \fiforeg[7][7] , \fiforeg[7][6] ,
         \fiforeg[7][5] , \fiforeg[7][4] , \fiforeg[7][3] , \fiforeg[7][2] ,
         \fiforeg[7][1] , \fiforeg[7][0] , N17, N18, N19, N20, N21, N22, N23,
         N24, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326;
  assign N10 = raddr[0];
  assign N11 = raddr[1];
  assign N12 = raddr[2];
  assign N13 = waddr[0];
  assign N14 = waddr[1];
  assign N15 = waddr[2];

  DFFPOSX1 \fiforeg_reg[0][7]  ( .D(n263), .CLK(wclk), .Q(\fiforeg[0][7] ) );
  DFFPOSX1 \fiforeg_reg[0][6]  ( .D(n264), .CLK(wclk), .Q(\fiforeg[0][6] ) );
  DFFPOSX1 \fiforeg_reg[0][5]  ( .D(n265), .CLK(wclk), .Q(\fiforeg[0][5] ) );
  DFFPOSX1 \fiforeg_reg[0][4]  ( .D(n266), .CLK(wclk), .Q(\fiforeg[0][4] ) );
  DFFPOSX1 \fiforeg_reg[0][3]  ( .D(n267), .CLK(wclk), .Q(\fiforeg[0][3] ) );
  DFFPOSX1 \fiforeg_reg[0][2]  ( .D(n268), .CLK(wclk), .Q(\fiforeg[0][2] ) );
  DFFPOSX1 \fiforeg_reg[0][1]  ( .D(n269), .CLK(wclk), .Q(\fiforeg[0][1] ) );
  DFFPOSX1 \fiforeg_reg[0][0]  ( .D(n270), .CLK(wclk), .Q(\fiforeg[0][0] ) );
  DFFPOSX1 \fiforeg_reg[1][7]  ( .D(n271), .CLK(wclk), .Q(\fiforeg[1][7] ) );
  DFFPOSX1 \fiforeg_reg[1][6]  ( .D(n272), .CLK(wclk), .Q(\fiforeg[1][6] ) );
  DFFPOSX1 \fiforeg_reg[1][5]  ( .D(n273), .CLK(wclk), .Q(\fiforeg[1][5] ) );
  DFFPOSX1 \fiforeg_reg[1][4]  ( .D(n274), .CLK(wclk), .Q(\fiforeg[1][4] ) );
  DFFPOSX1 \fiforeg_reg[1][3]  ( .D(n275), .CLK(wclk), .Q(\fiforeg[1][3] ) );
  DFFPOSX1 \fiforeg_reg[1][2]  ( .D(n276), .CLK(wclk), .Q(\fiforeg[1][2] ) );
  DFFPOSX1 \fiforeg_reg[1][1]  ( .D(n277), .CLK(wclk), .Q(\fiforeg[1][1] ) );
  DFFPOSX1 \fiforeg_reg[1][0]  ( .D(n278), .CLK(wclk), .Q(\fiforeg[1][0] ) );
  DFFPOSX1 \fiforeg_reg[2][7]  ( .D(n279), .CLK(wclk), .Q(\fiforeg[2][7] ) );
  DFFPOSX1 \fiforeg_reg[2][6]  ( .D(n280), .CLK(wclk), .Q(\fiforeg[2][6] ) );
  DFFPOSX1 \fiforeg_reg[2][5]  ( .D(n281), .CLK(wclk), .Q(\fiforeg[2][5] ) );
  DFFPOSX1 \fiforeg_reg[2][4]  ( .D(n282), .CLK(wclk), .Q(\fiforeg[2][4] ) );
  DFFPOSX1 \fiforeg_reg[2][3]  ( .D(n283), .CLK(wclk), .Q(\fiforeg[2][3] ) );
  DFFPOSX1 \fiforeg_reg[2][2]  ( .D(n284), .CLK(wclk), .Q(\fiforeg[2][2] ) );
  DFFPOSX1 \fiforeg_reg[2][1]  ( .D(n285), .CLK(wclk), .Q(\fiforeg[2][1] ) );
  DFFPOSX1 \fiforeg_reg[2][0]  ( .D(n286), .CLK(wclk), .Q(\fiforeg[2][0] ) );
  DFFPOSX1 \fiforeg_reg[3][7]  ( .D(n287), .CLK(wclk), .Q(\fiforeg[3][7] ) );
  DFFPOSX1 \fiforeg_reg[3][6]  ( .D(n288), .CLK(wclk), .Q(\fiforeg[3][6] ) );
  DFFPOSX1 \fiforeg_reg[3][5]  ( .D(n289), .CLK(wclk), .Q(\fiforeg[3][5] ) );
  DFFPOSX1 \fiforeg_reg[3][4]  ( .D(n290), .CLK(wclk), .Q(\fiforeg[3][4] ) );
  DFFPOSX1 \fiforeg_reg[3][3]  ( .D(n291), .CLK(wclk), .Q(\fiforeg[3][3] ) );
  DFFPOSX1 \fiforeg_reg[3][2]  ( .D(n292), .CLK(wclk), .Q(\fiforeg[3][2] ) );
  DFFPOSX1 \fiforeg_reg[3][1]  ( .D(n293), .CLK(wclk), .Q(\fiforeg[3][1] ) );
  DFFPOSX1 \fiforeg_reg[3][0]  ( .D(n294), .CLK(wclk), .Q(\fiforeg[3][0] ) );
  DFFPOSX1 \fiforeg_reg[4][7]  ( .D(n295), .CLK(wclk), .Q(\fiforeg[4][7] ) );
  DFFPOSX1 \fiforeg_reg[4][6]  ( .D(n296), .CLK(wclk), .Q(\fiforeg[4][6] ) );
  DFFPOSX1 \fiforeg_reg[4][5]  ( .D(n297), .CLK(wclk), .Q(\fiforeg[4][5] ) );
  DFFPOSX1 \fiforeg_reg[4][4]  ( .D(n298), .CLK(wclk), .Q(\fiforeg[4][4] ) );
  DFFPOSX1 \fiforeg_reg[4][3]  ( .D(n299), .CLK(wclk), .Q(\fiforeg[4][3] ) );
  DFFPOSX1 \fiforeg_reg[4][2]  ( .D(n300), .CLK(wclk), .Q(\fiforeg[4][2] ) );
  DFFPOSX1 \fiforeg_reg[4][1]  ( .D(n301), .CLK(wclk), .Q(\fiforeg[4][1] ) );
  DFFPOSX1 \fiforeg_reg[4][0]  ( .D(n302), .CLK(wclk), .Q(\fiforeg[4][0] ) );
  DFFPOSX1 \fiforeg_reg[5][7]  ( .D(n303), .CLK(wclk), .Q(\fiforeg[5][7] ) );
  DFFPOSX1 \fiforeg_reg[5][6]  ( .D(n304), .CLK(wclk), .Q(\fiforeg[5][6] ) );
  DFFPOSX1 \fiforeg_reg[5][5]  ( .D(n305), .CLK(wclk), .Q(\fiforeg[5][5] ) );
  DFFPOSX1 \fiforeg_reg[5][4]  ( .D(n306), .CLK(wclk), .Q(\fiforeg[5][4] ) );
  DFFPOSX1 \fiforeg_reg[5][3]  ( .D(n307), .CLK(wclk), .Q(\fiforeg[5][3] ) );
  DFFPOSX1 \fiforeg_reg[5][2]  ( .D(n308), .CLK(wclk), .Q(\fiforeg[5][2] ) );
  DFFPOSX1 \fiforeg_reg[5][1]  ( .D(n309), .CLK(wclk), .Q(\fiforeg[5][1] ) );
  DFFPOSX1 \fiforeg_reg[5][0]  ( .D(n310), .CLK(wclk), .Q(\fiforeg[5][0] ) );
  DFFPOSX1 \fiforeg_reg[6][7]  ( .D(n311), .CLK(wclk), .Q(\fiforeg[6][7] ) );
  DFFPOSX1 \fiforeg_reg[6][6]  ( .D(n312), .CLK(wclk), .Q(\fiforeg[6][6] ) );
  DFFPOSX1 \fiforeg_reg[6][5]  ( .D(n313), .CLK(wclk), .Q(\fiforeg[6][5] ) );
  DFFPOSX1 \fiforeg_reg[6][4]  ( .D(n314), .CLK(wclk), .Q(\fiforeg[6][4] ) );
  DFFPOSX1 \fiforeg_reg[6][3]  ( .D(n315), .CLK(wclk), .Q(\fiforeg[6][3] ) );
  DFFPOSX1 \fiforeg_reg[6][2]  ( .D(n316), .CLK(wclk), .Q(\fiforeg[6][2] ) );
  DFFPOSX1 \fiforeg_reg[6][1]  ( .D(n317), .CLK(wclk), .Q(\fiforeg[6][1] ) );
  DFFPOSX1 \fiforeg_reg[6][0]  ( .D(n318), .CLK(wclk), .Q(\fiforeg[6][0] ) );
  DFFPOSX1 \fiforeg_reg[7][7]  ( .D(n319), .CLK(wclk), .Q(\fiforeg[7][7] ) );
  DFFPOSX1 \fiforeg_reg[7][6]  ( .D(n320), .CLK(wclk), .Q(\fiforeg[7][6] ) );
  DFFPOSX1 \fiforeg_reg[7][5]  ( .D(n321), .CLK(wclk), .Q(\fiforeg[7][5] ) );
  DFFPOSX1 \fiforeg_reg[7][4]  ( .D(n322), .CLK(wclk), .Q(\fiforeg[7][4] ) );
  DFFPOSX1 \fiforeg_reg[7][3]  ( .D(n323), .CLK(wclk), .Q(\fiforeg[7][3] ) );
  DFFPOSX1 \fiforeg_reg[7][2]  ( .D(n324), .CLK(wclk), .Q(\fiforeg[7][2] ) );
  DFFPOSX1 \fiforeg_reg[7][1]  ( .D(n325), .CLK(wclk), .Q(\fiforeg[7][1] ) );
  DFFPOSX1 \fiforeg_reg[7][0]  ( .D(n326), .CLK(wclk), .Q(\fiforeg[7][0] ) );
  BUFX2 U2 ( .A(n56), .Y(n1) );
  BUFX2 U3 ( .A(n175), .Y(n2) );
  BUFX2 U4 ( .A(n53), .Y(n3) );
  BUFX2 U5 ( .A(n172), .Y(n4) );
  BUFX2 U6 ( .A(n54), .Y(n5) );
  BUFX2 U7 ( .A(n173), .Y(n6) );
  BUFX2 U8 ( .A(n55), .Y(n7) );
  BUFX2 U9 ( .A(n174), .Y(n8) );
  NOR2X1 U10 ( .A(n63), .B(N11), .Y(n54) );
  NOR2X1 U11 ( .A(n63), .B(n62), .Y(n53) );
  AOI22X1 U12 ( .A(\fiforeg[4][0] ), .B(n5), .C(\fiforeg[6][0] ), .D(n3), .Y(
        n10) );
  NOR2X1 U13 ( .A(N11), .B(N12), .Y(n56) );
  NOR2X1 U14 ( .A(n62), .B(N12), .Y(n55) );
  AOI22X1 U15 ( .A(\fiforeg[0][0] ), .B(n1), .C(\fiforeg[2][0] ), .D(n7), .Y(
        n9) );
  AOI21X1 U16 ( .A(n10), .B(n9), .C(N10), .Y(n14) );
  AOI22X1 U17 ( .A(\fiforeg[5][0] ), .B(n5), .C(\fiforeg[7][0] ), .D(n3), .Y(
        n12) );
  AOI22X1 U18 ( .A(\fiforeg[1][0] ), .B(n1), .C(\fiforeg[3][0] ), .D(n7), .Y(
        n11) );
  AOI21X1 U19 ( .A(n12), .B(n11), .C(n61), .Y(n13) );
  OR2X1 U20 ( .A(n14), .B(n13), .Y(rdata[0]) );
  AOI22X1 U21 ( .A(\fiforeg[4][1] ), .B(n5), .C(\fiforeg[6][1] ), .D(n3), .Y(
        n16) );
  AOI22X1 U22 ( .A(\fiforeg[0][1] ), .B(n1), .C(\fiforeg[2][1] ), .D(n7), .Y(
        n15) );
  AOI21X1 U23 ( .A(n16), .B(n15), .C(N10), .Y(n20) );
  AOI22X1 U24 ( .A(\fiforeg[5][1] ), .B(n5), .C(\fiforeg[7][1] ), .D(n3), .Y(
        n18) );
  AOI22X1 U25 ( .A(\fiforeg[1][1] ), .B(n1), .C(\fiforeg[3][1] ), .D(n7), .Y(
        n17) );
  AOI21X1 U26 ( .A(n18), .B(n17), .C(n61), .Y(n19) );
  OR2X1 U27 ( .A(n20), .B(n19), .Y(rdata[1]) );
  AOI22X1 U28 ( .A(\fiforeg[4][2] ), .B(n5), .C(\fiforeg[6][2] ), .D(n3), .Y(
        n22) );
  AOI22X1 U29 ( .A(\fiforeg[0][2] ), .B(n1), .C(\fiforeg[2][2] ), .D(n7), .Y(
        n21) );
  AOI21X1 U30 ( .A(n22), .B(n21), .C(N10), .Y(n26) );
  AOI22X1 U31 ( .A(\fiforeg[5][2] ), .B(n5), .C(\fiforeg[7][2] ), .D(n3), .Y(
        n24) );
  AOI22X1 U32 ( .A(\fiforeg[1][2] ), .B(n1), .C(\fiforeg[3][2] ), .D(n7), .Y(
        n23) );
  AOI21X1 U33 ( .A(n24), .B(n23), .C(n61), .Y(n25) );
  OR2X1 U34 ( .A(n26), .B(n25), .Y(rdata[2]) );
  AOI22X1 U35 ( .A(\fiforeg[4][3] ), .B(n5), .C(\fiforeg[6][3] ), .D(n3), .Y(
        n28) );
  AOI22X1 U36 ( .A(\fiforeg[0][3] ), .B(n1), .C(\fiforeg[2][3] ), .D(n7), .Y(
        n27) );
  AOI21X1 U37 ( .A(n28), .B(n27), .C(N10), .Y(n32) );
  AOI22X1 U38 ( .A(\fiforeg[5][3] ), .B(n5), .C(\fiforeg[7][3] ), .D(n3), .Y(
        n30) );
  AOI22X1 U39 ( .A(\fiforeg[1][3] ), .B(n1), .C(\fiforeg[3][3] ), .D(n7), .Y(
        n29) );
  AOI21X1 U40 ( .A(n30), .B(n29), .C(n61), .Y(n31) );
  OR2X1 U41 ( .A(n32), .B(n31), .Y(rdata[3]) );
  AOI22X1 U42 ( .A(\fiforeg[4][4] ), .B(n5), .C(\fiforeg[6][4] ), .D(n3), .Y(
        n34) );
  AOI22X1 U43 ( .A(\fiforeg[0][4] ), .B(n1), .C(\fiforeg[2][4] ), .D(n7), .Y(
        n33) );
  AOI21X1 U44 ( .A(n34), .B(n33), .C(N10), .Y(n38) );
  AOI22X1 U45 ( .A(\fiforeg[5][4] ), .B(n5), .C(\fiforeg[7][4] ), .D(n3), .Y(
        n36) );
  AOI22X1 U46 ( .A(\fiforeg[1][4] ), .B(n1), .C(\fiforeg[3][4] ), .D(n7), .Y(
        n35) );
  AOI21X1 U47 ( .A(n36), .B(n35), .C(n61), .Y(n37) );
  OR2X1 U48 ( .A(n38), .B(n37), .Y(rdata[4]) );
  AOI22X1 U49 ( .A(\fiforeg[4][5] ), .B(n5), .C(\fiforeg[6][5] ), .D(n3), .Y(
        n40) );
  AOI22X1 U50 ( .A(\fiforeg[0][5] ), .B(n1), .C(\fiforeg[2][5] ), .D(n7), .Y(
        n39) );
  AOI21X1 U51 ( .A(n40), .B(n39), .C(N10), .Y(n44) );
  AOI22X1 U52 ( .A(\fiforeg[5][5] ), .B(n5), .C(\fiforeg[7][5] ), .D(n3), .Y(
        n42) );
  AOI22X1 U53 ( .A(\fiforeg[1][5] ), .B(n1), .C(\fiforeg[3][5] ), .D(n7), .Y(
        n41) );
  AOI21X1 U54 ( .A(n42), .B(n41), .C(n61), .Y(n43) );
  OR2X1 U55 ( .A(n44), .B(n43), .Y(rdata[5]) );
  AOI22X1 U56 ( .A(\fiforeg[4][6] ), .B(n5), .C(\fiforeg[6][6] ), .D(n3), .Y(
        n46) );
  AOI22X1 U57 ( .A(\fiforeg[0][6] ), .B(n1), .C(\fiforeg[2][6] ), .D(n7), .Y(
        n45) );
  AOI21X1 U58 ( .A(n46), .B(n45), .C(N10), .Y(n50) );
  AOI22X1 U59 ( .A(\fiforeg[5][6] ), .B(n5), .C(\fiforeg[7][6] ), .D(n3), .Y(
        n48) );
  AOI22X1 U60 ( .A(\fiforeg[1][6] ), .B(n1), .C(\fiforeg[3][6] ), .D(n7), .Y(
        n47) );
  AOI21X1 U61 ( .A(n48), .B(n47), .C(n61), .Y(n49) );
  OR2X1 U62 ( .A(n50), .B(n49), .Y(rdata[6]) );
  AOI22X1 U63 ( .A(\fiforeg[4][7] ), .B(n5), .C(\fiforeg[6][7] ), .D(n3), .Y(
        n52) );
  AOI22X1 U64 ( .A(\fiforeg[0][7] ), .B(n1), .C(\fiforeg[2][7] ), .D(n7), .Y(
        n51) );
  AOI21X1 U65 ( .A(n52), .B(n51), .C(N10), .Y(n60) );
  AOI22X1 U66 ( .A(\fiforeg[5][7] ), .B(n5), .C(\fiforeg[7][7] ), .D(n3), .Y(
        n58) );
  AOI22X1 U67 ( .A(\fiforeg[1][7] ), .B(n1), .C(\fiforeg[3][7] ), .D(n7), .Y(
        n57) );
  AOI21X1 U68 ( .A(n58), .B(n57), .C(n61), .Y(n59) );
  OR2X1 U69 ( .A(n60), .B(n59), .Y(rdata[7]) );
  INVX2 U70 ( .A(N10), .Y(n61) );
  INVX2 U71 ( .A(N11), .Y(n62) );
  INVX2 U72 ( .A(N12), .Y(n63) );
  NOR2X1 U73 ( .A(n211), .B(N14), .Y(n173) );
  NOR2X1 U74 ( .A(n211), .B(n180), .Y(n172) );
  AOI22X1 U75 ( .A(\fiforeg[4][0] ), .B(n6), .C(\fiforeg[6][0] ), .D(n4), .Y(
        n65) );
  NOR2X1 U76 ( .A(N14), .B(N15), .Y(n175) );
  NOR2X1 U77 ( .A(n180), .B(N15), .Y(n174) );
  AOI22X1 U78 ( .A(\fiforeg[0][0] ), .B(n2), .C(\fiforeg[2][0] ), .D(n8), .Y(
        n64) );
  AOI21X1 U79 ( .A(n65), .B(n64), .C(N13), .Y(n69) );
  AOI22X1 U80 ( .A(\fiforeg[5][0] ), .B(n6), .C(\fiforeg[7][0] ), .D(n4), .Y(
        n67) );
  AOI22X1 U81 ( .A(\fiforeg[1][0] ), .B(n2), .C(\fiforeg[3][0] ), .D(n8), .Y(
        n66) );
  AOI21X1 U82 ( .A(n67), .B(n66), .C(n212), .Y(n68) );
  OR2X1 U83 ( .A(n69), .B(n68), .Y(N24) );
  AOI22X1 U84 ( .A(\fiforeg[4][1] ), .B(n6), .C(\fiforeg[6][1] ), .D(n4), .Y(
        n71) );
  AOI22X1 U85 ( .A(\fiforeg[0][1] ), .B(n2), .C(\fiforeg[2][1] ), .D(n8), .Y(
        n70) );
  AOI21X1 U86 ( .A(n71), .B(n70), .C(N13), .Y(n75) );
  AOI22X1 U87 ( .A(\fiforeg[5][1] ), .B(n6), .C(\fiforeg[7][1] ), .D(n4), .Y(
        n73) );
  AOI22X1 U88 ( .A(\fiforeg[1][1] ), .B(n2), .C(\fiforeg[3][1] ), .D(n8), .Y(
        n72) );
  AOI21X1 U89 ( .A(n73), .B(n72), .C(n212), .Y(n74) );
  OR2X1 U90 ( .A(n75), .B(n74), .Y(N23) );
  AOI22X1 U91 ( .A(\fiforeg[4][2] ), .B(n6), .C(\fiforeg[6][2] ), .D(n4), .Y(
        n77) );
  AOI22X1 U92 ( .A(\fiforeg[0][2] ), .B(n2), .C(\fiforeg[2][2] ), .D(n8), .Y(
        n76) );
  AOI21X1 U93 ( .A(n77), .B(n76), .C(N13), .Y(n81) );
  AOI22X1 U94 ( .A(\fiforeg[5][2] ), .B(n6), .C(\fiforeg[7][2] ), .D(n4), .Y(
        n79) );
  AOI22X1 U95 ( .A(\fiforeg[1][2] ), .B(n2), .C(\fiforeg[3][2] ), .D(n8), .Y(
        n78) );
  AOI21X1 U96 ( .A(n79), .B(n78), .C(n212), .Y(n80) );
  OR2X1 U97 ( .A(n81), .B(n80), .Y(N22) );
  AOI22X1 U98 ( .A(\fiforeg[4][3] ), .B(n6), .C(\fiforeg[6][3] ), .D(n4), .Y(
        n83) );
  AOI22X1 U99 ( .A(\fiforeg[0][3] ), .B(n2), .C(\fiforeg[2][3] ), .D(n8), .Y(
        n82) );
  AOI21X1 U100 ( .A(n83), .B(n82), .C(N13), .Y(n87) );
  AOI22X1 U101 ( .A(\fiforeg[5][3] ), .B(n6), .C(\fiforeg[7][3] ), .D(n4), .Y(
        n85) );
  AOI22X1 U102 ( .A(\fiforeg[1][3] ), .B(n2), .C(\fiforeg[3][3] ), .D(n8), .Y(
        n84) );
  AOI21X1 U103 ( .A(n85), .B(n84), .C(n212), .Y(n86) );
  OR2X1 U104 ( .A(n87), .B(n86), .Y(N21) );
  AOI22X1 U105 ( .A(\fiforeg[4][4] ), .B(n6), .C(\fiforeg[6][4] ), .D(n4), .Y(
        n153) );
  AOI22X1 U106 ( .A(\fiforeg[0][4] ), .B(n2), .C(\fiforeg[2][4] ), .D(n8), .Y(
        n88) );
  AOI21X1 U107 ( .A(n153), .B(n88), .C(N13), .Y(n157) );
  AOI22X1 U108 ( .A(\fiforeg[5][4] ), .B(n6), .C(\fiforeg[7][4] ), .D(n4), .Y(
        n155) );
  AOI22X1 U109 ( .A(\fiforeg[1][4] ), .B(n2), .C(\fiforeg[3][4] ), .D(n8), .Y(
        n154) );
  AOI21X1 U110 ( .A(n155), .B(n154), .C(n212), .Y(n156) );
  OR2X1 U111 ( .A(n157), .B(n156), .Y(N20) );
  AOI22X1 U112 ( .A(\fiforeg[4][5] ), .B(n6), .C(\fiforeg[6][5] ), .D(n4), .Y(
        n159) );
  AOI22X1 U113 ( .A(\fiforeg[0][5] ), .B(n2), .C(\fiforeg[2][5] ), .D(n8), .Y(
        n158) );
  AOI21X1 U114 ( .A(n159), .B(n158), .C(N13), .Y(n163) );
  AOI22X1 U115 ( .A(\fiforeg[5][5] ), .B(n6), .C(\fiforeg[7][5] ), .D(n4), .Y(
        n161) );
  AOI22X1 U116 ( .A(\fiforeg[1][5] ), .B(n2), .C(\fiforeg[3][5] ), .D(n8), .Y(
        n160) );
  AOI21X1 U117 ( .A(n161), .B(n160), .C(n212), .Y(n162) );
  OR2X1 U118 ( .A(n163), .B(n162), .Y(N19) );
  AOI22X1 U119 ( .A(\fiforeg[4][6] ), .B(n6), .C(\fiforeg[6][6] ), .D(n4), .Y(
        n165) );
  AOI22X1 U120 ( .A(\fiforeg[0][6] ), .B(n2), .C(\fiforeg[2][6] ), .D(n8), .Y(
        n164) );
  AOI21X1 U121 ( .A(n165), .B(n164), .C(N13), .Y(n169) );
  AOI22X1 U122 ( .A(\fiforeg[5][6] ), .B(n6), .C(\fiforeg[7][6] ), .D(n4), .Y(
        n167) );
  AOI22X1 U123 ( .A(\fiforeg[1][6] ), .B(n2), .C(\fiforeg[3][6] ), .D(n8), .Y(
        n166) );
  AOI21X1 U124 ( .A(n167), .B(n166), .C(n212), .Y(n168) );
  OR2X1 U125 ( .A(n169), .B(n168), .Y(N18) );
  AOI22X1 U126 ( .A(\fiforeg[4][7] ), .B(n6), .C(\fiforeg[6][7] ), .D(n4), .Y(
        n171) );
  AOI22X1 U127 ( .A(\fiforeg[0][7] ), .B(n2), .C(\fiforeg[2][7] ), .D(n8), .Y(
        n170) );
  AOI21X1 U128 ( .A(n171), .B(n170), .C(N13), .Y(n179) );
  AOI22X1 U129 ( .A(\fiforeg[5][7] ), .B(n6), .C(\fiforeg[7][7] ), .D(n4), .Y(
        n177) );
  AOI22X1 U130 ( .A(\fiforeg[1][7] ), .B(n2), .C(\fiforeg[3][7] ), .D(n8), .Y(
        n176) );
  AOI21X1 U131 ( .A(n177), .B(n176), .C(n212), .Y(n178) );
  OR2X1 U132 ( .A(n179), .B(n178), .Y(N17) );
  INVX2 U133 ( .A(N14), .Y(n180) );
  MUX2X1 U134 ( .B(n181), .A(n182), .S(n183), .Y(n316) );
  INVX1 U135 ( .A(\fiforeg[6][2] ), .Y(n182) );
  MUX2X1 U136 ( .B(n184), .A(n185), .S(n183), .Y(n317) );
  INVX1 U137 ( .A(\fiforeg[6][1] ), .Y(n185) );
  MUX2X1 U138 ( .B(n186), .A(n187), .S(n183), .Y(n318) );
  INVX1 U139 ( .A(\fiforeg[6][0] ), .Y(n187) );
  MUX2X1 U140 ( .B(n188), .A(n189), .S(n190), .Y(n319) );
  INVX1 U141 ( .A(\fiforeg[7][7] ), .Y(n189) );
  MUX2X1 U142 ( .B(n191), .A(n192), .S(n190), .Y(n320) );
  INVX1 U143 ( .A(\fiforeg[7][6] ), .Y(n192) );
  MUX2X1 U144 ( .B(n193), .A(n194), .S(n190), .Y(n321) );
  INVX1 U145 ( .A(\fiforeg[7][5] ), .Y(n194) );
  MUX2X1 U146 ( .B(n195), .A(n196), .S(n190), .Y(n322) );
  INVX1 U147 ( .A(\fiforeg[7][4] ), .Y(n196) );
  MUX2X1 U148 ( .B(n197), .A(n198), .S(n190), .Y(n323) );
  INVX1 U149 ( .A(\fiforeg[7][3] ), .Y(n198) );
  MUX2X1 U150 ( .B(n181), .A(n199), .S(n190), .Y(n324) );
  INVX1 U151 ( .A(\fiforeg[7][2] ), .Y(n199) );
  MUX2X1 U152 ( .B(n184), .A(n200), .S(n190), .Y(n325) );
  INVX1 U153 ( .A(\fiforeg[7][1] ), .Y(n200) );
  MUX2X1 U154 ( .B(n186), .A(n201), .S(n190), .Y(n326) );
  NAND3X1 U155 ( .A(N15), .B(N14), .C(N13), .Y(n190) );
  INVX1 U156 ( .A(\fiforeg[7][0] ), .Y(n201) );
  MUX2X1 U157 ( .B(n188), .A(n202), .S(n203), .Y(n263) );
  INVX1 U158 ( .A(\fiforeg[0][7] ), .Y(n202) );
  MUX2X1 U159 ( .B(n191), .A(n204), .S(n203), .Y(n264) );
  INVX1 U160 ( .A(\fiforeg[0][6] ), .Y(n204) );
  MUX2X1 U161 ( .B(n193), .A(n205), .S(n203), .Y(n265) );
  INVX1 U162 ( .A(\fiforeg[0][5] ), .Y(n205) );
  MUX2X1 U163 ( .B(n195), .A(n206), .S(n203), .Y(n266) );
  INVX1 U164 ( .A(\fiforeg[0][4] ), .Y(n206) );
  MUX2X1 U165 ( .B(n197), .A(n207), .S(n203), .Y(n267) );
  INVX1 U166 ( .A(\fiforeg[0][3] ), .Y(n207) );
  MUX2X1 U167 ( .B(n181), .A(n208), .S(n203), .Y(n268) );
  INVX1 U168 ( .A(\fiforeg[0][2] ), .Y(n208) );
  MUX2X1 U169 ( .B(n184), .A(n209), .S(n203), .Y(n269) );
  INVX1 U170 ( .A(\fiforeg[0][1] ), .Y(n209) );
  MUX2X1 U171 ( .B(n186), .A(n210), .S(n203), .Y(n270) );
  NAND3X1 U172 ( .A(n180), .B(n211), .C(n212), .Y(n203) );
  INVX1 U173 ( .A(\fiforeg[0][0] ), .Y(n210) );
  MUX2X1 U174 ( .B(n188), .A(n213), .S(n214), .Y(n271) );
  INVX1 U175 ( .A(\fiforeg[1][7] ), .Y(n213) );
  MUX2X1 U176 ( .B(n191), .A(n215), .S(n214), .Y(n272) );
  INVX1 U177 ( .A(\fiforeg[1][6] ), .Y(n215) );
  MUX2X1 U178 ( .B(n193), .A(n216), .S(n214), .Y(n273) );
  INVX1 U179 ( .A(\fiforeg[1][5] ), .Y(n216) );
  MUX2X1 U180 ( .B(n195), .A(n217), .S(n214), .Y(n274) );
  INVX1 U181 ( .A(\fiforeg[1][4] ), .Y(n217) );
  MUX2X1 U182 ( .B(n197), .A(n218), .S(n214), .Y(n275) );
  INVX1 U183 ( .A(\fiforeg[1][3] ), .Y(n218) );
  MUX2X1 U184 ( .B(n181), .A(n219), .S(n214), .Y(n276) );
  INVX1 U185 ( .A(\fiforeg[1][2] ), .Y(n219) );
  MUX2X1 U186 ( .B(n184), .A(n220), .S(n214), .Y(n277) );
  INVX1 U187 ( .A(\fiforeg[1][1] ), .Y(n220) );
  MUX2X1 U188 ( .B(n186), .A(n221), .S(n214), .Y(n278) );
  NAND3X1 U189 ( .A(n180), .B(n211), .C(N13), .Y(n214) );
  INVX1 U190 ( .A(\fiforeg[1][0] ), .Y(n221) );
  MUX2X1 U191 ( .B(n188), .A(n222), .S(n223), .Y(n279) );
  INVX1 U192 ( .A(\fiforeg[2][7] ), .Y(n222) );
  MUX2X1 U193 ( .B(n191), .A(n224), .S(n223), .Y(n280) );
  INVX1 U194 ( .A(\fiforeg[2][6] ), .Y(n224) );
  MUX2X1 U195 ( .B(n193), .A(n225), .S(n223), .Y(n281) );
  INVX1 U196 ( .A(\fiforeg[2][5] ), .Y(n225) );
  MUX2X1 U197 ( .B(n195), .A(n226), .S(n223), .Y(n282) );
  INVX1 U198 ( .A(\fiforeg[2][4] ), .Y(n226) );
  MUX2X1 U199 ( .B(n197), .A(n227), .S(n223), .Y(n283) );
  INVX1 U200 ( .A(\fiforeg[2][3] ), .Y(n227) );
  MUX2X1 U201 ( .B(n181), .A(n228), .S(n223), .Y(n284) );
  INVX1 U202 ( .A(\fiforeg[2][2] ), .Y(n228) );
  MUX2X1 U203 ( .B(n184), .A(n229), .S(n223), .Y(n285) );
  INVX1 U204 ( .A(\fiforeg[2][1] ), .Y(n229) );
  MUX2X1 U205 ( .B(n186), .A(n230), .S(n223), .Y(n286) );
  NAND3X1 U206 ( .A(n212), .B(n211), .C(N14), .Y(n223) );
  INVX1 U207 ( .A(\fiforeg[2][0] ), .Y(n230) );
  MUX2X1 U208 ( .B(n188), .A(n231), .S(n232), .Y(n287) );
  INVX1 U209 ( .A(\fiforeg[3][7] ), .Y(n231) );
  MUX2X1 U210 ( .B(n191), .A(n233), .S(n232), .Y(n288) );
  INVX1 U211 ( .A(\fiforeg[3][6] ), .Y(n233) );
  MUX2X1 U212 ( .B(n193), .A(n234), .S(n232), .Y(n289) );
  INVX1 U213 ( .A(\fiforeg[3][5] ), .Y(n234) );
  MUX2X1 U214 ( .B(n195), .A(n235), .S(n232), .Y(n290) );
  INVX1 U215 ( .A(\fiforeg[3][4] ), .Y(n235) );
  MUX2X1 U216 ( .B(n197), .A(n236), .S(n232), .Y(n291) );
  INVX1 U217 ( .A(\fiforeg[3][3] ), .Y(n236) );
  MUX2X1 U218 ( .B(n181), .A(n237), .S(n232), .Y(n292) );
  INVX1 U219 ( .A(\fiforeg[3][2] ), .Y(n237) );
  MUX2X1 U220 ( .B(n184), .A(n238), .S(n232), .Y(n293) );
  INVX1 U221 ( .A(\fiforeg[3][1] ), .Y(n238) );
  MUX2X1 U222 ( .B(n186), .A(n239), .S(n232), .Y(n294) );
  NAND3X1 U223 ( .A(N14), .B(n211), .C(N13), .Y(n232) );
  INVX1 U224 ( .A(N15), .Y(n211) );
  INVX1 U225 ( .A(\fiforeg[3][0] ), .Y(n239) );
  MUX2X1 U226 ( .B(n188), .A(n240), .S(n241), .Y(n295) );
  INVX1 U227 ( .A(\fiforeg[4][7] ), .Y(n240) );
  MUX2X1 U228 ( .B(n191), .A(n242), .S(n241), .Y(n296) );
  INVX1 U229 ( .A(\fiforeg[4][6] ), .Y(n242) );
  MUX2X1 U230 ( .B(n193), .A(n243), .S(n241), .Y(n297) );
  INVX1 U231 ( .A(\fiforeg[4][5] ), .Y(n243) );
  MUX2X1 U232 ( .B(n195), .A(n244), .S(n241), .Y(n298) );
  INVX1 U233 ( .A(\fiforeg[4][4] ), .Y(n244) );
  MUX2X1 U234 ( .B(n197), .A(n245), .S(n241), .Y(n299) );
  INVX1 U235 ( .A(\fiforeg[4][3] ), .Y(n245) );
  MUX2X1 U236 ( .B(n181), .A(n246), .S(n241), .Y(n300) );
  INVX1 U237 ( .A(\fiforeg[4][2] ), .Y(n246) );
  MUX2X1 U238 ( .B(n184), .A(n247), .S(n241), .Y(n301) );
  INVX1 U239 ( .A(\fiforeg[4][1] ), .Y(n247) );
  MUX2X1 U240 ( .B(n186), .A(n248), .S(n241), .Y(n302) );
  NAND3X1 U241 ( .A(n212), .B(n180), .C(N15), .Y(n241) );
  INVX1 U242 ( .A(\fiforeg[4][0] ), .Y(n248) );
  MUX2X1 U243 ( .B(n188), .A(n249), .S(n250), .Y(n303) );
  INVX1 U244 ( .A(\fiforeg[5][7] ), .Y(n249) );
  MUX2X1 U245 ( .B(n191), .A(n251), .S(n250), .Y(n304) );
  INVX1 U246 ( .A(\fiforeg[5][6] ), .Y(n251) );
  MUX2X1 U247 ( .B(n193), .A(n252), .S(n250), .Y(n305) );
  INVX1 U248 ( .A(\fiforeg[5][5] ), .Y(n252) );
  MUX2X1 U249 ( .B(n195), .A(n253), .S(n250), .Y(n306) );
  INVX1 U250 ( .A(\fiforeg[5][4] ), .Y(n253) );
  MUX2X1 U251 ( .B(n197), .A(n254), .S(n250), .Y(n307) );
  INVX1 U252 ( .A(\fiforeg[5][3] ), .Y(n254) );
  MUX2X1 U253 ( .B(n181), .A(n255), .S(n250), .Y(n308) );
  INVX1 U254 ( .A(\fiforeg[5][2] ), .Y(n255) );
  MUX2X1 U255 ( .B(N22), .A(wdata[2]), .S(wenable), .Y(n181) );
  MUX2X1 U256 ( .B(n184), .A(n256), .S(n250), .Y(n309) );
  INVX1 U257 ( .A(\fiforeg[5][1] ), .Y(n256) );
  MUX2X1 U258 ( .B(N23), .A(wdata[1]), .S(wenable), .Y(n184) );
  MUX2X1 U259 ( .B(n186), .A(n257), .S(n250), .Y(n310) );
  NAND3X1 U260 ( .A(N15), .B(n180), .C(N13), .Y(n250) );
  INVX1 U261 ( .A(\fiforeg[5][0] ), .Y(n257) );
  MUX2X1 U262 ( .B(N24), .A(wdata[0]), .S(wenable), .Y(n186) );
  MUX2X1 U263 ( .B(n188), .A(n258), .S(n183), .Y(n311) );
  INVX1 U264 ( .A(\fiforeg[6][7] ), .Y(n258) );
  MUX2X1 U265 ( .B(N17), .A(wdata[7]), .S(wenable), .Y(n188) );
  MUX2X1 U266 ( .B(n191), .A(n259), .S(n183), .Y(n312) );
  INVX1 U267 ( .A(\fiforeg[6][6] ), .Y(n259) );
  MUX2X1 U268 ( .B(N18), .A(wdata[6]), .S(wenable), .Y(n191) );
  MUX2X1 U269 ( .B(n193), .A(n260), .S(n183), .Y(n313) );
  INVX1 U270 ( .A(\fiforeg[6][5] ), .Y(n260) );
  MUX2X1 U271 ( .B(N19), .A(wdata[5]), .S(wenable), .Y(n193) );
  MUX2X1 U272 ( .B(n195), .A(n261), .S(n183), .Y(n314) );
  INVX1 U273 ( .A(\fiforeg[6][4] ), .Y(n261) );
  MUX2X1 U274 ( .B(N20), .A(wdata[4]), .S(wenable), .Y(n195) );
  MUX2X1 U275 ( .B(n197), .A(n262), .S(n183), .Y(n315) );
  NAND3X1 U276 ( .A(N14), .B(n212), .C(N15), .Y(n183) );
  INVX1 U277 ( .A(N13), .Y(n212) );
  INVX1 U278 ( .A(\fiforeg[6][3] ), .Y(n262) );
  MUX2X1 U279 ( .B(N21), .A(wdata[3]), .S(wenable), .Y(n197) );
endmodule


module write_ptr_0 ( wclk, rst_n, wenable, wptr, wptr_nxt );
  output [3:0] wptr;
  output [3:0] wptr_nxt;
  input wclk, rst_n, wenable;
  wire   n9, n10, n11, n12;
  wire   [2:0] binary_nxt;
  wire   [3:0] binary_r;

  DFFSR \binary_r_reg[0]  ( .D(binary_nxt[0]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[0]) );
  DFFSR \binary_r_reg[1]  ( .D(binary_nxt[1]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[1]) );
  DFFSR \binary_r_reg[2]  ( .D(binary_nxt[2]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[2]) );
  DFFSR \binary_r_reg[3]  ( .D(wptr_nxt[3]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[3]) );
  DFFSR \gray_r_reg[3]  ( .D(wptr_nxt[3]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[3]) );
  DFFSR \gray_r_reg[2]  ( .D(wptr_nxt[2]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[2]) );
  DFFSR \gray_r_reg[1]  ( .D(wptr_nxt[1]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[1]) );
  DFFSR \gray_r_reg[0]  ( .D(wptr_nxt[0]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wptr[0]) );
  XOR2X1 U11 ( .A(wptr_nxt[3]), .B(binary_nxt[2]), .Y(wptr_nxt[2]) );
  XNOR2X1 U12 ( .A(n9), .B(binary_r[3]), .Y(wptr_nxt[3]) );
  NAND2X1 U13 ( .A(binary_r[2]), .B(n10), .Y(n9) );
  XOR2X1 U14 ( .A(binary_nxt[2]), .B(binary_nxt[1]), .Y(wptr_nxt[1]) );
  XOR2X1 U15 ( .A(binary_nxt[1]), .B(binary_nxt[0]), .Y(wptr_nxt[0]) );
  XOR2X1 U16 ( .A(n10), .B(binary_r[2]), .Y(binary_nxt[2]) );
  INVX1 U17 ( .A(n11), .Y(n10) );
  NAND3X1 U18 ( .A(binary_r[1]), .B(binary_r[0]), .C(wenable), .Y(n11) );
  XNOR2X1 U19 ( .A(n12), .B(binary_r[1]), .Y(binary_nxt[1]) );
  NAND2X1 U20 ( .A(wenable), .B(binary_r[0]), .Y(n12) );
  XOR2X1 U21 ( .A(binary_r[0]), .B(wenable), .Y(binary_nxt[0]) );
endmodule


module write_fifo_ctrl_0 ( wclk, rst_n, wenable, rptr, wenable_fifo, wptr, 
        waddr, full_flag );
  input [3:0] rptr;
  output [3:0] wptr;
  output [2:0] waddr;
  input wclk, rst_n, wenable;
  output wenable_fifo, full_flag;
  wire   n34, \gray_wptr[2] , N5, n2, n3, n16, n17, n18, n19, n20, n21;
  wire   [3:0] wptr_nxt;
  wire   [3:0] wrptr_r2;
  wire   [3:0] wrptr_r1;

  DFFSR \wrptr_r1_reg[3]  ( .D(rptr[3]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[3]) );
  DFFSR \wrptr_r1_reg[2]  ( .D(rptr[2]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[2]) );
  DFFSR \wrptr_r1_reg[1]  ( .D(rptr[1]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[1]) );
  DFFSR \wrptr_r1_reg[0]  ( .D(rptr[0]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        wrptr_r1[0]) );
  DFFSR \wrptr_r2_reg[3]  ( .D(wrptr_r1[3]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[3]) );
  DFFSR \wrptr_r2_reg[2]  ( .D(wrptr_r1[2]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[2]) );
  DFFSR \wrptr_r2_reg[1]  ( .D(wrptr_r1[1]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[1]) );
  DFFSR \wrptr_r2_reg[0]  ( .D(wrptr_r1[0]), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(wrptr_r2[0]) );
  DFFSR full_flag_r_reg ( .D(N5), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        full_flag) );
  DFFSR \waddr_reg[2]  ( .D(\gray_wptr[2] ), .CLK(wclk), .R(rst_n), .S(1'b1), 
        .Q(waddr[2]) );
  DFFSR \waddr_reg[1]  ( .D(wptr_nxt[1]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        waddr[1]) );
  DFFSR \waddr_reg[0]  ( .D(wptr_nxt[0]), .CLK(wclk), .R(rst_n), .S(1'b1), .Q(
        waddr[0]) );
  write_ptr_0 WPU1 ( .wclk(wclk), .rst_n(rst_n), .wenable(wenable_fifo), 
        .wptr(wptr), .wptr_nxt(wptr_nxt) );
  BUFX2 U15 ( .A(n34), .Y(wenable_fifo) );
  NOR2X1 U16 ( .A(full_flag), .B(n2), .Y(n34) );
  INVX1 U17 ( .A(wenable), .Y(n2) );
  NOR2X1 U18 ( .A(n3), .B(n16), .Y(N5) );
  NAND2X1 U19 ( .A(n17), .B(n18), .Y(n16) );
  XOR2X1 U20 ( .A(n19), .B(\gray_wptr[2] ), .Y(n18) );
  XOR2X1 U21 ( .A(wptr_nxt[3]), .B(wptr_nxt[2]), .Y(\gray_wptr[2] ) );
  XNOR2X1 U22 ( .A(wrptr_r2[3]), .B(wrptr_r2[2]), .Y(n19) );
  XNOR2X1 U23 ( .A(wrptr_r2[1]), .B(wptr_nxt[1]), .Y(n17) );
  NAND2X1 U24 ( .A(n20), .B(n21), .Y(n3) );
  XOR2X1 U25 ( .A(wrptr_r2[3]), .B(wptr_nxt[3]), .Y(n21) );
  XNOR2X1 U26 ( .A(wrptr_r2[0]), .B(wptr_nxt[0]), .Y(n20) );
endmodule


module read_ptr_0 ( rclk, rst_n, renable, rptr, rptr_nxt );
  output [3:0] rptr;
  output [3:0] rptr_nxt;
  input rclk, rst_n, renable;
  wire   n9, n10, n11, n12;
  wire   [2:0] binary_nxt;
  wire   [3:0] binary_r;

  DFFSR \binary_r_reg[0]  ( .D(binary_nxt[0]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[0]) );
  DFFSR \binary_r_reg[1]  ( .D(binary_nxt[1]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[1]) );
  DFFSR \binary_r_reg[2]  ( .D(binary_nxt[2]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[2]) );
  DFFSR \binary_r_reg[3]  ( .D(rptr_nxt[3]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(binary_r[3]) );
  DFFSR \gray_r_reg[3]  ( .D(rptr_nxt[3]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[3]) );
  DFFSR \gray_r_reg[2]  ( .D(rptr_nxt[2]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[2]) );
  DFFSR \gray_r_reg[1]  ( .D(rptr_nxt[1]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[1]) );
  DFFSR \gray_r_reg[0]  ( .D(rptr_nxt[0]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rptr[0]) );
  XOR2X1 U11 ( .A(rptr_nxt[3]), .B(binary_nxt[2]), .Y(rptr_nxt[2]) );
  XNOR2X1 U12 ( .A(n9), .B(binary_r[3]), .Y(rptr_nxt[3]) );
  NAND2X1 U13 ( .A(binary_r[2]), .B(n10), .Y(n9) );
  XOR2X1 U14 ( .A(binary_nxt[2]), .B(binary_nxt[1]), .Y(rptr_nxt[1]) );
  XOR2X1 U15 ( .A(binary_nxt[1]), .B(binary_nxt[0]), .Y(rptr_nxt[0]) );
  XOR2X1 U16 ( .A(n10), .B(binary_r[2]), .Y(binary_nxt[2]) );
  INVX1 U17 ( .A(n11), .Y(n10) );
  NAND3X1 U18 ( .A(binary_r[1]), .B(binary_r[0]), .C(renable), .Y(n11) );
  XNOR2X1 U19 ( .A(n12), .B(binary_r[1]), .Y(binary_nxt[1]) );
  NAND2X1 U20 ( .A(renable), .B(binary_r[0]), .Y(n12) );
  XOR2X1 U21 ( .A(binary_r[0]), .B(renable), .Y(binary_nxt[0]) );
endmodule


module read_fifo_ctrl_0 ( rclk, rst_n, renable, wptr, rptr, raddr, empty_flag
 );
  input [3:0] wptr;
  output [3:0] rptr;
  output [2:0] raddr;
  input rclk, rst_n, renable;
  output empty_flag;
  wire   renable_p2, \gray_rptr[2] , N3, n1, n2, n3, n16, n17, n18, n19, n20;
  wire   [3:0] rptr_nxt;
  wire   [3:0] rwptr_r2;
  wire   [3:0] rwptr_r1;

  DFFSR \rwptr_r1_reg[3]  ( .D(wptr[3]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[3]) );
  DFFSR \rwptr_r1_reg[2]  ( .D(wptr[2]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[2]) );
  DFFSR \rwptr_r1_reg[1]  ( .D(wptr[1]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[1]) );
  DFFSR \rwptr_r1_reg[0]  ( .D(wptr[0]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        rwptr_r1[0]) );
  DFFSR \rwptr_r2_reg[3]  ( .D(rwptr_r1[3]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[3]) );
  DFFSR \rwptr_r2_reg[2]  ( .D(rwptr_r1[2]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[2]) );
  DFFSR \rwptr_r2_reg[1]  ( .D(rwptr_r1[1]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[1]) );
  DFFSR \rwptr_r2_reg[0]  ( .D(rwptr_r1[0]), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(rwptr_r2[0]) );
  DFFSR empty_flag_r_reg ( .D(N3), .CLK(rclk), .R(1'b1), .S(rst_n), .Q(
        empty_flag) );
  DFFSR \raddr_reg[2]  ( .D(\gray_rptr[2] ), .CLK(rclk), .R(rst_n), .S(1'b1), 
        .Q(raddr[2]) );
  DFFSR \raddr_reg[1]  ( .D(rptr_nxt[1]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        raddr[1]) );
  DFFSR \raddr_reg[0]  ( .D(rptr_nxt[0]), .CLK(rclk), .R(rst_n), .S(1'b1), .Q(
        raddr[0]) );
  read_ptr_0 RPU1 ( .rclk(rclk), .rst_n(rst_n), .renable(renable_p2), .rptr(
        rptr), .rptr_nxt(rptr_nxt) );
  NOR2X1 U15 ( .A(empty_flag), .B(n1), .Y(renable_p2) );
  INVX1 U16 ( .A(renable), .Y(n1) );
  NOR2X1 U17 ( .A(n2), .B(n3), .Y(N3) );
  NAND2X1 U18 ( .A(n16), .B(n17), .Y(n3) );
  XOR2X1 U19 ( .A(n18), .B(\gray_rptr[2] ), .Y(n17) );
  XOR2X1 U20 ( .A(rptr_nxt[3]), .B(rptr_nxt[2]), .Y(\gray_rptr[2] ) );
  XNOR2X1 U21 ( .A(rwptr_r2[3]), .B(rwptr_r2[2]), .Y(n18) );
  XNOR2X1 U22 ( .A(rwptr_r2[1]), .B(rptr_nxt[1]), .Y(n16) );
  NAND2X1 U23 ( .A(n19), .B(n20), .Y(n2) );
  XNOR2X1 U24 ( .A(rwptr_r2[0]), .B(rptr_nxt[0]), .Y(n20) );
  XNOR2X1 U25 ( .A(rptr_nxt[3]), .B(rwptr_r2[3]), .Y(n19) );
endmodule


module fifo_0 ( r_clk, w_clk, n_rst, r_enable, w_enable, w_data, r_data, empty, 
        full );
  input [7:0] w_data;
  output [7:0] r_data;
  input r_clk, w_clk, n_rst, r_enable, w_enable;
  output empty, full;
  wire   wenable_fifo;
  wire   [2:0] waddr;
  wire   [2:0] raddr;
  wire   [3:0] rptr;
  wire   [3:0] wptr;

  fiforam_0 UFIFORAM ( .wclk(w_clk), .wenable(wenable_fifo), .waddr(waddr), 
        .raddr(raddr), .wdata(w_data), .rdata(r_data) );
  write_fifo_ctrl_0 UWFC ( .wclk(w_clk), .rst_n(n_rst), .wenable(w_enable), 
        .rptr(rptr), .wenable_fifo(wenable_fifo), .wptr(wptr), .waddr(waddr), 
        .full_flag(full) );
  read_fifo_ctrl_0 URFC ( .rclk(r_clk), .rst_n(n_rst), .renable(r_enable), 
        .wptr(wptr), .rptr(rptr), .raddr(raddr), .empty_flag(empty) );
endmodule


module writeFIFO ( clk, n_rst, read_enable, write_enable, write_data, 
        read_data, fifo_empty, fifo_full );
  input [7:0] write_data;
  output [7:0] read_data;
  input clk, n_rst, read_enable, write_enable;
  output fifo_empty, fifo_full;


  fifo_0 F1 ( .r_clk(clk), .w_clk(clk), .n_rst(n_rst), .r_enable(read_enable), 
        .w_enable(write_enable), .w_data(write_data), .r_data(read_data), 
        .empty(fifo_empty), .full(fifo_full) );
endmodule


module USB_t ( clk, n_rst, rx_en_host, crc_status, SD_FIFO_WRITE, read_done, 
        sd_rx_en_read, fifo_data, d_plus_in, d_minus_in, d_plus_out, 
        d_minus_out, useless, sd_tx_en_write );
  input [7:0] fifo_data;
  output [7:0] useless;
  input clk, n_rst, rx_en_host, crc_status, SD_FIFO_WRITE, read_done,
         d_plus_in, d_minus_in;
  output sd_rx_en_read, d_plus_out, d_minus_out, sd_tx_en_write;
  wire   read_fifo_en, fifo_empty, fifo_full, rcving, txing, rcvd_exp_hs,
         send_nack_in, addr_dne, tx_complete, rx_en, tx_en, send_data,
         send_ack, send_nack_out, hs_rcv, ack_packet_rcv, _0_net_, fill_dbuff,
         dbuff_clr, write_fifo_full, write_fifo_empty;
  wire   [7:0] parallel_in;
  wire   [2:0] pckt_rcvd;
  wire   [7:0] USB_SD_Data;

  readFIFO FIFOREAD ( .clk(clk), .n_rst(n_rst), .read_enable(read_fifo_en), 
        .write_enable(SD_FIFO_WRITE), .write_data(fifo_data), .read_data(
        parallel_in), .fifo_empty(fifo_empty), .fifo_full(fifo_full) );
  bd_controller BD ( .clk(clk), .n_rst(n_rst), .rcving(rcving), .txing(txing), 
        .rcvd_exp_hs(rcvd_exp_hs), .send_nack_in(send_nack_in), .addr_dne(
        addr_dne), .tx_complete(tx_complete), .pckt_rcvd(pckt_rcvd), .rx_en(
        rx_en), .tx_en(tx_en), .send_data(send_data), .send_ack(send_ack), 
        .send_nack_out(send_nack_out), .rx_exp_hs(hs_rcv), .ack_packet_rcv(
        ack_packet_rcv) );
  usb_transmitter TX ( .clk(clk), .n_rst(n_rst), .send_data(send_data), 
        .tx_ena(tx_en), .tx_nack(send_nack_out), .write_done(fifo_full), 
        .tx_ack(send_ack), .parallel_in(parallel_in), .buff_empty(fifo_empty), 
        .d_plus(d_plus_out), .d_minus(d_minus_out), .trans(txing), .fifo_en(
        read_fifo_en), .tx_complete(tx_complete), .sd_tx_en_write(
        sd_tx_en_write) );
  USB_rx RX ( .clk(clk), .n_rst(n_rst), .d_plus(d_plus_in), .d_minus(
        d_minus_in), .read_done(read_done), .rx_en(_0_net_), .hs_rcv(hs_rcv), 
        .crc_status(crc_status), .fifo_empty(write_fifo_empty), .fifo_full(
        write_fifo_full), .ack_packet_rcv(ack_packet_rcv), .rcving(rcving), 
        .send_nack(send_nack_in), .rcvd_exp_hs(rcvd_exp_hs), .sd_rx_en_read(
        sd_rx_en_read), .addr_dne(addr_dne), .dbuff_clr(dbuff_clr), 
        .fill_dbuff(fill_dbuff), .data(USB_SD_Data), .pckt_rcvd(pckt_rcvd) );
  writeFIFO FIFOWRITE ( .clk(clk), .n_rst(n_rst), .read_enable(dbuff_clr), 
        .write_enable(fill_dbuff), .write_data(USB_SD_Data), .read_data(
        useless), .fifo_empty(write_fifo_empty), .fifo_full(write_fifo_full)
         );
  OR2X1 U2 ( .A(rx_en), .B(rx_en_host), .Y(_0_net_) );
endmodule

module  USB ( clk, n_rst, rx_en_host, crc_status, SD_FIFO_WRITE, read_done, sd_rx_en_read, 
	fifo_data, d_plus_in, d_minus_in, d_plus_out, d_minus_out, useless, sd_tx_en_write );

input   [7:0] fifo_data;
output  [7:0] useless;
output  sd_rx_en_read, d_plus_out, d_minus_out, sd_tx_en_write;
wire	nsd_rx_en_read, nd_plus_out, nd_minus_out, nsd_tx_en_write;

wire	[7:0] nfifo_data;
wire	[7:0] nuseless;
        USB_t I0 ( .sd_rx_en_read(nsd_rx_en_read), .fifo_data(nfifo_data), .fifo_data(nfifo_data), 
	.fifo_data(nfifo_data), .d_plus_out(nd_plus_out), .d_minus_out(nd_minus_out), .useless(nuseless), 
	.sd_tx_en_write(nsd_tx_en_write) );

PADOUT U1 ( .DO(nd_minus_out), .YPAD(d_minus_out) );
PADOUT U2 ( .DO(nd_plus_out), .YPAD(d_plus_out) );
PADOUT U3 ( .DO(nsd_rx_en_read), .YPAD(sd_rx_en_read) );
PADOUT U4 ( .DO(nsd_tx_en_write), .YPAD(sd_tx_en_write) );
PADOUT U5 ( .DO(nuseless[0]), .YPAD(useless[0]) );
PADOUT U6 ( .DO(nuseless[1]), .YPAD(useless[1]) );
PADOUT U7 ( .DO(nuseless[2]), .YPAD(useless[2]) );
PADOUT U8 ( .DO(nuseless[3]), .YPAD(useless[3]) );
PADOUT U9 ( .DO(nuseless[4]), .YPAD(useless[4]) );
PADOUT U10 ( .DO(nuseless[5]), .YPAD(useless[5]) );
PADOUT U11 ( .DO(nuseless[6]), .YPAD(useless[6]) );
PADOUT U12 ( .DO(nuseless[7]), .YPAD(useless[7]) );
PADINC U13 ( .DI(nfifo_data[0]), .YPAD(fifo_data[0]) );
PADINC U14 ( .DI(nfifo_data[1]), .YPAD(fifo_data[1]) );
PADINC U15 ( .DI(nfifo_data[2]), .YPAD(fifo_data[2]) );
PADINC U16 ( .DI(nfifo_data[3]), .YPAD(fifo_data[3]) );
PADINC U17 ( .DI(nfifo_data[4]), .YPAD(fifo_data[4]) );
PADINC U18 ( .DI(nfifo_data[5]), .YPAD(fifo_data[5]) );
PADINC U19 ( .DI(nfifo_data[6]), .YPAD(fifo_data[6]) );
PADINC U20 ( .DI(nfifo_data[7]), .YPAD(fifo_data[7]) );

endmodule
