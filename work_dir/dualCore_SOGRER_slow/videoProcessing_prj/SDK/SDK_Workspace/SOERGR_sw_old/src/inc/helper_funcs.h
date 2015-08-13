

#ifndef HELPER_FUNCS_H_
#define HELPER_FUNCS_H_


unsigned char rgb2y(unsigned char R, unsigned char G, unsigned char B);

void SampleFunction(unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,
		unsigned short horizontalActiveTime);

void kernel_apply(int* _src, int* _dst,float _par[3]);

#endif
