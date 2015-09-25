// this module is auto-generated using Java Freemarker tool

// this file provides API functionality to application developer to perform HA-aware grayscale filtering on captured video

#ifndef __GRAYSCALE_FUNC_H__
#define __GRAYSCALE_FUNC_H__

#include "../driver/Rule1/Grayscale_Rule1Driver.h"
#include "../driver/Rule2/Grayscale_Rule2Driver.h"

#include "../config/Grayscale_config.h"
#include "Grayscale_SW.h"
#include "xscugic.h"

#define bool unsigned char

// API
void Erode_func_init(XScuGic *InterruptController, unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime);
void ConvToGray_func(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime);

#endif

