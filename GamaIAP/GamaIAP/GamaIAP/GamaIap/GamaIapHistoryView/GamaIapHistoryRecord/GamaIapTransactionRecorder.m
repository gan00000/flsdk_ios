
#import "GamaIapTransactionRecorder.h"

@implementation GamaIapTransactionRecorder

+(NSString *)iapEncryptFromString:(NSString *)aString
{
    return [GamaSecurity getEncryptStringFromString:aString WithKey:@"GAMA_IAP" iv:@"iap"];
}

+(NSString *)iapDecodeFromString:(NSString *)aString
{
    return [GamaSecurity getDecryptStringFromString:aString withKey:@"GAMA_IAP" iv:@"iap"];
}

@end
