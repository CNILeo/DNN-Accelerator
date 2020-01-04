g++ -std=c++11 -c CNN.cpp -I ./ -O3
g++ -std=c++11 -o Inference Quantize.cpp CNN.o -I ./ -O3
