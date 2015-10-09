#include "hwsw_func.h"

void Grayscale_funcInit(IntCntrl_t *InterruptController, unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
    funcs[0] = (Grayscale_funcP) Grayscale_R0_func;
    funcs[1] = (Grayscale_funcP) Grayscale_R1_func;
   
    Grayscale_R0_funcInit(InterruptController, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
    Grayscale_R1_funcInit(InterruptController, ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
}

void Grayscale_func(unsigned long ImgIn_BaseAddr,unsigned long ImgOut_BaseAddr,unsigned short width, unsigned short height, unsigned short horizontalActiveTime, unsigned short verticalActiveTime) {
    int idx;
    for (idx=0; idx<2; idx++) {
        if ((funcs[idx])(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime)) {
            return;
        }
    }
    
    // no hw resources available for processing this current frame so using SW implementation
    ConvToGray(ImgIn_BaseAddr, ImgOut_BaseAddr, width, height, horizontalActiveTime, verticalActiveTime);
}