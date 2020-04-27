// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Apr 26 03:34:55 2020
// Host        : Leo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/Vivado_2019.2_Project/cnn_3_3/cnn_3_3.srcs/sources_1/ip/add_1_16_1_16/add_1_16_1_16_sim_netlist.v
// Design      : add_1_16_1_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_1_16_1_16,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module add_1_16_1_16
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [16:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [16:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [17:0]S;

  wire [16:0]A;
  wire [16:0]B;
  wire CLK;
  wire [17:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "17" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "00000000000000000" *) 
  (* C_B_WIDTH = "17" *) 
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
  (* C_OUT_WIDTH = "18" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_1_16_1_16_c_addsub_v12_0_14 U0
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
(* C_A_WIDTH = "17" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000000" *) 
(* C_B_WIDTH = "17" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "18" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module add_1_16_1_16_c_addsub_v12_0_14
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
  input [16:0]A;
  input [16:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [17:0]S;

  wire \<const0> ;
  wire [16:0]A;
  wire ADD;
  wire [16:0]B;
  wire CLK;
  wire [17:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "17" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "00000000000000000" *) 
  (* C_B_WIDTH = "17" *) 
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
  (* C_OUT_WIDTH = "18" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_1_16_1_16_c_addsub_v12_0_14_viv xst_addsub
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
kEZ6sb0tVdxXPcdM9xzrdf6Fu2DSmXKP4T0a2koEop5DWXL+V9vhY3ZQvFcbSIJ0+B18Jr1ehL/e
anTmL1c3iBXSc64MqgvMBxZgub1C0vHUXFIJWRF5s/CwBbWT93lpSKA22gl7OEaGe8bIFfqXpnoj
+2bfQaXBcWct+hL85OZgwrqDWuCltrV/4Eo+VB+fZDX8OmOW4/OU05ysn9QamFYZs1DR+jaff9+P
bsNO9aHCyKpCJK2OH+n54qfV9F3eNvquwZcBXQ1PH6fugulNj12rbK2v0R2THNjdTgqha8oKdwoP
PR6XKfwQmxUVXXfXSD1GvGH3I5pZTS1RcXW44A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NENpeb9kNwQveVTlUEWoPIEnojLBU6xaFIZuSH/+KADMXsL4UgJYkO3pY5/Y8aHcSh+nI3CsxyWw
uiAal2VbFxW5RDIvqa61L7PiQpSkALt1OlkAzvwuuMp+Wg0oYnfDukhO18xpzZoxm2FcF142tnVE
obsYUsXMROMT/bSeS8ND7uhJ2I8QAD8vXznJtIqqUOC9HWMAOXZvm1xAmdatEtGhkCVKwIs6CuUo
N/3z/osUpF+6hgTAvQ3bkMx5zrXXpsbpeR567w0a1oSCbLYGYdLLH/k5fUWZ6bHeSJBgrBKWm9e1
ukc3Tg5UrZRX4c4K514L/x/1PPz4hfU9ceytVA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12432)
`pragma protect data_block
VpcT07qu3NEtKbdkr4ohDmzfLNvog+HPClFPajm0/yja2g3BEdiM+EtSR3oKas/bNqzXwIKf+PE7
F/xNyQ9pL2U1W11seesHuZtiwksXMrCVw36pr4yrr6P/+ly66WlMKniUUMX8OFgD9FZbBfJDQXiS
kztLx1yQCj/ivncr9mPy5+XjoAqFHjWj8u4u5VUXzYxbe8ngmiG9pz5grqZEI45AV6dG8XM/mzoP
hcOWtGj9hvbo1vNdjVcq+F0JxUPj3SI/LuT5zqiDAVFfQnrG/2SmCNHwcQoXklgTlMTC7ZaMmZUy
hlVqlPasGbk3NIKx4Rzzf8xVg/uL4jiP5uUX/ZlMTZ3sfbZ7xFn1zM7E2eNP3tg522zY2p3MQU2S
Z6BRQbHAP5Nrjc2cyUz3yKIjVfdCJQQDwAYzL7UN6qJ7l+EgPiZbuop3uqBrMZ/CjFZ9N1Wc6O0R
imzM/AGRBx03PSEBXt6XcznqQPY4/w8H+M/XVPQPvUnEUMLg0OaqfT3p9PhyKtuwsOvXIuwR2PbA
Nxw54PYi4HwH0Ag+aAgkPnFWGkJ9yObpN3qIdXxe8f04MtCfN3dja8asjH3JChRMGTuTLky1Xbp4
S54fZjuKB3UO6F5zehCq5FKy4XaLU7c3hQTWJA+0qAUJzesvhE5rniT+fGe3aabcXxiYjKwM7OI1
D3dK+KcGOEM/K21z2E6wPRsT4YhsKEvdo9hbB7qRP6x3BkDh6n3jIWNBp9oc3LgVX4WNooMBZh1e
CptxGVMC5e9Bke/oGmj++iuzF2LRMRtWSySgVO1PUbNzqnQqPOQVc2LWWN54uFray41rm9jfFMt6
8bvWzhM6g2Zul0fHZzEve/jwe1u4YsDL5a0Uofv62TOsU1e5g0yYYjWfD0+XyGLdbrhrE0bupkAP
LvfjvO/7bmxbV5pvKKZlCvk4I5KTxWxsl16C8zDI2CW8Wm0tv1LqbBhI1F23BQWgf43GjRiIEUF5
sXrV/OnLg80tsEA+8eW4lyebTlEDaSJ05RyvyKHq9w5We4nPuf6xANaE6570mpBI+8Sp+b9ngAku
VVHD7pSBY/c8OkfdPOKKj3m09I+wpasPcmH6kaLWUT0xdWbQiU52dsnaBvHyPokh97xZk1wicLQs
xBzlVtT9y7JwrSBLD2+jd/AIbeGCxi/B0WzM5zlqlj9KOYYPoY4ZVKHqOeqeXmEqHbKICwLQwKFb
vmbCaBBOmAsgjJhe6iiYJC9cyI6EHQUccv329HegK9Tktwags19g6dN0eC89vFzZULU2hsFvgXhb
6kP+nL9eqe+icomvCHjSvnClV5r/x+iHOvLvRjnOtMuKlrdm05bcNhyJJWpf3z4raaNF6iTyIh+R
Vr45WL35Q8S8Ub2nIdHuVbKB2wgy7if6iJem48qjYX8cFXX3HJF/ti1syNte+6+FVGrArMqwq8ga
xFFRgyb9sT/jht2vvnM/KNCe9YheGWv/fQmtq7sSwwq3w5ZGcOlSlKfiqGs6uGn01AhAafOL9TF9
V+dxbUDSvpU3Mur4p6LSvhbc08nzVybPovL63HKwjE49sq0Ha7K1QO5couSXsTBqaYcQ+raBWDrz
sxqOdWIqfFn9OkFZ1OtpYBREFLJv1iXz2yDLK2tejLdpHfRiVq305UlnYPAfIPF7a/G66eHOwvT6
ofKpN+GluBc92/uTE8UggisXKtPnvLapwsOcgyu8cY4G13e8WhtXW04wg+94Umpe5ufGN1gNC2Uv
DxzjzR+2pErtY52MWfShjF2BlDcurTT6fbr73e7bp3MLGEM+IDTCHzULlLzcJbT/xUa9sgXst0mC
k8UogwOoL9XTXDMpnH0xTrT2y9lZ82et4IRyagy5vPqOpK51HfmT+ikHWf6c9u7tU45G5RWs3ora
YP/v3w/I0oXfTthR+yv3Mwi2H7s820Sr29nkoNYInqaxOQhaFSMjMvN6aSLMzrDh0qjs8l3UYZrJ
Ljp3VxyYXOtk2gMYqKqbA6SNmkRVLCDP2qd7w/4bOav65uus8SBl5AIXV6Oc6vK0/F3sbddNqYyz
X2Z1gNaLT6y1VujFq6DxyISPgz6WW19CI6NDEJvO7l0nFiaDx/OA66v/dro3QjJHdshb+dxoydyh
IK4jT/CIq9MQTrB0IE6+fG8U/7jMSeMFsMnaDzMN1A4fujws7SKYH0M9DGMSyzGfSeh2/Mq8iIc5
5LGUwkDNoRLjtSZ1dClPdxz2+F74gTxDnXd9zXyTlth5JILTpq7OezCaTzPWQtRBNqF/amO9bIOF
7rKjm/Ad07gRw5MLWULhJXAF1m95CvJLyeTi8lQehAFeiOfZMlaoKsZILLDQia/yVx9wfgQ2RTeu
QfIdIFlYAKym/MnjnwY66Cpf8HsxMCWszh87AZjzy3SUh0+F2+M+Vf9d2Sfr0vuIjtbldvcxmG1I
FKA+gNcKHsmclZ9cmEjqaogeKpG94SLQFXZFniwZjjnrwSyytJbDzsSA780bCJpeHzLxqyn6NsWL
mBHiouVudio1M7g8tIQe+73dYSHgZ1wxLXw5clUrHgSwvSeq2sLbINRGf/yDWAW/JyxLRDB3sacw
Jzo3iubDGFvKgLYmBFExWY4IfTeNERZqnOPwrw7vmTO6W1HXhGMb3fmB7QJqTM5Jid0PURyguhXL
Zn/aRpCHJ3CYhgOZDEdlwRXZELHerBzwW4K30xDJ6yqcCxpWZapB1CoVio8Mm2TvkwMeZC1aPVlb
eKaqpLMj4z+ryOHFwi9Vtsx76YivuMjd18W/JoothPsGjFldAyx5tuCgqsJ6rc+EX6JFeQtYehee
+IrUooM9OqwbS97JDl0yz/Q1fanZTTFgQQ48hC43TBWmF1xJB0F8Mk9YSlh0OXVicXV+ZsBZ75XO
w4sEeBbYviPX62kxAUPhYFx9wKHNyE4hUcZswoVGYsEPtVmwS9yI8OF9K9r0zHyHt7Qr/U1kKxDC
hN62MegAC3dbHeP7csNq1zT7uFUsmLlBS1znSzqf+TKb3Oeqzdb1Fkug9JCQb1kSg83rup42pfV/
s65vzyOZvrUw6QteErN9cStlp8Q8/3WjX9NRyY2L3iCFXHg+do7v1KhbfTj1g5MncpvfbkwouaRj
L+wKqfFdavVZLBiDoYXOuITWGRmUb+8p2N4zfQXD9+C1R0xkHcGsFP5aGXDNmYg+Ioq5PJ1jNInj
a9Aex55cYPq3J0cWD0+cts1vtDzViKiEM5x79wFfZQ8e3fLJdR2u1bPxa5wVm2rwpu90L7t9b12c
FjSv0Bb7VSTygSTHGKGXrw9xzcyBn0eun08soaZRlodSmiTfzjQXL5+2LFlB3mD4o/OkBk/GIAhg
DozIdQpZ87c7WKy9+KqjubeiESidU1FFiPaC0duyCRv/eKOlUeoC7jWX/urBoaXGfHvAkmGbljBk
n72P9WSokKE0/3T6I8jSNjufTN5BNV6z82q0r5Agcg2gR7huwfGyf0kPjk9LPTspX+cXAS7zlsur
tu8UmlMd8RNxzm+tfjpILk87YZ6Kn86M507o/HH2JjlCGxMqY7BfXACxeJ04Y1klKnBSOE3UlEk3
5fB2AojM8aEdHAwSu8TA0Cs5yJvUt2IpCblQgGYqIkfCU1wtDGJVesQwPC/yLwzjLptjIKbe813h
tE5L8yZ/CaIHB1mBAREX1umxsG4pdwzrCUU98j7QP3/08DINnpyk7D7U+THp+JVwr+xl8kOAFn0c
c/kT37VWjSgV3UxnADMiPpTgxtCxHG9qRFrXfuEQ7RkIxoYTD9xg3X7ygo/tyxvnQjdk30A4p4m2
BqdozgfoSPpI3A/LFGrINfC/oqSpRvQZnz/+uOTyVwxvwzS4Lq4KtfzyFJ9OoBC9qZ7S4AXwEYob
CFpGca0lymSeKDErm4QjmUVuOfsrQXhgSukfsPAZBK25NcUOctT1CdpU1VTFIj68xdW9YHaIQ0Kg
WlKd/uJdsHAAaZvoCuPkU0pXPCcZk+/FgTs+vYZmdO8lJf5wGVt7XOI6UI79Ajttb3KDRjb6uapL
DTpQeI+AyrUq0usn6QDJlLlwCGSwx7X0UZeuIVX2FVx9eH8ACxTA/KHrzFgAEdg6pLTnWevMQShW
gbw9rZs+lwvyKanoh7eaob2LBrn7ZSjf4k3ug/qp7VDrbft22fIIdLcr7rUI0EFHvWSCtxxnhUBs
GqhxCGi3YNbapuRyuK5vqfzD8QKz5nD22e9hn9VgElsK6gtZf8qVO0dxxF39sxSQYDFeGDrqiDZq
VUAdJpE5q7OIyY2EnWwjt8uAQklbH7Du0IXsQA7Hi1pSLOTl77R73RNjfWfcQeGko2yToLbIOwQ+
GL1MnDArBYq8HxYzNM6MlN3zLySuCOZN4646ONkC3rAsxLU4z1u3xsN/ftlSB5BTac/irdwskwqo
v1PkCxN81fTiCwHI62YrkPb20NDMY7nHSoQQCK0BHqIP+n4cINQAm8TbW3YpHjDVivdpXHopIYd7
Biqzwh+ujorQuFTzhSsjWsgt5WvjhFfbmjxUpv0LqhtLghi9qxzq0uDNhHqQqtRUYLVgeJ0YwPxs
/IphcGTkOdoP+OFBwXeb2MHQDUN5xcWhUuu0ged9lJyaVjTwO8Ux1Ae4w7UoHiCN278r6FA50rtx
jX/cXaxZ0rmZaoWetqee9HUXFC8LtYdoKLUqLRJIPXogtTo6UOsphaCmxUv9USYPYxU8Wb/qXYY3
NJz8mZ88Un6q2zM12oVv/R8xe0eAi4Xi/dS4bV8Krq2RZ+hTjiasofXv5uTPOLH0UCii08Vx2LZJ
7cmXM0OK1NaByW4EBfvuPrm/vretQeR9agP1Ix/njKbfZy2cxuXcX+9Cn/y0mkYmgYOodvwpbk6l
XwrV8w9gL9a4igazWy59bPlF4P0XIvUO7YgpY+x3wOiqh9RnZBxcIAiJU2UM1P1KyNVGfC5L8ZnP
khGPeCH4urRLb2c4huDkjnnKhIjPhS7TK5rkW2Vr5xthQaDqOPdMbqaxn2P0p0UD8CZ840tEQCUx
9Wqt3O/9YYUtmGeFlwHRFf+Rq8H2PKG8pDFunAPm2Cg+AD0Hu168MbfOzys0+MvcPrmBVNIzBUKF
qLIXgDwYuxZtgVg98LiZO/12rQ30pwyxCsTgrjvgxk9RBhlrb3sH7uo3xLnunWL+te1TtSd7ekqe
jrgiJui588z5ZaoFkmj3KfnunE0ADWxHPOd23Eubgro4VGxscZAFOqbPM2/2MBInRTT9CI8JBiHr
ndArzECBq+ddG+NBjASoZqApgDb30wcQgiLZLnmFBAwxsnaVTKTBH+MKN4s3MGoPECOSGBp7NGBt
PRg4aT8la/ouFilGCv2vUollsFhzMAhbaSDWjsQlOITfoiLjbCITqNq8RVMqx+HMP/56q6AkNe8U
gaqp1/Z1Fqs+L8jghj0bwc7ZqWSvpmKts0YWrl5+bdTOZMfOlkMV7SDUoFywwJRTAed0sH5ViI1D
n/BXc0wfKxAFXL5XREJ8rpTNho7L02JKlAP8qQGslwarjugEBSa3RVgs/T2zSQsl8x23fJTI75qP
0hw30ARWL0BdU4NcgNUk6T/ko02PTvVZqHGZJa0m7XGbQJ9kznc2XzgJixK78IVWdEfUhpD9WDm1
m5ogzpMpQ2/XCCSKDuA9iyqKEEjv3feq7l0BFEOBZHfdcpz7rA5xCodt0rgRExqQtUjS6iU+I0Bz
8bY5mf2OKTJxRv0oMdBYkdF0ji22wha0doIJJZH3Ji7LE1LQDSe6qHjsXkup1rbq7GY9dbpAtYlS
vIpQLYqva/vvBNwpIGcmSK4kIyI74M8KrU2nbfenmk61i+Af6IyBIabfuf34RE2/Klu0CMxplnLL
l8DzNO+n+R2DZIdPOzHSkovTX44NH3DdzvNwCN0T8nt9Z2K4oYB3eI0z8nUTIGVeOP5FIa/Gh1cM
A+wJW4bOl9tcUoOPMSv8e0Fdt2FclxLK25C4w83xASWYgZoDjLuDgV0jwud41LOVl5duQ1plJDFy
xHwBBADntrmrjKIX+WunfM0edcAB06Ox9pVHPAG00LXlRYB4Io4nkCazd2W1tH/INtED43uPwpyK
4p7qfAw3FqVpmqlJD9MqZIRohUjgHPyYdf4cDVXRp3vC78djsc/bFPgBaMJLQCmo9ihSmeaZciJG
ZxO2QF+Fv27NQQaYQUI5VnfSBG8HRWeguj43TV6ks3obn07G/Tt7yujuBu99LpeMLty4eDjsCfLh
++nCB6H5rUgNAj8oxrITiNZ3IzE/7yLWTdL0C4RQWzsEZ3D890EAy0rQeyOp8Z8faZmOQILAou7G
AgQJK0IG+e0gS33Zaw4v7DX0NhvcdQexT+Et4Lsn69dA5gjBOUlRTiHDyzSQkqc0ndRS1ZJZe2al
B+X++JdxGz9umXH4BZGCTF841vvZ+ZxIFotWGV1HT59hBGSXJHk2bSLre+gfz6r2QpEPe9O8R1ho
yNqrRLPyC/oX2JpV8Xq7D6X6Q++egwVK9zdZLsOeDQ77tD8dlGw5jJTKOWVauMSbOVSdaUVSdsWs
PE96YnK9CWlTJhhOSeMANf8cMRWlGB36xPhqqoHvyh3kiA06Hat7QeC4SKf2kyzcJsjRYN0ljPPB
wjl04O0h7BFvqZ9d4Cc0gwST4OAgKHE+TMG03aE/nFh/2Juoscwki0DGzh/y93STiBy98QUFsyEG
mL/YxQ4lzwPON5eqxV05LxZGmGSNp+Oy2rCInaxD9knibO9G9Te4ZXh20n+rCUHCn/er7PHhWnQT
e2XgTBFAcYlErBsPDfLacpItI3asxa9XXYooAZEAzeau3+tq0GkIvf3OF8BSfdWI2X1CiiUqW5ot
Qj+cUpwT9LNaMXrRUTigidXjj+cRJLo+BLskmBBjBfKSi5jG1zhmAUEA23z/xcLlV0d+uLcexK+G
LExijmF8c94nIyCC2HmZxJkpWrCoVZrddIa7u6KvL+0qqM5KKUAwd+bperHojElhuSl0K7uxf18k
gWc4aIYcXEaSszD7pWhS/z6nEj1ye5LwRPj4XzuWWOyew42Q1hPfZW5p27FMutS4fJjSERcgStcl
k0d/DFqJITikewmiwJJgCMPQQY5jGkYr8EInnSRbbapmi+43sXedXtwMRcp9CbLDj7lxONlkZy83
Mvp4rCq5vLwmwxYhRATMkPCkwNext77wXY5TcxcfYf1zJb4saaPL11RpCI7xbHImM9WNOothHPuU
0EHUGTfkbXSOPwnTHs64yyGiH2mQ4nKE+TOaiTDeH4vxhANouUFKuZXzqQe4rOYkAWqD16LnqGFe
5ppfOekRSzZY3Y6h4KIYjHdVttcB0hY/a/Dx+YRGjUQEWYxRkq+W0OL0+ayZVSbnPukCIn94+GSP
KjM6L+T2hMMBJQKWvgesbOdC4YfYGDTpnMtIibzT+kIe+Pmal5G92Pq/zT3aXwX2BrhSKiSGjQep
p2/kgsSyjbe+GSO5NqfjEh/dLwFVG5SrH9AX9GNSGXXs0tAeOClmjoXN+2ynITjhwZ+t2inQDRvI
FYxiGBpFLvDCtApi4m+5ucjUMO4ri5TMYbfaD5X0B4PXs4PiMEk5hyHVTYa1UOJNfX32XjS36tZx
j14Pgeadn09a327Qi2hZYTnZhLZjgUcx/u6b1hpYBqm5npSSLiCmy5i3BfErocAPGJsn6kqCNVG3
PDoD5Os2G3afqmzqGdgQVV2ixvhBCnRl73xvILp40BbitdnXRozAsVr2WFCCHKoOkeIQ8EeEACIs
zMA0+jeDrySIwlwAu9mSMh8FWlRI4bOe5DXA4NYT1t00QiopOjS1dvAxMr046W+26dKRGOPmrDG6
jeyn0QJpOvm/GL8rwQP14b1hnZpB+NjCsSl1TLBjy6niMZMCNEDaDFX4mkdRJg3pwk3Ske4QVjFd
pGEC+7M5M1l9PQVvWJIW3gpLYBEMUEpTdwOiYX3A1T3zxVJI5jIEu8ZGs2cqA3K0V1Oii8xWdgkX
GOHxRWbfLP9podmJIbjI9XBPbJF756tSSMGVeYin5Jpvew4PzA2lnEEfD5wFiNrmz1VRL/gqgsic
IrM9maKCtO5N9rZEeV1xohBEWdnKIexZQZ6Ykl8n3swvN/c6FPlL/Gv0MKtGwLo1mpNZ5rzbLrCI
QbHeXI+yb+bcdl86BtOo74ZZGinMGdDNqhpIJwoQ22082q0doxmm4OvLs1VXYF8lc+BM4hMRFaW0
7QRL2GD1M4Ym0veWAypb0UbIS5LBQZOY5u3aBywPJzMyafuz5QeMsjImU+Ipq2AXAlYVKZ41qP1F
l6YUwJpgVElhnVsaLhXPLJsDCSLisUxyD2XXorhaAcCt+2vrSZFLGtnXGFisYAx70Iul1BEw4b3B
RqI4Q2RM0Qc80UdHCMvCSKjDg+Mo7j3IfWLeXyZTlDZWlZ9qAaQeJKwxPTMFeyhTPy+VuzpP2dCS
5yi8nJUGVk6oXv7TyQnA3MNRIqPUC8behNY2ouhW6UH9VTckizRB7hWKx10s+LB+cP+CzHR2SJeR
0CMCG5h9FtNpcLWydxhsG9P1Xg6vE0Cu8cxmjjh1qFErsfrw+vxg/dKK4rVxDWKDVXSTWhzwx3+g
gxbvwp+0mGiKfr7kFsNJ5bZvxkW5+6kLd0SpigY7zifrd2v2Gg8QqVYcMqq4MZvo3Vf3E7AAcG/b
4gCX16g/qWPfjJr3W7Z+3z3Zo8jOX0n+CtyF5IjbHK+4uo+8pMDOT9HWnG9k6SHvDo88et4WzLe0
u5Bq2clyjQNILZjToM25sdSGHdNR7dD8OSDlicEBBEPihdeEdPI2juvWNzy1EVMijSxsC2swBQrw
8/DzL/uce7+aRROZvzMiTWqsfmtB+353iSAoPqOQKDjy8ySnKPYkLV12VNATUi43pbIvLmIFIvN6
hiPh9hVW8vj33B9hd99KbCMWrhsAJPmiYr/3IcNmXHyDGKCVBKaWtrGloj0pr+zjSV9UXIgZ99ix
HPzr9uYgKY/8XeBOHiO1uI4whC7VYzhDEUaHql9udix7BLTKinHY9pug539MgLCVaYPemFASRsM5
OUBGOir+uGAF3rc5cOOCDNeWzUe1MJMNmtmp52F0cU9qT0VYvtFUZbURH6Ys4r8rK7+HDsNR8mrY
RNaTXmfNfseW5cK5aSfP7egjyofDQ3RRYrEf9yZBVh+uXW5vFWEC+TdC0L95aslKS11UjYf0UB7d
voJCBPOLDr8PcUhDWovvKSGH697xYV5J9dLvhJ/9V71CxLcHcQ/UpuGQRUDJJuDZG5gZqJa2hOcD
TjOed2pOqryu54ST6CI04Y6u8LiBv5OImEviCC4KG/VdUR5rPIKmf7yg2aAhaPnnl80mUjxMeKh5
HBOtkM8Y2gacVQHmozPLghhsrIxTUTVV/7Js6l5ZJtoytZbXez6UXjoFVO3ZKzShjnKoJXam/P8e
k0ZGrA3hYe5tGrF6qJhsr3AEZEx5VejnUubgqly5uge/875AxoMOS4nCmuxAOrwAPvKJf9RS2OGQ
IEtwuCyWsQJSHbOVDiHUmfzcpe5cp+rZ/uJg6fnaAsRV4YTZ22YpNxwI4fGSnYJ4B96GEG/WQpYv
9l1Yz1U2JcaS6fVCVcZDPJsvHGcWqygrFNms4mF5p1D4GxVlboRBXSERBUGYMaurPqqHMPyZWtmz
Dm/jz42M+x+6WmIgneqfnsJdSJ5tHpmlHRLdhExg0iarzwzrSxSA79AqK9af6XK67Gp7lD5ik57S
97dzNVbXSu+JJ13+Cr4Phlb069Zj2o+Q7Dr8on6P0/K+7i+aTsw86NIFVZ/4OKWrZYbUfiXsM9xU
6cVnEoniu+Zq1vJbqGTJ/QmdvYEpu85uZwLOtHk4EcMbMSs2ckhFrg86DcRLLpefivPXi7yLBpff
6/naNUX4G8vG3jpDFBhrVn9sWJsDcqTACJSdJdFThYm6f62Bt2eFXxSKjpPXvc3idVo7UuIczc+c
pa1vEZu5JCR+iBLRl+e3dyfwbeR6uafw93MLX8F6K63Pw9i3/jYj/5CAs9HOnHG/FH/pVRA/C8Ht
00KfIpKBgEzS+X5O4VMLNbdJTqCY32PZ711sEdqUf0AoX8KS5N23hiZvzkVtFjPz78l25UZx7N61
57mh8ZR6nbaLCSlcNwyH5OSpozCr04BcW6J21DyIJDiFFQYp2H3WdZz4RCSLyqtTJQrIjKROQmkP
XZnRZAD1ez1OzVA60aJ6vmH8NPcQh++BI3lV1F6x9O+2uZ3dgY6CcdMfzRE8a9mSDokpagP1Ru/l
9m5Du3oRA0a75Iu0XfibpOeGzBdEHU3H+7pMKHaYiA95C0UvO7ct8477Q2BbrMMAp3geq8pClHaf
QeBqp4E+W0fAgFER8j50E27A1r3UQPtaecvGis7M6BnpbMv/wN7eCYmlcHkjcuTrrRQUfPJwJY5j
9aKjoaKTYH4tVWht4FK56JhX3nE4bqx8ywQnsBaZ49/nHp2602DiaZk8ZHhsgPoFCXJtoajPGv7a
5C5hi8Yf4wdZBkMqTM0yRZDUMyt8XjFVTq+LjRrygmg/aL1V+gkRtElqZrY1Wa6V7IQgZyTsxAI+
Iw1uTL9snIG6DwyEAXRaQbF1ArYWdjxWIDu3QY2DYJm6D+SSZdmNWKGeSA48IeCbXTQ7tZM8OOiQ
cDdE8w39vOHBLDPLOBlRmkta7flTItHFEC7tlOspJSI/ihuKqJyqrEIQDrPEeZDz3vFOhfcQcVeV
lGVawtGUqmhpY3BS4nk5oEKsgzFmzLmWgqwwwKJXc90WGc1SOLOKmT3Sio3fc2h+Ny+E3G0MoSVA
e9RxXQ4DBg3uhQCHTJXEtk4giqex4KHkC1V0/NPQWACDdzU3Ku3XF80vWO4S0lFslds9MOczL+dV
MEGesQY1IFtiu/+cHfI7pX6NmMjqv0nMQV0wMilaEcDcl00JQ/FMIJiXkmE+t1bQezl3iQv0GIjQ
6zbR95mvPCoFnddJAln/QwpNRQR/bFH5JLpF05Z9YsG/mQaNQ2Uftovlw84op/U+DRqa4k0ftoaE
LAvWh5aH0+/wN/++y7/l+7pckpVbGvINSg1VDzD0h+YrDBOgmJCpiVXpqtxCGAQdU5ZXrfLY2WQP
ecEmHuUzMSVDTSYmwG7BqLiuStPPYvlhnqJvvJYhH/oeOdRHVYYgnV+YTvA+ZhNgvy2PwReFzqsN
fTStK15uX7YC0DuKCeFlVdd72MaRAFLMhbHjxkhcha3gGdwz9sK/pyLf1PevJl4gGAnCMRyQzIG6
z7GRmObhCocrs5OVNHNKUDc86xE2zK2J14EmoBwnOO7aSIm95GGqylbUpuPtbVdykgWxFF8ytv1z
BrvUtqDghX580IpsTBU3Ez+polJgN3T406maUbLBWo7IoWAFsw7bN9AzmAt9nvYSNhtsn+8AUWqc
TQsgGeAi/6Sg8N9nI6k8hTG4X/Hejzh98pjEpeAoyWEio9w0ONp1qQe6c6w8JTRJbcKsyKPLgbsX
/xYeLvh+8pNqTQHA6isYnoSc1oUQsdAtHXTlxQlupjNICGmM55++GTyehjfr8hTt1CmkskOIy+q+
+tACxKngfwHCJXfaq3WpH75YC9cC4NCQYBKPP6oA4Ky8N0AkXmq3YSUOqrN9/iBXc+dtZgWWEwhV
FAikfCLkeLMhNN0cuFLae2XncLOfyIDNPzKwgifS2dMqixcpoZ8hm4y6pHcWliYJ62IclzUyg+6z
XQZR2a8ULloBMHljchMEGMz3Offp2gSNT+D0wwR/MhBhCBxQTdOl/FuQOCiyRxW03bfdrrfdVCIZ
JB2dHJKVVHiibZcRtPynj0Fi93jgkSYwG1sc8y5T96qAlAtPmizYvHU2yXewYlS9YkXpcjmEIeG4
so/xRqyS5a4+STo1dzWCfdNwe825a3ugh5ZZaEmaQCjbNpYGqyuGS740c7dbAlNepa7cb4FT3v1J
GjJkiRGG6Qe26bWCfpruMT6Ke+vZhk4nkXXL2xfhi28Dp/MD6okMeFSd+pp2ZLeMaiDbNKvQVtgR
8y08y3yGhmrP+/hrU7c54k0mlKukQkl5DsWlrMMg9aF7cdY5fYMk3VYZiJWFV85jyNUs13ijZajc
cY5WMnAJ0jF6lXL04KgkCSzhKhYfiqdIbcjB9HwSIfgUohljOF3c8m/AuhLFOvn5K7RTFEd1XyRK
kjZR69sD5Pc0bHgerlwx4b8lTxpABVg15FGAcMRnZK/St3yI7CKbUeK2lGDWq11BgyjkWRBexl/V
D1SM4+28ozg03KWaBA16JsB34oQRIOMrIwBHf7yzOnOWBl1G2kpfy5Kt2e+1Ip85EC7JLSxEI2Lw
zLHmpdatxG6KznJ5o07TSr7bBA/k1uJqo043rh8UWQ0vb9nqphqToroaTCIrBJv8oFmK3CeD+30Q
qkzsR9X92ts1WAga3G/vDyaz1FnSRaQpIguXWr+HIqLUCsSwunW3f2eoK/g0qp/CVb/1ZloAb9J4
n2tvD+8FToU3QsHtdREdidGsI8V4z3PXXuqprHaY0pIhtRLcrWPsrT7ziUx1xda92iGpdzd62/bJ
Ch9mlN/JJEmqeUS9VRNx7soq4FhtR7+iBtPwpPsxDgi4dgaD8caoHhupwznXsdMvjjRV8S1ugJRv
nEs5eiQlH3cvokE0XlURgdlWyG8YCRsUNqTNJKqSYcM9WwP3z7vTQuOTdA7S/De9v2NGaToaZrB2
/NthVdCPKdx96jjrtTW4OUCKGUmdKbBPCOJwdQJjrOeB7NPEgFgQCqxb5QtoMbwqLLA3bYMVamwP
V2sXn1NiDENuI0S2MFX+qgIbL/ozkUAf9v4g+V4YDUHK5Hu62Xhd2mSrPOXCUMzbg36i/LwHpzbH
+f1dCx4+K8PYf49k0Jg9OTLWChbY4NFtiaP52aK8CKnO94kGsbG9RRlYEUyOgwOdkmZvCiRv2cLr
iLVnPIsqTePgfeT4/9IkM2aE1P5C8JMjCkcLTuhaLlFl3enr1EzGTE9VqglxPQNJBTwwmj+YBtnz
ExyW7iMZ1EFBmtSHU93wrL/nKfS/jGXUpMUavK6A1cw7bjNxkWxnHqKv45hlrOcGiVnaHK064NNo
snep/nVJ9atvWpkIal68x3vLn0yAckScH+4YNba5w66hl3o/ieHoaAXpbjsIPBSdtVBfFyR6avm4
UmaJeqngcblDpGESXBaZoCw+0RcC7F0h3r+1IR5W3jPe9W2mF7UXBEaQd3PIndOYLOot5vuV3JJB
qwK8+oNa8Z+Ru4PkDIVHLkjs3fFXArSna4OcyGJZnn73B3CDicTV45eTyEj/3B/F7y+/EObg6G/C
QEGLZHnRBxNf8vdbTMsxaUjTuVCCkVNvL6pk9uo9cM10xkDOirUGO/h5lIgj22i+mlPqO5JzykCI
M/VUtGhx/RsNgPKfSEeBm16O+C8vS3sVgV/7gR7xUJZU3WRfoAyVSFmifTJXZut6BthdSu55sxTu
GlafRT6fD1BEPPTPG+RIA88L4c+Ov+DQcAUPNvcqaLAlai5zEc2Mx2W0YdKN0LjdZoDNx34SR2cB
EPm+35k4BziuhtMD1ZK5+rYKduRrbfeyvq5xE6Geq0FWKL/SXR3mcw29CruPDD/utolna4JLt/hT
oCsu4IW5H2A5gjXZEanjp4z3J+zBm97rgX1GhN8UxIQonFJosQef/mTm0o1aNMGRghApD6Q2cttF
fDFuIrdafOd24iBdwbUfoVxLgYVEQJxC2yyuD7fHkYyEehmoEDMgYorzXtLI1oek8pSmoDOZqUA0
RVzeqpVodvK9va3aXu4Z9DJ3EMB1pFn4gJiiEUtBbuyUGlgl3vM0HgKkYp6VgFjwYYIzvHssY6U7
ZHR/nelehYHAt6NSMVO3HCH6hYSyVMPNIMo68wOCxnEih8q+0luBUrgyoGMJ3Q9iD5TvKjh4sXwk
6EPIT93xV8Awzz3QM7CWIm8p2dHopN5lLSv5l7ReglLpSRVRGYcoRW5s+xXlxNQKRU6AddZOEEKj
2s9mXBl0j2BauMs347XT9mVA1B6+oIAFaWZ14Vo4MNsAv3XlnktRN8eKpwHPiE0ibf4exAyI3s3h
6AtHMyfK9PuA1xQiBzi35w0UJEF7SKJIjeHQ9iy9pN9wOd5hR1rnnyk7Q9xciS8lfCyLnexfc6cp
PCgS8wNXqVpuagjVyHT4n/rvfi5HpfZB5G/HIrYTjjFaTLTmVbt8ZuiJRnwFna3uhEch++9cKgfK
6/db2AguIunPVozi3RSyH+lbnM7spsr6luFSMMA8SyzUTlqDnpx95zkccVUB6ZZCuE3GgqLYffEk
XG3CoKYjk+UjcF78WOYnwuvM00nd6/3pKppAKLIsk7vgEWpdJKk/2ZSKF9MnA8fI3B/X9ODy/Ktz
2peS7V3VJhpr9R7xfFFadHi0YQua9XtUaefTPMOc8DQZrj9wDGb3I79BoiPfFljAYXT6c3eKr6iO
4vrlUFXUeksiFcrQ5oThVNfyPZDW2N0+qlJbbH0WNKmgA/8LMOjAGSghoxFwdezTy6DV4ZktPfQS
Gn9kQvCZgAN5j5F2fSkwMikFktuy5LP3oW8BLg1Y6Z1LiI7D/G6h/58inWbXwXrSFlXbpnyR3WrW
SV8ue41Q6jHuJ9STfvzgg/ET+2CCEnFX5HNS6e3b/0LTVJmzGFQMQhsOUiNEIstJmqg+2XtKDfhH
3/l3OfRb30KKB7++YledpIl8jM/TP8esO8iXvdOIbYObs+UmyqktxQY0lwQC103rv+eipZWrd04U
zd7mBgLNIAz1BE2N/sYmgz5FgUi9PzpmqZMvkoPIoeHd5AbOyedVFBftIgikNxMJjGVY+eFc8K20
QjvDx+TwT8+LnIsqOLTbLSRWnDhRHVD8ZOhjipKP516GZITaIz2guvIMVzGSG8HV0nEwIAUaTsLQ
VZUKbHmdKBmZnhuqoppImy0i9XqIyKM62foFM6SDQFf0vrVL6AHijrref1Z7cylnbSDYootyyyXO
81meBi3L8oNvCkEXM23ECeWiNIoqY3DLvCWUDomPKOC4z+3v0i36I5JMaCONL6qkY4zHVI4EgE2X
Y0c8hbfpF2nwDgwk8g9qN78UIAd0kw4Os7SJXr+L2VgMhc4tVZ/laje4aMf36N0b81t6NTxieXqX
z9Ww+B3mpaD/0A7w3oWUtk9NTWs1DfZ4IUt1VVGj5BzzbFbQMTU+5Tuc8Ain3qAhgjcyuSATndU+
BdEmfbAmTUYZ0MGAPpNg1Xmz9IHxXO/LfcNSbtzqUNkT/9Og6S5WEvQT4Z8r6eHxZUhhDiLx9zqa
ImSJjUdDGj2pp/sFSKVNkybm4ep4vCp5v9TmWY7MuECUMV7zKAFopF+0AgqIyC8PmBu4i1ll3hIn
K/KHIYe7hVClJSqnGBWE1MSDR7Np8BJDMQjMQyrYzAaXo4+aK4DV0YC8D3rx/qkNXgi0PnBLDsHw
z3NcP9TEz5TsXxcE5eTEbT2v4JO0Q7PNkoQ5oukg2DDojQo1eNRbgrcMPHDwq4DDNSsivcSuOxaE
BJCk9uvaQnQo3aWGvlK9hkpZhTfVMKETN4Ewa5X4XNGoEO5sARfw8arwsCSr1iSCN+0SS+YEp23P
s88Hnz2DF9uLDUN5TFXut8ef6sQywMenELkuQnBJz1VSlirRYZha6o8RB9ZL8VunwzG9luaaFuMg
K5Kb1j10ja7lSjK1OuNray73LmZqZGiKAzIVbYvoOludkb5iSGNUkYaP+9sUNaU39C8sZf+SpQ49
v+/SAUTQy6qg16jMDMitjjLLreWIZFzn37gVqwU9WleJ/hew4l6qKyjgcztB5PaeVjGIUTXDKJ/K
Spv/GDOsVA0aaCAv004i0+c7kLw7BOKE+9/fCAMF3/HqmEOrmMAsSv1vX755mjiSCFTCYH0+0klq
D/esIYnmAqUZNOl2ZnYQIz4W6i/N9+vXgYdUx+ngGBIugoABcQ2b6KfQveOlqJPEUfbrWFji+fnH
65XM2vboRP2HfGQJreVg2UEEXhxMXBdvA5Yj1OFl9JDzIqazHy5fBAOSg7Fl0gJC8+2CFlbjitoi
/3t2IMQt0BET0SpoO42r9jCEt9cOWznO7BGSWrnbS/UX8ucyt7J+fKhjbt7MKJ/qLiNlf0CYTlBB
oYmTmCLMmI0f8Lk/pJ12IzjGvbs//yLMdJiDkBmtO32q/HyomePNSdEpg8cge43npsmqiWIyK6O4
3QPyD/e54usbLvY4ATOGWiDt0JOjCvgBQd3k5c5DUIaJYyCHojRyjNOGuHWcHSDDf++Tkdwpm8c0
PmxnqyUIa6xWFrnKPJmK/BwmvI/9OOB2jdbL0G/+7NN9pjAe7O5dZW3jeXXS1/CwE6+XhfWC2T1J
KeSyxoYCpIw0iDZdnYQ6MkAP7T56LkhUrP5opvGLoPnnyjwnKpupNdDEM2OeMypZXlmBtSDfGfTI
oyFVn1QjeCqkkUyVCZSPTr/xmt3RlTM4/IjlQljSlvIKfHUC0C1b+06Hc3s12YdjUFNDwBopVr9n
malpyw22FbFa+93Tf0MeUKRQ3+f109PSe77EExX1FwURPohC+xPUuNjiyJmmqEh3nKsOigLpKPRa
itRjJJcm
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
