// this module is auto-generated using Java Freemarker tool

// this file provides API functionality to application developer to perform HA-aware grayscale filtering on captured video

#ifndef __SOBELIP_FUNC_H__
#define __SOBELIP_FUNC_H__

#include "../driver/Rule1/SobelIP_Rule1Driver.h"

#include "../config/SobelIP_config.h"
#include "SobelIP_SW.h"
#include "xscugic.h"

#define bool unsigned char

// API
void SobelIP_func_init(XScuGic *InterruptController, unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short vertcialActiveTime);
void EdgeDetection_func(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short vertcialActiveTime);

#endif

