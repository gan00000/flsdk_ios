//
//  NaverDelegate.m
//  MW_SDK
//
//  Created by Gan Yuanrong on 2023/7/24.
//  Copyright © 2023 Gama. All rights reserved.
//

#import "NaverDelegate.h"
#import "SdkHeader.h"

@implementation NaverDelegate
{
//    NaverThirdPartyLoginConnection *_thirdPartyLoginConn;
    NaverCallBack mNaverCallBack;
}

+ (instancetype)share{
    
    static NaverDelegate *mDelegate = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mDelegate = [[NaverDelegate alloc] init];
    });
    
    return mDelegate;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    return YES;
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options{
    SDK_LOG(wwwww_tag_wwwww_application_openURL_options);
    return YES;//[[NaverThirdPartyLoginConnection getSharedInstance] application:app openURL:url options:options];
}

-(void)startLoginWithKey_MMMethodMMM:(NSString *)consumerKey consumerSecret_MMMethodMMM:(NSString *)consumerSecret appName_MMMethodMMM:(NSString *)appName callback_MMMethodMMM:(NaverCallBack)callback{
    
//    mNaverCallBack = callback;
//    if(!_thirdPartyLoginConn){
//        _thirdPartyLoginConn = [NaverThirdPartyLoginConnection getSharedInstance];
//        [_thirdPartyLoginConn setIsNaverAppOauthEnable:YES];
//        _thirdPartyLoginConn.delegate = self;
//    }
//    SDK_LOG(wwwww_tag_wwwww_requestThirdpartyLogin);
//    [self requestThirdpartyLogin:consumerKey consumerSecret:consumerSecret appName:appName];
    
}

- (void)requestThirdpartyLogin:(NSString *)consumerKey consumerSecret:(NSString *)consumerSecret appName:(NSString *)appName
{
    // NaverThirdPartyLoginConnection의 인스턴스에 서비스앱의 url scheme와 consumer key, consumer secret, 그리고 appName을 파라미터로 전달하여 3rd party OAuth 인증을 요청한다.
    
//    NaverThirdPartyLoginConnection *tlogin = [NaverThirdPartyLoginConnection getSharedInstance];
//    [tlogin setConsumerKey:consumerKey];
//    [tlogin setConsumerSecret:consumerSecret];
//    [tlogin setAppName:appName];
//    [tlogin setServiceUrlScheme:GAME_CODE];
//    [tlogin requestThirdPartyLogin];
}

- (void)getUserProfile{
//    if (NO == [_thirdPartyLoginConn isValidAccessTokenExpireTimeNow]) {
//        SDK_LOG(wwwww_tag_wwwww_isValidAccessTokenExpireTimeNow_NO);
//        return;
//    }
//
//    //xml
//    //NSString *urlString = wwwww_tag_wwwww_https___openapi_naver_com_v1_nid_getUserProfile_xml;  //  사용자 프로필 호출
//    //json
//    NSString *urlString = wwwww_tag_wwwww_https___openapi_naver_com_v1_nid_me;
//    SDK_LOG(wwwww_tag_wwwww_getUserProfile);
//    [self sendRequestWithUrlString:urlString];
}

- (void)sendRequestWithUrlString:(NSString *)urlString {
//    NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:urlString]];
//
//    NSString *authValue = [NSString stringWithFormat:wwwww_tag_wwwww_conferencean_growaneity, _thirdPartyLoginConn.accessToken];
//
//    [urlRequest setValue:authValue forHTTPHeaderField:wwwww_tag_wwwww_Authorization];
//
//    [[[NSURLSession sharedSession] dataTaskWithRequest:urlRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        NSString *decodingString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//        dispatch_async(dispatch_get_main_queue(), ^{
//            if (error) {
//                SDK_LOG(wwwww_tag_wwwww_octavarian_leaveless, [error description]);
//                [SdkUtil toastMsg_MMMethodMMM:[error description]];
//            } else {
//                SDK_LOG(wwwww_tag_wwwww_querward_billics, decodingString);
//
//                if(decodingString){
//                    NSData *jsonData = [decodingString dataUsingEncoding:NSUTF8StringEncoding];
//                    // 对数据进行JSON格式化并返回字典形式
//                    NSError *error = nil;
//                    id resultTemp = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:&error];
//                    if(!resultTemp){
//                        return;
//                    }
//                    NSString *resultcode = resultTemp[wwwww_tag_wwwww_resultcode];
//                    NSString *message = resultTemp[wwwww_tag_wwwww_message];
//                    id response = resultTemp[wwwww_tag_wwwww_response];
//                    if(!response){
//                        return;
//                    }
//                    NSString *uid = response[@"id"];
//                    NSString *nickname = response[wwwww_tag_wwwww_nickname];
//
//                    if(mNaverCallBack){
//                        mNaverCallBack(_thirdPartyLoginConn.accessToken, uid, nickname);
//                    }
//                }
//            }
//        });
//    }] resume];
}

- (void)dealloc
{
//    _thirdPartyLoginConn.delegate = nil;
}

//#pragma mark - OAuth20 deleagate
//
//- (void)oauth20Connection:(NaverThirdPartyLoginConnection *)oauthConnection didFailWithError:(NSError *)error {
//    //    NSLog(wwwww_tag_wwwww_lith_nomful, __FUNCTION__, error);
//    //登录失败时
//    SDK_LOG(wwwww_tag_wwwww_phrynain_beginization, error);
//}
//
//- (void)oauth20ConnectionDidFinishRequestACTokenWithAuthCode {
//
//    SDK_LOG(wwwww_tag_wwwww_closeid_exoate, _thirdPartyLoginConn.accessToken, _thirdPartyLoginConn.accessTokenExpireDate, _thirdPartyLoginConn.refreshToken);
//    //第一次从认证(didFinishAuthorizationWithResult)到这里
//    [self getUserProfile];
//}
//
//- (void)oauth20ConnectionDidFinishRequestACTokenWithRefreshToken {
//    //登录成功时
//    SDK_LOG(wwwww_tag_wwwww_nice_themselvesit, _thirdPartyLoginConn.accessToken, _thirdPartyLoginConn.accessTokenExpireDate);
//
//    [self getUserProfile];
//
//}
//- (void)oauth20ConnectionDidFinishDeleteToken {
//    SDK_LOG(wwwww_tag_wwwww_oauth20ConnectionDidFinishDeleteToken);
//}
//
//- (void)oauth20Connection:(NaverThirdPartyLoginConnection *)oauthConnection didFinishAuthorizationWithResult:(THIRDPARTYLOGIN_RECEIVE_TYPE)receiveType
//{
//    SDK_LOG(wwwww_tag_wwwww_oscillitious_ducthrowid);
//}
//
//- (void)oauth20Connection:(NaverThirdPartyLoginConnection *)oauthConnection didFailAuthorizationWithReceiveType:(THIRDPARTYLOGIN_RECEIVE_TYPE)receiveType
//{
//    SDK_LOG(wwwww_tag_wwwww_volaform_uponity, receiveType);
//}


@end
