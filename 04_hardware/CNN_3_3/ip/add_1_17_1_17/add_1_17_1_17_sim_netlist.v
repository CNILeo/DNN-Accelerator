// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Apr 26 03:34:54 2020
// Host        : Leo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/Vivado_2019.2_Project/cnn_3_3/cnn_3_3.srcs/sources_1/ip/add_1_17_1_17/add_1_17_1_17_sim_netlist.v
// Design      : add_1_17_1_17
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_1_17_1_17,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module add_1_17_1_17
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [18:0]S;

  wire [17:0]A;
  wire [17:0]B;
  wire CLK;
  wire [18:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "18" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "000000000000000000" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "19" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_1_17_1_17_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "18" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "000000000000000000" *) 
(* C_B_WIDTH = "18" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "19" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module add_1_17_1_17_c_addsub_v12_0_14
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [17:0]A;
  input [17:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [18:0]S;

  wire \<const0> ;
  wire [17:0]A;
  wire ADD;
  wire [17:0]B;
  wire CLK;
  wire [18:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "18" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "000000000000000000" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "19" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_1_17_1_17_c_addsub_v12_0_14_viv xst_addsub
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dmmXCzwxW2FLu/vVGpJzoQ/uTl0t/oirVzDN8rGCQ/cshHIr5KZa8hMP1zjDcrW6js/9tSBuCaB1
Ioj63zjqZA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
N9Ijk+dhcsedFOz7GhClRR68iRquy2ZzjVLVhi5GByFuPpr/oGFn021AFcKE54GT1hqizIMvWGS0
qRbWSO/aiWGT8c930WMeayc4xm2b65tzi7UyXSjcZqyZqk5spgPewfSuL0LKD5R4+zccn3yeTyAR
Cpi6LZ2KmpRW5biXvss=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M8NGALCMec7MmW5uPCxfU8HATjWU2XqyPU8phSDe3mtyor4pgfPtg5TJdKOytKhxa+fQwJxytwzI
KPxtYmaRH/KFiGrOvm7jO78NIlt31qN95S7sMYrLxORaZ4bbNMg4RfwEB0haV15qORczgxWEpvBX
6Qukl64ihp4NiBjXt4YYGoDiNMSczgOe3tLn7UWjfPQnsJ8aMxugelO5AciSBxAdohgLMRE3cu6p
gwakO6ytq1vAR8bqHLT8g/Kdsxn72SBHYdpkba0NfEvzzheOlZY7fNuWD48V6QefMjsX1taMkmQH
m38VdXlC6Ocia7H3zT8LvNLtxrpG8zyD+UI+sg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I1BukTJgP0oEpI/mdw6jwrYhUTr7MTzY5G/EvfuPKQfGzYRI1qLG+aEQeclA1P65+tkbstBEIIg8
ZhiouPVaom8KwKZHBX7eLpxvNBcYVFfnJb1ES5wdcph3sgGtaYKSpspp51oYPM6ZD7DmMGdoc/Wg
JVIUuIfRpo8AnEMfkayPkbwuB0VUKpz5BXS50B+5jvgK7cFe2gUp2ckThqzKUjViVB56Swsz+IQe
l7GvtTbuNcSwapfPtNHH0bWSQStfIzPZZm1A2IZ2WCYafRPkj7uibtKNgnKgIZs1197qomgXbb+b
fDx1iikgF8snJsPchukmgxkMSQtLntwbLs6H+w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UNzBll4hVdQjkp7KJChMHZ9agdKjtTu8+3O75Phz7SpwUZ73Z533+9pCfaH7QI/cwqaVREb20HXT
ji2kU1DV7+Cwbshd08hvUBl23F60ITYS+3rluBLIFX3pzXhjjSu8HQpnxXppbCODvCiWrDLqRU/y
lcFf7B+yp5jK6vEY5xuh8is/oxSPNFwip6GSMqDnE45GU6kU+6n8FTk8pAZUNKnh3j0t6YzcwS3J
wYUhnJpEQYd7+0D/NPjEz0YFqzB8WCh70MxBRJzwdXpuRLiFzplysvw+eHjMPVeU/UPKJWuwWuwc
Bfxw0ThSXZit/SSD+BGhxjbEI9T6rh66FpqbTg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
F7AZy6dB5VKzcudhyRSKWKUbVrSs4vS9jtgDkM6KrVPs3ghP3AF2TeIDyl03EesBxeIQxHqq8thx
uVIGQN5wt92jkzGo61VyUoF2dYHY2dkK9PY4bicayI6rppCS18HnyCC5ODrTMKgOpoj+PEmghCZl
j8+i3NFWPAo6M/MAtVI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NQpRHEO/CEh2TWVl2zAKLb4TTDP4G4mQHrGzJeErDNbJ2L2B4iz3unsCjzHkoDagHoU9jeHYNzw1
EdgeGwokAwsWnHc0V18iEu5CZPPLrncpORhuc7qe0zJvoIFW4tgNZuIjFZI6bkrWzgxNYlkitGJ7
wQxgR+6ZenldybAjVF7d1R8FQmrEKWQ9ztmGHKMd9PfWD1VsbOoxbNA1tkQ3Suq2M9HDzUONaPQq
yMnGxLE4+4xTZZFVVFZeizNxqQcM1Y6s2MEUyS89U6rdAH95x9zDN8PGrif1SUWhpoz33cYp/IL8
acGyIWDbmuS0X+xsLC8cWcrO/MxKDk8bj12S7g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W2ZLxVMM2bO/6hqe8KRsBOYby+akb1JiKHhCv9fhS2DK483JVHKKDFtV5ZylpQSPfpmWVI6nDnNm
XtxOYqhOdd9wAHIVXly/nJQ3BORIgR42ZfKk3tkiYQd75XwTJmWjvIda5LTjKISy58Rg+7/yc6kX
SAKkQWzcaHy0VIrsbeLAK7Rz2vPrBQAwZijqUO1uD9pTa1ID2lBqRKOaN/lex50cPJ7PNmyesOUe
aisZi7+ubKWoKmZJmdUy4nKUk4a0FLkIqdFpmX+Bu5UVgWOF47nrEwh3c1MVRxWa1uvngQGGl026
FTa0G+nc1Q9KslAvMQ+fMbz+FbnTF3u/A9gizA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FrnYT6Ba0aOMO4oQt8KK2V/rYOIeDgbTCWYSmBJYazXREOkVun28K+7PvyW1CHw5NMFw50Vwmwh5
u7TuI8V6ppQSyE8DhbWCXo9BHqwUdz4/6UjU6RMTEQfMqjhP0HgHoviYMZ//PaEpZbJuf2rZ06Aa
b+sHNKNAlhYxJVbTIkyMFtqub6LWXoVO5xd6JW/T9TPlVAgHqfM14tFswrOJ2Qd/n6XF7Lx1NoFb
xFW5B/1e5km81c8P6aMbLfWKsvOykF0To0tSAEJ60qixQ6lDt3FaqyPRidOEnW3YoMfMbWgWWKNm
zb7gdODeGbFpQWugAE76fD4eI1IytG9wWhtH4w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
16GlRYdtZsNKclPqsgXb6xNiV6FdeEOzn3sd1QJ3REpcTrJOBk4cpITRz+keNXBwPlIv5fvJ+x8q
G7x27ktmQpWYah16gYb4MpcKgdwohZA0LUKZZ9ulzlHuIABRaAMFpOAfYk+wG2BUrgkjs5o6jIKw
9a5cu/QpO8isPRQGBruh5fom0RGk0WCS4nAQfseLkTuILvLX5PDTkunIz/Ymnsx+RLcmtiWoSmkc
VJMRTmF5yOYvr/tZXADsqjE0RRNx4Le5PIrDmDYx/ecpybJa1MCiis6lfzZcRxXuqikSIRr3RuVt
K10w3pqkxWY7tHD9CPtmd+rSI6cAkIkbcp/xVA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12368)
`pragma protect data_block
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
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
