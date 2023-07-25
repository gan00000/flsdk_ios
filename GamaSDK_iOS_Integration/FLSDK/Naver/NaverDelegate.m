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
    NaverThirdPartyLoginConnection *_thirdPartyLoginConn;
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
    SDK_LOG(@"application openURL options");
    return [[NaverThirdPartyLoginConnection getSharedInstance] application:app openURL:url options:options];
}

-(void)startLoginWithKey_MMMethodMMM:(NSString *)consumerKey consumerSecret_MMMethodMMM:(NSString *)consumerSecret appName_MMMethodMMM:(NSString *)appName callback_MMMethodMMM:(NaverCallBack)callback{
    
    mNaverCallBack = callback;
    if(!_thirdPartyLoginConn){
        _thirdPartyLoginConn = [NaverThirdPartyLoginConnection getSharedInstance];
        _thirdPartyLoginConn.delegate = self;
    }
    SDK_LOG(@"requestThirdpartyLogin");
    [self requestThirdpartyLogin:consumerKey consumerSecret:consumerSecret appName:appName];
    
}

- (void)requestThirdpartyLogin:(NSString *)consumerKey consumerSecret:(NSString *)consumerSecret appName:(NSString *)appName
{
    // NaverThirdPartyLoginConnection의 인스턴스에 서비스앱의 url scheme와 consumer key, consumer secret, 그리고 appName을 파라미터로 전달하여 3rd party OAuth 인증을 요청한다.
    
    NaverThirdPartyLoginConnection *tlogin = [NaverThirdPartyLoginConnection getSharedInstance];
    [tlogin setConsumerKey:consumerKey];
    [tlogin setConsumerSecret:consumerSecret];
    [tlogin setAppName:appName];
    [tlogin setServiceUrlScheme:kServiceAppUrlScheme];
    [tlogin requestThirdPartyLogin];
}

- (void)getUserProfile{
    if (NO == [_thirdPartyLoginConn isValidAccessTokenExpireTimeNow]) {
        SDK_LOG(@"isValidAccessTokenExpireTimeNow NO");
        return;
    }
    
    //xml
    //NSString *urlString = @"https://openapi.naver.com/v1/nid/getUserProfile.xml";  //  사용자 프로필 호출
    //json
    NSString *urlString = @"https://openapi.naver.com/v1/nid/me";
    SDK_LOG(@"getUserProfile");
    [self sendRequestWithUrlString:urlString];
}

- (void)sendRequestWithUrlString:(NSString *)urlString {
    NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:urlString]];

    NSString *authValue = [NSString stringWithFormat:@"Bearer %@", _thirdPartyLoginConn.accessToken];

    [urlRequest setValue:authValue forHTTPHeaderField:@"Authorization"];

    [[[NSURLSession sharedSession] dataTaskWithRequest:urlRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSString *decodingString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                SDK_LOG(@"Error happened - %@", [error description]);
            } else {
                SDK_LOG(@"recevied data - %@", decodingString);
            }
        });
    }] resume];
}

- (void)dealloc
{
    _thirdPartyLoginConn.delegate = nil;
}

#pragma mark - OAuth20 deleagate

- (void)oauth20Connection:(NaverThirdPartyLoginConnection *)oauthConnection didFailWithError:(NSError *)error {
    //    NSLog(@"%s=[%@]", __FUNCTION__, error);
    SDK_LOG(@"oauth20Connection didFailWithError %@", error);
}

- (void)oauth20ConnectionDidFinishRequestACTokenWithAuthCode {
    
    SDK_LOG(@"oauth20ConnectionDidFinishRequestACTokenWithAuthCode OAuth Success!\n\nAccess Token - %@\n\nAccess Token Expire Date- %@\n\nRefresh Token - %@", _thirdPartyLoginConn.accessToken, _thirdPartyLoginConn.accessTokenExpireDate, _thirdPartyLoginConn.refreshToken);
}

- (void)oauth20ConnectionDidFinishRequestACTokenWithRefreshToken {
    
    SDK_LOG(@"oauth20ConnectionDidFinishRequestACTokenWithRefreshToken Refresh Success!\n\nAccess Token - %@\n\nAccess sToken ExpireDate- %@", _thirdPartyLoginConn.accessToken, _thirdPartyLoginConn.accessTokenExpireDate);
    
}
- (void)oauth20ConnectionDidFinishDeleteToken {
    SDK_LOG(@"oauth20ConnectionDidFinishDeleteToken");
}

- (void)oauth20Connection:(NaverThirdPartyLoginConnection *)oauthConnection didFinishAuthorizationWithResult:(THIRDPARTYLOGIN_RECEIVE_TYPE)receiveType
{
    SDK_LOG(@"oauth20Connection didFinishAuthorizationWithResult Getting auth code from NaverApp success!");
}

- (void)oauth20Connection:(NaverThirdPartyLoginConnection *)oauthConnection didFailAuthorizationWithReceiveType:(THIRDPARTYLOGIN_RECEIVE_TYPE)receiveType
{
    SDK_LOG(@"oauth20Connection didFailAuthorizationWithReceiveType NaverApp login fail handler");
}


@end
