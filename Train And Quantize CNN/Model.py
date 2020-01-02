import torch.nn as nn
import torch
from torch.quantization import QuantStub, DeQuantStub

# 定义网络结构
class LeNet(nn.Module):
    def __init__(self):
        super(LeNet, self).__init__()
        self.quant = QuantStub()
        self.conv1 = nn.Sequential(     #input_size=(1*28*28)
            nn.Conv2d(1, 6, 5, 1, 2), #padding=2保证输入输出尺寸相同
            nn.ReLU(),      #input_size=(6*28*28)
            nn.MaxPool2d(kernel_size=2, stride=2),#output_size=(6*14*14)
        )
        self.conv2 = nn.Sequential(
            nn.Conv2d(6, 16, 5),
            nn.ReLU(),      #input_size=(16*10*10)
            nn.MaxPool2d(2, 2)  #output_size=(16*5*5)
        )
        self.fc1 = nn.Sequential(
            nn.Linear(16 * 5 * 5, 120),
            nn.ReLU()
        )
        self.fc2 = nn.Sequential(
            nn.Linear(120, 84),
            nn.ReLU()
        )
        self.fc3 = nn.Linear(84, 10)
        self.dequant = DeQuantStub()

    # 定义前向传播过程，输入为x Float32
    # def forward(self, x):
    #     x = self.conv1(x)
    #     x = self.conv2(x)
    #     # nn.Linear()的输入输出都是维度为一的值，所以要把多维度的tensor展平成一维
    #     x = x.view(x.size()[0], -1)
    #     x = self.fc1(x)
    #     x = self.fc2(x)
    #     x = self.fc3(x)
    #     return x

    # 定义前向传播过程，输入为x UINT8
    def forward(self, x):
        x = self.quant(x)
        x = self.conv1(x)
        x = self.conv2(x)
        # nn.Linear()的输入输出都是维度为一的值，所以要把多维度的tensor展平成一维
        x = x.reshape([x.size()[0], -1])
        x = self.fc1(x)
        x = self.fc2(x)
        x = self.fc3(x)
        x = self.dequant(x)
        return x

    def fuse_model(self):
        #：[Conv，Relu]，[Conv，BatchNorm]，[Conv，BatchNorm，Relu]，[Linear，Relu]
        torch.quantization.fuse_modules(self.conv1, ['0', '1'], inplace=True)
        torch.quantization.fuse_modules(self.conv2, ['0', '1'], inplace=True)
        torch.quantization.fuse_modules(self.fc1, ['0', '1'], inplace=True)
        torch.quantization.fuse_modules(self.fc2, ['0', '1'], inplace=True)
        # for m in self.modules():
        #     print (type(m))
        #     if type(m) == ConvBNReLU:
        #         torch.quantization.fuse_modules(m, ['0', '1', '2'], inplace=True)
        #     if type(m) == InvertedResidual:
        #         for idx in range(len(m.conv)):
        #             if type(m.conv[idx]) == nn.Conv2d:
        #                 torch.quantization.fuse_modules(m.conv, [str(idx), str(idx + 1)], inplace=True)