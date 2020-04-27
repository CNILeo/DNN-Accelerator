`timescale 1ns / 1ps

module Shift(
    input CLK,
    input RSTN,
    input [64   -   1   :   0]  TEMP,
    input [8    -   1   :  0]   Shift,
    output [8   -   1   :   0]	Result
    );
    
//  存储被移数
reg [64 -   1:  0]  SAVE;

always @(posedge CLK) begin
    if(RSTN ==  0)begin
        SAVE    <=    64'b0;
    end
    else begin
        SAVE    <=    TEMP;
    end
end

//  得到移位结果
wire    [64 -   1 :   0]   SHIFT_RESULT;
assign SHIFT_RESULT     =       (TEMP >>  Shift);
//  得到被减数
wire    [64 -   1 :   0]   SUB_TEMP;
assign  SUB_TEMP     =      (64'h0000_0000_0000_0001 << (Shift-1));
//  得到被减数
wire     [64 -   1 :   0]   SUB;
assign SUB      =    SHIFT_RESULT == 0? 0 : SUB_TEMP << SHIFT_RESULT;
//  得到余数
wire     [64 -   1 :   0]    LEFT;
assign LEFT     =   SAVE[63 -   1 :   0] ^ SUB;
//  四舍五入
wire    ROUND;
assign ROUND = (LEFT >> (Shift - 1));
//  返回四舍五入后的移位结果
assign Result =  ROUND ? SHIFT_RESULT   +   1 :   SHIFT_RESULT;

endmodule
