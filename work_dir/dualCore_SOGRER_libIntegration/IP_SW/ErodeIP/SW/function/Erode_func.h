// this module is auto-generated using Java Freemarker tool

// this file provides API functionality to application developer to perform HA-aware Erode filtering on captured video

#ifndef __ERODE_FUNC_H__
#define __ERODE_FUNC_H__

#include "../driver/Rule1/Erode_Rule1Driver.h"

#include "../config/Erode_config.h"
#include "Erode_SW.h"
#include "xscugic.h"

#define bool unsigned char

// API
void Erode_func_init(XScuGic *InterruptController, unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime);
void Erode_func(unsigned long ImgIn_BaseAddr, unsigned long ImgOut_BaseAddr, unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime);

#endif

