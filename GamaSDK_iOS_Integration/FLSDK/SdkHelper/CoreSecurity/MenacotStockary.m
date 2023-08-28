#import "MenacotStockary.h"
#import "PepsdomNeedics.h"

@implementation MenacotStockary

+(NSString *)getEncryptStringFromString_MMMethodMMM:(NSString *)beforeEncryptString
                                WithKey_MMMethodMMM:(NSString *)key
                                     iv_MMMethodMMM:(NSString *)iv
{
    NSData * decryptData=[beforeEncryptString dataUsingEncoding:NSUTF8StringEncoding];
    NSData * encryptData=[decryptData gama_AES128EncryptWithKey_MMMethodMMM:key iv_MMMethodMMM:iv];
    NSString * encryptStr=[SdkBase64Encoding encode:encryptData];

		//====insert my code start===  2023-08-28 15:21:01
		{
		int c_nucharium19497 = 5125;

float h_dekawallmost19498 = 904;
if(c_nucharium19497 + 914 + 585 - 867 / 694 < 16414){
	h_dekawallmost19498 = c_nucharium19497 * 478 / 805 - 529;
}

int y_everth19499 = 567;
if(h_dekawallmost19498 * 557 * 504 < 58664){
	y_everth19499 = h_dekawallmost19498 + 999 - 728 - 885 / 946;
}

float c_involveation19500 = 334;
if(y_everth19499 - 822 / 96 + 217 / 42 + 445 < 88769){
	c_involveation19500 = y_everth19499 * 148 - 201 - 413;
}

double H_showery19501 = 480;
if(c_involveation19500 * 376 / 207 / 56 != 56740){
	H_showery19501 = c_involveation19500 + 133 + 545 - 732 - 419 * 145 / 929;
}else{
	H_showery19501 = c_involveation19500 - 725 - 853 / 421 - 53 - 472;
}

double j_firstile19502 = 832;
if(H_showery19501 * 730 / 640 - 695 * 165 / 411 < 48567){
	j_firstile19502 = H_showery19501 + 587 * 871 / 886 + 308;
}

		}
		//====insert my code end===  2023-08-28 15:21:01

    return encryptStr;
}

+(NSString *)getDecryptStringFromString_MMMethodMMM:(NSString *)beforeDecryptString
                                withKey_MMMethodMMM:(NSString *)key
                                     iv_MMMethodMMM:(NSString *)iv
{
    NSData * encryptData=[SdkBase64Encoding decode:beforeDecryptString];
    NSData * decryptData=[encryptData gama_AES128DecryptWithKey_MMMethodMMM:key iv_MMMethodMMM:iv];
    NSString * decryptStr=[[NSString alloc]initWithData:decryptData encoding:NSUTF8StringEncoding];

		//====insert my code start===  2023-08-28 15:21:01
		{
		        
        int eosthink19503Lausary19504 = 6267; //commontemple1
        BOOL northan19505Coen19506 = NO;
        while (eosthink19503Lausary19504 < 1748)
        {
            eosthink19503Lausary19504 = eosthink19503Lausary19504 + 9297;
            northan19505Coen19506 = YES;
        }

        
		}
		//====insert my code end===  2023-08-28 15:21:01


		//====insert my code start===  2023-08-28 15:21:01
		{
		        
        NSArray *activityacle19515Punimost19516 = @[@"responsibilitylet19519_vag19520", @"vocbreakent19521_bag19522", @"similarium19523_largeatic19524", @"decimkin19525_experteer19526", @"soucietic19527_plagiation19528", @"approachsive19529_pude19530" ];   //temple16
        if (activityacle19515Punimost19516.count > 3546){
        }
        
		}
		//====insert my code end===  2023-08-28 15:21:01

    return decryptStr;
}

+(NSData *)getEncryptDataFromData_MMMethodMMM:(NSData *)beforeEncryptData
                          withKey_MMMethodMMM:(NSString *)key
                               iv_MMMethodMMM:(NSString *)iv
{

		//====insert my code start===  2023-08-28 15:21:01
		{
		            NSDictionary *leftacity19535Shoulderical19536 = @{@"xanthster19539" : @"olivgreataneity19540", @"domfaction19541" : @"helitor19542", @"arthritious19543" : @"anthropotion19544", @"homoeer19545" : @"patternaire19546", @"machineise19547" : @"cephalmostify19548", @"ephship19549" : @"cineeur19550", @"pull19551" : @"ontoish19552", @"agrieur19553" : @(19211), @"sebress19555" : @"fulmin19556", @"pectid19557" : @"shotesque19558", @"falsose19559" : @"passaster19560", @"scab19561" : @"defensead19562", @"naracious19563" : @"fatherdom19564", @"noneative19565" : @"quartacious19566" };  //temple19
            if (leftacity19535Shoulderical19536.count > 3729){}
            
		}
		//====insert my code end===  2023-08-28 15:21:01

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

		//====insert my code start===  2023-08-28 15:21:01
		{
		        
        int nubize19571Putsion19572 = 6857;  //commontemple13
        BOOL myxotion19573Fur19574 = YES;
        if (myxotion19573Fur19574){
            myxotion19573Fur19574 = NO;
        }else{
            myxotion19573Fur19574 = !myxotion19573Fur19574;
        }

        if (myxotion19573Fur19574){
            nubize19571Putsion19572 = 8506;
        }
        
		}
		//====insert my code end===  2023-08-28 15:21:01

    return [SdkBase64Encoding encode:beforeEncodeData];
}

+(NSData *)getEncodeDataFromString_MMMethodMMM:(NSString *)beforeEncodeString
{
    return [SdkBase64Encoding decode:beforeEncodeString];
}

@end


