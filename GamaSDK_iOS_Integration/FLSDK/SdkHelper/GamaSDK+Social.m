//
//  GamaSDK+Social.m
//  GamaSDK_iOS
//
//  Created by dongbin on 2018/11/25.
//  Copyright © 2018年 starpy. All rights reserved.
//

#import "GamaSDK+Social.h"
#import "GamaThirdSocial.h"
//#import "KRTwitterLogin.h"
//#import "KRGamaNaverCafe.h"

NSString *const GAMA_PRM_SOCIAL_SHARE_LINK          = @"gama_prm_social_share_link";
NSString *const GAMA_PRM_SOCIAL_SHARE_LOCAL_IMAGE   = @"gama_prm_social_local_image";
NSString *const GAMA_PRM_SOCIAL_SHARE_MSG           = @"gama_prm_social_share_msg";
NSString *const GAMA_PRM_SOCIAL_INVITE_USERID       = @"gama_prm_social_invite_userId";
NSString *const GAMA_PRM_SOCIAL_INVITE_MSG          = @"gama_prm_social_invite_msg";
NSString *const GAMA_PRM_SOCIAL_INVITE_TITLE        = @"gama_prm_social_invite_title";
NSString *const GAMA_PRM_SOCIAL_FIELDS_CONTENT      = @"gama_prm_social_fields_content";

@implementation MWSDK (Social)
+(void)gama_getUserProfileWithPartyKind:(GamaThirdPartyType)kind
                       completedHandler:(void (^)(NSDictionary * _Nullable,
                                                  NSError * _Nullable))handler
{
//    [GamaFacebookPort social_getUserProfileWithCompletedHandler:handler];
}


+(void)gama_fetchFriendsWithKind:(GamaThirdPartyType)kind
                           param:(nullable NSDictionary *)par
                          paging:(GamaSocialPaging)paging
                           limit:(NSUInteger)limit
                completedHandler:(void (^)(NSDictionary *_Nullable initialData,
                                           NSArray * _Nullable,
                                           NSString * _Nullable,
                                           NSString * _Nullable,
                                           NSString * _Nullable,
                                           NSError * _Nullable))handler
{
//    [GamaFacebookPort social_fetchFriendsWithParam:par
//                                            Paging:paging
//                                             limit:limit
//                                  completedHandler:handler];
}

+(void)gama_shareWithKind:(GamaThirdPartyType)kind
                    param:(NSDictionary *)par
                  success:(void (^)(NSDictionary * _Nullable))success
                  failure:(void (^)(NSError * _Nullable))failure
{
    switch (kind) {
        case GamaThirdPartyTypeFacebook:
        {
//            [GamaFacebookPort social_shareWithParam:par
//                                            success:success
//                                            failure:failure];
        }
            break;
        case GamaThirdPartyTypeWhatsApp:
        {
            if(![[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"whatsapp://"]]){
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/app/whatsapp-messenger/id310633997"]];
                return;
            }
            [GamaThirdSocial social_shareByWhatsAppWithParam:par success:success failure:failure];
        }
            break;
        case GamaThirdPartyTypeLine:
        {
            if(![[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"line://"]]){
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https:itunes.apple.com/app/line/id443904275"]];
                return;
            }
            [GamaThirdSocial social_shareByLineWithParam:par success:success failure:failure];
        }
            break;
//        case GamaThirdPartyTypeMessenger:
//        {
//            if(![[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"fb-messenger-api://"]]){
//                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/app/messenger/id454638411"]];
//                return;
//            }
//            [GamaFacebookPort social_sentMessageToSpecifiedFriendsWithParam:par
//                                                                    success:success
//                                                                    failure:failure];
//        }
//            break;
        case GamaThirdPartyTypeTwitter:{
//            [KRTwitterLogin twitterShareWithDoc:par success:success failure:failure];
        }
            break;
        case GamaThirdPartyTypeNone:
        {
            break;
        }
    }
}

+(void)gama_sentMessageToSpecifiedFriendsWithKind:(GamaThirdPartyType)kind
                                            param:(NSDictionary *)par
                                          success:(void (^)(NSDictionary * _Nullable))success
                                          failure:(void (^)(NSError * _Nullable))failure
{
//    [GamaFacebookPort social_sentMessageToSpecifiedFriendsWithParam:par
//                                                            success:success
//                                                            failure:failure];
}

+(void)gama_inviteFriendsWithKind:(GamaThirdPartyType)kind
                            param:(NSDictionary *)par
                          success:(void (^)(NSDictionary * _Nullable))success
                          failure:(void (^)(NSError * _Nullable))failure
{
//    [GamaFacebookPort social_inviteFriendsWithParam:par
//                                            success:success
//                                            failure:failure];
}

+ (void)gama_openCafeHome
{
//    KRGamaNaverCafe *krGamaCafe = [[KRGamaNaverCafe alloc] init];
//    [krGamaCafe openCafeHome];
}
@end
