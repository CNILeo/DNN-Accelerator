`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/05 02:28:48
// Design Name: 
// Module Name: dma_sim
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


module TestBench();

reg     CLK;
reg     RST;

reg     [25 : 0]    DMA_LENGTH_CONFIG;
reg     [31 : 0]    DMA_SA_CONFIG;

reg     DMA_READ_VALID;

wire    DMA_IDLE;
wire    DMA_IRQ;

DMA_Read_Design_wrapper Sim(
    .CLK(CLK),
    .dma_read_valid(DMA_READ_VALID),
    .RST(RST),
    .dma_length_config(DMA_LENGTH_CONFIG),
    .dma_sa_config(DMA_SA_CONFIG),
    .DMA_IRQ(DMA_IRQ),
    .dma_idle(DMA_IDLE)
);

always #10 begin
    CLK = ~CLK;
end

always @(posedge CLK) begin
    if(RST == 0) begin
        DMA_READ_VALID = 0;
    end
    else if(DMA_IDLE)
        DMA_READ_VALID = 1;
    else begin
        DMA_READ_VALID = 0;
    end
end

always @(negedge DMA_READ_VALID) begin
    if(RST==0)
        DMA_SA_CONFIG = 32'h0000_0000;
    else
        DMA_SA_CONFIG = DMA_SA_CONFIG + 32'h0000_0020;
end

initial begin 
    CLK = 0;
    RST = 1;   
    DMA_LENGTH_CONFIG =26'h000_0040;
    #10 
        RST = 0;
    #20
        RST = 1;
    wait(DMA_SA_CONFIG > 32'h0000_0800)
    $finish;
end

endmodule
