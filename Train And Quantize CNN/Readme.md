# 量化说明
	对于CNN来说，CNN仅仅是计算量大，而对计算的精度要求并不高，这是我们对CNN进行量化的前提。
	量化的原理，优点等请参考本文最后的两个链接。
	量化的工具目前有Tensorflow、PyTorch、TensorRT、ONNX、TVM等，也可以自己造轮子（基本上是修改DarkNet的源码）。
	量化的方法可以分为两种，训练中量化（学术名叫做感知量化），训练后量化。大部分CNN都可以直接使用训练后量化，有一些CNN必须使用训练中量化（目标检测），为了避免在量化上耗费不必要的时间，建议大家直接选择感知量化。
	量化后的精度损失理论上来说不大于3%，实测都在0.5%以内（均使用感知量化）。
# 量化流程
## 训练后量化
	1. 正常训练32位浮点模型
	2. 调训练后量化API（传入少量的数据集，32位浮点模型）
## 感知量化
	1. 正常训练32位浮点模型
	2. 调用伪量化API继续训练5-10个Epoch
	3. 量化为8位模型
# 融合操作
	研究发现，Conv + Relu / Conv + Batnormal + Relu / Conv + Batchnormal / Linear + Relu 可以融合为一个操作（前三者为Conv + BIAS，最后者为Linear + BIAS），通过融合操作可以降低CNN不少的计算量，这里具体的融合代码在Model.py中的fuse函数中。
# Demo说明(Only For Linux X86)
	这里提供了一个LeNet训练及量化的Demo，使用的是PyTorch的框架。
	如果没有安装所需要的Packages，可以用pip3 install -r requirements.txt进行安装。
### 文件目录说明	
- Model.py        -- 网络结构的定义
- Train.py        -- 训练网络
- Quantization.py -- 感知量化网络

# 预告
	明日更新自己造深度学习推断轮子

# 参考
[Quantization and Training of Neural Networks for Efficient Integer-Arithmetic-Only Inference](https://arxiv.org/pdf/1712.05877.pdf)

[Quantizing deep convolutional networks for efficient inference: A whitepaper](https://arxiv.org/pdf/1806.08342.pdf)
