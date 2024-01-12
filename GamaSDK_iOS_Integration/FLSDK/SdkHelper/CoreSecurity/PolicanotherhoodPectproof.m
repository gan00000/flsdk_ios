

#import "PolicanotherhoodPectproof.h"
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

		//===insert my code start===  2024-01-12 12:51:45
		{
		int v_pand43772 = 794;
float m_emeticization43773 = 915;
switch (v_pand43772) {
   case 827:
			{
				v_pand43772 = m_emeticization43773 + 197 / 641 * 590; 
			 break;
			}
			case 505:
			{
				v_pand43772 = m_emeticization43773 - 824 + 815 * 991 / 524 * 392 - 771; 
			 break;
			}
			case 453:
			{
				v_pand43772 = m_emeticization43773 + 292 * 112 + 566 / 791; 
			 break;
			}
			case 324:
			{
				v_pand43772 = m_emeticization43773 - 486 / 142 + 323; 
			 break;
			}
			case 598:
			{
				v_pand43772 = m_emeticization43773 - 97 - 452 / 338 + 106 - 472; 
			 break;
			}
			case 698:
			{
				v_pand43772 = m_emeticization43773 - 409 + 666 - 126; 
			 break;
			}
			case -10:
			{
				v_pand43772 = m_emeticization43773 * 123 * 86 / 881; 
			 break;
			}
			   default:
       break;
			}
		}
		// 2024-01-12 12:51:45 ===insert my code end=== 

    
    
    for (NSInteger i = 0; i < length; i += 3)
    {
        NSInteger value = 0;

		//===insert my code start===  2024-01-12 12:51:45
		{
		        
        long removeuous43776Omphaleous43777 = 6498;  //commontemple9
        int naro43778Scelcy43779 = 6330;

        for(int mereal43780Yardition43781 = 6941; mereal43780Yardition43781 < 611; mereal43780Yardition43781 = mereal43780Yardition43781 + 1)
        {    
            removeuous43776Omphaleous43777 = removeuous43776Omphaleous43777 + naro43778Scelcy43779;
            if (removeuous43776Omphaleous43777 > mereal43780Yardition43781){
                break;
            }
            naro43778Scelcy43779 = naro43778Scelcy43779++;
        }
        

        
		}
		// 2024-01-12 12:51:45 ===insert my code end=== 

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

		//===insert my code start===  2024-01-12 12:51:45
		{
		        
        NSArray *pond43806Order43807 = @[@"instead43810_continue43811", @"cru43812_sclerivity43813", @"gloriial43814_vestigar43815" ];   //temple16
        if (pond43806Order43807.count > 2522){
        }
        
		}
		// 2024-01-12 12:51:45 ===insert my code end=== 

    return [self encode:(const uint8_t*) rawBytes.bytes length:rawBytes.length];
}

+ (NSData*) decode:(const char*) string length:(NSInteger) inputLength
{
    
    if ((string == NULL) || (inputLength % 4 != 0)) {

		
        return nil;
    }
    

		
    while (inputLength > 0 && string[inputLength - 1] == '=') {
        inputLength--;

		//===insert my code start===  2024-01-12 12:51:45
		{
		        if (!([@"layine43816Icosintoular43817" hasPrefix: @"optimeous43818Beyondistic43819"])){   //temple4

            int game43820Marative43821 = 4436;
            int anythingia43826Pushorium43827 = -510;
            int clud43828 = 5096;
            switch (game43820Marative43821) {
                    
                case -92:
			{
				anythingia43826Pushorium43827 = clud43828 * 906 - 571 - 815 / 102 / 670 * 186; 
			 break;
			}
			case 832:
			{
				anythingia43826Pushorium43827 = clud43828 * 380 / 189 / 520 - 666; 
			 break;
			}
			case -56:
			{
				anythingia43826Pushorium43827 = clud43828 + 370 * 870; 
			 break;
			}
			case 915:
			{
				anythingia43826Pushorium43827 = clud43828 + 672 + 944 / 161; 
			 break;
			}
			case 823:
			{
				anythingia43826Pushorium43827 = clud43828 * 639 / 582 - 745 + 818 / 669; 
			 break;
			}
			case 928:
			{
				anythingia43826Pushorium43827 = clud43828 * 542 * 186; 
			 break;
			}
			case -84:
			{
				anythingia43826Pushorium43827 = clud43828 - 973 * 448 * 328 + 541; 
			 break;
			}
			case 167:
			{
				anythingia43826Pushorium43827 = clud43828 + 708 - 112 / 190 * 771 / 186; 
			 break;
			}
			case 520:
			{
				anythingia43826Pushorium43827 = clud43828 * 55 - 919 - 693 - 169 / 212 + 775; 
			 break;
			}
			case 145:
			{
				anythingia43826Pushorium43827 = clud43828 - 766 * 571; 
			 break;
			}
			case 970:
			{
				anythingia43826Pushorium43827 = clud43828 * 24 + 72; 
			 break;
			}
			case 749:
			{
				anythingia43826Pushorium43827 = clud43828 * 772 - 235 * 301 + 171 + 873 + 807; 
			 break;
			}
			case 217:
			{
				anythingia43826Pushorium43827 = clud43828 * 216 - 253 * 168 * 12 + 114; 
			 break;
			}
			case -22:
			{
				anythingia43826Pushorium43827 = clud43828 + 660 + 389 / 116 + 519 - 544; 
			 break;
			}
			case 334:
			{
				anythingia43826Pushorium43827 = clud43828 - 539 + 157 - 601 - 739 + 451 + 919; 
			 break;
			}
			case 173:
			{
				anythingia43826Pushorium43827 = clud43828 + 706 - 881 - 502 * 917; 
			 break;
			}
			
                    
                default:
                    break;
            }

            float medialing43824Creboxfier43825 = anythingia43826Pushorium43827 - 3792;
        }

		}
		// 2024-01-12 12:51:45 ===insert my code end=== 

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

		//===insert my code start===  2024-01-12 12:51:45
		{
		double k_opooon43832 = 5712;

int O_tegty43833 = 84;
if(k_opooon43832 * 214 / 132 - 52 - 964 - 915 <= 66270){
	O_tegty43833 = k_opooon43832 + 143 + 256;
}else{
	O_tegty43833 = k_opooon43832 * 911 / 608 + 299 + 595 / 403 + 112;
}

double R_animfeelic43834 = 41;
if(O_tegty43833 * 937 + 933 - 176 - 758 * 481 * 944 != 23493){
	R_animfeelic43834 = O_tegty43833 * 278 + 809 - 945;
}else{
	R_animfeelic43834 = O_tegty43833 * 115 + 356 - 615 / 128;
}

double p_seefication43835 = 567;
if(R_animfeelic43834 + 400 + 580 != 10240){
	p_seefication43835 = R_animfeelic43834 + 61 * 924 / 817 + 639;
}

int R_argueory43836 = 103;
if(p_seefication43835 - 454 - 583 > 61716){
	R_argueory43836 = p_seefication43835 * 150 + 685 + 339 + 214 + 985;
}else{
	R_argueory43836 = p_seefication43835 * 607 / 335 - 330 - 850;
}

float a_meant43837 = 309;
if(R_argueory43836 + 7 - 217 * 779 - 515 / 789 + 640 < 96733){
	a_meant43837 = R_argueory43836 - 313 + 447;
}else{
	a_meant43837 = R_argueory43836 + 3 - 52 - 354 + 750;
}

		}
		// 2024-01-12 12:51:45 ===insert my code end=== 


		
        char i2 = inputPoint < inputLength ? string[inputPoint++] : 'A';
        char i3 = inputPoint < inputLength ? string[inputPoint++] : 'A';

		//===insert my code start===  2024-01-12 12:51:45
		{
		          int meence43838Haveetic43839 = 7081; //temple23
          int attentionice43840Piousacy43841 = 8785;
          NSMutableDictionary * passasitive43842Perhaps43843 = [[NSMutableDictionary alloc] init];

          [passasitive43842Perhaps43843 setObject: @(meence43838Haveetic43839) forKey:@"homeohood43848Feliability43849"];
          int plen43850Readyality43851 = (int)meence43838Haveetic43839;
          int book43854Readistic43855 = 0;
          for (int undecim43856Tendit43857 = book43854Readistic43855; undecim43856Tendit43857 > plen43850Readyality43851 - 1; undecim43856Tendit43857--) {
              book43854Readistic43855 += undecim43856Tendit43857;
               int sexee43870Dreamaceous43871 = book43854Readistic43855;
               if (sexee43870Dreamaceous43871 != 6569) {
               }
              break;

          }
          attentionice43840Piousacy43841 += 4383;
          [passasitive43842Perhaps43843 setObject: @(attentionice43840Piousacy43841) forKey:@"centuryatory43882Tectonsystem43883"];
             
          if (attentionice43840Piousacy43841 < 914) {
              attentionice43840Piousacy43841 = meence43838Haveetic43839;
          }
		}
		// 2024-01-12 12:51:45 ===insert my code end=== 

        output[outputPoint++] = (gamaDecodingTable[i0] << 2) | (gamaDecodingTable[i1] >> 4);
        if (outputPoint < outputLength)
        {
            output[outputPoint++] = ((gamaDecodingTable[i1] & 0xf) << 4) | (gamaDecodingTable[i2] >> 2);

		//===insert my code start===  2024-01-12 12:51:45
		{
		float J_oleorium43892 = 5670;

double o_fistulaneity43893 = 676;
if(J_oleorium43892 * 920 / 25 * 659 / 742 - 297 * 529 >= 40933){
	o_fistulaneity43893 = J_oleorium43892 + 504 - 196 - 861;
}

float J_nomad43894 = 599;
if(o_fistulaneity43893 - 206 * 992 / 909 >= 36987){
	J_nomad43894 = o_fistulaneity43893 * 885 / 163;
}

int Y_presidentproof43895 = 803;
if(J_nomad43894 + 801 * 464 < 71041){
	Y_presidentproof43895 = J_nomad43894 * 700 - 370 - 954 / 855;
}else{
	Y_presidentproof43895 = J_nomad43894 + 482 + 792 / 133 / 311 + 533;
}

float m_discussfold43896 = 930;
if(Y_presidentproof43895 - 396 * 594 - 33 * 170 + 843 - 558 < 55274){
	m_discussfold43896 = Y_presidentproof43895 * 892 - 272 - 215 - 68 / 396;
}

float o_thanish43897 = 247;
if(m_discussfold43896 * 577 + 632 - 14 / 837 >= 37757){
	o_thanish43897 = m_discussfold43896 + 565 / 313 - 339 - 69;
}

double T_seably43898 = 537;
if(o_thanish43897 - 689 - 181 - 119 - 980 + 219 != 75152){
	T_seably43898 = o_thanish43897 - 177 / 112 / 170 * 984;
}else{
	T_seably43898 = o_thanish43897 + 177 - 543 + 784 + 455 / 540 / 619;
}

float H_plagress43899 = 580;
if(T_seably43898 * 755 - 434 / 381 / 433 == 41176){
	H_plagress43899 = T_seably43898 * 531 / 674 / 589 * 288;
}

double M_ciliain43900 = 251;
if(H_plagress43899 * 658 * 624 == 10023){
	M_ciliain43900 = H_plagress43899 * 786 * 23 * 24 * 134;
}

int z_degreeial43901 = 154;
if(M_ciliain43900 - 758 * 974 > 43652){
	z_degreeial43901 = M_ciliain43900 * 646 / 13;
}

int S_malleoish43902 = 514;
if(z_degreeial43901 - 234 * 837 * 80 <= 86811){
	S_malleoish43902 = z_degreeial43901 * 457 + 556 / 762 + 595;
}

double r_dataoon43903 = 115;
if(S_malleoish43902 + 502 / 640 <= 57809){
	r_dataoon43903 = S_malleoish43902 - 199 * 24 / 925 - 871 / 234 + 342;
}

		}
		// 2024-01-12 12:51:45 ===insert my code end=== 

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

		//===insert my code start===  2024-01-12 12:51:45
		{
		int B_archoior43908 = 913;
float W_sudacity43909 = 236;
switch (B_archoior43908) {
   case 348:
			{
				B_archoior43908 = W_sudacity43909 * 356 + 5 / 391 + 935; 
			 break;
			}
			case 660:
			{
				B_archoior43908 = W_sudacity43909 * 5 + 859 / 130; 
			 break;
			}
			case 11:
			{
				B_archoior43908 = W_sudacity43909 - 74 * 238 * 7 * 751 * 379 / 380; 
			 break;
			}
			case 351:
			{
				B_archoior43908 = W_sudacity43909 * 472 * 354 * 522 + 933 / 293; 
			 break;
			}
			case 842:
			{
				B_archoior43908 = W_sudacity43909 + 395 - 197 * 54 + 917 - 523; 
			 break;
			}
			case 951:
			{
				B_archoior43908 = W_sudacity43909 - 511 / 631 - 650 + 228; 
			 break;
			}
			case 304:
			{
				B_archoior43908 = W_sudacity43909 * 696 * 482 + 222 - 4 / 607; 
			 break;
			}
			case 132:
			{
				B_archoior43908 = W_sudacity43909 + 854 / 480 / 843 + 942 * 456 * 979; 
			 break;
			}
			case 912:
			{
				B_archoior43908 = W_sudacity43909 * 726 + 756 * 636 - 394 * 407; 
			 break;
			}
			case 913:
			{
				B_archoior43908 = W_sudacity43909 - 810 * 32; 
			 break;
			}
			   default:
       break;
			}
		}
		// 2024-01-12 12:51:45 ===insert my code end=== 

    
    memset(keyPtr, 0, sizeof(keyPtr));
    
    [key getCString:keyPtr maxLength:sizeof(keyPtr) encoding:NSUTF8StringEncoding];
    
    
    char ivPtr[kCCBlockSizeAES128 + 1];
    
    memset(ivPtr, 0, sizeof(ivPtr));

		//===insert my code start===  2024-01-12 12:51:45
		{
		int v_moreian43914 = 57;
int p_listenaneity43915 = 599;
switch (v_moreian43914) {
   case 213:
			{
				v_moreian43914 = p_listenaneity43915 - 485 * 739 - 641 + 660 - 149 - 320; 
			 break;
			}
			   default:
       break;
			}
		}
		// 2024-01-12 12:51:45 ===insert my code end=== 

    
    [iv getCString:ivPtr maxLength:sizeof(ivPtr) encoding:NSUTF8StringEncoding];
    
    
    NSUInteger dataLength = [self length];

		//===insert my code start===  2024-01-12 12:51:45
		{
		int v_economicern43916 = 73;
int P_lapssome43917 = 450;
switch (v_economicern43916) {
   case 953:
			{
				v_economicern43916 = P_lapssome43917 + 842 / 969 / 81 * 204 * 27; 
			 break;
			}
			case 984:
			{
				v_economicern43916 = P_lapssome43917 * 214 / 742 / 401 + 289 + 215 + 778; 
			 break;
			}
			case 75:
			{
				v_economicern43916 = P_lapssome43917 * 610 - 356 / 311 * 790; 
			 break;
			}
			case 154:
			{
				v_economicern43916 = P_lapssome43917 * 693 * 999 - 111; 
			 break;
			}
			case 896:
			{
				v_economicern43916 = P_lapssome43917 - 57 - 534 * 250; 
			 break;
			}
			   default:
       break;
			}
		}
		// 2024-01-12 12:51:45 ===insert my code end=== 

    
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

		//===insert my code start===  2024-01-12 12:51:45
		{
		int W_pagin43920 = 687;
float y_strongary43921 = 10;
switch (W_pagin43920) {
   case 860:
			{
				W_pagin43920 = y_strongary43921 - 912 - 641; 
			 break;
			}
			case 778:
			{
				W_pagin43920 = y_strongary43921 - 302 * 196 - 833; 
			 break;
			}
			case 95:
			{
				W_pagin43920 = y_strongary43921 * 530 + 151; 
			 break;
			}
			case 804:
			{
				W_pagin43920 = y_strongary43921 * 524 * 897 - 377 / 690 - 651 / 903; 
			 break;
			}
			case 608:
			{
				W_pagin43920 = y_strongary43921 + 487 + 27 + 574 - 72 + 471 / 272; 
			 break;
			}
			case 788:
			{
				W_pagin43920 = y_strongary43921 - 302 / 522 + 76 * 743; 
			 break;
			}
			case 573:
			{
				W_pagin43920 = y_strongary43921 - 332 + 766 * 375 - 859 + 547; 
			 break;
			}
			case 879:
			{
				W_pagin43920 = y_strongary43921 + 409 * 326 * 440 / 792 - 73; 
			 break;
			}
			case 745:
			{
				W_pagin43920 = y_strongary43921 + 59 - 919 + 863 / 82 / 954 / 584; 
			 break;
			}
			case -8:
			{
				W_pagin43920 = y_strongary43921 + 643 / 416; 
			 break;
			}
			case 922:
			{
				W_pagin43920 = y_strongary43921 + 196 * 662 + 267 * 548 - 980; 
			 break;
			}
			   default:
       break;
			}
		}
		// 2024-01-12 12:51:45 ===insert my code end=== 

    if (cryptStatus == kCCSuccess)
    {
        
        NSData * cryptData=[NSData dataWithBytesNoCopy:buffer length:numBytesCrypted];
        
        return cryptData;
    }
    
    free(buffer);

		//===insert my code start===  2024-01-12 12:51:45
		{
		      
      
    int condiform43926Seaular43927;   //commontemple23
    int nomenal43928Reness43929 = 9271;
    int dormfic43930Colorist43931 = 4044;

    if (nomenal43928Reness43929 >= dormfic43930Colorist43931){
        condiform43926Seaular43927 = nomenal43928Reness43929;

        int turneous43940Hapl43941[ condiform43926Seaular43927 ]; 
    
          // 初始化数组元素          
          for ( int i = 0; i < condiform43926Seaular43927; i++ )
          {
             turneous43940Hapl43941[ i ] = i + 3768; // 设置元素 i 为 i + 100
             break;
          }
    }else{
        condiform43926Seaular43927 = dormfic43930Colorist43931;
    }
        


		}
		// 2024-01-12 12:51:45 ===insert my code end=== 

    return nil;
}

- (NSData *)gama_AES128EncryptWithKey_MMMethodMMM:(NSString *)key iv_MMMethodMMM:(NSString *)iv
{

		//===insert my code start===  2024-01-12 12:51:45
		{
		double y_catwhat43956 = 5646;

if(y_catwhat43956 > 34087){
	double L_putency43957 = y_catwhat43956 * 532 - 57; 
if(L_putency43957 < 2361){
	double A_avoidid43958 = L_putency43957 * 393 / 863 / 239 + 694 + 812 - 53; 
if(A_avoidid43958 != 52072){
	int D_calcling43959 = A_avoidid43958 - 721 / 366 * 153 / 969;
}
}
}
		}
		// 2024-01-12 12:51:45 ===insert my code end=== 

    return [self gama_AES128Operation_MMMethodMMM:kCCEncrypt key_MMMethodMMM:key iv_MMMethodMMM:iv];
}

- (NSData *)gama_AES128DecryptWithKey_MMMethodMMM:(NSString *)key iv_MMMethodMMM:(NSString *)iv
{

		
    return [self gama_AES128Operation_MMMethodMMM:kCCDecrypt key_MMMethodMMM:key iv_MMMethodMMM:iv];
}

@end
