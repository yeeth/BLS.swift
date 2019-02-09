//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//
#define MCLBN_FP_UNIT_SIZE 6
#define MCL_MAX_FP_BIT_SIZE 384
#define MCL_MAX_FR_BIT_SIZE 256
#import <bls.h>

int printings(int a);
int blsInit(int curve, int compiledTimeVar );
void initializeBLS();

int  blsSecretKeySet (blsSecretKey *sec);
