import Model
import torch
import torch.nn as nn
import torch.optim as optim
import argparse
import torchvision as tv
import torchvision.transforms as transforms

# print (torch.cuda.is_available())

device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
# device = torch.device("cpu")

parser = argparse.ArgumentParser()
parser.add_argument('--Folder', default='./Model', help='Folder Path To Output The Model') 
parser.add_argument('--Net', default='./Model/Net.pth', help="Path To Load The Model")
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
criterion = nn.CrossEntropyLoss()
optimizer = optim.SGD(net.parameters(), lr=LR, momentum=0.9)

if __name__ == "__main__":
    print (device)
    for epoch in range(EPOCH):
        sum_loss = 0.0
        for i, data in enumerate(trainloader):
            inputs, labels = data
            inputs, labels = inputs.to(device), labels.to(device)

            optimizer.zero_grad()

            outputs = net(inputs)
            loss = criterion(outputs, labels)
            loss.backward()
            optimizer.step()

            sum_loss += loss.item()
            if i % 100 == 99:
                print('[%d, %d] loss: %.03f'
                      % (epoch + 1, i + 1, sum_loss / 100))
                sum_loss = 0.0

        with torch.no_grad():
            correct = 0
            total = 0
            for data in testloader:
                images, labels = data
                images, labels = images.to(device), labels.to(device)
                outputs = net(images)
                
                _, predicted = torch.max(outputs.data, 1)
                total += labels.size(0)
                correct += (predicted == labels).sum()
            print('第%d个Epoch的识别准确率为: %f%%' % (epoch + 1, (100 * float(correct) / float(total))))
    torch.save(net.state_dict(), '%s/net_%03d.pth' % (opt.Folder, epoch + 1))
