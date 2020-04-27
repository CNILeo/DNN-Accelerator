`timescale 1ns / 1ps

module Shift_TestBench(

    );

reg clk;
reg rstn;
reg [63: 0]TEMP;
reg [8  -   1   :   0]Shift;
wire [7		:	0]Result;

Shift TestBench(
    .CLK(clk),
    .RSTN(rstn),
    .TEMP(TEMP),
    .Shift(Shift),
    .Result(Result)
);

always #10 clk = ~clk;

always @(posedge clk) begin
    if(rstn==0)begin
        TEMP = 64'h0000_0000_0000_0000;
    end
    else    begin
        TEMP =  TEMP + 1;
    end
end

initial begin
    clk =   0;  rstn    =   1;
    Shift = 8'h03;
    #10
        rstn    =   0;
    #20
        rstn    =   1;
    wait(TEMP == 8'hFF);
    $finish;
end

endmodule
