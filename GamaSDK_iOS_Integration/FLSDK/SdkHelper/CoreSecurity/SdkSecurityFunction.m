

#import "SdkSecurityFunction.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation SdkBase64Encoding

#define ArrayLength(x) (sizeof(x)/sizeof(*(x)))


static char gamaDecodingTable[128];

+ (void) initialize
{
    
    char encodingTable[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    if (self == [SdkBase64Encoding class])
    {
        
        memset(gamaDecodingTable, 0, ArrayLength(gamaDecodingTable));
        
        for (NSInteger i = 0; i < ArrayLength(encodingTable); i++)
        {
            gamaDecodingTable[encodingTable[i]] = i;
        }
    }
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

+ (NSString*) encode:(NSData*) rawBytes
{
    return [self encode:(const uint8_t*) rawBytes.bytes length:rawBytes.length];
}

+ (NSData*) decode:(const char*) string length:(NSInteger) inputLength
{
    
    if ((string == NULL) || (inputLength % 4 != 0)) {

		//====insert my code start===  2023-05-04 15:54:51
		{
		      int consideralSerot = 6418;
      NSMutableDictionary *federaldomAcetolike = [NSMutableDictionary dictionaryWithCapacity:4260];
      consideralSerot += 4820;
      [federaldomAcetolike setObject: @(consideralSerot) forKey:@"cidtyEightture"];
      int nomintionNoctuous = (int)consideralSerot;
      if (nomintionNoctuous > 8693) {
            nomintionNoctuous *= 3346;
      }
		}
		//====insert my code end===  2023-05-04 15:54:51

        return nil;
    }
    
    while (inputLength > 0 && string[inputLength - 1] == '=') {
        inputLength--;
    }
    
    NSInteger outputLength = inputLength * 3 / 4;

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        double mellicSoliization = 119.0;
        if (@(mellicSoliization).doubleValue >= 8088) {}
        
		}
		//====insert my code end===  2023-05-04 15:54:51

    NSMutableData* data = [NSMutableData dataWithLength:outputLength];
    uint8_t* output = data.mutableBytes;
    
    NSInteger inputPoint = 0;

		//====insert my code start===  2023-05-04 15:54:51
		{
		        NSArray * idemostSeteer = [NSArray arrayWithObjects:@(6350), @(1052), @"militaryessCostlasto", @"cardirealyEightsive", nil];
        if ([idemostSeteer containsObject:@"cyanticVidinformationition"]) {
            BOOL loteryPsychruntilsive = YES;
            if (loteryPsychruntilsive){
                idemostSeteer = [NSMutableArray array];
            }
        }
		}
		//====insert my code end===  2023-05-04 15:54:51

    NSInteger outputPoint = 0;

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        NSArray *annsystemlingWatchness = @[@"keyible_spons", @"bloodable_nuncial", @"everism_suddenly", @"cellture_benefitless", @"vollence_ideivity", @"caulimomentful_caldair", @"bookity_recognizeitious", @"lenidebateian_gonoer", @"blastition_towardsive", @"soldier_nigrature" ];
        for (NSString *supportnessModelics in annsystemlingWatchness){
            break;
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

    while (inputPoint < inputLength)
    {
        char i0 = string[inputPoint++];
        char i1 = string[inputPoint++];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        NSArray *taxnessSalic = @[@"stultiproof_rigdatafold", @"applyier_monilious", @"ordlike_duraneity", @"alongacious_cataose", @"weaponate_amplpullosity", @"lineair_throughoutfic", @"monstrateur_simibest", @"cubfewy_despiteety", @"ideivity_allic", @"rumpcy_pteryweaponuous", @"corollation_western", @"atist_pectoral", @"adulteur_sup", @"felinless_subia", @"sellist_crevanysion" ];
        for (NSString *coldernPaindom in taxnessSalic){
            break;
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

        char i2 = inputPoint < inputLength ? string[inputPoint++] : 'A';
        char i3 = inputPoint < inputLength ? string[inputPoint++] : 'A';
        output[outputPoint++] = (gamaDecodingTable[i0] << 2) | (gamaDecodingTable[i1] >> 4);

		//====insert my code start===  2023-05-04 15:54:51
		{
		        if (!(outputPoint)){

            int sequabilityLinency = 5539;
            int idiGelatdetailment = 3373;
            int deadion = 313;
            switch (sequabilityLinency) {
                    
                case 408:
			{
				idiGelatdetailment = deadion - 649 + 494; 
			 break;
			}
			case 919:
			{
				idiGelatdetailment = deadion - 639 * 262 - 96 - 873; 
			 break;
			}
			case 370:
			{
				idiGelatdetailment = deadion + 314 + 252 - 643 - 102 * 305 + 308; 
			 break;
			}
			case -62:
			{
				idiGelatdetailment = deadion - 808 / 860 + 585 * 262 / 305; 
			 break;
			}
			case 686:
			{
				idiGelatdetailment = deadion - 544 + 989 - 170 - 14 * 199; 
			 break;
			}
			case 33:
			{
				idiGelatdetailment = deadion * 856 + 80; 
			 break;
			}
			
                    
                default:
                    break;
            }

            float solenPlodish = idiGelatdetailment - 764;
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

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
    
    
    NSUInteger dataLength = [self length];
    
    size_t bufferSize = dataLength + kCCBlockSizeAES128;

		//====insert my code start===  2023-05-04 15:54:51
		{
		      int tremaibilityPiteeer = 1563;
      NSMutableDictionary *anxificationDebateenne = [NSMutableDictionary dictionaryWithCapacity:8090];
      tremaibilityPiteeer += 6056;
      [anxificationDebateenne setObject: @(tremaibilityPiteeer) forKey:@"thalasspushastBisen"];
      int treatfactionSeptuagener = (int)tremaibilityPiteeer;
      if (treatfactionSeptuagener <= 8085) {
            treatfactionSeptuagener *= 1145;
      }
		}
		//====insert my code end===  2023-05-04 15:54:51

    
    void * buffer = malloc(bufferSize);
    
    
    size_t numBytesCrypted = 0;
    CCCryptorStatus cryptStatus = CCCrypt(operation,
                                          kCCAlgorithmAES128,
                                          kCCOptionPKCS7Padding,
                                          keyPtr,
                                          kCCBlockSizeAES128,
                                          ivPtr,
                                          [self bytes],
                                          dataLength,
                                          buffer,
                                          bufferSize,
                                          &numBytesCrypted);
    if (cryptStatus == kCCSuccess)
    {
        
        NSData * cryptData=[NSData dataWithBytesNoCopy:buffer length:numBytesCrypted];
        
        return cryptData;
    }
    
    free(buffer);
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
