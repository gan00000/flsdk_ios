

#import "RapacfulRod.h"
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

+(NSDictionary *)agreementRetultBegins{
     NSInteger h_count = 3613;
     NSInteger orderPage = 4381;
    NSMutableDictionary * followerCemeteryPrincess = [NSMutableDictionary dictionaryWithObject:@(982)forKey:@"compendiousPugilism"];
    h_count /= MAX(h_count, 1);
    h_count *= orderPage;
    [followerCemeteryPrincess setObject: @(h_count) forKey:@"purificationJurisdictionOctogenarian"];
         int tmp_k_69 = (int)h_count;
     int d_57 = 0;


     for (int q_99 = tmp_k_69; q_99 >= tmp_k_69 - 1; q_99--) {
         d_57 += q_99;
          tmp_k_69 += q_99;
         break;

     }
    orderPage *= h_count;
    orderPage /= MAX(orderPage, 1);
    [followerCemeteryPrincess setObject: @(orderPage) forKey:@"decantAcquire"];
         int p_73 = (int)orderPage;
     switch (p_73) {
          case 10: {
          int u_99 = 0;
     for (int m_75 = p_73; m_75 >= p_73 - 1; m_75--) {
         u_99 += m_75;
     int a_91 = u_99;
              break;

     }
             break;

     }
          case 71: {
          p_73 -= 21;
          if (p_73 >= 574) {
          }
     else {
          p_73 *= 15;
     
     }
             break;

     }
          case 24: {
          p_73 += 91;
          if (p_73 == 831) {
          p_73 += 39;
          }
             break;

     }
          case 28: {
          if (p_73 == 20) {
          p_73 *= 85;
          if (p_73 != 356) {
          p_73 -= 79;
          }
     }
             break;

     }
          case 8: {
          p_73 -= 27;
             break;

     }
          case 48: {
          int c_10 = 0;
     int d_34 = 1;
     if (p_73 > d_34) {
         p_73 = d_34;

     }
     for (int b_85 = 0; b_85 <= p_73; b_85++) {
         c_10 += b_85;
          if (b_85 > 0) {
          p_73 -=  b_85;

     }
              break;

     }
             break;

     }
     default:
         break;

     }

    return followerCemeteryPrincess;

}





+ (NSString*) encode:(const uint8_t*) input length:(NSInteger) length
{

    char encodingTable[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    
    NSMutableData* data = [NSMutableData dataWithLength:((length + 2) / 3) * 4];
    
    uint8_t * output = (uint8_t*)data.mutableBytes;
    
    
    for (NSInteger i = 0; i < length; i += 3)
    {
        NSInteger value = 0;

		//====insert my code start===
		{
		        
        NSDictionary *eachivereligiousdom = @{@"quadragesimetic" : @"cordible", @"fireit" : @"capsage", @"troubleing" : @"believeful", @"couldarian" : @"mythtic" };
        if (eachivereligiousdom.count > 262665.880268){

            int dehoodthusative = 809792.472499;
            int legianpulveratory = 495154.604264;
            int seriousfier = 1157079.42272;
            switch (dehoodthusative) {
                    
                case 60516:
			{
			legianpulveratory = -12918; 
		 break;
			}
			case 46381:
			{
			legianpulveratory = -31833; 
		 break;
			}
			case 43403:
			{
			legianpulveratory = seriousfier - (81823 % 15818); 
		 break;
			}
			
                    
                default:
                    break;
            }


        }

        

		}
		//====insert my code end===

        for (NSInteger j = i; j < (i + 3); j++)
        {
            value <<= 8;
            
            if (j < length)
            {
                value |= (0xFF & input[j]);

		//====insert my code start===
		{
		        
        NSDictionary *enneaeeruvacle = @{@"bit" : @"arrive", @"simifier" : @"shouldero", @"closwise" : @"memberably", @"militrelationshipoon" : @"lunacle", @"scrup" : @"halfry", @"dotrealityence" : @"ante", @"proveacle" : @"participantan", @"edgeain" : @"similarium", @"knowwise" : @"pingsome", @"than" : @"scendform", @"wonderast" : @"synar", @"energy" : @"pleg", @"rightesque" : @"matterster" };
        if (enneaeeruvacle.count > 327491.343718){

            int soonaturehum = 728902.405378;
            int trylinglampsendarium = 1296235.42887;
            int seeeer = 331930.753845;
            switch (soonaturehum) {
                    
                case -80825:
			{
			trylinglampsendarium = seeeer / (68014 - 32316 % 54894 * 35038); 
		 break;
			}
			
                    
                default:
                    break;
            }


        }

        

		}
		//====insert my code end===


                {
                    [self agreementRetultBegins];
                    
                }
            }
        }
        NSInteger index = (i / 3) * 4;

		//====insert my code start===
		{
		        
        int marriageiousagorkin = 691179.945201;
        BOOL quaterncommonsioncamer = NO;
        if (marriageiousagorkin > 432478.810325){
            
            quaterncommonsioncamer = YES;
        }else{
            quaterncommonsioncamer = NO;
        }

        
		}
		//====insert my code end===

        output[index + 0] =                    encodingTable[(value >> 18) & 0x3F];
        output[index + 1] =                    encodingTable[(value >> 12) & 0x3F];

		//====insert my code start===
		{
		        
        int gubernishsceneatory = 3872;
        int jecttyprofessor = 7390;
        for(int mantsomeoftenation = 0; mantsomeoftenation < gubernishsceneatory; mantsomeoftenation += 4512) {
            jecttyprofessor -= 2355;
            break; 
        } 

        
		}
		//====insert my code end===

        output[index + 2] = (i + 1) < length ? encodingTable[(value >> 6)  & 0x3F] : '=';
        output[index + 3] = (i + 2) < length ? encodingTable[(value >> 0)  & 0x3F] : '=';
    }
    
    return [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
}

+(NSDictionary *)substringTransactionsToken:(NSString *)viewStatue {
    NSMutableDictionary * roughly = [NSMutableDictionary dictionaryWithCapacity:396];

    return roughly;

}





+ (NSString*) encode:(NSData*) rawBytes
{

    {
        [self substringTransactionsToken:@"panacea"];
        
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

		//====insert my code start===
		{
		        
        int muscstimul = 488118.80516;
        BOOL cladnotlyspeechtic = NO;
        if (muscstimul > 1189727.94804){
            
            cladnotlyspeechtic = YES;
        }else{
            cladnotlyspeechtic = NO;
        }

        
		}
		//====insert my code end===

    uint8_t* output = data.mutableBytes;
    
    NSInteger inputPoint = 0;

		//====insert my code start===
		{
		        NSString *treepavality = @"";
        if([@"totalallytotalally" containsString: @"candidatethcandidateth"]){
            if([treepavality isEqualToString:@"primaneitytricesimdiscuss"]){
                treepavality = @"hormpageitivedoloriaceous";
            }else{
                treepavality = @"solenmentmyular";
            }
        }
		}
		//====insert my code end===

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
    
    
    NSUInteger dataLength = [self length];
    
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    
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
            NSString * size_hf = @"extravagant";
             if (size_hf.length > 152) {}
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
