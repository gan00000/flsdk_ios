

#import "MeasureastCulp.h"
#import "SdkHeader.h"

@implementation MeasureastCulp
{
    NaverThirdPartyLoginConnection *_thirdPartyLoginConn;
    NaverCallBack mNaverCallBack;
}

+ (instancetype)share{
    
    static MeasureastCulp *mDelegate = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mDelegate = [[MeasureastCulp alloc] init];
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
        [_thirdPartyLoginConn setIsNaverAppOauthEnable:YES];
        _thirdPartyLoginConn.delegate = self;
    }
    SDK_LOG(@"requestThirdpartyLogin");
    [self requestThirdpartyLogin:consumerKey consumerSecret:consumerSecret appName:appName];
    
}

- (void)requestThirdpartyLogin:(NSString *)consumerKey consumerSecret:(NSString *)consumerSecret appName:(NSString *)appName
{
    
    
    NaverThirdPartyLoginConnection *tlogin = [NaverThirdPartyLoginConnection getSharedInstance];
    [tlogin setConsumerKey:consumerKey];
    [tlogin setConsumerSecret:consumerSecret];
    [tlogin setAppName:appName];
    [tlogin setServiceUrlScheme:GAME_CODE];
    [tlogin requestThirdPartyLogin];
}

- (void)getUserProfile{
    if (NO == [_thirdPartyLoginConn isValidAccessTokenExpireTimeNow]) {
        SDK_LOG(@"isValidAccessTokenExpireTimeNow NO");
        return;
    }
    
    
    
    
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
                [PointsionValueain toastMsg_MMMethodMMM:[error description]];
            } else {
                SDK_LOG(@"recevied data - %@", decodingString);
                
                if(decodingString){
                    NSData *jsonData = [decodingString dataUsingEncoding:NSUTF8StringEncoding];
                    
                    NSError *error = nil;
                    id resultTemp = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:&error];
                    if(!resultTemp){
                        return;
                    }
                    NSString *resultcode = resultTemp[@"resultcode"];
                    NSString *message = resultTemp[@"message"];
                    id response = resultTemp[@"response"];
                    if(!response){
                        return;
                    }
                    NSString *uid = response[@"id"];
                    NSString *nickname = response[@"nickname"];
                    
                    if(mNaverCallBack){
                        mNaverCallBack(_thirdPartyLoginConn.accessToken, uid, nickname);
                    }
                }
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
    
    
    SDK_LOG(@"oauth20Connection didFailWithError %@", error);
}

- (void)oauth20ConnectionDidFinishRequestACTokenWithAuthCode {
    
    SDK_LOG(@"oauth20ConnectionDidFinishRequestACTokenWithAuthCode OAuth Success!\n\nAccess Token - %@\n\nAccess Token Expire Date- %@\n\nRefresh Token - %@", _thirdPartyLoginConn.accessToken, _thirdPartyLoginConn.accessTokenExpireDate, _thirdPartyLoginConn.refreshToken);
    
    [self getUserProfile];
}

- (void)oauth20ConnectionDidFinishRequestACTokenWithRefreshToken {
    
    SDK_LOG(@"oauth20ConnectionDidFinishRequestACTokenWithRefreshToken Refresh Success!\n\nAccess Token - %@\n\nAccess sToken ExpireDate- %@", _thirdPartyLoginConn.accessToken, _thirdPartyLoginConn.accessTokenExpireDate);
    
    [self getUserProfile];
    
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
    SDK_LOG(@"oauth20Connection didFailAuthorizationWithReceiveType NaverApp login fail handler receiveType=%d", receiveType);
}


@end
