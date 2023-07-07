
`timescale 1 ns / 1 ps

module DMA_Read_Control_v1_0_M00_AXI #
(
    parameter  C_M_START_DATA_VALUE	= 32'h0000_0000,
    parameter  C_M_TARGET_SLAVE_BASE_ADDR	= 32'h0000_0000,
    parameter integer C_M_AXI_ADDR_WIDTH	= 32,
    parameter integer C_M_AXI_DATA_WIDTH	= 32,
    parameter integer C_M_TRANSACTIONS_NUM	= 4
)
(
    // User Define
    input wire [31:0] DMA_SA_CONFIG,
    input wire [25:0] DMA_LENGTH_CONFIG,
    input wire  DMA_READ_IRQ, 
    input wire  DMA_READ_VALID,
    output wire DMA_IDLE,
    // AXI Lite Defination
    input wire  M_AXI_ACLK,
    input wire  M_AXI_ARESETN,
    output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR,
    output wire [2 : 0] M_AXI_AWPROT,
    output wire  M_AXI_AWVALID,
    input wire  M_AXI_AWREADY,
    output wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA,
    output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
    output wire  M_AXI_WVALID,
    input wire  M_AXI_WREADY,
    input wire [1 : 0] M_AXI_BRESP,
    input wire  M_AXI_BVALID,
    output wire  M_AXI_BREADY,
    output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,
    output wire [2 : 0] M_AXI_ARPROT,
    output wire  M_AXI_ARVALID,
    input wire  M_AXI_ARREADY,
    input wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA,
    input wire [1 : 0] M_AXI_RRESP,
    input wire  M_AXI_RVALID,
    output wire  M_AXI_RREADY
);
	// AXI4LITE signals
	//write address valid
	reg  	axi_awvalid;
	//write data valid
	reg  	axi_wvalid;
	//read address valid
	reg  	axi_arvalid;
	//read data acceptance
	reg  	axi_rready;
	//write response acceptance
	reg  	axi_bready;
	//write address
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	//write data
	reg [C_M_AXI_DATA_WIDTH-1 : 0] 	axi_wdata;
	//read addresss
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	//A pulse to initiate a write transaction
	reg  	start_single_write;
	//A pulse to initiate a read transaction
	reg  	start_single_read;
    // User_Logic
    //---------------------<�źŶ���>---------------------------------------
    reg  [3:0]              state                ;
    reg  [3:0]              write_state          ;
    reg                     read_complete        ;
    reg                     dma_idle             ;
    //---------------------<����״̬������>-------------------------------------
    localparam IDLE                 = 4'b0000           ; // ����̬
    localparam Check_IDLE           = 4'b0001           ; // ���DMA�Ƿ���У�AXI��״̬
    localparam Control_DMA          = 4'b0010           ; // ������ص�DMA�Ĵ���
    localparam Waiting_IRQ          = 4'b0100           ; // �ȴ��жϷ���
    localparam Clear_IRQ            = 4'b1000           ; // ���DMA����������ж�
    //---------------------<д����������Ʋ���>-------------------------------------
    localparam Write_IRQ            = 4'b0000           ; // ���DMA�Ƿ���У�AXI��״̬
    localparam Write_SA             = 4'b0001           ; // ������ص�DMA�Ĵ���
    localparam Write_Length         = 4'b0010           ; // ���DMA����������ж�
    localparam Write_Complete       = 4'b0011           ; // ���üĴ������
    //---------------------<�Ĵ�����ַ>-------------------------------------
    localparam IDLE_REG             = 32'h0000_0004     ; // �����У���ȡ��0λ
    localparam IRQ_REG              = 32'h0000_0000     ; // ����DMA��������жϣ����õ�0λΪ0(����DMA)����12λΪ1(�ж�)
    localparam SA_REG               = 32'h0000_0018     ; // Դ��ַ�Ĵ�����ַ(LSB)
    localparam Length_REG           = 32'h0000_0028     ; // ���ȵ�ַ������25-0λ
    localparam Clear_REG            = 32'h0000_0004     ; // ���DMA�жϣ���12λ
    //---------------------<�Ĵ���д�������>--------------------------------
    localparam IRQ_DATA             = 32'h00011003      ;  
    localparam Clear_DATA           = 32'h00011001      ;
	//Adding the offset address to the base addr of the slave
	assign M_AXI_AWADDR	= C_M_TARGET_SLAVE_BASE_ADDR + axi_awaddr;
	//AXI 4 write data
	assign M_AXI_WDATA	= axi_wdata;
	assign M_AXI_AWPROT	= 3'b000;
	assign M_AXI_AWVALID	= axi_awvalid;
	//Write Data(W)
	assign M_AXI_WVALID	= axi_wvalid;
	//Set all byte strobes in this example
	assign M_AXI_WSTRB	= 4'b1111;
	//Write Response (B)
	assign M_AXI_BREADY	= axi_bready;
	//Read Address (AR)
	assign M_AXI_ARADDR	= C_M_TARGET_SLAVE_BASE_ADDR + axi_araddr;
	assign M_AXI_ARVALID	= axi_arvalid;
	assign M_AXI_ARPROT	= 3'b001;
	//Read and Read Response (R)
	assign M_AXI_RREADY	= axi_rready;
    // User Logic
    wire  [31:0]            dma_sa_config        ;
    wire  [25:0]            dma_length_config    ;
    assign dma_sa_config = DMA_READ_VALID == 1 ? DMA_SA_CONFIG : dma_sa_config;
    assign dma_length_config = DMA_READ_VALID == 1 ? DMA_LENGTH_CONFIG : dma_length_config;
	//Write Address Channel
    always @(posedge M_AXI_ACLK) begin                                                                         
        if (M_AXI_ARESETN == 0) begin                                                                    
            axi_awvalid <= 1'b0;                                                   
        end                                                                           
        else begin                                                                    
            if (start_single_write) begin                                                                
                axi_awvalid <= 1'b1;                                               
            end                                                                  
            else if (M_AXI_AWREADY && axi_awvalid) begin                                                                
                axi_awvalid <= 1'b0;                                               
            end                                                                  
        end                                                                      
    end                                                                          
	//Write Data Channel
    always @(posedge M_AXI_ACLK) begin                                                                         
        if (M_AXI_ARESETN == 0 ) begin                                                                     
            axi_wvalid <= 1'b0;                                                     
        end                                                                           
        else if (start_single_write) begin                                                                     
            axi_wvalid <= 1'b1;                                                     
        end                                                                            
        else if (M_AXI_WREADY && axi_wvalid) begin                                                                     
            axi_wvalid <= 1'b0;                                                      
        end                                                                       
    end                                                                           
	//Write Response (B) Channel
    always @(posedge M_AXI_ACLK) begin                                                                
        if (M_AXI_ARESETN == 0) begin                                                            
            axi_bready <= 1'b0;                                            
        end                                                                           
        else if (M_AXI_BVALID && ~axi_bready) begin                                                            
            axi_bready <= 1'b1;                                            
        end                                                                                            
        else if (axi_bready) begin                                                            
            axi_bready <= 1'b0;                                            
        end                                                                                              
        else begin                                                        
            axi_bready <= axi_bready;
        end                                      
    end                                                                              
    // Write Response (B) Valid
    always @(posedge M_AXI_ACLK) begin                                                                            
        if (M_AXI_ARESETN == 0) begin                                                                        
            axi_arvalid <= 1'b0;                                                       
        end       
        else if (start_single_read) begin                                                                        
            axi_arvalid <= 1'b1;                                                       
        end                                                                          
        else if (M_AXI_ARREADY && axi_arvalid) begin                                                                        
            axi_arvalid <= 1'b0;                                                       
        end                                                                                                                          
    end                                                                              
	//Read Data (and Response) Channel
    always @(posedge M_AXI_ACLK) begin                                                                 
        if (M_AXI_ARESETN == 0 ) begin                                                             
            axi_rready <= 1'b0;                                             
        end                                                                                      
        else if (M_AXI_RVALID && ~axi_rready) begin                                                             
            axi_rready <= 1'b1;                                             
        end                                                                                                 
        else if (axi_rready) begin
            axi_rready <= 1'b0;                
        end                           
    end
	//--------------------------------
	//User Logic
	//--------------------------------
    // DMA Read_Example By CNILeo    
    // ����״̬��
    always @(posedge M_AXI_ACLK) begin
        if(M_AXI_ARESETN == 0) begin
            state <= IDLE;
        end
        else begin
            case(state)
                IDLE: begin
                    if(DMA_READ_VALID) begin
                        state <= Check_IDLE;
                    end
                end
                Check_IDLE: begin
                    if(M_AXI_RDATA[0] == 1 || M_AXI_RDATA[1] == 1) begin
                        state <= Control_DMA;
                    end
                end
                Control_DMA: begin
                    if(write_state == Write_Complete) begin
                        state <= Waiting_IRQ;
                    end
                end
                Waiting_IRQ: begin
                    if(DMA_READ_IRQ) begin
                        state <= Clear_IRQ;
                    end
                end
                Clear_IRQ: begin
                    if(~DMA_READ_IRQ) begin
                        state <= IDLE;
                    end
                end
                default:
                    state <= IDLE;
            endcase
        end
    end
    //Control DMA_IDLE
    always @(posedge M_AXI_ACLK) begin
        if (M_AXI_ARESETN == 0) begin                                                 
            dma_idle <= 1'b0;
        end
        else if(state == IDLE) begin
            dma_idle <= 1'b1;
        end
        else begin
            dma_idle <= 1'b0;
        end       
    end
    
    assign DMA_IDLE = dma_idle & ~DMA_READ_VALID;
    //Read Addresses                                              
    always @(posedge M_AXI_ACLK) begin                                                     
        if (M_AXI_ARESETN == 0) begin                                                 
            axi_araddr <= 0;                                    
        end                                                                        
        else if (start_single_read) begin                                                 
            axi_araddr <= IDLE_REG;
        end
        else begin
            axi_araddr <= 0;
        end                     
    end
    //Read Complete
    always @(posedge M_AXI_ACLK) begin
        if(M_AXI_ARESETN == 0) begin
            read_complete <= 1'b1;
        end
        else begin
            if(axi_rready == 1'b1)
                read_complete <= 1'b1;
            else if(start_single_read == 1'b1)
                read_complete <= 1'b0;
            else
                read_complete <= read_complete;
        end
    end
    //ENA Check_IDLE
    always @(posedge M_AXI_ACLK)begin
        if(M_AXI_ARESETN == 0) begin
            start_single_read <= 1'b0;
        end
        else begin
            if(state == Check_IDLE) begin
                if(~axi_arvalid && ~M_AXI_RVALID && ~start_single_read  && read_complete) begin
                    start_single_read <= 1'b1;
                end
                else begin
                    start_single_read <= 1'b0; //Negate to generate a pulse
                end
            end
            else begin
                start_single_read <= 1'b0;
            end
        end
    end
    // ������ - ����д��ַ 
    // 4'b0001 - IRQ_Set - 32'h0000_0000 - 
    // 4'b0010 - Source Address Set - 32'h0000_0018
    // 4'b0011 - Length_Set - 32'h0000_0028
    // 4'b0100 - Clear_IRQ - 32'h0000_0004
    always @(posedge M_AXI_ACLK)begin
        if(M_AXI_ARESETN == 0) begin
            write_state <= 4'b0000;
        end
        else begin
            if (state == Control_DMA) begin
                if(M_AXI_AWREADY && axi_awvalid) begin
                    write_state <= write_state + 1'b1;
                end
                else begin
                    write_state <= write_state;
                end
            end
            else begin
                write_state <= 4'b0000;
            end
        end
    end
    // Write Addresses
    always @(posedge M_AXI_ACLK) begin                                                     
        if (M_AXI_ARESETN == 0) begin                                                 
            axi_awaddr <= 32'h0000_0000;                               
        end                                                            
        else if(state == Control_DMA) begin
            case(write_state)
                Write_IRQ: axi_awaddr <= IRQ_REG;
                Write_SA: axi_awaddr <= SA_REG;
                Write_Length: axi_awaddr <= Length_REG;
                default: axi_awaddr <= 32'h0000_0000;
            endcase
        end
        else if(state == Clear_IRQ) begin
            axi_awaddr <= Clear_REG;
        end
        else begin
                axi_awaddr <= 0; 
        end           
    end
    //start single write
    always @(posedge M_AXI_ACLK) begin
        if(M_AXI_ARESETN == 0) begin
            start_single_write <= 0;
        end
        else begin
            if (state == Control_DMA || state == Clear_IRQ) begin
                if (~axi_awvalid && ~axi_wvalid && ~M_AXI_BVALID && ~start_single_write) begin                                                           
                   start_single_write <= 1'b1;                                                                      
                end           
                else begin
                    start_single_write <= 0;
                end
            end
            else begin
                start_single_write <= 0;
            end
        end
    end
    // Write Data Control            
    always @(posedge M_AXI_ACLK) begin                                                     
        if (M_AXI_ARESETN == 0) begin                                                 
            axi_wdata <= C_M_START_DATA_VALUE;                  
        end                                                                     
        else if (state == Control_DMA) begin       
            case(write_state)
                Write_IRQ: axi_wdata <= C_M_START_DATA_VALUE + IRQ_DATA;
                Write_SA: axi_wdata <= C_M_START_DATA_VALUE + dma_sa_config;
                Write_Length: axi_wdata <= C_M_START_DATA_VALUE + dma_length_config;
                default: axi_wdata <= C_M_START_DATA_VALUE;
            endcase                                                 
        end
        else if(state == Clear_IRQ)begin
            axi_wdata <= Clear_DATA;
        end     
        else begin
            axi_wdata <= C_M_START_DATA_VALUE;                                          
        end  
    end
endmodule