// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Apr 26 17:02:18 2020
// Host        : Leo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Vivado_2019.2_Project/cnn_3_3/cnn_3_3.srcs/sources_1/ip/Adder_BIAS/Adder_BIAS_sim_netlist.v
// Design      : Adder_BIAS
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Adder_BIAS,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module Adder_BIAS
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [18:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [31:0]S;

  wire [18:0]A;
  wire [31:0]B;
  wire CLK;
  wire [31:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "19" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "00000000000000000000000000000000" *) 
  (* C_B_WIDTH = "32" *) 
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
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Adder_BIAS_c_addsub_v12_0_14 U0
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
(* C_A_WIDTH = "19" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000000000000000000000" *) 
(* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "32" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module Adder_BIAS_c_addsub_v12_0_14
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
  input [18:0]A;
  input [31:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [31:0]S;

  wire \<const0> ;
  wire [18:0]A;
  wire ADD;
  wire [31:0]B;
  wire CLK;
  wire [31:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "19" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "00000000000000000000000000000000" *) 
  (* C_B_WIDTH = "32" *) 
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
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Adder_BIAS_c_addsub_v12_0_14_viv xst_addsub
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
jn8yf+baZUaKat/t4/bLDxwpa2qRTNq0FMntY1MklrSaing0M3P0KBn7ngT6jdGf/4yviOP5Upd6
tuPjCoQLl2ieVf+Rt82P75Ywqs1yxH6DFDpjqNBaZm9PxfpGrDzOQJ0mK8BRlYl9A1A8yaJxo1B1
A7yW5whA+V7QMfDk7HflMQJXzJ+y89Ut9PU70Lq3ZChsFX3yKwZ/O8T8iHcIKrXnbg5AxP3hbIo8
WoLHyujN9ZUaG17xf7Jsp/56IE70aDKX0pIuTH1dOoOX8U7Cm0KAPdUgnuZl5Cjh/NZfbxjdsg7V
n7QZT7z6mQYWjYsqIAzSukZFqoVtaT2LeWVn5w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dvhOW+I6AW7bmtEWoIAPoTpcJkt/ufgLFc4xRD2Ur3VsKczVA6y9DbZ2oAvVia7s4kv65PIEDSSp
BmdE8sysMZ6MyCPzg6T0DtZecS0nDLFRPzREq24OAS26POAUflmp6TNTNMTtpWFKT/wGov3gxJH9
rsC9GYoHznnZTqxh18GPtSMNQ+kcthUVTfFK8D0eWxb8w/AUmo5zvoOOeOIUEtzs13Zd97rh73ik
/5wFM8JR2waOv5dl731lazN+z93jRCAWzzLhaOlzJ5jkte3lhBwXa8QIzXnPQ++MR5Eg4gpiOW0C
snTlAzXlEuK3PbhwH6RKBTZyAuI3+SNcJ1KBBA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11728)
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
