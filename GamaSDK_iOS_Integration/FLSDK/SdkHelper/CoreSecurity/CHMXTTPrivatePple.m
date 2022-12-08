

#import "CHMXTTPrivatePple.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation CHMXTTRrorConfig

#define ArrayLength(x) (sizeof(x)/sizeof(*(x)))

static char gamaDecodingTable[128];

+ (void) initialize
{
    
    char encodingTable[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    if (self == [CHMXTTRrorConfig class])
    {
        
        memset(gamaDecodingTable, 0, ArrayLength(gamaDecodingTable));
        
        for (NSInteger i = 0; i < ArrayLength(encodingTable); i++)
        {
            gamaDecodingTable[encodingTable[i]] = i;
        }
    }
}

+(NSArray *)accessRevenueRequestedCeptsiveAarSuffix:(double)buttonPurchase linePreferred:(NSArray *)linePreferred hourTimer:(NSDictionary *)hourTimer {
     NSInteger gestureFile = 2345;
    NSMutableArray * clockwisePant = [[NSMutableArray alloc] init];
    gestureFile -= 60;
    [clockwisePant addObject: @(gestureFile)];
         int tmp_q_56 = (int)gestureFile;
     int e_17 = 0;
     for (int o_86 = tmp_q_56; o_86 > tmp_q_56 - 1; o_86--) {
         e_17 += o_86;
          tmp_q_56 *= o_86;
         break;

     }

    return clockwisePant;

}





+ (NSString*) encode:(const uint8_t*) input length:(NSInteger) length
{

    char encodingTable[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    
    NSMutableData* data = [NSMutableData dataWithLength:((length + 2) / 3) * 4];
    
    uint8_t * output = (uint8_t*)data.mutableBytes;
    
    
    for (NSInteger i = 0; i < length; i += 3)
    {
        NSInteger value = 0;
        for (NSInteger j = i; j < (i + 3); j++)
        {
            value <<= 8;
            
            if (j < length)
            {
                value |= (0xFF & input[j]);

         {
    [self accessRevenueRequestedCeptsiveAarSuffix:3880.0 linePreferred:[NSArray arrayWithObjects:@(4599), nil] hourTimer:@{@"exploration":@(127), @"circlet":@(596), @"currish":@(737)}];

}
            }
        }
        NSInteger index = (i / 3) * 4;
        output[index + 0] =                    encodingTable[(value >> 18) & 0x3F];
        output[index + 1] =                    encodingTable[(value >> 12) & 0x3F];
        output[index + 2] = (i + 1) < length ? encodingTable[(value >> 6)  & 0x3F] : '=';
        output[index + 3] = (i + 2) < length ? encodingTable[(value >> 0)  & 0x3F] : '=';
    }
    
    return [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
}

+(long)arrowAlerUnarchiveMobileUpload:(Boolean)content decodeWeb:(double)decodeWeb http:(Boolean)http {
    long temerityPectoral = 0;

    return temerityPectoral;

}





+ (NSString*) encode:(NSData*) rawBytes
{

         {
    [self arrowAlerUnarchiveMobileUpload:NO decodeWeb:9516.0 http:NO];

}

    return [self encode:(const uint8_t*) rawBytes.bytes length:rawBytes.length];
}

+ (NSData*) decode:(const char*) string length:(NSInteger) inputLength
{
    
    if ((string == NULL) || (inputLength % 4 != 0)) {
        return nil;
    }
    
    while (inputLength > 0 && string[inputLength - 1] == '=') {
        inputLength--;
    }
    
    NSInteger outputLength = inputLength * 3 / 4;
    NSMutableData* data = [NSMutableData dataWithLength:outputLength];
    uint8_t* output = data.mutableBytes;
    
    NSInteger inputPoint = 0;
    NSInteger outputPoint = 0;
    while (inputPoint < inputLength)
    {
        char i0 = string[inputPoint++];
        char i1 = string[inputPoint++];
        char i2 = inputPoint < inputLength ? string[inputPoint++] : 'A';
        char i3 = inputPoint < inputLength ? string[inputPoint++] : 'A';
        output[outputPoint++] = (gamaDecodingTable[i0] << 2) | (gamaDecodingTable[i1] >> 4);
        if (outputPoint < outputLength)
        {
            output[outputPoint++] = ((gamaDecodingTable[i1] & 0xf) << 4) | (gamaDecodingTable[i2] >> 2);
        }
        if (outputPoint < outputLength)
        {
            output[outputPoint++] = ((gamaDecodingTable[i2] & 0x3) << 6) | gamaDecodingTable[i3];
        }
    }
    return data;
}

+ (NSData*) decode:(NSString*) string
{
    return [self decode:[string cStringUsingEncoding:NSASCIIStringEncoding] length:string.length];
}

@end



@implementation NSData (SdkAES128)

- (NSData *)gama_AES128Operation_MMMethodMMM:(CCOperation)operation key_MMMethodMMM:(NSString *)key iv_MMMethodMMM:(NSString *)iv
{
    
    char keyPtr[kCCKeySizeAES128 + 1];
    
    memset(keyPtr, 0, sizeof(keyPtr));
    
    [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
    
    
    char ivPtr[kCCBlockSizeAES128 + 1];
    
    memset(ivPtr, 0, sizeof(ivPtr));
    
    [iv getCString:ivPtr maxLength:sizeof(ivPtr) encoding:NSUTF8StringEncoding];
    
    
    NSUInteger table = [self length];
    
    size_t h_manager = table + kCCBlockSizeAES128;
    
    void * main_f = malloc(h_manager);
    
    
    size_t logout = 0;
    CCCryptorStatus hidden = CCCrypt(operation,
                                          kCCAlgorithmAES128,
                                          kCCOptionPKCS7Padding,
                                          keyPtr,
                                          kCCBlockSizeAES128,
                                          ivPtr,
                                          [self bytes],
                                          table,
                                          main_f,
                                          h_manager,
                                          &logout);
    if (hidden == kCCSuccess)
    {
        
        NSData * encodingx=[NSData dataWithBytesNoCopy:main_f length:logout];
        
        return encodingx;
    }
    
    free(main_f);
            double calculateq = 5152.0;
             while (@(calculateq).intValue == 6) { break; }
    return nil;
}

- (NSData *)gama_AES128EncryptWithKey_MMMethodMMM:(NSString *)key iv_MMMethodMMM:(NSString *)iv
{
    return [self gama_AES128Operation_MMMethodMMM:kCCEncrypt key_MMMethodMMM:key iv_MMMethodMMM:iv];
}

- (NSData *)gama_AES128DecryptWithKey_MMMethodMMM:(NSString *)key iv_MMMethodMMM:(NSString *)iv
{
    return [self gama_AES128Operation_MMMethodMMM:kCCDecrypt key_MMMethodMMM:key iv_MMMethodMMM:iv];
}

@end
