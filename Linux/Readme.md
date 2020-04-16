# 说明
这一章主要是说明如何去用PetaLinux移植Linux到ZYNQ中，以及如何将PL端的设备驱动添加到Linux的设备树中。PL端的工程是添加了一个NN_REg，AXI VDMA（用于Linux界面输出）。
# 软件环境
* Ubuntu 18.04 LTS
* PetaLinux 2019.2
* Vivado 2019.2

这里需要注意的是PetaLinux的版本是和Ubuntu严格对应的，安装的时候务必按照Xilinx官方说明对应好版本。
# 流程
1. 搭建好PL端的工程，并输出比特流文件，并导出硬件生成的*.sdk文件夹(File-Export-Export HardWare，选上Include BitStream)，在本文中依此建立后面的Petalinux；
   
   这里需要说明的是，Vivado 2019.2开始输出的是单独的XSA文件，没有.sdk后缀名的文件夹。sudo dpkg-reconfigure dash
2. 执行下列命令，其中/opt/pkg/petalinux/2019.2为自己PetaLinux安装的位置；
   
   source /opt/pkg/petalinux/2019.2/settings.sh
3. 执行下列命令，--name 传入工程名字（自定义）
   
   petalinux-create --type project --template zynq --name leo_test

4. 进入PetaLinux自动创建的文件夹
5. 拷贝Vivado输出的XSA/HDF文件到该文件夹，然后执行下列命令(/home/leo/test为PetaLinux自动创建的文件夹)
   
   petalinux-config --get-hw-description=/home/leo/leo_test

6. 设置SD根文件系统从SD卡载入

    执行上面命令后，会自动打开配置窗口，在 Image Packaging Configuration - Root filesystem type 选项中选择ext，然后保存退出。

    这步会花费较长的时间。

7. 使用下载好的Linux源码进行编译(可选)
    
    默认情况下PetaLinux自动联网到Xilinx的GitHub上下载Linux源码，国内的网络环境使用这种方法可能会耗费较长的时间，建议指定一个Linux源码。
    
    * 执行petalinux-config，选择Linux Components Selection-linux-kernel选择ext-local-src。
    * 然后在新增的选项External linux-kernel local source settings的选项中输入下载并解压好的Linux源码路径，如/home/leo/Desktop/linux-xlnx-xlnx_rebase_v4.19_2019.2

    这里需要注意的是，PetaLinux对下载的Linux源码版本检测十分严格，请在下载时根据PetaLinux的版本下载对应的Linux源码。
    
    下载链接：[Linux_Xilinx](https://github.com/Xilinx/linux-xlnx/releases)

8. 添加驱动(可选步骤)
   
   这里示范的是AXI-DMA的驱动添加，大家可以根据实际需求添加自己的驱动（如HDMI等），但是在NN的项目中并没有AXI-DMA并没有连接PS端，只是因为HDMI的驱动添加较为繁琐，所以这里用AXI-DMA作为示例。[AXI-DMA](https://github.com/bperez77/xilinx_axidma/tree/master)驱动文件下载
   * 执行下列命令，创建一个驱动模块
  
        petalinux-create -t modules -n xilinx-axidma --enable
   * 进入下列路径，清空文件夹内的原有的.c后缀名文件，并将下好的驱动文件粘贴至下列路径

        工程路径/project-spec/meta-user/recipes-modules/模块名称/files
   * 修改文件夹下的MakeFile
  
        这里需要根据驱动的要求更改，这里我将第一行替换成了如下代码。

            DRIVER_NAME = xilinx-axidma
            $(DRIVER_NAME)-objs = axi_dma.o axidma_chrdev.o axidma_dma.o axidma_of.o
            obj-m := $(DRIVER_NAME).o
    * 进入下列路径，修改"模块名.bb"文件
        
        工程路径/project-spec/meta-user/recipes-modules/模块名称/

        这一步是修改SRC_URL，也就是我们上一步所在目录的所有文件名，如下：

            SRC_URI = "file://Makefile \ 
                    file://axi_dma.c \
                    file://axidma_chrdev.c \
                    file://axidma_dma.c \
                    file://axidma_of.c \
                    file://axidma.h \
                    file://COPYING \
                    "
    * 修改设备树

        * 终端中输入 petalinux-config -c device-tree
        * 进入"工程路径/components/plnx_workspace/device-tree/device-tree"，修改设备树文件pl.dtsi
            
            这里以AXI-DMA驱动为例，添加内容如下

                axidma_chrdev: axidma_chrdev@0 {
                    compatible = "xlnx,axidma-chrdev";
                    dmas = <&axi_dma_0 0 &axi_dma_0 1>;
                    dma-names = "tx_channel", "rx_channel";
                };
9. 配置Linux内核(可选步骤)
   * 在终端中输入petalinux-config -c kernel
   * 修改CMA大小
    CMA即允许系统申请连续内存最大的Size，默认为7M，这里根据实际需求更改，方法如下：
    选择Memory Management options - Maximum count of the CMA areas，然后进行修改即可。
   * 配置串口芯片驱动
    Device Drivers - USB support - USB Serial Converter support, 按Y，根据开发板上的芯片选择对应的型号。
10. 配置Linux预留的内存空间(可选步骤)
    这一步的目的是在PS和PL共享内存的情况下，避免PL端写入的内存覆盖了PS端在内存写入的内容。
    * 在ZYNQ的Linux的源码中，arch/arm/mach-zynq/common.c中，函数zynq_memory_init，增加两句话即可：

            memblock_free(0x30000000, 256 * SZ_1M);
            memblock_remove(0x30000000, 256 * SZ_1M);
    
        其中，0x30000000为内存物理地址，256*SZ_1M为大小。我们的芯片的内存物理地址是从0开始的，0x30000000相当于PS使用768M内存，给256M给PL使用。
11. 编译
    
    执行petalinux-build
12. 生成BOOT.BIN及image.ub文件
    
    petalinux-package --boot --fsbl --fpga --u-boot --force

    命令的一些解释：
    * petalinux-package --boot

        用于打包生成BOOT.BIN文件
    * fsbl

        指定加入FSBL（First Store Block Load）文件
    * fpga
  
        指令指定加入FPGA比特流文件
    * --u-boot
  
        指令指定将u-boot文件打包到BOOT.BIN中
    * --force
  
        指定允许覆盖之前已生成过的BOOT.BIN文件
13. 将BOOT.BIN以及image.ub复制到SD卡的FAT分区
14. 将rootfs解压到到SD卡的ext分区

    这里可以使用PetaLinux生成的，PetaLinux生成的rootfs不带GCC，不带Python，不带软件管理器，所以开发起来比较麻烦。我这用的是Ubuntu 18.04的rootfs。这里需要注意的是，rootfs不用每次都替换，一劳永逸。

# 附录

NN_REG.c - NN_REG在PS端的读写操作代码