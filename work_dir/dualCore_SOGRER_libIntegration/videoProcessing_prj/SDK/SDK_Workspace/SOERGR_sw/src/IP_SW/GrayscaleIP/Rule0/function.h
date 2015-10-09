#ifndef __GRAYSCALE0_FUNC_H__
#define __GRAYSCALE0_FUNC_H__

#include "config.h"
#include "driver.h"

void Grayscale_R0_funcInit(IntCntrl_t *InterruptController, unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime);
int Grayscale_R0_func(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime);

#endif

