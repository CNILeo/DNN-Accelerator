# 说明
本代码采用 [AirHDL](https://airhdl.com/) 来生成通过AXI协议来配置NN加速器的寄存器的代码，不涉及到任何手动代码的编写，毕竟能偷懒就偷懒。
# 寄存器设计说明
本项目的思路是CPU负责一些FPGA"不擅长"的计算，以及控制FPGA的调度（这样的好处一是给FPGA节省了的逻辑资源，节省下来的逻辑资源用于NN的计算，二是减小了FPGA的工作，毕竟调度这一块代码量还是不小的）
Offset | Name | Description | Type | Access
:-: | :-: | :-: | :-: | :-:
0x0 | 	COMPUTE_TYPE | Compute Type(ID), Stride Step/Scale | REG | READ_WRITE | 
0x4 | PADDING | Padding Mode | REG | READ_WRITE |
0x8 | PARAMETER | Zero Point, Scale | REG | READ_WRITE |
0xC | FEATURE | Feature Address | REG | READ_WRITE |
0x10 | FEATURE_SHAPE | Feature Shape | REG | READ_WRITE |
0x14 | FEATURE_LENGTH | Feature Length | REG | READ_WRITE |
0x18 | WEIGHT | Weight Address | REG | READ_WRITE |
0x1C | WEIGHT_LENGTH | Weight Length | REG | READ_WRITE |
0x20 | WEIGHT_SHAPE | Weight Shape | REG | READ_WRITE |
0x24 | RESULT | Result Address | REG | READ_WRITE |
0x28 | RESULT_LENGTH | Result Length | REG | READ_WRITE |
## 补充说明
寄存器配置的是卷积计算的一些参数，都是固定的（除内存外），特征图的形状和权重的形状虽然能够推算出来的，但是和其耗费的计算资源相比，一个32位寄存器所使用的资源是微不足道的。

* COMPUTE_TYPE
  
  本项目的思路是给每个计算核编号，CPU(PS)通过传递编号值来启动计算核的工作。这里的Scale指的是Upsample的缩放。

  注：计算核是以一个计算类型（如卷积、池化等）为单位，一个计算类型可能会有多个计算核。

* PADDING
  
  这里的PADDING是以特征图的上下左右边界来划分，每个边界有8比特空间，用来表示需要填充的列/行，0则代表不需要填充。