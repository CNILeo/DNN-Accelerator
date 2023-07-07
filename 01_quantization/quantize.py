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
parser.add_argument('--quantized_dir', default='./quantized', help='path to save ckpt') 
parser.add_argument('--net', default='./ckpt/last.pth', help="path to load ckpt")
opt = parser.parse_args()

EPOCH = 8
BATCH_SIZE = 64
LR = 0.001

transform = transforms.ToTensor()

trainset = tv.datasets.MNIST(
    root='./data/',
    train=True,
    download=True,
    transform=transform)

trainloader = torch.utils.data.DataLoader(
    trainset,
    batch_size=BATCH_SIZE,
    shuffle=True,
    )

testset = tv.datasets.MNIST(
    root='./data/',
    train=False,
    download=True,
    transform=transform)

testloader = torch.utils.data.DataLoader(
    testset,
    batch_size=BATCH_SIZE,
    shuffle=False,
    )

net = Model.LeNet().to(device)

ckpt = torch.load(opt.net)  # CPU
para = net.parameters()
net.load_state_dict(ckpt)

net.fuse_model()

criterion = nn.CrossEntropyLoss()
optimizer = optim.SGD(para, lr=LR, momentum=0.9)

net.qconfig = torch.quantization.get_default_qat_qconfig('fbgemm')
torch.quantization.prepare_qat(net, inplace=True)

if __name__ == "__main__":
    for epoch in range(EPOCH):
        sum_loss = 0.0
        for i, data in enumerate(trainloader):
            inputs, labels = data
            inputs, labels = inputs.to(device), labels.to(device)

            optimizer.zero_grad()

            # forward + backward
            outputs = net(inputs)
            loss = criterion(outputs, labels)
            loss.backward()
            optimizer.step()

            sum_loss += loss.item()
            if i % 100 == 99:
                print('[%d, %d] loss: %.03f'
                      % (epoch + 1, i + 1, sum_loss / 100))
                sum_loss = 0.0
        if epoch > 2:
            net.apply(torch.quantization.disable_observer)
        if epoch > 3:
            net.apply(torch.nn.intrinsic.qat.freeze_bn_stats)

        # save model
        quantized_model = torch.quantization.convert(net.eval(), inplace=False)
        torch.jit.save(torch.jit.script(quantized_model), "{}/quantized_ckpt_epoch_{}".format(opt.quantized_dir, epoch))

        with torch.no_grad():
            correct = 0
            total = 0
            for data in testloader:
                images, labels = data
                images, labels = images.to(device), labels.to(device)
                outputs = quantized_model(images)
                _, predicted = torch.max(outputs.data, 1)
                total += labels.size(0)
                correct += (predicted == labels).sum()
            print('Epoch %d: %.02f%%' % (epoch + 1, (100 * float(correct) / float(total))))
