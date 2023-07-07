`timescale 1ns / 1ps

module CNN_3_3_TestBench(

    );

//end

reg CLK;
reg RSTN;
reg [71:0]Feature;
reg [71:0]Weight;
reg [31:0]Scale;
reg [31:0]BIAS;
reg [8-1:0]Shift;
wire [7:0]Result;

CNN_3_3 Test(
    .Feature(Feature),
    .Weight(Weight),
    .BIAS(BIAS),
    .Scale(Scale),
    .Shift(Shift),
    .RESULT(Result),
    .CLK(CLK),
    .RSTN(RSTN)
);

always #10
begin
    CLK = ~CLK;
end

reg [4	-	1	:	0]i;
reg	[8	-	1	:	0] memory[9	-	1	:	0];

initial begin
    CLK = 0;    
	RSTN    =   1;
	//	��������ͼ
    Feature = 72'h00_00_00_00_7F_7F_00_7F_7F;
    //	����Ȩ��
    $readmemh("../new/Weight.txt", memory);    
    for(i=0;i<9;i=i+1)
    begin
        $display("%h", memory[i]);
        Weight = (Weight << 8) | memory[i];
    end
    //	����ƫ����
    BIAS = 32'h0000_0aff;
    //	��������
    Scale = 32'hb775_637e;
	//	������λ
    Shift = 8'h2a;
    #10
        RSTN    =   0;
    #20
        RSTN    =   1;
end

endmodule
