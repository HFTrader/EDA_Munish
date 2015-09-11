// this module is auto-generated using Java Freemarker tool

// this file provides API functionality to application developer to perform HA-aware grayscale filtering on captured video

#ifndef __GRAYSCALEIP_FUNC_H__
#define __GRAYSCALEIP_FUNC_H__

#include "../driver/Rule1/GrayscaleIP_Rule1Driver.h"
#include "../driver/Rule2/GrayscaleIP_Rule2Driver.h"

#include "../config/GrayscaleIP_config.h"
#include "GrayscaleIP_SW.h"
#include "xscugic.h"

#define bool unsigned char

// API
void GrayscaleIP_func_init(XScuGic *InterruptController, unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime);
void ConvToGray_func(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime);

#endif

