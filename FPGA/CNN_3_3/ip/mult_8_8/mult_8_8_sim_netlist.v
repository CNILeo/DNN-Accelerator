// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Apr 26 03:34:50 2020
// Host        : Leo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/Vivado_2019.2_Project/cnn_3_3/cnn_3_3.srcs/sources_1/ip/mult_8_8/mult_8_8_sim_netlist.v
// Design      : mult_8_8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_8_8,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module mult_8_8
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [15:0]P;

  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_8_8_mult_gen_v12_0_16 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "8" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "15" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_16" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_8_8_mult_gen_v12_0_16
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [7:0]A;
  input [7:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [15:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_8_8_mult_gen_v12_0_16_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
HPMPLvpmoX7LOmPj78BMT9X1rCnPz6PdhVGZQ307N9haGfAdMGVirvGR3e0Glyn2ieoWqXA6qOQL
t0xn28+h0g==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Nxv/BnutRgdmHnLyK7kvDGjm7WGfFKW2mxQ6xUKF14zS4ziz5pSV0ueW4VqAzUyEPsErIAEuyV6F
m5KCqRBB197Q2NbZa7O7tdAqboX6tPAJzbB6u4U/MmNS1AQcSgtfj5srMbdBzDa5pR4V3HrI0MRj
0xhV1BWf725FYPP4av0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F5KGJgEDQsX2btdjtRUlSmNtuyodIhGXEa3/AXv1Y7qgSO8gknBfiqj5HcIaVA9b4npQpDnNcmq+
1ONAqLeLhdOm9TES+GsTAkh/lClvl89bzfqgOV33iqwQHYIHwSsWMRXT9JSUx+YWu+g6xKpT1Ycn
8BCPsq4QUJIqL6W16fheEHB/lkMgnespIWEYJJG6R6zvv2zG8GiU6cG8zHrRjdvAj8kOkhmiMvSd
YjGXJSMfjw7ojCPSUF+nb6WWhUEmoMA/6lgSVaXRm00YHSZ09k7rKTJWSXFSpTmkL2WOsQhNS0ek
jdTK2KF5K6z2YOK4zkfHgZ+fB0KJyANaLLJH/Q==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lFuQXeJ0hi7qnIKAR+37XCSOwp8bGLukonngcICceOVpL87+rxvhP5TyNJ/zXpAWDF0BaRYlGr7d
isPiUStrvUthNyOqCr4vFZyhCdY8n+Mrv3OCvLoLQSarxVXbaKbXb0tPsXJCUdXTrCt9mr5x0Nda
6DAI8FBPlFMAiqnFXnYMwlUiSlkNWUpInuNw7+1eD8kUdckEUV1PDwZ0yjpFqMokMH9oJjN6z0Yy
65D8Tqo288ZMfZQuIimjski+X6EK157XbpyuoZIuYLJ7j6oaATdintgfZpgGzVvhCZtMbx6/SJtR
efW5vLBGiGs7rPBPE2T8fosHGOvmeC9QBSj8Ww==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q8VVvHzTNgU3tZr4+8ia7ylST+kbNPWskONHDOT1dTkB7cHZIAWyzXpQZPuEgk2wJq21PoqmVlG9
t08IYzkfC8vYQ2LRf2Co3SXc7p3gF2OFMC68J9Nf9D+/PXJCJy3QO4H8oO39l6bn8c56K2ARnK0R
mMIALbCWSBDGCWGQmXWZJ+xmDGs1KgTeiSW3bZRftWJ6K8l8BhMit8BLOY2Mi3jJ0WRhN8kKd6JT
D4NU1jTZT6jEtmI7Gnj/AXG6auTqDPHsVQzf+ZzBsLTfw83CFoO70xM997L5cZXlqz8fEDmxezkr
wWxPwJbJeVkRV3tUxlo2Bs2x1uVkXQeNVMI8jg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oUeTLA0HA2uKORUHo1HidNC3lw54gxwlLUkv28qRPv1pz7AEVUbIJ7wsyu2Scju+EkC2Ivi8HbBn
jxkeqRDTAwAbAqIKnY3AdyfojN9Hb8SMLcLnpWLLCpb6E0vwA09r7uqKRZ8wYAgT9CPFvzpQ3zKt
9DTLgQ3rZtFxx2nfCug=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Fayrlym1l14Y48yZ195XboT9ZQmp/mAzUyHby3Y9qJTzDF+m6mRQ/ZbebObo8bu4VAm45JeETPx1
YI4UZNOK4IqKv0BZsAlzUfAYAmqmkmIJYbn2gWUCwXyKX5AoA4ONnlxEHxzZhqtsmEXvxwTEs25/
R7iLzeoMfmwwNHgPNQkteiR4zDlB76CYmgu6EOSUX5Nnitq1oh7qRuU8WqWN7lLfgIC6T7qNHwGD
RPze2yiP06fSG45jPrOn2fvBX9SRbUXjNtiFgmqim4anwJU46v7y3ubit/I6giZhz5PJMZfkDaFX
ag+uCMq4Q8ZEolqMBmjUjat86BdVd4Nmr0yUaA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kIpxh3qIIkWUg8aLJSPKvKhKTPFH7T8fisti5RtNaftS7xh3KDsGLYnF1lYhH2RVXgzbdaVqvtED
5QJazVo6wUFI91xgFeOR5jX+Ny5UBUX2MngsK+UZyZg5+EdtSiDtiJNtQqgjq1Rn+XQCGF3xP80n
7YvuVMbgRHCAfWrWw7ZJ7Y3raRzeIkx+koPFio7XnC+QdRJ0ItO1YtQgF4Sg1Ihr5TH8/RrNn903
kPa+anH9spo3SFCf2Ts11UXAGLdIBmOLMtEAKjjCUbtmjGSeSc0gn2q2I+xRTFcegLevlr/iuLTw
3lFndBAoW40xOiCDjWZ6Rz7J+jZhsRl3D0Bhwg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ivOtZy5teLVMDbWasvibueSP6Ey61laECrSqdJt6x/Kjd35HXFXn2EJ/1IpwCQdmF0HqHfE3oVk7
NI475/JzTg+gwENR+BY4/r/23rxCchD98viUgEif+NUBosK0Nsi/tA0RVxHBBPxt7tVXWe/7XU63
nmqA6iGIfAVVTZXbk7V+9OYpei6Owdfvk8A39vxkYCBqYHF9J4p2n/DJuQ0hKaYOWcsWxbtQu19g
IzMEUemp+mpbXd98FyIWFL/dTkej/nKtjDAaEbJAagUmJaTw0IPDBXQpmIAbrTiqVh5qIy5E8RKO
UZ5LmXLc/0IifA60NYBqzUnsu7sw/7SMfFhdQA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CXfzJh1pMQR/Ar0mX/K6N1+DXKq51oTI25gzbCrjVb6VQ8B4sAKlSUQH8EpjgeNpLSadgAxvvGPJ
Cg/Za9O3bqbDVwGtpAEjnTyRRpVQDUymIR+yIHJt5l79Bddl4rMzYdbEKGWEn58cH0w7MpwBC0F3
9XA71z62K+k6QYvILBqagW3UFMwMWQVEyvLHV1s+aLy2GQX0q9rwJ3TwF2mEui/Enw+HZr9zz/oa
DdOTRio8w/lrhIl+/GQ9s/aEkH1x+WSeI6+bp0Sicw8HQ3t4s48rG9aHoFJ88TTrj0o5uWiGcMgk
E2cMz7hqPHMIB8jU3cV0ektINuAIqoGyJUhq6w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8736)
`pragma protect data_block
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
g4ZiG+A7pBrUzKwuKUug
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
