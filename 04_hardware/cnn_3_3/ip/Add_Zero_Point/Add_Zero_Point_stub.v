// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Apr 27 00:33:01 2020
// Host        : Leo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Vivado_2019.2_Project/cnn_3_3/cnn_3_3.srcs/sources_1/ip/Add_Zero_Point/Add_Zero_Point_stub.v
// Design      : Add_Zero_Point
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *)
module Add_Zero_Point(A, B, CLK, S)
/* synthesis syn_black_box black_box_pad_pin="A[7:0],B[7:0],CLK,S[7:0]" */;
  input [7:0]A;
  input [7:0]B;
  input CLK;
  output [7:0]S;
endmodule
