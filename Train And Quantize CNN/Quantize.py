import Model
import torch.nn as nn
import torch.optim as optim
import argparse
import torchvision as tv
import torchvision.transforms as transforms
import torch.quantization
import torch.jit
import numpy as np

# device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
device = torch.device("cpu")
parser = argparse.ArgumentParser()
parser.add_argument('--Folder', default='./Model', help='Folder Path To Output The Model') #模型保存路径
parser.add_argument('--Net', default='./Model/Net.pth', help="Path To Load The Model")  #模型加载路径
opt = parser.parse_args()

# 超参数设置
EPOCH = 8   #遍历数据集次数
BATCH_SIZE = 64      #批处理尺寸(batch_size)
LR = 0.001        #学习率

# 定义数据预处理方式
transform = transforms.ToTensor()

# 定义训练数据集
trainset = tv.datasets.MNIST(
    root='./data/',
    train=True,
    download=True,
    transform=transform)

# 定义训练批处理数据
trainloader = torch.utils.data.DataLoader(
    trainset,
    batch_size=BATCH_SIZE,
    shuffle=True,
    )

# 定义测试数据集
testset = tv.datasets.MNIST(
    root='./data/',
    train=False,
    download=True,
    transform=transform)

# 定义测试批处理数据
testloader = torch.utils.data.DataLoader(
    testset,
    batch_size=BATCH_SIZE,
    shuffle=False,
    )

net = Model.LeNet().to(device)

# Load The PreTrain Weight
Checkpoint = torch.load("./Model/net_008.pth")  # CPU
para = net.parameters()
net.load_state_dict(Checkpoint)

# net = net.eval()
# net.fuse_model()

criterion = nn.CrossEntropyLoss()  # 交叉熵损失函数，通常用于多分类问题上
optimizer = optim.SGD(para, lr=LR, momentum=0.9)

#Quantization
net.qconfig = torch.quantization.get_default_qat_qconfig('fbgemm')
torch.quantization.prepare_qat(net, inplace=True)

def Save_Quantize_Para(File, quantized_model):
    File.write("Quant: ")
    File.write(str(quantized_model.quant.scale) + "\n")
    File.write(str(quantized_model.quant.zero_point) + "\n")
    File.write("Conv1: ")
    for i in range(0, 3):
        File.write(str(quantized_model.conv1[i]) + "\n")
    File.write("Conv2: ")
    for i in range(0, 3):
        File.write(str(quantized_model.conv2[i]) + "\n")
    File.write("FC1: ")
    for i in range(0, 2):
        File.write(str(quantized_model.fc1[i]) + "\n")
    File.write("FC2: ")
    for i in range(0, 2):
        File.write(str(quantized_model.fc2[i]) + "\n")
    File.write("FC3: ")
    File.write(str(quantized_model.fc3) + "\n")
    File.write("DeQuant: ")
    File.write(str(quantized_model.dequant) + "\n")

# 训练
if __name__ == "__main__":
    for epoch in range(EPOCH):
        sum_loss = 0.0
        # 数据读取
        for i, data in enumerate(trainloader):
            inputs, labels = data
            inputs, labels = inputs.to(device), labels.to(device)

            # 梯度清零
            optimizer.zero_grad()

            # forward + backward
            outputs = net(inputs)
            loss = criterion(outputs, labels)
            loss.backward()
            optimizer.step()

            # 每训练100个batch打印一次平均loss
            sum_loss += loss.item()
            if i % 100 == 99:
                print('[%d, %d] loss: %.03f'
                      % (epoch + 1, i + 1, sum_loss / 100))
                sum_loss = 0.0
        if epoch > 2:
            net.apply(torch.quantization.disable_observer)
        if epoch > 3:
            net.apply(torch.nn.intrinsic.qat.freeze_bn_stats)

        # 保存模型
        quantized_model = torch.quantization.convert(net.eval(), inplace=False)
        torch.jit.save(torch.jit.script(quantized_model), "./Model/Quant_Model_Epoch_%s.pth" % str(epoch + 1))

        # 每跑完一次epoch测试一下准确率
        with torch.no_grad():
            correct = 0
            total = 0
            for data in testloader:
                images, labels = data
                images, labels = images.to(device), labels.to(device)
                outputs = quantized_model(images)
                # 取得分最高的那个类
                _, predicted = torch.max(outputs.data, 1)
                total += labels.size(0)
                correct += (predicted == labels).sum()
            print('第%d个Epoch的识别准确率为: %.02f%%' % (epoch + 1, (100 * correct / total)))
        File = open("./Model/Quant_Model_Epoch_%s.txt" % str(epoch + 1), "w")
        Save_Quantize_Para(File, quantized_model)
        File.close()
        # torch.quantization.get_observer_dict(mod = net, target_dict = Quantize_Para)
        # print (Quantize_Para)
        # np.save("./Model/Quant_Model_Epoch_%s.npy" % str(epoch + 1), Quantize_Para)
