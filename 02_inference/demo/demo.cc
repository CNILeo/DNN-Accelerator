#define STB_IMAGE_IMPLEMENTATION
#include <stb_image.h>

#include <qnn.h>

double *load_image(const char *img_path)
{
	int height, width, channel;
	stbi_uc *img = stbi_load(img_path, &height, &width, &channel, 1);

	std::cout << "[Info] Image Height: " << height << " Width: " << width << " Channel: " << channel << std::endl;

	double *input_data = static_cast<double *>(malloc(height * width * channel * sizeof(input_data[0])));

	size_t idx = 0;
	for (int h = 0; h < height; ++h)
	{
		for (int w = 0; w < width; ++w)
		{
			for (int c = 0; c < channel; ++c)
			{
				input_data[idx++] = static_cast<double>(img[h * width * channel + w * channel + c]) / 255.0;
			}
		}
	}
	stbi_image_free(img);
	return input_data;
}

int main(int argc, char *argv[])
{
	if (argc != 2)
	{
		std::cout << "Usage: " << argv[0] << " img_path" << std::endl;
		return -1;
	}

	char *img_path = argv[1];
	double *input_data = load_image(img_path);

	Feature_Info F_Info;
	F_Info.Height = 28;
	F_Info.Width = 28;
	F_Info.Channel = 1;
	F_Info.Zero_Point = 0;
	F_Info.Scale = 0.0079;
	unsigned short *Quantized_Image = quantize_input(input_data, F_Info);
	free(input_data);

	Conv_Info C_Info;
	C_Info.Padding = true;
	C_Info.Filter_Height = 5;
	C_Info.Filter_Width = 5;
	C_Info.Filter_In_Channel = 1;
	C_Info.Filter_Out_Channel = 6;
	C_Info.Stride_Height = 1;
	C_Info.Stride_Width = 1;

	C_Info.Weight_Scale.assign({0.0142, 0.0109, 0.0124, 0.0157, 0.0117, 0.0098});
	C_Info.Weight_Zero_Point.assign({0, 0, 0, 0, 0, 0});
	C_Info.Output_Scale = 0.1258905678987503;

	C_Info.Output_Zero_Point = 50;

	C_Info.BIAS = true;
	C_Info.BIAS_Array = READ_INT_DATA("./weight/bias.bin", 6 * 32 * 8);

	short *Weight = READ_DATA("./weight/weight.bin", 5 * 5 * 6 * 1 * 8 / 8);

	unsigned short *Conv_Result = CONV_2D(Quantized_Image, Weight, F_Info, C_Info);
}