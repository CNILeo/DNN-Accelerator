`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/07 01:28:17
// Design Name: 
// Module Name: SS2M_Data_Generator
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


module SS2M_Data_Generator#(
	parameter DW = 8
)
(
	input axis_clk,
    input axis_aresetn,
    //User Defination
    input [25:0]Length,
    input Valid,
    //AXIS Defination
    output  [DW-1:0]   m_axis_tdata,
    output  [DW/8-1:0] m_axis_tkeep,
    output             m_axis_tvalid,
    output             m_axis_tlast,
    input              m_axis_tready
);

reg [23:0]cnt;
reg tlast;
reg stop;

assign  m_axis_tvalid = m_axis_tready && ~stop;
assign  m_axis_tdata = 8'h00 | cnt;
assign  m_axis_tlast = tlast;
assign  m_axis_tkeep = 16'hFFFF;

always @(posedge axis_clk) begin
    if(axis_aresetn == 0 || Valid == 1) begin
		stop <= 0;
    end
    else if(cnt == Length - 1)
        stop <= 1;
    else
        stop<=stop;
end

always @(posedge axis_clk) begin
    if(axis_aresetn == 0 || Valid == 1) begin
		cnt <= 26'b0000_0000_0000_0000_0000_000;
    end
    else if(m_axis_tvalid) begin
        if(cnt == Length - 1)
            cnt <= 26'b0000_0000_0000_0000_0000_000;
        else
		  cnt <= cnt + 1'b1;
    end
	else begin
		cnt <= cnt;
	end
end

always @(posedge axis_clk) begin
    if(axis_aresetn == 0 || Valid == 1) begin
        tlast <= 1'b0;
    end
    else if(m_axis_tvalid) begin
        if(cnt == Length - 2) begin
            tlast <= 1'b1;
        end
		else begin
			tlast <= 1'b0;
		end
    end
	else begin
		tlast <= 1'b0;
	end
end

endmodule
