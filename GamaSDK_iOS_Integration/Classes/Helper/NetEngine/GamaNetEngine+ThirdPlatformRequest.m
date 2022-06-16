//
//  GamaNetEngine+ThirdPlatformRequest.m
//  GamaSDK_iOS_KR
//
//  Created by Sunny on 16/4/26.
//  Copyright © 2017年 Gama. All rights reserved.
//

#import "GamaNetEngine.h"
#import "GamaCommonHeader.h"
#import "GamaCentreInfo.h"
#import "GamaCentreInfo.h"
#import "GamaFunction.h"
#import "HelloHeader.h"
//#import "KRTwitterLogin.h"
#import "AppleLogin.h"

@implementation GamaNetEngine (ThirdPlatformRequest)

+ (void)loginUsingThirdPlatform:(GamaThirdPlatform)thirdPlatform handler:(void (^)(NSError *))handler
{
    switch (thirdPlatform) {
        
        case Gama_GameCenter:
            [NSClassFromString(@"GamaGamecenterPort") loginWithGamecenterAutoLoginSwitch:NO];
            break;
        case Gama_Facebook: {
            
//            [GamaFacebookPort loginWithFacebook:^(NSError *loginError, NSString *facebookID, NSString *facebookTokenStr) {
//
//                if (!loginError)
//                {
//                    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"];
//                    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithContentsOfFile:bundlePath];
//                    NSString *facebookAppID = [dict objectForKey:@"FacebookAppID"];
//                    NSString *appsStr = [NSString stringWithFormat:@"%@_%@",[GamaFacebookCenter getFacebookId],facebookAppID];
//
////                    [GamaThirdFunctionPort thirdLoginWithThirdId:facebookID
////                             andThirdPlate:@"fb"
////                                   andApps:appsStr
////                          andBusinessToken:@""
////                    andThirdAdditionParams:@{GAMA_LOGIN_PARAMS_FB_OAUTHTOKEN:facebookTokenStr}
////                             andDomainName:SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME)
////                             andOtherBlock:nil];
//                }
//                else
//                {
//                    //发送登陆失败的广播
//                    [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_FACEBOOK_LOGIN_FAIL
//                                                                       object:nil];
//                }
//
//            }];
            
        }
            break;
        case Gama_Twitter:{
//            [KRTwitterLogin twitterLogin];
        }
            break;
            
        default:
            break;
    }
}

+ (void)bindingUserName:(NSString *)userName password:(NSString *)password otherDic:(NSDictionary *)otherDic withThirdPlatform:(GamaThirdPlatform)thirdPlatform
{
    switch (thirdPlatform) {
        
        case Gama_GameCenter:
            [NSClassFromString(@"GamaGamecenterPort") gamecenterBindWithUserName:userName andPassword:password otherDic:otherDic];
            break;
        case Gama_Facebook:
//            [GamaFacebookPort facebookBindingWithUserName:userName andPassword:password otherDic:otherDic];
            break;
        case Gama_Twitter:
        {
//            [KRTwitterLogin twitterBindAccount:userName password:password otherDic:otherDic];
        }
            break;
        case Gama_Apple:
        {
//            [self gama_AppleBindRequestWithUserName:userName password:password otherDic:otherDic];
        }
            break;
        default:
            break;
    }
}

+ (void)thirdLoginWithThirdId:(NSString *)thirdId thirdPlate:(NSString *)thirdPlate handler:(void(^)(void))handler
{    
//    [GamaThirdFunctionPort thirdLoginWithThirdId:thirdId
//                                   andThirdPlate:thirdPlate
//                                         andApps:nil
//                                andBusinessToken:nil
//                                   andDomainName:SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME)
//                                   andOtherBlock:handler];
}

+ (void)thirdBindPhoneWithInformation:(NSDictionary *)dic{
    NSString *thirID = [[SdkUserInfoModel shareInfoModel] thirdId];
    NSString *thirPlat = [[SdkUserInfoModel shareInfoModel] loginTypeStr];
//    [GamaThirdFunctionPort bindPhoneLogingWithThirdId:[thirID lowercaseString]
//                                        andThirdPlate:thirPlat
//                                              andApps:nil
//                                     andBusinessToken:nil
//                               andThirdAdditionParams:dic
//                                        andDomainName:nil
//                                        andOtherBlock:^{
//        
//    }];
    
}

@end
