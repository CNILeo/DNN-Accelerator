`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/06 23:21:34
// Design Name: 
// Module Name: DMA_Write_TestBench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DMA_Write_TestBench(

    );

reg CLK;
reg RST;
reg [31:0]DMA_DA_CONFIG;
reg [25:0]DMA_LENGTH_CONFIG;
reg DMA_WRITE_VALID;

wire DMA_WRITE_IDLE;
wire DMA_WRITE_INT;

DMA_Write_Desgin_wrapper Test(
    .CLK(CLK),
    .DMA_Write_INT(DMA_WRITE_INT),
    .RST(RST),
    .dma_da_config(DMA_DA_CONFIG),
    .dma_length_config(DMA_LENGTH_CONFIG),
    .dma_write_idle(DMA_WRITE_IDLE),
    .dma_write_valid(DMA_WRITE_VALID)
 );
 
 always #10 begin
    CLK = ~CLK;
end

always @(posedge CLK) begin
    if(RST == 0) begin
        DMA_WRITE_VALID = 0;
    end
    else if(DMA_WRITE_IDLE)
        DMA_WRITE_VALID = 1;
    else begin
        DMA_WRITE_VALID = 0;
    end
end

always @(negedge DMA_WRITE_VALID) begin
    if(RST==0)
        DMA_DA_CONFIG = 32'h0000_0000;
    else
        DMA_DA_CONFIG = DMA_DA_CONFIG + 32'h0000_0020;
end

initial begin 
    CLK = 0;
    RST = 1;   
    DMA_LENGTH_CONFIG =26'h000_0040;
    #10 
        RST = 0;
    #20
        RST = 1;
    wait(DMA_DA_CONFIG > 32'h0000_0800)
    $finish;
end
 
endmodule
