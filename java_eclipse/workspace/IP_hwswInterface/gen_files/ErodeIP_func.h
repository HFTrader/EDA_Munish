// this module is auto-generated using Java Freemarker tool

// this file provides API functionality to application developer to perform HA-aware grayscale filtering on captured video

#ifndef __ERODEIP_FUNC_H__
#define __ERODEIP_FUNC_H__

#include "../driver/Rule1/ErodeIP_Rule1Driver.h"

#include "../config/ErodeIP_config.h"
#include "ErodeIP_SW.h"
#include "xscugic.h"

#define bool unsigned char

// API
void ErodeIP_func_init(XScuGic *InterruptController, unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime);
void Erode_func(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime);

#endif

