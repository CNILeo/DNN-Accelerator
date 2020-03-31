# 量化说明
  对于CNN来说，CNN仅仅是计算量大，而对计算的精度要求并不高，这是我们对CNN进行量化的前提。
  
  量化的原理，优点等请参考本文最后的两个链接。
  
  量化的工具目前有Tensorflow、PyTorch、TensorRT、ONNX、TVM等，也可以自己造轮子（基本上是修改DarkNet的源码）。
  
  量化的方法可以分为两种，训练中量化（学术名叫做感知量化），训练后量化。大部分CNN都可以直接使用训练后量化，有一些CNN必须使用训练中量化（如目标检测等），为了避免在量化上耗费不必要的时间，建议大家直接选择感知量化。
  
  量化后的精度损失理论上来说不大于3%，实测都在0.5%以内（均使用感知量化）。
# 量化工具对比
工具 | TensorFlow | PyTorch | TensorRT | TVM
:-: | :-: | :-: | :-: | :-:
优点 | 可以提取模型的参数 | 可以提取模型推断的中间结果 | 可以在GPU上运行 | 可以在GPU上运行| 
缺点 | 无法提取模型推断的中间结果| 无法直接提取模型的参数 | 无法提取模型的参数以及推断的中间结果 | 无法提取模型的参数以及推断的中间结果|

## 简单说明
  目前GPU已经支持8位的CNN模型推断（需要NVIDIA显卡，计算架构在6.0以上），但是像TensorFlow和PyTorch等深度学习框架尚未支持。
* TensorFlow
  
  TensorFlow的量化主要是针对TensorFlow Lite的，所以为了节省推断所需的内存，TensorFlow Lite会不停的复用一片内存区域，这就导致了无法提取中间计算层的推断的结果，这会加大移植到C/C++以及Verilog的难度（出错不易排查）
* PyTorch
  
  PyTorch算是目前现有的量化轮子里面最好用的，但是无法直接提取量化后的模型的参数，无法在GPU上运行（这一步对学术研究的学者的实验对比失去一定意义），目前PyTorch的API也不支持将量化后的模型转换成ONNX模型。

* TensorRT
  
  这里说明一点就是TensorRT需要用C++进行开发，这可能对于一部分开发者来说会比较困难。

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
## 文件目录说明	
- Model.py        -- 网络结构的定义
- Train.py        -- 训练网络
- Quantization.py -- 感知量化网络

# 论文参考
[Quantization and Training of Neural Networks for Efficient Integer-Arithmetic-Only Inference](https://arxiv.org/pdf/1712.05877.pdf)

[Quantizing deep convolutional networks for efficient inference: A whitepaper](https://arxiv.org/pdf/1806.08342.pdf)
