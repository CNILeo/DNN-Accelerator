#include <CNN.h>
#include <cmath>

unsigned short* Quantize_Image(double* Image_Raw, struct Feature_Info Info){
	unsigned short *Quantized_Image = static_cast<unsigned short*>(malloc(Info.Height * Info.Width * Info.Channel * sizeof(Quantized_Image[0])));
    int len = Info.Height * Info.Width * Info.Channel;
    double Temp;
    for (int i = 0; i < len; ++i)
    {
    	Temp = (Image_Raw[i]/Info.Scale) + Info.Zero_Point;
    	Quantized_Image[i] = (unsigned short)round(Temp);
    }
    return Quantized_Image;
}

unsigned short* Padding(unsigned short *Feature_Temp, Padding_Info Info){
	//将图片恢复成矩阵
	unsigned short IMG[Info.Height - Info.Pad_Height][Info.Width - Info.Pad_Width][Info.Channel];
	long NO = 0;
	for (int i = 0; i < Info.Height - Info.Pad_Height; i++)
	{
		for (int j = 0; j < Info.Width - Info.Pad_Width; j++)
		{
			for (int k = 0; k < Info.Channel; k++)
			{
				IMG[i][j][k] = Feature_Temp[NO++];
			}
		}
	}

	short Pad_Top = Info.Pad_Height / 2;
	short Pad_Bottom = Info.Pad_Height - Pad_Top;
	short Pad_Left = Info.Pad_Width / 2;
	short Pad_Right = Info.Pad_Width - Pad_Left;

	unsigned short Result_Temp[Info.Height][Info.Width][Info.Channel];
	//上边填0
	for (int i = 0; i < Pad_Top ; i++)
	{
		for (int j = 0; j < Info.Width; j++)
		{
			for (int k = 0; k < Info.Channel; k++)
			{
				Result_Temp[i][j][k] = 0;
			}
		}
	}

	//左边填0
	for (int i = 0; i < Pad_Left ; i++)
	{
		for (int j = 0; j < Info.Height; j++)
		{
			for (int k = 0; k < Info.Channel; k++)
			{
				Result_Temp[j][i][k] = 0;
			}
		}
	}

	//下边填0
	for (int i = Info.Height - 1; i > Info.Height - 1 - Pad_Bottom ; i--)
	{
		for (int j = 0; j < Info.Width ; j++)
		{
			for (int k = 0; k < Info.Channel; k++)
			{
				Result_Temp[i][j][k] = 0;
			}
		}
	}

	//右边填0
	for (int i = Info.Width - 1; i > Info.Width - 1 - Pad_Right ; i--)
	{
		for (int j = 0; j < Info.Height; j++)
		{
			for (int k = 0; k < Info.Channel; k++)
			{
				Result_Temp[j][i][k] = 0;
			}
		}
	}

	//填回正常数
	for (int i = Pad_Top; i < Info.Height - Pad_Bottom; i++)
	{
		for (int j = Pad_Left; j < Info.Width - Pad_Right; j++)
		{
			for (int k = 0; k < Info.Channel; k++)
			{
				Result_Temp[i][j][k] = IMG[i-Pad_Top][j-Pad_Left][k];
			}
		}
	}
	unsigned short* Result = (unsigned short*)malloc(sizeof(unsigned short) * Info.Height * Info.Width * Info.Channel);
	NO = 0;
	for (int i = 0; i < Info.Height; ++i)
	{
		for (int j = 0; j < Info.Width; j++)
		{
			for (int k = 0; k < Info.Channel; k++)
			{
				Result[NO++] = Result_Temp[i][j][k];
			}
		}
	}
	return Result;
}


unsigned short* CONV_2D(unsigned short* Feature, short* Filter_Temp, Feature_Info F_Info, Conv_Info C_Info){
	short Height, Width; unsigned short* IMG_Temp;
	//输入进行PADDING处理
	if(C_Info.Padding == true){

		short O_H = ceil((float)F_Info.Height / (float)C_Info.Stride_Height);//Output Height
		short O_W = ceil((float)F_Info.Width / (float)C_Info.Stride_Width);//Output Width

		short Padding_Height = (C_Info.Stride_Height * O_H + C_Info.Filter_Height - C_Info.Stride_Height - F_Info.Height);
		Padding_Height = Padding_Height > 0 ? Padding_Height : 0 ;

		short Padding_Width = (C_Info.Stride_Width * O_W + C_Info.Filter_Width - C_Info.Stride_Width - F_Info.Width);
		Padding_Width = Padding_Width > 0 ? Padding_Width : 0 ;

		if(Padding_Height==0 && Padding_Width==0){
			IMG_Temp = Feature;
			Height =  F_Info.Height;
			Width =  F_Info.Width;
		}
		else{
			Height =  F_Info.Height + Padding_Height;
			Width = F_Info.Width + Padding_Width;

			Padding_Info P_Info;
			P_Info.Height = Height;
			P_Info.Width = Width;
			P_Info.Channel = F_Info.Channel;
			P_Info.Pad_Height = Padding_Height;
			P_Info.Pad_Width = Padding_Width;
			P_Info.Pad_Number = F_Info.Zero_Point;
			IMG_Temp = Padding(Feature, P_Info);
		}
	}
	else{
		IMG_Temp = Feature;
		Height =  F_Info.Height;
		Width =  F_Info.Width;
	}

	//将图片恢复成矩阵
	unsigned short PADDING_IMG[Height][Width][F_Info.Channel];
	long NO = 0;
	for (int i = 0; i < Height; i++)
	{
		for (int j = 0; j < Width; j++)
		{
			for (int k = 0; k < F_Info.Channel; k++)
			{
				PADDING_IMG[i][j][k] = IMG_Temp[NO++];
			}
		}
	}

	//将Filter恢复成矩阵
	short Filter[C_Info.Filter_Height][C_Info.Filter_Width][C_Info.Filter_In_Channel][C_Info.Filter_Out_Channel];
	NO = 0;
	for (int i = 0; i < C_Info.Filter_Height; i++)
	{
		for (int j = 0; j < C_Info.Filter_Width; j++)
		{
			for (int k = 0; k < C_Info.Filter_In_Channel; k++)
			{
				for (int m = 0; m < C_Info.Filter_Out_Channel; m++)
				{
					Filter[i][j][k][m] = Filter_Temp[NO++];
				}
			}
		}
	}

	//卷积操作
	NO = 0;
	long int tmp = 0;
	unsigned short* Result = (unsigned short*)malloc(sizeof(unsigned short) * 28 * 28 * 6);
	for (int i = 0; i < F_Info.Height; i += C_Info.Stride_Height)
	{
		for (int j = 0; j < F_Info.Height; j += C_Info.Stride_Width)
		{
			for (int z = 0; z < C_Info.Filter_Out_Channel; z++)
			{
				Result[NO] = 0;
				tmp = 0;
				for (int k = 0; k < F_Info.Channel; k++)
				{
					for (int m = 0; m < C_Info.Filter_Height; m++)
					{
						for (int n = 0; n < C_Info.Filter_Width; n++)
						{
							tmp += ((int)PADDING_IMG[i+m][j+n][k] - (int)F_Info.Zero_Point) * (Filter[m][n][k][z] - C_Info.Weight_Zero_Point[z]);
						}
					}
				}
				
				if(C_Info.BIAS == true){
					tmp += C_Info.BIAS_Array[z];
				}
				
				tmp = (tmp * ((C_Info.Weight_Scale[z] * F_Info.Scale) / C_Info.Output_Scale)) + C_Info.Output_Zero_Point;
				
				if(tmp<0)
					Result[NO] = 0;
				else if (tmp>255)
					Result[NO] = 255;
				else
					Result[NO] = (unsigned short)round(tmp);
				NO++;
			}
		}
	}
	return Result;
}

//读取数据
short* READ_DATA(const char* filename, long SIZE){
	short* DATA = static_cast<short *>(malloc(SIZE * sizeof(DATA[0])));
	FILE* INPF = fopen(filename, "rb");
	if(fread(DATA, sizeof(short), SIZE, INPF) == -1)
		return 0;
	fclose(INPF);
	return DATA;
}

//读取数据
int* READ_INT_DATA(const char* filename, long SIZE){
	int* DATA = static_cast<int *>(malloc(SIZE * sizeof(DATA[0])));
	FILE* INPF = fopen(filename, "rb");
	if(fread(DATA, sizeof(int), SIZE, INPF) == -1)
		return 0;
	fclose(INPF);
	return DATA;
}