// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Apr 27 00:33:01 2020
// Host        : Leo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Vivado_2019.2_Project/cnn_3_3/cnn_3_3.srcs/sources_1/ip/Add_Zero_Point/Add_Zero_Point_sim_netlist.v
// Design      : Add_Zero_Point
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Add_Zero_Point,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module Add_Zero_Point
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [7:0]S;

  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [7:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "00000000" *) 
  (* C_B_WIDTH = "8" *) 
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
  (* C_OUT_WIDTH = "8" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Add_Zero_Point_c_addsub_v12_0_14 U0
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
(* C_A_WIDTH = "8" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000" *) 
(* C_B_WIDTH = "8" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "8" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module Add_Zero_Point_c_addsub_v12_0_14
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
  input [7:0]A;
  input [7:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [7:0]S;

  wire \<const0> ;
  wire [7:0]A;
  wire ADD;
  wire [7:0]B;
  wire CLK;
  wire [7:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "00000000" *) 
  (* C_B_WIDTH = "8" *) 
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
  (* C_OUT_WIDTH = "8" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Add_Zero_Point_c_addsub_v12_0_14_viv xst_addsub
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
drGO811h0Rf5Ok8c3fBaB6hANvPdpm1f81NzMpYpU/k6cYfwweUEOq2JrHZ3M9kRLmhPKu945VJn
seNUsvhUytedVx/ouH/cj5FMz/jrWd65366WlIuu1HhJ2IjGu+mtAvN5Wnn6BLVoH5HUeJBK0H47
UkvVeeXxd1apniXOeoLvT9i8Db21nT44PqUBB+quT8q9yxogZQvsGoKQNaEYBpsXZEJffSJqEZTr
Xmcvt9xnhtoOVIRxo37WK/zwsWIyWnRhVn4crNFTa3Ui2qNGEwrA2ZtgXfunmi/7vlgQyQTBkNv6
GawOtWKLLMGfqv62PobrAEzzV0HsL6S74rmVQw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HjgoC65hKdvVVQgRSO4Dk2iXipgo1o8FOCVP6zg9ZpqOjw04DhuPj4IQ0G6GXoGrV169E2a1UZpG
N5ST+kBhK5kaa4ycowICoHobwBPL2U06dAYppKBtD5YnRiB6ewfi/6AafmfTPcoEp7OaXCKcuEPl
Ta6LEjVkYUVLQh0LvIAk0F/h4XjxwvFheZI2H+irDl9jGUmLsR/AvuZTbjWIkMEOwzuKbZ7jCAIj
+35773jVYqCkYZM/CNrBFhu8xogqv2r50CTFrS4FiKr2N9GBLi55IWWPRIqLv4N5hVpRNGxaMj4D
nGrNz+JXVuekl1sBEg/vLiH/NmDs/MrTK136dw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12848)
`pragma protect data_block
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
Ys3BrD7iydmHfEv0lc+s3z7XuDtWc7g=
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
