//
//  wrapper.cpp
//  BLS
//
//  Created by Eric Tu on 2/9/19.
//

#define MCLBN_FP_UNIT_SIZE 6
#define MCL_MAX_FP_BIT_SIZE 384
#define MCL_MAX_FR_BIT_SIZE 256
#import <bls.h>

extern "C" int printings (int a) {
    return a + 4;
}



extern "C" void initializeBLS() {
    blsInit(5, MCLBN_FR_UNIT_SIZE * 10 + MCLBN_FP_UNIT_SIZE);
}

extern "C" blsSecretKey*  blsSecretKeySet (){
    blsSecretKey *sec;
    blsSecretKeySetByCSPRNG (sec);
    return sec;
}
