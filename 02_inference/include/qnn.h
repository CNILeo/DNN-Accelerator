#ifndef __QNN_H
#define __QNN_H

#include <iostream>
#include <vector>

struct Padding_Info
{
	unsigned short Height;
	unsigned short Width;
	unsigned short Channel;
	unsigned short Pad_Height;
	unsigned short Pad_Width;
	unsigned short Pad_Number;
};

struct Feature_Info
{
	unsigned short Height;
	unsigned short Width;
	unsigned short Channel;
	unsigned Zero_Point;
	double Scale;
};

struct Conv_Info
{
	bool Padding;

	unsigned short Filter_Height;
	unsigned short Filter_Width;
	unsigned short Filter_In_Channel;
	unsigned short Filter_Out_Channel;

	unsigned short Stride_Height;
	unsigned short Stride_Width;

	bool BIAS;
	int *BIAS_Array;

	std::vector<double> Weight_Scale;
	std::vector<unsigned short> Weight_Zero_Point;

	double Output_Scale;
	unsigned short Output_Zero_Point;
};

double *Load_Image(const char *Image_Path);

unsigned short *quantize_input(double *Image_Raw, struct Feature_Info Info);

unsigned short *Padding(unsigned short *Feature_Temp, Padding_Info Info);

unsigned short *CONV_2D(unsigned short *Feature, short *Filter_Temp,
						Feature_Info F_Info, Conv_Info C_Info);

// 读取数据
short *READ_DATA(const char *filename, long SIZE);

// 读取数据
int *READ_INT_DATA(const char *filename, long SIZE);

#endif