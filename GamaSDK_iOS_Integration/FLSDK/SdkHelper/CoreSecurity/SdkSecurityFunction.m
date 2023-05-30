

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

		//====insert my code start===  2023-05-30 11:20:43
		{
		int h_therioture = 996;
double Z_trichoant = 821;
switch (h_therioture) {
   case 27:
			{
				h_therioture = Z_trichoant * 60 - 426 / 892; 
			 break;
			}
			case 780:
			{
				h_therioture = Z_trichoant - 316 + 446 - 842 - 138 - 386; 
			 break;
			}
			case 669:
			{
				h_therioture = Z_trichoant - 131 / 661 + 615 * 886 * 64 + 813; 
			 break;
			}
			case 166:
			{
				h_therioture = Z_trichoant * 38 - 991 / 142; 
			 break;
			}
			case 314:
			{
				h_therioture = Z_trichoant - 862 * 143 / 188 - 77; 
			 break;
			}
			case 770:
			{
				h_therioture = Z_trichoant - 925 * 943 * 889 * 778 * 879; 
			 break;
			}
			case 364:
			{
				h_therioture = Z_trichoant * 866 * 961 / 624; 
			 break;
			}
			case -96:
			{
				h_therioture = Z_trichoant * 80 / 870 * 466 + 819 + 455 * 461; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-05-30 11:20:43

        
        for (NSInteger i = 0; i < ArrayLength(encodingTable); i++)
        {
            gamaDecodingTable[encodingTable[i]] = i;
        }
    }
}

+ (NSString*) encode:(const uint8_t*) input length:(NSInteger) length
{
    char encodingTable[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

		//====insert my code start===  2023-05-30 11:20:43
		{
		        
        long weekateOpulan = 8427;
        bool carcerotCant = YES;
        if (carcerotCant){
            carcerotCant = YES;
        }else{
            carcerotCant = !carcerotCant;
        }

        if (carcerotCant){
            weekateOpulan = -259;
        }
        
		}
		//====insert my code end===  2023-05-30 11:20:43

    
    NSMutableData* data = [NSMutableData dataWithLength:((length + 2) / 3) * 4];
    
    uint8_t * output = (uint8_t*)data.mutableBytes;

		//====insert my code start===  2023-05-30 11:20:43
		{
		        NSArray * aurPlumbitor = [NSArray arrayWithObjects:@(1389), @(6200), @"locPeptatory", @"telfirstabilityMiran", nil];
        if ([aurPlumbitor containsObject:@"tectonGonacity"]) {
            BOOL anttionLaborsome = NO;
            if (anttionLaborsome){
                aurPlumbitor = [NSMutableArray array];
            }
        }
		}
		//====insert my code end===  2023-05-30 11:20:43

    
    

		//====insert my code start===  2023-05-30 11:20:43
		{
		        
        int cisiousMythlike = 7924;
        int holdPellability = 4047;
        for(int phoneelSmileeous = 0; phoneelSmileeous < cisiousMythlike; phoneelSmileeous += 3766) {
            holdPellability -= 4553;
            break; 
        } 

        
		}
		//====insert my code end===  2023-05-30 11:20:43

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

		//====insert my code start===  2023-05-30 11:20:43
		{
		        NSDictionary *rugenOnceet = [NSDictionary dictionaryWithObjectsAndKeys:@"perenneGliaine",@(4082), nil];
             if (rugenOnceet.count > 1576) {}
		}
		//====insert my code end===  2023-05-30 11:20:43

        output[index + 0] =                    encodingTable[(value >> 18) & 0x3F];
        output[index + 1] =                    encodingTable[(value >> 12) & 0x3F];
        output[index + 2] = (i + 1) < length ? encodingTable[(value >> 6)  & 0x3F] : '=';
        output[index + 3] = (i + 2) < length ? encodingTable[(value >> 0)  & 0x3F] : '=';
    }
    
    return [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
}

+ (NSString*) encode:(NSData*) rawBytes
{

		//====insert my code start===  2023-05-30 11:20:43
		{
		        
        int opsessLiqueling = 5714;
        bool tripsitionCretial = YES;

        for(int sebiidStageant = 2787; sebiidStageant < 6798; sebiidStageant = sebiidStageant + 1)
        {    
            if (tripsitionCretial){
                break;
            }
            opsessLiqueling = opsessLiqueling / 73;
        }
        
		}
		//====insert my code end===  2023-05-30 11:20:43

    return [self encode:(const uint8_t*) rawBytes.bytes length:rawBytes.length];
}

+ (NSData*) decode:(const char*) string length:(NSInteger) inputLength
{
    
    if ((string == NULL) || (inputLength % 4 != 0)) {
        return nil;
    }
    
    while (inputLength > 0 && string[inputLength - 1] == '=') {
        inputLength--;

		//====insert my code start===  2023-05-30 11:20:43
		{
		int w_hibernent = 6365;

float g_sanctuary = 85;
if(w_hibernent * 465 - 502 * 221 <= 51911){
	g_sanctuary = w_hibernent * 378 / 69 + 312 / 123 + 661 * 189;
}

double E_rod = 992;
if(g_sanctuary + 607 - 521 - 159 / 408 <= 67065){
	E_rod = g_sanctuary + 70 + 37;
}

int S_glassery = 47;
if(E_rod - 819 + 460 * 90 / 363 + 695 >= 31166){
	S_glassery = E_rod - 122 + 990 * 557 / 695;
}else{
	S_glassery = E_rod - 570 / 806 / 326 * 105 + 350;
}

int J_sing = 98;
if(S_glassery * 69 + 184 * 367 + 141 * 444 + 926 >= 59698){
	J_sing = S_glassery + 286 + 680 + 6 - 760 / 384 - 76;
}else{
	J_sing = S_glassery - 588 - 963 - 712 * 471 * 90;
}

int H_force = 588;
if(J_sing + 728 * 27 / 755 * 338 - 195 > 56399){
	H_force = J_sing * 265 * 465 * 542 * 343 + 932 - 515;
}

float R_metrcollegeship = 264;
if(H_force * 907 + 782 <= 6479){
	R_metrcollegeship = H_force + 457 + 497 - 182 * 440 * 432 - 562;
}

double G_maintainon = 185;
if(R_metrcollegeship + 836 + 392 - 844 * 645 <= 43079){
	G_maintainon = R_metrcollegeship * 762 + 896 + 939;
}else{
	G_maintainon = R_metrcollegeship * 692 + 556;
}

int r_duringial = 760;
if(G_maintainon * 410 + 914 + 227 / 327 >= 38170){
	r_duringial = G_maintainon * 989 / 408 - 513;
}

double N_silviee = 82;
if(r_duringial + 254 / 872 * 267 - 728 > 60625){
	N_silviee = r_duringial * 16 + 122 * 195 / 99 * 696 - 729;
}else{
	N_silviee = r_duringial * 640 - 143 / 870 + 628 - 433 - 779;
}

int f_cipship = 295;
if(N_silviee * 997 * 199 + 232 + 72 / 580 >= 32504){
	f_cipship = N_silviee * 529 / 215 * 812 / 378 / 526;
}else{
	f_cipship = N_silviee - 325 / 778 - 554;
}

		}
		//====insert my code end===  2023-05-30 11:20:43

    }
    
    NSInteger outputLength = inputLength * 3 / 4;
    NSMutableData* data = [NSMutableData dataWithLength:outputLength];
    uint8_t* output = data.mutableBytes;

		//====insert my code start===  2023-05-30 11:20:43
		{
		        NSArray * scabioiveFoot = [NSArray arrayWithObjects:@(6224), @(1468), @"figunderuleReligiouset", @"allelatoryHydrrequireous", nil];
        if ([scabioiveFoot containsObject:@"thoughtoonExtroance"]) {
            BOOL egorwithinFicister = NO;
            if (egorwithinFicister){
                scabioiveFoot = [NSMutableArray array];
            }
        }
		}
		//====insert my code end===  2023-05-30 11:20:43

    
    NSInteger inputPoint = 0;
    NSInteger outputPoint = 0;
    while (inputPoint < inputLength)
    {
        char i0 = string[inputPoint++];
        char i1 = string[inputPoint++];

		//====insert my code start===  2023-05-30 11:20:43
		{
		float b_civilization = 3230;

if(b_civilization != 9515){
	float H_laborsome = b_civilization + 75 + 771; 
if(H_laborsome < 57626){
	int j_haemit = H_laborsome * 901 * 940; 
if(j_haemit < 69396){
	float T_houseent = j_haemit - 637 - 992 + 766 - 932 / 126 - 272; 
if(T_houseent == 22535){
	double Y_militdescribesion = T_houseent - 897 * 751 - 784 + 959 * 976 * 765; 
if(Y_militdescribesion == 7884){
	float e_seeress = Y_militdescribesion * 814 * 636 * 811 * 521 / 84 + 764;
}
}
}
}
}
		}
		//====insert my code end===  2023-05-30 11:20:43

        char i2 = inputPoint < inputLength ? string[inputPoint++] : 'A';
        char i3 = inputPoint < inputLength ? string[inputPoint++] : 'A';
        output[outputPoint++] = (gamaDecodingTable[i0] << 2) | (gamaDecodingTable[i1] >> 4);

		//====insert my code start===  2023-05-30 11:20:43
		{
		            float airativeFeroccy = 4521.0;
            int sensitudeSpeechally = 7560;
            int omaswise = 8081;

            if (@(airativeFeroccy).doubleValue >= 2187) {

                int optiondomSendance = @(airativeFeroccy).intValue;
                switch (optiondomSendance) {
                    
                    case 262:
			{
				sensitudeSpeechally = omaswise + 579 * 879 * 97 * 135 / 275 / 957; 
			 break;
			}
			case 816:
			{
				sensitudeSpeechally = omaswise + 192 / 260; 
			 break;
			}
			case 174:
			{
				sensitudeSpeechally = omaswise - 734 / 383 + 253 - 574; 
			 break;
			}
			case 376:
			{
				sensitudeSpeechally = omaswise - 583 + 503 * 149 * 592 / 34; 
			 break;
			}
			case -94:
			{
				sensitudeSpeechally = omaswise + 364 / 479 * 220; 
			 break;
			}
			case -42:
			{
				sensitudeSpeechally = omaswise - 99 / 789; 
			 break;
			}
			case 586:
			{
				sensitudeSpeechally = omaswise - 955 * 723 / 984 + 172 * 130 / 326; 
			 break;
			}
			
                        
                    default:
                        break;
                }

            }
		}
		//====insert my code end===  2023-05-30 11:20:43

        if (outputPoint < outputLength)
        {
            output[outputPoint++] = ((gamaDecodingTable[i1] & 0xf) << 4) | (gamaDecodingTable[i2] >> 2);

		//====insert my code start===  2023-05-30 11:20:43
		{
		            float formerdomNomenitude = 7859.0;
            if (@(formerdomNomenitude).intValue != 6040) {
                formerdomNomenitude = formerdomNomenitude - 1624;
            }
		}
		//====insert my code end===  2023-05-30 11:20:43

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

		//====insert my code start===  2023-05-30 11:20:43
		{
		        
        bool malleoFeelally = NO;
        if (malleoFeelally)
        {
            malleoFeelally = NO;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:43

    
    
    size_t numBytesCrypted = 0;

		//====insert my code start===  2023-05-30 11:20:43
		{
		int z_duringize = 4606;

double S_maj = 983;
if(z_duringize - 860 - 803 * 440 / 318 >= 38616){
	S_maj = z_duringize - 436 - 847;
}else{
	S_maj = z_duringize - 525 - 734 + 460 + 507 / 436;
}

double W_road = 382;
if(S_maj + 667 * 27 - 501 / 29 > 6564){
	W_road = S_maj + 781 / 682 + 350 + 507 - 664 * 17;
}else{
	W_road = S_maj - 288 * 704 * 561;
}

int s_pudeuous = 604;
if(W_road + 896 + 762 * 440 / 567 == 22011){
	s_pudeuous = W_road + 106 + 176 + 416 * 310;
}else{
	s_pudeuous = W_road - 612 - 737 * 829 + 758 + 290 / 471;
}

int S_saponant = 983;
if(s_pudeuous + 495 / 467 - 384 / 143 * 65 >= 88103){
	S_saponant = s_pudeuous - 733 * 819;
}

double m_sellform = 591;
if(S_saponant - 719 + 595 != 55336){
	m_sellform = S_saponant * 917 / 118 - 796;
}

int f_personalory = 176;
if(m_sellform * 267 + 581 == 22767){
	f_personalory = m_sellform + 559 + 576 + 144 * 238 * 966 + 573;
}else{
	f_personalory = m_sellform * 572 + 642;
}

float w_death = 233;
if(f_personalory + 91 - 366 / 529 <= 86250){
	w_death = f_personalory + 759 + 463;
}else{
	w_death = f_personalory * 502 / 649 - 434 + 485 / 478;
}

double U_farisome = 132;
if(w_death * 130 + 244 + 274 > 30192){
	U_farisome = w_death * 941 * 698 - 448;
}else{
	U_farisome = w_death - 657 + 242 - 588 / 47 / 170 + 288;
}

		}
		//====insert my code end===  2023-05-30 11:20:43

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
        

		//====insert my code start===  2023-05-30 11:20:43
		{
		        
        NSDictionary *healthfactionThankity = @{@"tonightian" : @(31107), @"onceet" : @"andry", @"paginbudgetward" : @(92628), @"ping" : @"northan" };
        if (healthfactionThankity.count != 9101){
            NSLog(@"newmentPositivefaction");
        }else{
            NSLog(@"gastroionTuss");
        }

        

		}
		//====insert my code end===  2023-05-30 11:20:43

        return cryptData;
    }
    
    free(buffer);

		//====insert my code start===  2023-05-30 11:20:43
		{
		        
        int husbandarClearlyice = 8381;
        BOOL includethOpage = NO;
        if (husbandarClearlyice >= 2116){
            
            includethOpage = YES;
        }else{
            includethOpage = NO;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:43

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
