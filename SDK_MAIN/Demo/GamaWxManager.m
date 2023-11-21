//
//  SPWxManager.m
//  SPSDK_iOS
//
//  Created by sunn on 2017/5/5.
//  Copyright © 2017年 starpy. All rights reserved.
//

#import "SPWxManager.h"
#import "SPRequestor.h"
#import "SPAlertView.h"
#import "SPURLConnect.h"

#define WX_ACCESS_TOKEN     @"sp_wx_access_token"
#define WX_OPEN_ID          @"sp_wx_open_id"
#define WX_REFRESH_TOKEN    @"sp_wx_refresh_token"


static SPWxManager *_instance = nil;

static NSString *appId = @"wx319903942c77c06b";
static NSString *appSecret = @"5b11a662bbd1c4f26067370d91ff4453";
static NSString *oauthCode = nil;

static BOOL isAppIdRight = NO;
static NSTimeInterval reqTimeInterval = 30.0f;

@implementation SPWxManager

+ (instancetype)shareManager
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[SPWxManager alloc] init];
    });
    
    return _instance;
}

- (BOOL)handleOpenUrl:(NSURL *)url
{
    NSLog(@"wxxxxx : %@",url.description); // wx319903942c77c06b://oauth?code=0819O6ve0jc8pz156jxe02ZXue09O6vM&state=123  wx319903942c77c06b://oauth?code=071XWixT0EqHeW1mWUuT0LRSwT0XWix4&state=123  多次请求后拿到的code不一样
    
    [self _getOauthCode:url.description];
    
    return [WXApi handleOpenURL:url delegate:_instance];
}

- (void)_getOauthCode:(NSString *)linkStr
{
    NSArray *arr = [linkStr componentsSeparatedByString:@":"];
    // 验证 appId 是否一致
    if ([arr[0] isEqualToString:appId]) {
        isAppIdRight = YES;
    }
    // 获取code
    NSArray *remindArr = [arr[1] componentsSeparatedByString:@"="];
    NSArray *targetArr = [remindArr[1] componentsSeparatedByString:@"&"];
    NSString *targetStr = targetArr[0];
    
    NSLog(@"target Str = %@",targetStr);
    
    oauthCode = targetStr;
}

/* wx
 1. 请求 code
 在 application open url 的 description 中有相关信息
 wx319903942c77c06b://oauth?code=021W0wNk1x4tlk0ZTELk1sfENk1W0wNI&state=123
 2. 通过 code 获取 access_token，该接口调用凭证，有效时间7200s，即2个小时
 链接：https://api.weixin.qq.com/sns/oauth2/access_token?appid=APPID&secret=SECRET&code=CODE&grant_type=authorization_code
 （
 进行refresh_token
 链接：https://api.weixin.qq.com/sns/oauth2/refresh_token?appid=APPID&grant_type=refresh_token&refresh_token=REFRESH_TOKEN
 ）
 3. 通过 access_token 调用接口
 */
- (void)login
{
    // 判断是否请求过登录授权，如果有请求过，则查看 accesstoken 是否过期
    NSString *accessToken = [[NSUserDefaults standardUserDefaults] objectForKey:WX_ACCESS_TOKEN];
    NSString *openId      = [[NSUserDefaults standardUserDefaults] objectForKey:WX_OPEN_ID];
    
    if (accessToken && openId) {
        
        NSString *refreshToken = [[NSUserDefaults standardUserDefaults] objectForKey:WX_REFRESH_TOKEN];
        
        NSURLRequest *req = [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"https://api.weixin.qq.com/sns/oauth2/refresh_token?appid=%@&grant_type=refresh_token&refresh_token=%@",appId,refreshToken]]
                                             cachePolicy:NSURLRequestReloadIgnoringLocalCacheData
                                         timeoutInterval:reqTimeInterval];
        [SPURLConnect accessServerWithRequest:req
                                   andHandler:^(NSData *resultData, NSString *resultStr, NSError *error) {
                                       
                                       NSDictionary *respDict = [NSJSONSerialization JSONObjectWithData:resultData
                                                                                                options:0
                                                                                                  error:nil];
                                       NSLog(@"respDict = %@",respDict);
                                       
                                       // 如果reAccessToken为空,说明reAccessToken也过期了,反之则没有过期
                                       //本地持久化，accesstoken 、 openid 、refreshtoken
                                       if (refreshToken) {
                                           [self _cacheWxInfo:respDict];
                                           // 如果refreshtoken存在，直接获取用户信息
                                           [self _getWxUserInfo];
                                       }
                                       else {
                                           [self _firstAuth];
                                       }
                                       
                                   }];
        
    }
    else {
        [self _firstAuth];
    }
    
}

- (void)_firstAuth
{
    NSLog(@"current wx api version；%@",[WXApi getApiVersion]);
    NSLog(@"current device is install wechat:%d",[WXApi isWXAppInstalled]);
    // 检测用户是否已安装微信客户端
    if ([WXApi isWXAppInstalled]) { // 设备已安装，返回的是 NO 。。。(在模拟器上返回是正确的)
        [self _showNoWXAppAlert];
        return;
    }
    
    [WXApi registerApp:appId];// 必须先注册app
    SendAuthReq *req = [[[SendAuthReq alloc] init] autorelease];
    req.scope = @"snsapi_userinfo";//授权域，现在该处是获取用户个人信息
    req.state = @"StarpyGames";//用于保持请求和回调的状态，授权请求后原样带回给第三方。该参数可用于防止csrf攻击（跨站请求伪造攻击），建议第三方带上该参数，可设置为简单的随机数加session进行校验
    [WXApi sendReq:req];
}

- (void)_showNoWXAppAlert
{
    [SPAlertView showAlertWithMessage:@"未安装微信客户端"
                           completion:nil
                      andButtonTitles:@"OK", nil];
}

/* 2. 通过 code 获取 access_token，该接口调用凭证，有效时间7200s，即2个小时
 链接：https://api.weixin.qq.com/sns/oauth2/access_token?appid=APPID&secret=SECRET&code=CODE&grant_type=authorization_code
 */
- (void)_requestAccessToken
{
    NSString *reqStr = [NSString stringWithFormat:@"https://api.weixin.qq.com/sns/oauth2/access_token?appid=%@&secret=%@&code=%@&grant_type=authorization_code",appId,appSecret,oauthCode];
    NSURLRequest *req = [NSURLRequest requestWithURL:[NSURL URLWithString:reqStr]
                                         cachePolicy:NSURLRequestReloadIgnoringLocalCacheData
                                     timeoutInterval:reqTimeInterval];
    [SPURLConnect accessServerWithRequest:req
                               andHandler:^(NSData *resultData, NSString *resultStr, NSError *error) {
                                   
                                   NSDictionary *respDict = [NSJSONSerialization JSONObjectWithData:resultData
                                                                                            options:0
                                                                                              error:nil];
                                   NSLog(@"respDict = %@",respDict);
                                   
                                   // 本地持久化，accesstoken 、 openid 、refreshtoken
                                   [self _cacheWxInfo:respDict];
                                   
                                   // 获取微信个人信息
                                   [self _getWxUserInfo];
                               }];
    
}

/**
 3. 通过 access_token 调用接口
 例如获取个人信息，拿到 unionid
 链接：https://api.weixin.qq.com/sns/userinfo?access_token=ACCESS_TOKEN&openid=OPENID
 */
- (void)_getWxUserInfo
{
    NSString *accessToken = [[NSUserDefaults standardUserDefaults] objectForKey:WX_ACCESS_TOKEN];
    NSString *openId      = [[NSUserDefaults standardUserDefaults] objectForKey:WX_OPEN_ID];
    NSURLRequest *req = [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"https://api.weixin.qq.com/sns/userinfo?access_token=%@&openid=%@",accessToken,openId]]
                                         cachePolicy:NSURLRequestReloadIgnoringLocalCacheData
                                     timeoutInterval:reqTimeInterval];
    [SPURLConnect accessServerWithRequest:req
                               andHandler:^(NSData *resultData, NSString *resultStr, NSError *error) {
                                   
                                   NSDictionary *respDict = [NSJSONSerialization JSONObjectWithData:resultData
                                                                                            options:0
                                                                                              error:nil];
                                   NSLog(@"respDict = %@",respDict);
                                   
                                   [self _cacheWxUserInfo:respDict];
                               }];
}

/*
 * 保存第二步拿到的信息
 "access_token" = "MElzXfjdgQulrKjT9kdbdsHYgthnZ0-cLJbXsqSEFejL2c9Le4pI-gY85oTSFAM_et2bDws9PEsLSGJ6CxOc_XRW7HLFcKe1gEpDkhWAp3c";
 "expires_in" = 7200;
 openid = oVyJ704xOB3biPO2cuND5VXz6wkg;
 "refresh_token" = "6SjSRM6AFqHob0CpiHkeq9f6RTgFyZPix5haULYwJ-kpY1gvwd32Tn8YZy42cK2aya1djdt-Bfkf5bJZwLqhJ-j7RHWS2FlniKnwO5dQEx0";
 scope = "snsapi_userinfo";
 unionid = ommmXw2rgTNqpZkZUPzqRkXhAObk;
 */
- (void)_cacheWxInfo:(NSDictionary *)dict
{
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    [userDefault setObject:dict[@"access_token"] forKey:WX_ACCESS_TOKEN];
    [userDefault setObject:dict[@"openid"] forKey:WX_OPEN_ID];
    [userDefault setObject:dict[@"refresh_token"] forKey:WX_REFRESH_TOKEN];
    [userDefault synchronize];
}

/*
 * 本地化用户信息
 city = Guangzhou;
 country = CN;
 headimgurl = "http://wx.qlogo.cn/mmopen/Q3auHgzwzM4FaCCJHtlvUmNo3xrJcy2ibxYDWSdnzx7QjBawQtaf91AzJiaLajpYSMs0uk8gQ7JWblT9Kr66nTdY1t9YpH668gGSHsTickeekA/0";
 language = "zh_CN";
 nickname = "\U5b8b\U5174";
 openid = oVyJ704xOB3biPO2cuND5VXz6wkg;
 privilege =     (
 );
 province = Guangdong;
 sex = 1;
 unionid = ommmXw2rgTNqpZkZUPzqRkXhAObk;  // 用户统一标识。针对一个微信开放平台帐号下的应用，同一用户的unionid是唯一的。可用作第三方ID
 */
- (void)_cacheWxUserInfo:(NSDictionary *)userInfo
{
    
}

#pragma mark - Delegate

- (void)onReq:(BaseReq *)req
{
    NSLog(@"wx on req : %@",req);
}

- (void)onResp:(BaseResp *)resp
{
    NSLog(@"wx on resp : %@",resp);
    NSLog(@"errcode:%d",resp.errCode);
    NSLog(@"errcode str:%@",resp.errStr);
    NSLog(@"type:%d",resp.type);
    
    if ([resp isKindOfClass:[SendAuthResp class]]) {
        switch (resp.errCode) {
            case 0:// 用户同意
            {
//                SendAuthResp 的属性有
//                @property (nonatomic, retain) NSString* code;
//                @property (nonatomic, retain) NSString* state;
//                @property (nonatomic, retain) NSString* lang;
//                @property (nonatomic, retain) NSString* country;
//                NSLog(@"code = %@",resp.)
                [self _requestAccessToken];
            }
                break;
            case -4://用户拒绝
            {
                NSLog(@"用户拒绝授权");
            }
                break;
            case -2://用户取消
            {
                NSLog(@"用户取消授权");
            }
                break;
                
            default:
                break;
        }
    }
    
    
    
}

@end
