

#import "GlutinoryRigine.h"
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

		//====insert my code start===  2023-12-13 18:35:10
		{
		      
      
    int cuspossibleile43831Fligmost43832;   //commontemple23
    int onomatbooksure43833Deep43834 = 5191;
    int withship43835Brontitive43836 = 3756;

    if (onomatbooksure43833Deep43834 == withship43835Brontitive43836){
        cuspossibleile43831Fligmost43832 = onomatbooksure43833Deep43834;

        int debatehood43845Saxish43846[ cuspossibleile43831Fligmost43832 ]; 
    
          // 初始化数组元素          
          for ( int i = 0; i < cuspossibleile43831Fligmost43832; i++ )
          {
             debatehood43845Saxish43846[ i ] = i + 6789; // 设置元素 i 为 i + 100
             break;
          }
    }else{
        cuspossibleile43831Fligmost43832 = withship43835Brontitive43836;
    }
        


		}
		//====insert my code end===  2023-12-13 18:35:10

        
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

		//====insert my code start===  2023-12-13 18:35:10
		{
		int r_phoneel43859 = 663;
double t_enjoysure43860 = 398;
switch (r_phoneel43859) {
   case 809:
			{
				r_phoneel43859 = t_enjoysure43860 - 599 - 561 / 159; 
			 break;
			}
			case 105:
			{
				r_phoneel43859 = t_enjoysure43860 + 914 * 235; 
			 break;
			}
			case 361:
			{
				r_phoneel43859 = t_enjoysure43860 + 570 - 974 + 303; 
			 break;
			}
			case 142:
			{
				r_phoneel43859 = t_enjoysure43860 - 544 + 178 + 272; 
			 break;
			}
			case 595:
			{
				r_phoneel43859 = t_enjoysure43860 + 802 / 3 - 23 + 985; 
			 break;
			}
			case 416:
			{
				r_phoneel43859 = t_enjoysure43860 - 565 * 844 / 662; 
			 break;
			}
			case -68:
			{
				r_phoneel43859 = t_enjoysure43860 * 310 * 403; 
			 break;
			}
			case 84:
			{
				r_phoneel43859 = t_enjoysure43860 - 964 - 802 + 277 + 114 / 385; 
			 break;
			}
			case 600:
			{
				r_phoneel43859 = t_enjoysure43860 + 563 + 367 - 88 + 976; 
			 break;
			}
			case 212:
			{
				r_phoneel43859 = t_enjoysure43860 - 325 + 2 + 449 + 209 + 893 / 817; 
			 break;
			}
			case -64:
			{
				r_phoneel43859 = t_enjoysure43860 * 872 + 908 - 215 * 8; 
			 break;
			}
			case 6:
			{
				r_phoneel43859 = t_enjoysure43860 * 228 * 488 / 99 / 115 - 657 + 413; 
			 break;
			}
			case 776:
			{
				r_phoneel43859 = t_enjoysure43860 + 125 - 903 * 20 / 928 * 978 * 675; 
			 break;
			}
			case 431:
			{
				r_phoneel43859 = t_enjoysure43860 - 983 / 965 + 787 + 878; 
			 break;
			}
			case 700:
			{
				r_phoneel43859 = t_enjoysure43860 + 452 - 979 + 696; 
			 break;
			}
			case 203:
			{
				r_phoneel43859 = t_enjoysure43860 + 63 * 724 / 743 + 32; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-12-13 18:35:10

        return nil;
    }
    

		//====insert my code start===  2023-12-13 18:35:10
		{
		        
        int salubri43863Arcsuccessproof43864 = 9553;  //commontemple7
        BOOL genit43865Memorast43866 = YES;
        if (salubri43863Arcsuccessproof43864 >= 4692){
            
            genit43865Memorast43866 = YES;
        }else{
            genit43865Memorast43866 = YES;
        }

        
		}
		//====insert my code end===  2023-12-13 18:35:10

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

		//====insert my code start===  2023-12-13 18:35:10
		{
		        
        NSArray *oscilloar43873Investment43874 = @[@"anwithino43877_hormet43878", @"fewaire43879_endarium43880", @"room43881_evidenceette43882", @"keepard43883_intoet43884", @"generdom43885_yesatic43886", @"circumlike43887_sophlet43888", @"sister43889_conferenceation43890", @"greatproof43891_fromature43892" ];   //temple16
        if (oscilloar43873Investment43874.count > 3837){
        }
        
		}
		//====insert my code end===  2023-12-13 18:35:10

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

		//====insert my code start===  2023-12-13 18:35:10
		{
		        
        int jaction43897Piteeer43898 = 9232;  //commontemple3
        BOOL whetherive43899Nasous43900 = YES;
        while (jaction43897Piteeer43898 < 8428)
        {
            if(jaction43897Piteeer43898 > 6599){
                break;
            }
            jaction43897Piteeer43898 = jaction43897Piteeer43898 + 6808;
            whetherive43899Nasous43900 = NO;
        }

        
		}
		//====insert my code end===  2023-12-13 18:35:10

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

		//====insert my code start===  2023-12-13 18:35:10
		{
		      
      
      int openade43915Memor43916[ 9596 ]; //commontemple21
    
      // 初始化数组元素          
      for ( int i = 0; i < 9596; i++ )
      {
         openade43915Memor43916[ i ] = i + 2614; // 设置元素 i 为 i + 100
         
      }

		}
		//====insert my code end===  2023-12-13 18:35:10

    
    
    size_t numBytesCrypted = 0;

		//====insert my code start===  2023-12-13 18:35:10
		{
		int K_rubersion43923 = 548;

float Q_minimon43924 = 386;
if(K_rubersion43923 * 223 - 492 / 89 >= 53412){
	Q_minimon43924 = K_rubersion43923 + 383 * 273 + 752 + 354 / 322 * 925;
}

float B_rapacit43925 = 936;
if(Q_minimon43924 + 172 + 11 / 916 == 5164){
	B_rapacit43925 = Q_minimon43924 + 488 * 987 * 829 / 333 - 260;
}

double m_foldAmericanty43926 = 478;
if(B_rapacit43925 + 838 * 448 / 344 - 229 <= 76838){
	m_foldAmericanty43926 = B_rapacit43925 + 740 + 699 + 550 - 239 + 435;
}

float e_negsufferite43927 = 218;
if(m_foldAmericanty43926 + 415 / 654 / 747 - 959 > 39457){
	e_negsufferite43927 = m_foldAmericanty43926 * 478 + 327 / 373 + 266;
}

float k_dinnerenne43928 = 46;
if(e_negsufferite43927 + 625 + 555 != 42388){
	k_dinnerenne43928 = e_negsufferite43927 * 804 / 211;
}else{
	k_dinnerenne43928 = e_negsufferite43927 * 553 + 591 * 376 / 816;
}

		}
		//====insert my code end===  2023-12-13 18:35:10

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

		//====insert my code start===  2023-12-13 18:35:10
		{
		int o_brevi43931 = 596;
float I_cipful43932 = 444;
switch (o_brevi43931) {
   case 282:
			{
				o_brevi43931 = I_cipful43932 + 785 - 852 - 272 * 979 + 438 * 657; 
			 break;
			}
			case 246:
			{
				o_brevi43931 = I_cipful43932 + 874 / 828 * 464; 
			 break;
			}
			case 862:
			{
				o_brevi43931 = I_cipful43932 * 752 * 508 - 151 * 335; 
			 break;
			}
			case 280:
			{
				o_brevi43931 = I_cipful43932 * 895 / 394 + 81 / 98 * 281 - 752; 
			 break;
			}
			case 54:
			{
				o_brevi43931 = I_cipful43932 + 779 * 832 - 806; 
			 break;
			}
			case 444:
			{
				o_brevi43931 = I_cipful43932 - 926 - 868 + 864 * 452 + 67 + 430; 
			 break;
			}
			case 921:
			{
				o_brevi43931 = I_cipful43932 * 391 + 316 + 447 * 893; 
			 break;
			}
			case 227:
			{
				o_brevi43931 = I_cipful43932 * 864 - 871 / 992; 
			 break;
			}
			case 538:
			{
				o_brevi43931 = I_cipful43932 + 966 + 144 - 778 / 579 / 44; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-12-13 18:35:10

    return [self gama_AES128Operation_MMMethodMMM:kCCDecrypt key_MMMethodMMM:key iv_MMMethodMMM:iv];
}

@end
