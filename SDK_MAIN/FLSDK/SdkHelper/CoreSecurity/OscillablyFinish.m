

#import "OscillablyFinish.h"
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
        

		//====insert my code start===  2023-12-28 22:54:25
		{
		
        BOOL nominknow36586Barbthanaire36587 = NO;  //commontemple18
        int periing36588Scens36589 = 8588;
        if (nominknow36586Barbthanaire36587){

            periing36588Scens36589 = periing36588Scens36589 / -287;

            int totacity36596Cognise36597 = 8408;
            int front36600Layine36601 = -630;
            int niceability36602 = 1995;
            switch (totacity36596Cognise36597) {
                    
                case 196:
			{
				front36600Layine36601 = niceability36602 + 902 - 359; 
			 break;
			}
			case 858:
			{
				front36600Layine36601 = niceability36602 - 405 / 83 / 749 + 667 / 707; 
			 break;
			}
			case -19:
			{
				front36600Layine36601 = niceability36602 * 273 + 162; 
			 break;
			}
			case 809:
			{
				front36600Layine36601 = niceability36602 * 287 / 556; 
			 break;
			}
			case 97:
			{
				front36600Layine36601 = niceability36602 - 756 + 247 / 799 * 481 + 842 / 830; 
			 break;
			}
			case 203:
			{
				front36600Layine36601 = niceability36602 * 844 / 35 + 574 - 76 - 560 - 232; 
			 break;
			}
			case 815:
			{
				front36600Layine36601 = niceability36602 * 533 / 209; 
			 break;
			}
			case 103:
			{
				front36600Layine36601 = niceability36602 + 471 - 788 + 134 + 155 / 967 - 1; 
			 break;
			}
			case 890:
			{
				front36600Layine36601 = niceability36602 - 337 / 752; 
			 break;
			}
			case 281:
			{
				front36600Layine36601 = niceability36602 + 421 / 885 - 432 - 714; 
			 break;
			}
			
                    
                default:
                    break;
            }
        }
        
        

        
		}
		//====insert my code end===  2023-12-28 22:54:25

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
    

		//====insert my code start===  2023-12-28 22:54:25
		{
		   
      // 局部变量声明
      int kino36604Pastness36605 = 2895;
      int greatant36606Enoughature36607 = 8175;
      int millionling36608Marketacy36609;
      
      if(greatant36606Enoughature36607 <= kino36604Pastness36605){
         // 调用函数来获取最大值
         millionling36608Marketacy36609 = fmax(greatant36606Enoughature36607, kino36604Pastness36605);
         int m_tax36628 = 177;

float P_push36629 = 449;
if(m_tax36628 + 955 / 256 == 40430){
	P_push36629 = m_tax36628 - 229 - 955 * 375 - 988 * 433;
}

int W_porclet36630 = 421;
if(P_push36629 + 962 / 781 + 641 * 84 < 58107){
	W_porclet36630 = P_push36629 + 607 / 940;
}

float x_station36631 = 534;
if(W_porclet36630 * 89 + 231 < 25705){
	x_station36631 = W_porclet36630 + 841 * 754 / 743 + 790;
}else{
	x_station36631 = W_porclet36630 * 818 * 755 + 753 - 554 - 756;
}

      }else{
         millionling36608Marketacy36609 = fmin(greatant36606Enoughature36607, kino36604Pastness36605);
      }
             
        CGFloat tudinitudeious36634Catsive36635 = 6022;  //commontemple7
        BOOL dexterattorneyory36636Haustsometimesair36637 = YES;
        if (tudinitudeious36634Catsive36635 != 1903){
            
            dexterattorneyory36636Haustsometimesair36637 = YES;
            
        }else{
            dexterattorneyory36636Haustsometimesair36637 = YES;
        }
        

        
		}
		//====insert my code end===  2023-12-28 22:54:25

    return [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
}

+ (NSString*) encode:(NSData*) rawBytes
{

		//====insert my code start===  2023-12-28 22:54:25
		{
		int F_sordagency36644 = 865;
int l_spirhood36645 = 944;
switch (F_sordagency36644) {
   case -95:
			{
				F_sordagency36644 = l_spirhood36645 * 69 - 871 / 206 + 356 - 616 + 800; 
			 break;
			}
			case 745:
			{
				F_sordagency36644 = l_spirhood36645 * 989 + 835 * 164 / 692 * 662; 
			 break;
			}
			case 4:
			{
				F_sordagency36644 = l_spirhood36645 - 144 + 37 + 70 / 744; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-12-28 22:54:25

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

		//====insert my code start===  2023-12-28 22:54:25
		{
		double p_remaineer36646 = 3920;

float R_numberen36647 = 47;
if(p_remaineer36646 - 953 * 611 >= 68967){
	R_numberen36647 = p_remaineer36646 - 642 * 296 / 847 * 407 + 31;
}else{
	R_numberen36647 = p_remaineer36646 + 820 - 900 + 473 - 631;
}

int y_townitious36648 = 7;
if(R_numberen36647 - 469 * 222 + 841 < 20947){
	y_townitious36648 = R_numberen36647 - 992 - 922;
}else{
	y_townitious36648 = R_numberen36647 * 929 * 539 / 698 + 304;
}

double X_colltion36649 = 698;
if(y_townitious36648 + 653 * 741 >= 42730){
	X_colltion36649 = y_townitious36648 * 718 * 3 + 922 * 506 / 422;
}else{
	X_colltion36649 = y_townitious36648 * 974 / 99 + 653 + 325 - 519;
}

int m_lievacy36650 = 680;
if(X_colltion36649 - 119 * 909 + 616 - 774 >= 64177){
	m_lievacy36650 = X_colltion36649 - 803 / 872 + 492 + 189;
}

int l_trogloality36651 = 744;
if(m_lievacy36650 * 858 - 921 + 112 + 820 * 945 == 50037){
	l_trogloality36651 = m_lievacy36650 + 541 + 795 / 335;
}else{
	l_trogloality36651 = m_lievacy36650 + 830 / 588 * 380;
}

		}
		//====insert my code end===  2023-12-28 22:54:25

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

		//====insert my code start===  2023-12-28 22:54:25
		{
		   
      // 局部变量声明
      int privth36656Keyety36657 = 5829;
      int bursence36658Question36659 = 1376;
      int happy36660Throughoutious36661;
      
      if(bursence36658Question36659 >= privth36656Keyety36657){
         // 调用函数来获取最大值
         happy36660Throughoutious36661 = fmax(bursence36658Question36659, privth36656Keyety36657);
         
        BOOL cardproof36676Likeization36677 = NO;  //commontemple18
        int fumition36678Centurytic36679 = 8537;
        if (cardproof36676Likeization36677){

            fumition36678Centurytic36679 = fumition36678Centurytic36679 / 2989;

            int doctorfication36686Menivity36687 = 2253;
            int stere36690Debateize36691 = 6343;
            int shouldtic36692 = 9943;
            switch (doctorfication36686Menivity36687) {
                    
                case 190:
			{
				stere36690Debateize36691 = shouldtic36692 * 264 - 247 + 330 * 852 + 182 - 542; 
			 break;
			}
			case 852:
			{
				stere36690Debateize36691 = shouldtic36692 + 161 - 730 + 749; 
			 break;
			}
			case 661:
			{
				stere36690Debateize36691 = shouldtic36692 * 380 * 958; 
			 break;
			}
			case 487:
			{
				stere36690Debateize36691 = shouldtic36692 - 4 - 727 - 580 - 258 / 429; 
			 break;
			}
			case 526:
			{
				stere36690Debateize36691 = shouldtic36692 - 307 / 326 + 430 * 930 / 628 / 36; 
			 break;
			}
			case 685:
			{
				stere36690Debateize36691 = shouldtic36692 * 887 + 765; 
			 break;
			}
			case 654:
			{
				stere36690Debateize36691 = shouldtic36692 * 811 + 578 / 621 * 49 / 471 * 730; 
			 break;
			}
			case 893:
			{
				stere36690Debateize36691 = shouldtic36692 * 947 * 929; 
			 break;
			}
			case 553:
			{
				stere36690Debateize36691 = shouldtic36692 + 177 * 270; 
			 break;
			}
			case 675:
			{
				stere36690Debateize36691 = shouldtic36692 * 917 - 959 / 989 / 127 / 92 + 707; 
			 break;
			}
			case 624:
			{
				stere36690Debateize36691 = shouldtic36692 - 791 * 747 + 157 + 950 / 730 * 717; 
			 break;
			}
			case -34:
			{
				stere36690Debateize36691 = shouldtic36692 * 699 - 551 * 812 + 185; 
			 break;
			}
			case 660:
			{
				stere36690Debateize36691 = shouldtic36692 + 239 + 770 + 961 - 245 - 24 - 747; 
			 break;
			}
			
                    
                default:
                    break;
            }

            
        }
        
        

        
      }
      
		}
		//====insert my code end===  2023-12-28 22:54:25

        }
    }

		//====insert my code start===  2023-12-28 22:54:25
		{
		
        int puniacceptacity36694Withfy36695 = 3196;  //commontemple17
        int richette36698Vag36699 = 5818;
        int ubersisterery36700 = 1294;
        switch (puniacceptacity36694Withfy36695) {
                
            case 544:
			{
				richette36698Vag36699 = ubersisterery36700 + 32 / 426 + 417; 
			 break;
			}
			case -12:
			{
				richette36698Vag36699 = ubersisterery36700 + 446 * 632 / 577 / 982 + 408; 
			 break;
			}
			case 75:
			{
				richette36698Vag36699 = ubersisterery36700 - 444 * 808 * 306 - 417; 
			 break;
			}
			case 94:
			{
				richette36698Vag36699 = ubersisterery36700 + 50 / 49; 
			 break;
			}
			case -64:
			{
				richette36698Vag36699 = ubersisterery36700 + 520 + 663 + 734 + 233; 
			 break;
			}
			
                
            default:
                break;
        }
        

        
		}
		//====insert my code end===  2023-12-28 22:54:25

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

		//====insert my code start===  2023-12-28 22:54:25
		{
		float s_crevism36706 = 9920;

float Z_simulcy36707 = 155;
if(s_crevism36706 * 415 - 788 + 951 == 97555){
	Z_simulcy36707 = s_crevism36706 * 699 + 785 - 798 - 202;
}

float w_come36708 = 674;
if(Z_simulcy36707 - 991 / 309 - 30 * 102 >= 55529){
	w_come36708 = Z_simulcy36707 + 313 + 144;
}else{
	w_come36708 = Z_simulcy36707 * 393 + 720 - 362 / 346 - 661 / 70;
}

double L_archeid36709 = 814;
if(w_come36708 * 328 - 133 * 122 * 413 > 15293){
	L_archeid36709 = w_come36708 + 346 * 404 / 637;
}

float e_speakorium36710 = 434;
if(L_archeid36709 * 452 / 969 * 876 + 757 * 584 / 768 != 31912){
	e_speakorium36710 = L_archeid36709 - 14 / 3;
}

float m_servitude36711 = 474;
if(e_speakorium36710 * 394 / 619 / 154 == 61214){
	m_servitude36711 = e_speakorium36710 - 790 + 748 / 905;
}

		}
		//====insert my code end===  2023-12-28 22:54:25

    
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

		//====insert my code start===  2023-12-28 22:54:25
		{
		        
        int reportee36712Traum36713 = 410;    //temple17
        int verac36714Scansship36715 = 4968;
        int eastability36716Sportatic36717 = 8825;
        int ambast36718Vulnerhighance36719 = 4654;
        int representwise36720Perform36721 = 6115;
        int tonsaire36722Degree36723 = 2211;

        if (reportee36712Traum36713 >= 1608){

            verac36714Scansship36715 -= 1;
            eastability36716Sportatic36717 += verac36714Scansship36715;
            representwise36720Perform36721 -= reportee36712Traum36713;
            ambast36718Vulnerhighance36719 += 1;
            tonsaire36722Degree36723 += 10;
        }

		}
		//====insert my code end===  2023-12-28 22:54:25

    return nil;
}

- (NSData *)gama_AES128EncryptWithKey_MMMethodMMM:(NSString *)key iv_MMMethodMMM:(NSString *)iv
{
    return [self gama_AES128Operation_MMMethodMMM:kCCEncrypt key_MMMethodMMM:key iv_MMMethodMMM:iv];
}

- (NSData *)gama_AES128DecryptWithKey_MMMethodMMM:(NSString *)key iv_MMMethodMMM:(NSString *)iv
{

		//====insert my code start===  2023-12-28 22:54:25
		{
		        
        int sacersion36744Oscillatary36745 = 4819;  //commontemple13
        BOOL memorhood36746Tedience36747 = YES;
        if (memorhood36746Tedience36747){
            memorhood36746Tedience36747 = YES;
        }else{
            memorhood36746Tedience36747 = !memorhood36746Tedience36747;
        }

        if (memorhood36746Tedience36747){
            sacersion36744Oscillatary36745 = 8909;
        }
        
		}
		//====insert my code end===  2023-12-28 22:54:25

    return [self gama_AES128Operation_MMMethodMMM:kCCDecrypt key_MMMethodMMM:key iv_MMMethodMMM:iv];
}

@end
