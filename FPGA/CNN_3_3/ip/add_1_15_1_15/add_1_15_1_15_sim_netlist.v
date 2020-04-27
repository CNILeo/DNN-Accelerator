// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Apr 26 03:34:54 2020
// Host        : Leo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/Vivado_2019.2_Project/cnn_3_3/cnn_3_3.srcs/sources_1/ip/add_1_15_1_15/add_1_15_1_15_sim_netlist.v
// Design      : add_1_15_1_15
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_1_15_1_15,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module add_1_15_1_15
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [16:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [16:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "0000000000000000" *) 
  (* C_B_WIDTH = "16" *) 
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
  (* C_OUT_WIDTH = "17" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_1_15_1_15_c_addsub_v12_0_14 U0
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
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "17" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module add_1_15_1_15_c_addsub_v12_0_14
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
  input [15:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [16:0]S;

  wire \<const0> ;
  wire [15:0]A;
  wire ADD;
  wire [15:0]B;
  wire CLK;
  wire [16:0]S;
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
  (* C_B_VALUE = "0000000000000000" *) 
  (* C_B_WIDTH = "16" *) 
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
  (* C_OUT_WIDTH = "17" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_1_15_1_15_c_addsub_v12_0_14_viv xst_addsub
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
T7y7JcBUnqe2toyohTLhU3weETSsjPeeMbUcG6BP0ilUbcUKBYpKM489No2wAk+ZwQJ/mSZPDDSe
uf82VxRbWL1Ej//HEsWvjz3CAMyzhHgV0tUZ4BZvMjxKtCWqVGQ46nWLyHbohI7gvyxrpr/2xQId
HrrJ3UjNSaHlqD5t+uNQDRL0q+E59qTGL2xL9QEWNaGazIM9q61QbUka9qJGt82kDRGNjzFoqqwK
RvI9HZd2R8edAOp0Bej2gv+QmgwDHx0LUe76ojvsHuHaTwV8VUax303uXwhYvde7oGjTViN9gZ8k
n1fcbfawSUEWOgqfVbEsLpf86sgFKK2f+JouCA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zFWc2edryTbFjPK8URm4toWDrjfBnBcXcCFT9eQqcHadkjqB9n3tTG7BXAmbH4fk6FSSY+YH/ska
v63YizFjYVXHG4ZG0oo6X4QdeRTp3HV4+cXfJO6fMQnBMwgicRF2FvNu4NL1TdsPotnaN4sYQ22/
CC7x1qmoLCBAq2XjbZOc10wwYuionvZrk8Ea/Jl1pds7dA2nMksFPGNQ1ulFEL2ojD4JDKAiHe8A
eVYrk/FL15txg+2XgPaz7EjP8wc4BmSha/JycZgNXACtk9e3rJnGgLdkYyXEDIg1lOGhR3gN6TwE
e+yaglhHyubN3x5EIoeVLMWUZQIL5vUT0uF+iQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12480)
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
