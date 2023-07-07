#define STB_IMAGE_IMPLEMENTATION
#include <stb_image.h>

#include "CNN.h"

double* Load_Image(const char* Image_Path){
	int Height, Width, Channel;
	stbi_uc *Pic = stbi_load(Image_Path, &Height, &Width, &Channel, 1);

	std::cout << "Height: " << Height << " Width: " << Width << " Channel: "  << Channel << std::endl;
	
	double *Data =  static_cast<double *>(malloc(Height * Width * Channel * sizeof(Data[0])));
	int Number = 0;

	for (int h = 0; h < Height; ++h)
	{
		for (int w = 0; w < Width; ++w)
		{
			for (int c = 0; c < Channel; ++c)
			{
				Data[Number++] = static_cast<double>(Pic[h * Width * Channel + w * Channel + c])/255.0;
			}
		}
	}
	stbi_image_free(Pic);
	return Data;
}

int main(int argc, char * argv[]){
	
	if (argc != 2)
    {
        std::cout << "Usage: " << argv[0] << " Image Path." << std::endl;
        return -1;
    }

    char *Image_Path = argv[1];
    double *Data = Load_Image(Image_Path);
    
    Feature_Info F_Info;
    F_Info.Height = 28; F_Info.Width = 28; F_Info.Channel = 1; F_Info.Zero_Point = 0;
    F_Info.Scale = 0.0079;
    unsigned short *Quantized_Image = Quantize_Image(Data, F_Info); free(Data);

    Conv_Info C_Info;
	C_Info.Padding = true;
	C_Info.Filter_Height = 5;	C_Info.Filter_Width = 5;	C_Info.Filter_In_Channel = 1;	C_Info.Filter_Out_Channel = 6;
	C_Info.Stride_Height = 1;	C_Info.Stride_Width = 1;

	C_Info.Weight_Scale.assign({0.0142, 0.0109, 0.0124, 0.0157, 0.0117, 0.0098});
	C_Info.Weight_Zero_Point.assign({0, 0, 0, 0, 0, 0});
	C_Info.Output_Scale = 0.1258905678987503;

	C_Info.Output_Zero_Point = 50;
	
	C_Info.BIAS = true; C_Info.BIAS_Array = READ_INT_DATA("./Weight/Bias.bin", 6 * 32 * 8);

    short* Weight = READ_DATA("./Weight/Weight.bin", 5 * 5 * 6 * 1 * 8 / 8);

	unsigned short* Conv_Result = CONV_2D(Quantized_Image, Weight, F_Info, C_Info);

	// for (int i = 0; i < 28 * 28 * 6 ; ++i)
	// {
	// 	double Temp = (Conv_Result[i] - C_Info.Output_Zero_Point) * C_Info.Output_Scale;
	// 	std::cout << Temp << std::endl;
	// }

}