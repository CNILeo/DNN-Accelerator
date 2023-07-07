`timescale 1ns / 1ps

module Shift(
    input CLK,
    input RSTN,
    input [64   -   1   :   0]  TEMP,
    input [8    -   1   :  0]   Shift,
    output [8   -   1   :   0]	Result
    );
    
//  �洢������
reg [64 -   1:  0]  SAVE;

always @(posedge CLK) begin
    if(RSTN ==  0)begin
        SAVE    <=    64'b0;
    end
    else begin
        SAVE    <=    TEMP;
    end
end

//  �õ���λ���
wire    [64 -   1 :   0]   SHIFT_RESULT;
assign SHIFT_RESULT     =       (TEMP >>  Shift);
//  �õ�������
wire    [64 -   1 :   0]   SUB_TEMP;
assign  SUB_TEMP     =      (64'h0000_0000_0000_0001 << (Shift-1));
//  �õ�������
wire     [64 -   1 :   0]   SUB;
assign SUB      =    SHIFT_RESULT == 0? 0 : SUB_TEMP << SHIFT_RESULT;
//  �õ�����
wire     [64 -   1 :   0]    LEFT;
assign LEFT     =   SAVE[63 -   1 :   0] ^ SUB;
//  ��������
wire    ROUND;
assign ROUND = (LEFT >> (Shift - 1));
//  ����������������λ���
assign Result =  ROUND ? SHIFT_RESULT   +   1 :   SHIFT_RESULT;

endmodule
