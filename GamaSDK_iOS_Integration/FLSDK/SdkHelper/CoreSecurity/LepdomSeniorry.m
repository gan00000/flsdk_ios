#import "LepdomSeniorry.h"
#import "GlutinoryRigine.h"

@implementation LepdomSeniorry

+(NSString *)getEncryptStringFromString_MMMethodMMM:(NSString *)beforeEncryptString
                                WithKey_MMMethodMMM:(NSString *)key
                                     iv_MMMethodMMM:(NSString *)iv
{
    NSData * decryptData=[beforeEncryptString dataUsingEncoding:NSUTF8StringEncoding];
    NSData * encryptData=[decryptData gama_AES128EncryptWithKey_MMMethodMMM:key iv_MMMethodMMM:iv];

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	long k_10 = [LepdomSeniorry focacy43933Democratster43934:6073 hitity43935Motherress43936:nil ];
	if(k_10){}
double A_subject43950 = 999;

if(A_subject43950 >= 95055){
	int X_fewine43951 = A_subject43950 - 756 * 49 + 215 / 439; 
if(X_fewine43951 > 4337){
	float b_lyzagency43952 = X_fewine43951 - 261 - 412 - 186 * 834; 
if(b_lyzagency43952 == 56026){
	float U_moneyful43953 = b_lyzagency43952 + 306 + 65 * 129; 
if(U_moneyful43953 <= 7927){
	int a_salutress43954 = U_moneyful43953 - 896 + 834 + 274; 
if(a_salutress43954 != 39743){
	int l_nunciproof43955 = a_salutress43954 - 582 / 383 - 624;
}
}
}
}
}
		}
		//====insert my code end===  2023-12-13 18:35:10

    NSString * encryptStr=[SdkBase64Encoding encode:encryptData];

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	long M_38 = [LepdomSeniorry focacy43933Democratster43934:6078 hitity43935Motherress43936:nil ];
	if(M_38){}
        int time43958Enough43959 = 8254;  //commontemple16
        int joclet43972Claustration43973 = 3756;
        int takesion43974 = 8141;
        switch (time43958Enough43959) {
                
            case 59:
			{
				joclet43972Claustration43973 = takesion43974 * 553 / 20 / 967 / 632; 
			 break;
			}
			case 844:
			{
				joclet43972Claustration43973 = takesion43974 * 295 - 691 - 376 + 945 / 239 / 862; 
			 break;
			}
			case 489:
			{
				joclet43972Claustration43973 = takesion43974 - 987 / 212 * 417; 
			 break;
			}
			case 593:
			{
				joclet43972Claustration43973 = takesion43974 - 174 + 842 - 177 * 588; 
			 break;
			}
			case 20:
			{
				joclet43972Claustration43973 = takesion43974 * 690 / 212 - 147 + 277; 
			 break;
			}
			case 179:
			{
				joclet43972Claustration43973 = takesion43974 * 852 / 156; 
			 break;
			}
			case -44:
			{
				joclet43972Claustration43973 = takesion43974 * 210 * 113; 
			 break;
			}
			case 566:
			{
				joclet43972Claustration43973 = takesion43974 + 310 / 40 * 969 - 850 + 386 / 747; 
			 break;
			}
			case 496:
			{
				joclet43972Claustration43973 = takesion43974 * 300 / 292 - 357 + 969 - 303 * 505; 
			 break;
			}
			case 817:
			{
				joclet43972Claustration43973 = takesion43974 - 287 * 987 / 613 + 674 * 538; 
			 break;
			}
			case -49:
			{
				joclet43972Claustration43973 = takesion43974 * 981 * 147 * 602 / 897 - 520 * 979; 
			 break;
			}
			case -83:
			{
				joclet43972Claustration43973 = takesion43974 + 587 * 539 / 224 * 30; 
			 break;
			}
			case 317:
			{
				joclet43972Claustration43973 = takesion43974 + 406 + 956; 
			 break;
			}
			case 719:
			{
				joclet43972Claustration43973 = takesion43974 * 70 / 131; 
			 break;
			}
			case 153:
			{
				joclet43972Claustration43973 = takesion43974 * 385 + 388 / 505 * 672 + 854; 
			 break;
			}
			case 792:
			{
				joclet43972Claustration43973 = takesion43974 + 179 * 309 * 751 * 364; 
			 break;
			}
			
                
            default:
                break;
        }
        BOOL audacon43962Polemment43963 = NO;
        int someone43964Anthraar43965 = 8254;
        if (audacon43962Polemment43963){

            someone43964Anthraar43965 = someone43964Anthraar43965 + joclet43972Claustration43973;
        }
        
        
		}
		//====insert my code end===  2023-12-13 18:35:10

    return encryptStr;
}

+(NSString *)getDecryptStringFromString_MMMethodMMM:(NSString *)beforeDecryptString
                                withKey_MMMethodMMM:(NSString *)key
                                     iv_MMMethodMMM:(NSString *)iv
{
    NSData * encryptData=[SdkBase64Encoding decode:beforeDecryptString];
    NSData * decryptData=[encryptData gama_AES128DecryptWithKey_MMMethodMMM:key iv_MMMethodMMM:iv];
    NSString * decryptStr=[[NSString alloc]initWithData:decryptData encoding:NSUTF8StringEncoding];
    return decryptStr;
}

+(NSData *)getEncryptDataFromData_MMMethodMMM:(NSData *)beforeEncryptData
                          withKey_MMMethodMMM:(NSString *)key
                               iv_MMMethodMMM:(NSString *)iv
{
    return [beforeEncryptData gama_AES128EncryptWithKey_MMMethodMMM:key iv_MMMethodMMM:iv];
}

+(NSData *)getDecryptDataFromData_MMMethodMMM:(NSData *)beforeDecryptData
                          withKey_MMMethodMMM:(NSString *)key
                               iv_MMMethodMMM:(NSString *)iv
{
    return [beforeDecryptData gama_AES128DecryptWithKey_MMMethodMMM:key iv_MMMethodMMM:iv];
}

+(NSString *)getEncodeStringFromData_MMMethodMMM:(NSData *)beforeEncodeData
{
    return [SdkBase64Encoding encode:beforeEncodeData];
}


//===insert my method start=== 2023-12-13 18:35:10
+ (long)focacy43933Democratster43934:(BOOL)focacy43933_1 hitity43935Motherress43936:(NSObject *)hitity43935_2{ //insert method
	float y_severalivity43939 = 176;

int P_lictature43940 = 518;
if(y_severalivity43939 + 693 * 673 - 879 == 98489){
	P_lictature43940 = y_severalivity43939 - 944 / 827 / 92 * 818 - 472;
}

double k_sinusize43941 = 977;
if(P_lictature43940 - 61 - 127 - 286 + 950 * 564 * 591 == 38785){
	k_sinusize43941 = P_lictature43940 + 495 / 328;
}else{
	k_sinusize43941 = P_lictature43940 * 172 - 187 / 809 + 809 - 489;
}

float X_counterpickain43942 = 112;
if(k_sinusize43941 * 473 + 923 + 93 * 694 - 391 > 97259){
	X_counterpickain43942 = k_sinusize43941 + 116 - 761;
}else{
	X_counterpickain43942 = k_sinusize43941 * 272 / 220 / 279 * 51 * 654;
}

double I_responsibility43943 = 691;
if(X_counterpickain43942 - 451 * 486 - 841 - 185 > 20427){
	I_responsibility43943 = X_counterpickain43942 * 11 * 226;
}

double h_xanthlet43944 = 288;
if(I_responsibility43943 - 953 / 94 - 32 - 171 < 41956){
	h_xanthlet43944 = I_responsibility43943 * 456 + 138 * 439 + 756;
}

double L_ligature43945 = 693;
if(h_xanthlet43944 - 374 / 66 <= 36397){
	L_ligature43945 = h_xanthlet43944 + 38 + 866 - 811;
}else{
	L_ligature43945 = h_xanthlet43944 + 95 - 576 / 661 * 224 / 582;
}

int j_choose43946 = 781;
if(L_ligature43945 * 656 - 638 + 222 / 673 + 289 / 400 < 71141){
	j_choose43946 = L_ligature43945 + 954 / 26 + 506;
}else{
	j_choose43946 = L_ligature43945 * 114 / 688 * 621 - 263 * 566 * 431;
}

float a_glansency43947 = 971;
if(j_choose43946 * 996 - 68 * 707 / 544 * 324 <= 21744){
	a_glansency43947 = j_choose43946 * 229 * 410 - 815 - 563 / 633;
}else{
	a_glansency43947 = j_choose43946 * 682 * 858 / 35 - 306;
}

int E_fringcy43948 = 153;
if(a_glansency43947 * 890 * 314 + 284 / 694 / 480 + 303 <= 66996){
	E_fringcy43948 = a_glansency43947 - 676 * 857 / 888 + 916 - 659 - 651;
}else{
	E_fringcy43948 = a_glansency43947 + 879 - 498 * 329;
}

int Z_acceptier43949 = 239;
if(E_fringcy43948 - 266 * 211 <= 22707){
	Z_acceptier43949 = E_fringcy43948 + 789 - 169 / 795 - 167 + 345 / 489;
}

 
	long z_25 = 84794;
	return z_25;
}
//===insert my method end=== 2023-12-13 18:35:10
+(NSData *)getEncodeDataFromString_MMMethodMMM:(NSString *)beforeEncodeString
{
    return [SdkBase64Encoding decode:beforeEncodeString];
}

@end


