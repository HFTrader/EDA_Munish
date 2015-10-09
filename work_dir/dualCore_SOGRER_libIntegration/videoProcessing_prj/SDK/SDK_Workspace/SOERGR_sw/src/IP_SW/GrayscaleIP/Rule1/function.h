#ifndef __GRAYSCALE1_FUNC_H__
#define __GRAYSCALE1_FUNC_H__

#include "config.h"
#include "driver.h"

void Grayscale_R1_funcInit(IntCntrl_t *InterruptController, unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime);
int Grayscale_R1_func(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime);

#endif

