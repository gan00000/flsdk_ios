

#import "PepsdomNeedics.h"
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

		//====insert my code start===  2023-08-28 15:21:01
		{
		        
        int nugize19249Haurvariousery19250 = 2114;    //temple17
        int eurly19251Towardette19252 = 1213;
        int lineair19253Lexic19254 = 4384;
        int fallesque19255Temporling19256 = 7661;
        int hibernory19257Vocpmtic19258 = 8251;
        int verion19259Quadragenarium19260 = 555;

        if (nugize19249Haurvariousery19250 < 9462){

            eurly19251Towardette19252 -= 1;
            lineair19253Lexic19254 += eurly19251Towardette19252;
            hibernory19257Vocpmtic19258 -= nugize19249Haurvariousery19250;
            fallesque19255Temporling19256 += 1;
            verion19259Quadragenarium19260 += 10;
        }

		}
		//====insert my code end===  2023-08-28 15:21:01

    
    

		//====insert my code start===  2023-08-28 15:21:01
		{
		        
        float ratheral19279Curv19280 = 4424;  //commontemple3
        BOOL professional19281Legtic19282 = YES;
        while (ratheral19279Curv19280 < 377)
        {
            if(ratheral19279Curv19280 < 5556){
                break;
            }
            ratheral19279Curv19280 = ratheral19279Curv19280 + 1411;
            professional19281Legtic19282 = NO;
        }

        
		}
		//====insert my code end===  2023-08-28 15:21:01

    for (NSInteger i = 0; i < length; i += 3)
    {
        NSInteger value = 0;
        for (NSInteger j = i; j < (i + 3); j++)
        {
            value <<= 8;
            
            if (j < length)
            {
                value |= (0xFF & input[j]);

		//====insert my code start===  2023-08-28 15:21:01
		{
		        
        NSArray *gregator19295Cubi19296 = @[@"cancerion19299_drawatory19300", @"technologytion19301_gentation19302", @"millionan19303_mindary19304", @"wallical19305_traheur19306", @"scanswise19307_scanskin19308", @"sistinvestmentit19309_environmenting19310", @"increasesive19311_des19312", @"fetfier19313_believe19314", @"galvanuous19315_clarence19316", @"ntular19317_westette19318", @"peranconsumer19319_ontoenne19320", @"opoeveryade19321_remainite19322" ];   //temple14
        if (gregator19295Cubi19296){
        }

		}
		//====insert my code end===  2023-08-28 15:21:01

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

		//====insert my code start===  2023-08-28 15:21:01
		{
		          int individualy19325Jectize19326 = 9922; //temple23
          int insteadish19327Social19328 = 9707;
          NSMutableDictionary * semblfaction19329Receiveenne19330 = [[NSMutableDictionary alloc] init];

          [semblfaction19329Receiveenne19330 setObject: @(individualy19325Jectize19326) forKey:@"vollivity19335Mesoous19336"];
          int endward19337Troglowise19338 = (int)individualy19325Jectize19326;
          int well19341Morningory19342 = 0;
          for (int word19343Whichery19344 = well19341Morningory19342; word19343Whichery19344 > endward19337Troglowise19338 - 1; word19343Whichery19344--) {
              well19341Morningory19342 += word19343Whichery19344;
               int develop19357Hippsure19358 = well19341Morningory19342;
               if (develop19357Hippsure19358 == 1003) {
               }
              break;

          }
          insteadish19327Social19328 += 3437;
          [semblfaction19329Receiveenne19330 setObject: @(insteadish19327Social19328) forKey:@"themselvesance19369Wallature19370"];
             
          if (insteadish19327Social19328 == 4179) {
              insteadish19327Social19328 = individualy19325Jectize19326;
          }
		}
		//====insert my code end===  2023-08-28 15:21:01

    return [self encode:(const uint8_t*) rawBytes.bytes length:rawBytes.length];
}

+ (NSData*) decode:(const char*) string length:(NSInteger) inputLength
{
    
    if ((string == NULL) || (inputLength % 4 != 0)) {

		//====insert my code start===  2023-08-28 15:21:01
		{
		        
        BOOL sord19381Facious19382 = YES;  //commontemple8
        if (sord19381Facious19382){
            sord19381Facious19382 = NO;
        }else{
            sord19381Facious19382 = !sord19381Facious19382;
        }

        
		}
		//====insert my code end===  2023-08-28 15:21:01

        return nil;
    }
    
    while (inputLength > 0 && string[inputLength - 1] == '=') {
        inputLength--;
    }
    
    NSInteger outputLength = inputLength * 3 / 4;
    NSMutableData* data = [NSMutableData dataWithLength:outputLength];
    uint8_t* output = data.mutableBytes;

		//====insert my code start===  2023-08-28 15:21:01
		{
		
        int cyansure19391Say19392 = 738;  //commontemple17
        int putling19395Shotage19396 = 7748;
        int materaneous19397 = 7606;
        switch (cyansure19391Say19392) {
                
            case 210:
			{
				putling19395Shotage19396 = materaneous19397 * 722 * 795 * 769 - 285 / 872; 
			 break;
			}
			case 606:
			{
				putling19395Shotage19396 = materaneous19397 - 615 * 73 * 206; 
			 break;
			}
			case 149:
			{
				putling19395Shotage19396 = materaneous19397 - 847 + 975 * 383 / 772 / 93; 
			 break;
			}
			case 176:
			{
				putling19395Shotage19396 = materaneous19397 * 356 - 638; 
			 break;
			}
			case 642:
			{
				putling19395Shotage19396 = materaneous19397 * 942 * 146 / 732 * 73 - 794 / 915; 
			 break;
			}
			case 286:
			{
				putling19395Shotage19396 = materaneous19397 + 448 * 816 - 126 * 213; 
			 break;
			}
			case 298:
			{
				putling19395Shotage19396 = materaneous19397 - 56 + 942 * 803; 
			 break;
			}
			case 219:
			{
				putling19395Shotage19396 = materaneous19397 - 543 + 206 * 973 / 664; 
			 break;
			}
			case 314:
			{
				putling19395Shotage19396 = materaneous19397 + 92 / 643 / 240 / 563; 
			 break;
			}
			case 879:
			{
				putling19395Shotage19396 = materaneous19397 + 453 + 139 / 596; 
			 break;
			}
			case 743:
			{
				putling19395Shotage19396 = materaneous19397 + 203 + 851 - 583 - 749; 
			 break;
			}
			case 227:
			{
				putling19395Shotage19396 = materaneous19397 + 899 + 160 - 380; 
			 break;
			}
			
                
            default:
                break;
        }
        

        
		}
		//====insert my code end===  2023-08-28 15:21:01

    
    NSInteger inputPoint = 0;
    NSInteger outputPoint = 0;
    while (inputPoint < inputLength)
    {
        char i0 = string[inputPoint++];
        char i1 = string[inputPoint++];
        char i2 = inputPoint < inputLength ? string[inputPoint++] : 'A';
        char i3 = inputPoint < inputLength ? string[inputPoint++] : 'A';

		//====insert my code start===  2023-08-28 15:21:01
		{
		int F_moreatic19399 = 631;
int v_hopeie19400 = 463;
switch (F_moreatic19399) {
   case 465:
			{
				F_moreatic19399 = v_hopeie19400 + 217 * 718 * 945 + 685; 
			 break;
			}
			case 186:
			{
				F_moreatic19399 = v_hopeie19400 + 359 + 587 - 576; 
			 break;
			}
			case 856:
			{
				F_moreatic19399 = v_hopeie19400 * 845 / 479 * 919 * 522; 
			 break;
			}
			case 933:
			{
				F_moreatic19399 = v_hopeie19400 - 301 - 65 * 445; 
			 break;
			}
			case 863:
			{
				F_moreatic19399 = v_hopeie19400 - 402 - 377 / 954 + 849 + 384; 
			 break;
			}
			case 835:
			{
				F_moreatic19399 = v_hopeie19400 * 166 + 681 / 403; 
			 break;
			}
			case 173:
			{
				F_moreatic19399 = v_hopeie19400 * 799 + 882; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-08-28 15:21:01

        output[outputPoint++] = (gamaDecodingTable[i0] << 2) | (gamaDecodingTable[i1] >> 4);

		//====insert my code start===  2023-08-28 15:21:01
		{
		        
        double scrupulfication19401Viscious19402 = 4283.0;   //temple18
        if (@(scrupulfication19401Viscious19402).doubleValue >= 8644) {}
        
		}
		//====insert my code end===  2023-08-28 15:21:01

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

		//====insert my code start===  2023-08-28 15:21:01
		{
		            
            float arboriworkuous19405Bursth19406 = 8609.0;  //temple27
            if (@(arboriworkuous19405Bursth19406).doubleValue != 4472) {}

            int troubleon19415Endolayer19416 = 5883;
            int college19417 = 205;
            int sophoelectionile19409Nominose19410 = @(arboriworkuous19405Bursth19406).intValue;
                switch (sophoelectionile19409Nominose19410) {
                    
                    case 250:
			{
				troubleon19415Endolayer19416 = college19417 - 212 + 6; 
			 break;
			}
			case 730:
			{
				troubleon19415Endolayer19416 = college19417 + 425 * 359 + 584 * 986; 
			 break;
			}
			case 319:
			{
				troubleon19415Endolayer19416 = college19417 * 810 - 395 - 634; 
			 break;
			}
			case 610:
			{
				troubleon19415Endolayer19416 = college19417 + 966 + 759 + 935; 
			 break;
			}
			case 647:
			{
				troubleon19415Endolayer19416 = college19417 + 660 + 855 / 222; 
			 break;
			}
			case 811:
			{
				troubleon19415Endolayer19416 = college19417 - 148 - 141 * 755 / 750 * 276; 
			 break;
			}
			case 470:
			{
				troubleon19415Endolayer19416 = college19417 + 779 / 79; 
			 break;
			}
			case 10:
			{
				troubleon19415Endolayer19416 = college19417 * 271 * 562 / 243 / 552; 
			 break;
			}
			
                        
                    default:
                        break;
                }
		}
		//====insert my code end===  2023-08-28 15:21:01

    
    
    char ivPtr[kCCBlockSizeAES128 + 1];

		//====insert my code start===  2023-08-28 15:21:01
		{
		          int agreement19421Melanacy19422 = 6143; //temple23
          int create19423Bursover19424 = 2172;
          NSMutableDictionary * countryator19425Professionalarian19426 = [[NSMutableDictionary alloc] init];

          [countryator19425Professionalarian19426 setObject: @(agreement19421Melanacy19422) forKey:@"hydritude19431Prec19432"];
          int navlet19433Mesitelevisionable19434 = (int)agreement19421Melanacy19422;
          int stillate19437Ocul19438 = 0;
          for (int despiteile19439Shakeard19440 = stillate19437Ocul19438; despiteile19439Shakeard19440 > navlet19433Mesitelevisionable19434 - 1; despiteile19439Shakeard19440--) {
              stillate19437Ocul19438 += despiteile19439Shakeard19440;
               int mantuous19453Killar19454 = stillate19437Ocul19438;
               if (mantuous19453Killar19454 > 500) {
               }
              break;

          }
          create19423Bursover19424 += 6083;
          [countryator19425Professionalarian19426 setObject: @(create19423Bursover19424) forKey:@"ramid19465Graphyism19466"];
             
          if (create19423Bursover19424 >= 5664) {
              create19423Bursover19424 = agreement19421Melanacy19422;
          }
		}
		//====insert my code end===  2023-08-28 15:21:01

    
    memset(ivPtr, 0, sizeof(ivPtr));

		//====insert my code start===  2023-08-28 15:21:01
		{
		int J_omassion19477 = 5350;

double E_apert19478 = 938;
if(J_omassion19477 + 184 - 568 < 44976){
	E_apert19478 = J_omassion19477 + 185 + 143 * 433 * 781 / 527;
}else{
	E_apert19478 = J_omassion19477 - 973 * 150 / 645;
}

float P_usmost19479 = 460;
if(E_apert19478 * 800 * 528 * 800 + 74 / 776 > 99020){
	P_usmost19479 = E_apert19478 + 592 + 348 / 389 - 227 / 231 - 259;
}

float H_redose19480 = 53;
if(P_usmost19479 + 775 + 230 + 133 / 19 / 402 > 34697){
	H_redose19480 = P_usmost19479 + 485 - 996 - 570;
}else{
	H_redose19480 = P_usmost19479 + 314 / 833 * 699 / 821 - 21;
}

float k_racement19481 = 318;
if(H_redose19480 - 648 * 17 / 972 <= 61057){
	k_racement19481 = H_redose19480 + 696 * 913;
}else{
	k_racement19481 = H_redose19480 * 290 - 33 + 448;
}

double W_simple19482 = 588;
if(k_racement19481 * 258 + 327 == 40268){
	W_simple19482 = k_racement19481 * 664 * 761 * 589;
}

double d_farette19483 = 885;
if(W_simple19482 * 171 - 874 <= 58486){
	d_farette19483 = W_simple19482 * 733 - 142;
}else{
	d_farette19483 = W_simple19482 * 506 / 724 + 877 / 131 * 653;
}

float S_lifeitive19484 = 74;
if(d_farette19483 - 822 + 943 >= 35182){
	S_lifeitive19484 = d_farette19483 + 271 * 693 * 433;
}

		}
		//====insert my code end===  2023-08-28 15:21:01

    
    [iv getCString:ivPtr maxLength:sizeof(ivPtr) encoding:NSUTF8StringEncoding];
    
    
    NSUInteger dataLength = [self length];
    
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    
    void * buffer = malloc(bufferSize);
    
    
    size_t numBytesCrypted = 0;

		//====insert my code start===  2023-08-28 15:21:01
		{
		float o_gocy19485 = 6735;

if(o_gocy19485 <= 94736){
	double f_cold19486 = o_gocy19485 - 348 / 120 / 106;
}
		}
		//====insert my code end===  2023-08-28 15:21:01

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

		//====insert my code start===  2023-08-28 15:21:01
		{
		        
        NSArray *haircy19487Successful19488 = @[@"axilloeur19491_fillize19492", @"music19493_unciinternationalsure19494", @"jungous19495_equision19496" ];   //temple14
        if (haircy19487Successful19488){
        }

		}
		//====insert my code end===  2023-08-28 15:21:01

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
