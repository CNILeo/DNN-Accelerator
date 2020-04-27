// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Apr 26 03:32:41 2020
// Host        : Leo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top add_1_15_1_18 -prefix
//               add_1_15_1_18_ add_1_15_1_18_sim_netlist.v
// Design      : add_1_15_1_18
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_1_15_1_18,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module add_1_15_1_18
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [18:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [18:0]S;

  wire [15:0]A;
  wire [18:0]B;
  wire CLK;
  wire [18:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "0000000000000000000" *) 
  (* C_B_WIDTH = "19" *) 
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
  add_1_15_1_18_c_addsub_v12_0_14 U0
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
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000000" *) 
(* C_B_WIDTH = "19" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "19" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module add_1_15_1_18_c_addsub_v12_0_14
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
  input [15:0]A;
  input [18:0]B;
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
  wire [15:0]A;
  wire ADD;
  wire [18:0]B;
  wire CLK;
  wire [18:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "0000000000000000000" *) 
  (* C_B_WIDTH = "19" *) 
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
  add_1_15_1_18_c_addsub_v12_0_14_viv xst_addsub
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
MdtB5msrx1X8FBe/zbi0gyXXFZoEWwgvmd14VA7x8n70Ti/bqI8Fp4Jjm6BQK4bWi+l84bhMH+4K
rRFPAfZvxrSgYYHUVDtTnHG3stmHvgQxECeLB+mSwcPZskA8l71fA6ziCg/f/emadPa2N7+dFPY/
2Q4y6qa8SjoDNo+InetAA8dQGBaQt5CsTnmJJDZaCdOU7vSLRn5kgkyn7p8Pq5vECCWnvQt+2/eW
oaqnDSpbk5zz984KIH37+MGwUT5Q+o2IVM+6RVDrSiIWqr6tjdWA14g1Pt6WcjuvZ1/8TWYArDSm
TP3hoH2ac3V+GGDxXYEmVzjGc/+/3zlA5eWmBg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vuiU5U1yYos98mUjp8irj+yDqQ0N+UXG26Awrz3YIt3iKd1sayhYIaby+tg8HW+5lHPfBfHMzDU0
UXNLlEZOkZ/YKi1zBe/viD6MGhBfuqXgoBw4IOkHBqoGyUP0yBuY8qBEgUnR3Q1aZirMsJrtomfo
6vZlZ/4+Ktp5BuDehMW74EAUyiVpocQU802eKMhamga6TjgH9o+RG766tMQtH25H9rUM6dbX1gaH
fwQYXebv121UppKT4nGrFkTGlr41rH/BE9H2xvrB8Lfx5i2oNIlIsVMKvPkZN+1sdvsUjVxADOXT
9CpSq9GLsXqR25xvUsNMzgsaiaN9v/69cBphuw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12416)
`pragma protect data_block
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
w+Pabbbh/3bL0ULN
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
