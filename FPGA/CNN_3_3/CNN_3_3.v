`timescale 1ns / 1ps

module CNN_3_3#(parameter
    DATA_WIDTH      =   8,
    KERNEL_SIZE     =   9
)(
    input   CLK,
    input   RSTN,
    input   [DATA_WIDTH *   KERNEL_SIZE -   1   :   0]  Feature,
    input   [DATA_WIDTH *   KERNEL_SIZE -   1   :   0]  Weight,
    input   [32     -   1   :   0]  BIAS,
    input   [32     -   1   :   0]  Scale,
    input   [8     -   1   :   0]  Shift,
    output  [DATA_WIDTH     -   1   :   0] RESULT
    );

//  将输入的特征图以及权重转换成数组形式，并一一对应送入乘法器
//  定义数组
wire    [DATA_WIDTH  -   1   :   0]   Feature_in  [KERNEL_SIZE -   1   :   0];
wire    [DATA_WIDTH  -   1   :   0]   Weight_in   [KERNEL_SIZE -   1   :   0];

//将输入的特征图以及权重转换成数组形式
generate
genvar x;
    for(x=0;x<9;x=x+1)begin
        assign  Feature_in  [x][DATA_WIDTH   -   1   :   0]   =   Feature[DATA_WIDTH    *   x   +   (DATA_WIDTH -   1)  :   DATA_WIDTH  *   x];
        assign  Weight_in   [x][DATA_WIDTH   -   1   :   0]   =   Weight [DATA_WIDTH    *   x   +   (DATA_WIDTH -   1)  :   DATA_WIDTH  *   x];
    end
endgenerate

//  定义输出结果数组
wire    [16  -   1   :   0]   Add_1   [KERNEL_SIZE      -   1   :   0];

//一一对应送入乘法器
generate
genvar i;
for(i = 0; i < KERNEL_SIZE; i = i + 1)begin
    mult_8_8 cnn_3_3_mult(
        .CLK(CLK),
        .A(Feature_in[i]),
        .B(Weight_in[i]),
        .P(Add_1[i])
    );
end
endgenerate

// 第一次点乘累加
wire    [17    -   1    :   0]  Add_2   [KERNEL_SIZE/2      -   1  :   0];
generate
genvar j;
for(j = 0; j < KERNEL_SIZE/2; j = j + 1)begin
    add_1_15_1_15 cnn_3_3_add_1(
        .CLK(CLK),
        .A(Add_1[j*2]),
        .B(Add_1[j*2+1]),
        .S(Add_2[j])
    );
end
endgenerate

// 第二次累加
wire    [18     -   1   :   0]  Add_3   [KERNEL_SIZE/4      -   1   :   0];
generate
genvar k;
    for(k   =   0;  k   <   KERNEL_SIZE/4;  k   =   k   +   1)begin
        add_1_16_1_16 cnn_3_3_add_2(
            .CLK(CLK),
            .A(Add_2[k*2]),
            .B(Add_2[k*2+1]),
            .S(Add_3[k])
        );
    end
endgenerate

//  第三次累加
wire    [19      -  1   :   0]  Add_4   [KERNEL_SIZE/8  -   1   :   0];
generate
genvar L;
    for(L   =   0;  L   <   KERNEL_SIZE/8;  L   =   L   +   1)  begin
        add_1_17_1_17 cnn_3_3_add_3(
            .CLK(CLK),
            .A(Add_3[0]),
            .B(Add_3[1]),
            .S(Add_4[0])
        );
    end
endgenerate

//  第四次累加
wire    [19     -   1   :   0]  Add_5   [1  -   1  :  0];
add_1_15_1_18 cnn_3_3_add_4(
    .CLK(CLK),
    .A(Add_1[8]),
    .B(Add_4[0]),
    .S(Add_5[0])
);

//  点乘结果相加偏移量
wire    [32  -   1   :   0]  Add_BIAS_RESULT;
Adder_BIAS  BIAS_ADD(
    .CLK(CLK),
    .A(Add_5[0]),
    .B(BIAS),
    .S(Add_BIAS_RESULT)
);

//  缩放
wire    [64  -   1   :   0]  Mult_Scale_RESULT;
Mult_Scale  Scale_Mult(
    .CLK(CLK),
    .A(Add_BIAS_RESULT),
    .B(Scale),
    .P(Mult_Scale_RESULT)
);

//  移位
wire    [8  -   1   :   0]  Shift_Result;
Shift Shifter(
    .CLK(CLK),
    .RSTN(RSTN),
    .TEMP(Mult_Scale_RESULT),
    .Shift(Shift),
    .Result(Shift_Result)
);

//  加零点
Add_Zero_Point Zero_Adder(
    .CLK(CLK),
    .A(Shift_Result),
    .B(63),
    .S(RESULT)
);

endmodule
