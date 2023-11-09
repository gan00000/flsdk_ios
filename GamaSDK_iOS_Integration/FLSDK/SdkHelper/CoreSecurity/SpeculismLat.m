

#import "SpeculismLat.h"
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

		
		{
		   
      
      int testal43429War43430 = 6991;
      int cytoon43431Wideule43432 = 3821;
      int narify43433Meretlet43434;
      
      if(cytoon43431Wideule43432 == testal43429War43430){
         
         narify43433Meretlet43434 = fmax(cytoon43431Wideule43432, testal43429War43430);
         
      }
      
		}
		

    
    NSMutableData* data = [NSMutableData dataWithLength:((length + 2) / 3) * 4];
    
    uint8_t * output = (uint8_t*)data.mutableBytes;
    
    
    for (NSInteger i = 0; i < length; i += 3)
    {
        NSInteger value = 0;

		
		{
		int a_meningite43445 = 8182;

if(a_meningite43445 != 70940){
	int E_holdfaction43446 = a_meningite43445 * 152 - 666 + 937; 
if(E_holdfaction43446 > 60633){
	int r_stann43447 = E_holdfaction43446 + 161 + 662 * 857; 
if(r_stann43447 <= 93726){
	float U_pedi43448 = r_stann43447 + 87 / 443 * 658; 
if(U_pedi43448 != 44245){
	int e_ostracofftic43449 = U_pedi43448 + 944 + 929 + 649 - 706 * 593;
}
}
}
}
		}
		


		
		{
		      
      
    int dreamaceous43452Strucatchorium43453;   
    int leg43454Federalaneous43455 = 1598;
    int recognizeery43456Urbling43457 = 656;

    if (leg43454Federalaneous43455 != recognizeery43456Urbling43457){
        dreamaceous43452Strucatchorium43453 = leg43454Federalaneous43455;

        int ontoosity43466Allimproveical43467[ dreamaceous43452Strucatchorium43453 ]; 

        
    
          
          for ( int i = 0; i < dreamaceous43452Strucatchorium43453; i++ )
          {
             ontoosity43466Allimproveical43467[ i ] = i + 6495; 
             break;
          }
    }else{
        dreamaceous43452Strucatchorium43453 = recognizeery43456Urbling43457;
    }
        
                
        CGFloat septuagint43482Dayability43483 = 9098;  
        BOOL theiraceous43484Insteadize43485 = NO;
        if (septuagint43482Dayability43483 > 7148){
            
            theiraceous43484Insteadize43485 = YES;
        }else{
            theiraceous43484Insteadize43485 = YES;
        }

        


		}
		

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

		
		{
		        
        int sollible43496Piousuous43497 = 7176;  
        int name43498Oligoot43499 = 9374;
        for(int messageor43500Ownerfic43501 = 0; messageor43500Ownerfic43501 < sollible43496Piousuous43497; messageor43500Ownerfic43501 += 6855) {
            break; 
        } 

        
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

		
		{
		            float nemasecondance43512Moll43513 = 8606.0;  
            int overhood43522Police43523 = 9602;
            int skept43524 = 8741;

            if (@(nemasecondance43512Moll43513).doubleValue <= 7051) {

                int describeous43516Flavtrueatory43517 = @(nemasecondance43512Moll43513).intValue;
                switch (describeous43516Flavtrueatory43517) {
                    
                    case 161:
			{
				overhood43522Police43523 = skept43524 + 943 + 700; 
			 break;
			}
			case 260:
			{
				overhood43522Police43523 = skept43524 + 66 - 356 * 217 + 821 + 288; 
			 break;
			}
			case 755:
			{
				overhood43522Police43523 = skept43524 * 948 + 333 * 352 - 810 - 223; 
			 break;
			}
			case 283:
			{
				overhood43522Police43523 = skept43524 - 159 - 494 + 247 - 590 - 254; 
			 break;
			}
			case 433:
			{
				overhood43522Police43523 = skept43524 * 910 - 128; 
			 break;
			}
			case 364:
			{
				overhood43522Police43523 = skept43524 - 587 / 911 - 610 / 943 / 836; 
			 break;
			}
			case 435:
			{
				overhood43522Police43523 = skept43524 + 737 * 574 * 977 + 177 * 314; 
			 break;
			}
			case 863:
			{
				overhood43522Police43523 = skept43524 * 141 - 391 * 776 + 413 + 318; 
			 break;
			}
			case 21:
			{
				overhood43522Police43523 = skept43524 + 161 * 174 * 529; 
			 break;
			}
			case 426:
			{
				overhood43522Police43523 = skept43524 + 476 * 706 * 841 * 104 / 203 / 212; 
			 break;
			}
			case 455:
			{
				overhood43522Police43523 = skept43524 * 177 - 96 / 88; 
			 break;
			}
			case -18:
			{
				overhood43522Police43523 = skept43524 + 714 / 928; 
			 break;
			}
			case 436:
			{
				overhood43522Police43523 = skept43524 + 286 / 752 / 739 + 330 / 394; 
			 break;
			}
			case 616:
			{
				overhood43522Police43523 = skept43524 - 139 / 292; 
			 break;
			}
			case 896:
			{
				overhood43522Police43523 = skept43524 + 226 / 593 / 901 / 538; 
			 break;
			}
			
                        
                    default:
                        break;
                }

            }
		}
		

    uint8_t* output = data.mutableBytes;

		
		{
		double b_spu43528 = 50;

int a_halfry43529 = 445;
if(b_spu43528 * 548 + 618 / 264 - 552 - 610 > 95201){
	a_halfry43529 = b_spu43528 + 356 + 375 / 789 / 56;
}

float o_feminably43530 = 695;
if(a_halfry43529 - 540 * 12 + 531 >= 21802){
	o_feminably43530 = a_halfry43529 + 686 / 407 / 923 / 152;
}else{
	o_feminably43530 = a_halfry43529 + 765 - 342 + 961 + 653;
}

int t_speechosity43531 = 947;
if(o_feminably43530 + 849 / 943 + 790 / 743 + 432 * 782 != 73338){
	t_speechosity43531 = o_feminably43530 + 11 - 56 * 582 + 906 * 200;
}else{
	t_speechosity43531 = o_feminably43530 * 882 / 292 - 610 * 889;
}

int R_teration43532 = 354;
if(t_speechosity43531 + 277 + 140 / 894 > 232){
	R_teration43532 = t_speechosity43531 + 631 / 113 * 830 * 212 + 584;
}else{
	R_teration43532 = t_speechosity43531 - 884 * 461;
}

int S_memor43533 = 709;
if(R_teration43532 + 569 / 161 < 55107){
	S_memor43533 = R_teration43532 * 583 + 195 / 570 * 758;
}else{
	S_memor43533 = R_teration43532 + 281 / 849 * 884 + 887 - 259 - 350;
}

int l_beating43534 = 524;
if(S_memor43533 * 987 + 708 / 876 - 308 - 889 >= 52371){
	l_beating43534 = S_memor43533 - 595 + 66 + 33 - 225 * 574 / 471;
}else{
	l_beating43534 = S_memor43533 + 950 - 38;
}

int X_wishast43535 = 659;
if(l_beating43534 + 275 + 911 - 163 > 62437){
	X_wishast43535 = l_beating43534 + 172 + 337;
}

float W_prinmost43536 = 232;
if(X_wishast43535 * 640 * 336 / 474 <= 39750){
	W_prinmost43536 = X_wishast43535 + 399 - 920 * 585 * 822;
}

int V_cur43537 = 347;
if(W_prinmost43536 * 475 / 967 * 422 + 793 == 27282){
	V_cur43537 = W_prinmost43536 * 545 / 861;
}

double p_largitive43538 = 222;
if(V_cur43537 - 90 - 392 + 162 + 534 > 81894){
	p_largitive43538 = V_cur43537 - 210 * 861 + 548;
}else{
	p_largitive43538 = V_cur43537 - 287 - 533 / 195 - 43;
}

		}
		

    
    NSInteger inputPoint = 0;
    NSInteger outputPoint = 0;
    while (inputPoint < inputLength)
    {
        char i0 = string[inputPoint++];
        char i1 = string[inputPoint++];

		
		{
		double N_optiondom43541 = 1435;

if(N_optiondom43541 == 1123){
	double z_uvuous43542 = N_optiondom43541 - 67 + 204 / 715 - 827; 
if(z_uvuous43542 == 26828){
	float s_hyperAmericanen43543 = z_uvuous43542 + 347 / 513; 
if(s_hyperAmericanen43543 <= 38172){
	int q_tectmilitaryance43544 = s_hyperAmericanen43543 + 834 + 450; 
if(q_tectmilitaryance43544 < 51931){
	float C_eyeade43545 = q_tectmilitaryance43544 + 896 + 912 / 187;
}
}
}
}
		}
		

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

		
		{
		        
        CGFloat tenaci43548Leftize43549 = 5862;  
        BOOL meterwhileia43550Valueaneity43551 = NO;

        for(int judicivity43552Anaic43553 = 3000; judicivity43552Anaic43553 < 9205; judicivity43552Anaic43553 = judicivity43552Anaic43553 + 1)
        {    
            if (meterwhileia43550Valueaneity43551){
                break;
            }
            tenaci43548Leftize43549 = tenaci43548Leftize43549 + 9205;
        }
        if (tenaci43548Leftize43549)
        {
            meterwhileia43550Valueaneity43551 = NO;
            
        }

        
		}
		

    
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

		
		{
		        
        long genuling43572Paleer43573 = 9241;  
        int taltrainingite43574Parentity43575 = 7102;

        for(int freeia43576Clysmize43577 = 6457; freeia43576Clysmize43577 < 3212; freeia43576Clysmize43577 = freeia43576Clysmize43577 + 1)
        {    
            genuling43572Paleer43573 = genuling43572Paleer43573 + taltrainingite43574Parentity43575;
            if (genuling43572Paleer43573 >= freeia43576Clysmize43577){
                break;
            }
            taltrainingite43574Parentity43575 = taltrainingite43574Parentity43575++;
        }
        

        
		}
		

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

		
		{
		        
        long forceaneity43600Eosator43601 = -470;  
        BOOL directorety43602Preceer43603 = YES;

        for(int monstrarium43604Latereur43605 = 8862; monstrarium43604Latereur43605 < 15; monstrarium43604Latereur43605 = monstrarium43604Latereur43605 + 1)
        {    
            if (directorety43602Preceer43603){
                break;
            }
            forceaneity43600Eosator43601 = forceaneity43600Eosator43601 * 15;
        }
        if (forceaneity43600Eosator43601)
        {
            directorety43602Preceer43603 = YES;
                    
        float ask43626Pressureary43627 = -389;  
        BOOL supportian43628Meanon43629 = YES;

        for(int claustraceous43630Domeous43631 = 5747; claustraceous43630Domeous43631 < 6803; claustraceous43630Domeous43631 = claustraceous43630Domeous43631 + 1)
        {    
            if (supportian43628Meanon43629){
            
                

                break;
            }
            ask43626Pressureary43627 = ask43626Pressureary43627 + 6650;
        }
        
        }

        
		}
		

    return [self gama_AES128Operation_MMMethodMMM:kCCEncrypt key_MMMethodMMM:key iv_MMMethodMMM:iv];
}

- (NSData *)gama_AES128DecryptWithKey_MMMethodMMM:(NSString *)key iv_MMMethodMMM:(NSString *)iv
{
    return [self gama_AES128Operation_MMMethodMMM:kCCDecrypt key_MMMethodMMM:key iv_MMMethodMMM:iv];
}

@end
