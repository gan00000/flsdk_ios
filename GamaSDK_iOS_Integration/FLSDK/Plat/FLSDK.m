//
//  GamaSDK.m
//  GamaSDK_iOS_KR
//
//  Created by sunn on 2017/2/24.
//  Copyright © 2017年 gama. All rights reserved.
//
///version:"5.2.0"
//1.修改切換語言引發的自動登入bug
//2.修改綁定帳號界面確認按鈕文字原：註冊會員 新：綁定會員


///version:"5.1.5"
//1..bundle文件新增：en\de\it\pt\等语言及免注册登入图片
//2..plist文件新增moreLanguage是否多语言版本判断
//3.修改获取资源图文路径，请求参数语言变更

///version:"5.1.4"
//1.不存在adjustToken则不请求以及上报adjust相关数据
//2.增加登入后打开公告

///version:"5.1.3"
//1.用户在线时长上报增加退出后台上报，重新打开重新计时

///version:"5.1.2"
//1.兼容深色模式

///version:"5.1.1"
//1.为兼容FB 5.13.1Version,修改Facebook分享代码；
//2.修改文字错误内容(获取验证码文字第二次显示过大)
//3.增加iap Error 逻辑判断，避免崩溃与单例被释放报错；


///version:"5.1.0"
//1.剔除所有webview框

///version:"5.0.8"
//1.更换平台悬浮按钮版本
//2.更换客服链接
//3.全部使用WKWebView处理

///version:"5.0.6"
//1.修复iPad手机区号无法选择Bug
//2.适配台版竖版（ipad）

///version:"5.0.4"
//1.增加gama_openFuncation接口
//2.修復IAP查詢訂單崩潰


#import "FLSDK.h"

#import "GamaBaseSDK.h"
#import "GamaInterfaceSDK.h"
#import "HelloHeader.h"
#import "GamaAdInterface.h"
#import "GamaSDK+Social.h"
#import "GamaWebViewController.h"
#import "GamaTimer.h"
//#import "NSString+GamaURLEncoding.h"
//#import "KRAgeSystemView.h"
#import "GamaAdPort.h"
#import "GamaLoginViewModel.h"
#import "SDKLoginViewController.h"
#import "GamaFunction.h"

#import <objc/runtime.h>
#import <objc/message.h>

#if __has_include(<PlatformTwModule/GMPlatformSDKTW.h>)
#import <PlatformTwModule/GMPlatformSDKTW.h>
#endif



// 通知类型
NSString *const GAMA_LOGIN_SUCCUESS    = @"CONST_GAMA_LOGIN_SUCCUESS";

NSString *const GAMA_PAY_SUCCUESS      = @"GAMAPHCHASESUCCESSFUL";
NSString *const GAMA_PAY_FAIL          = @"GAMAPHCHASEFAIL";
NSString *const GAMA_PAY_PUCHESSING    = @"GAMAPHCHASING";
NSString *const GAMA_SHARE_RESULT      = @"CONST_GAMA_SHARE_RESULT";
NSString *const GAMA_NOTICE_CLOSE      = @"GAMA_NOTICE_CLOSE";

// 参数类型
NSString *const GAMA_PRM_USER_ID           = @"py_param_user_id";
NSString *const GAMA_PRM_ROLE_ID           = @"py_param_role_id";
NSString *const GAMA_PRM_ROLE_NAME         = @"py_param_role_name";
NSString *const GAMA_PRM_ROLE_LEVEL        = @"py_param_role_level";
NSString *const GAMA_PRM_ROLE_VIP_LEVEL    = @"py_param_role_vip_level";
NSString *const GAMA_PRM_ROLE_SERVER_ID    = @"py_param_role_server_id";
NSString *const GAMA_PRM_ROLE_SERVER_NAME  = @"py_param_role_server_name";

NSString *const GAMA_PRM_SHARE_CONTENT_URL  = @"py_param_share_content_url";
NSString *const GAMA_PRM_SHARE_CONTENT_IMAGE  = @"py_param_share_content_image";


// 充值类型
//NSString *const GAMA_PAY_MODE_DEFAULT      = @"gama_pay_mode_default";
//NSString *const GAMA_PAY_MODE_WEB          = @"gama_pay_mode_web";

// web
NSString *const GAMA_PRM_WEB_MODE          = @"py_param_web_type";
NSString *const GAMA_PRM_WEB_URL           = @"py_param_web_url";
NSString *const GAMA_PRM_OPEN_WEB_URL      = @"py_param_oepn_web_url";


NSString *const GAMA_WEB_MODE_CP           = @"gama_web_mode_cp";
NSString *const GAMA_WEB_MODE_SDK          = @"gama_web_mode_sdk";
NSString *const GAMA_PRM_WEB_SERVICE       = @"gama_web_service";
NSString *const GAMA_PRM_WEB_NOTICE        = @"gama_web_notice";

@interface FLSDK()

@property (copy, atomic) PayCompletionHandler payHandler;

@property (copy, atomic)SDKLogoutHandler logoutHandler;

@end

@implementation FLSDK

/**
 应用间跳转
 
 */
- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
    return [GamaInterfaceSDK application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options
{
    [GamaInterfaceSDK application:app openURL:url options:options];
    return [GamaInterfaceSDK application:app
                                 openURL:url
                       sourceApplication:options[@"UIApplicationOpenURLOptionsSourceApplicationKey"]
                              annotation:options[@"UIApplicationOpenURLOptionsAnnotationKey"]];
}

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return YES;
}


/**
 应用单例
 
 @return 单例对象
 */
+ (instancetype)share
{
    static FLSDK *_shareSP = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shareSP = [[FLSDK alloc] init];
    });
    
    return _shareSP;
}

- (instancetype)init
{
    if (self = [super init]) {
        
        NSLog(@"SDK Version : %@", FL_SDK_VERSION);
        
//        [[NSNotificationCenter defaultCenter] addObserver:self
//                                                 selector:@selector(_gamaNoteListener:)
//                                                     name:GAMA_NOTIFICATION_SUCCESS_LOGIN
//                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(_gamaNoteListener:)
                                                     name:GAMA_NOTIFICATION_PHCHASE_SUCCESSFUL
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(_gamaNoteListener:)
                                                     name:GAMA_NOTIFICATION_PHCHASE_FAIL
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(_gamaNoteListener:)
                                                     name:GAMA_NOTIFICATION_PHCHASE_PUCHASING
                                                   object:nil];
//        [[NSNotificationCenter defaultCenter] addObserver:self
//                                                 selector:@selector(_gamaNoteListener:)
//                                                     name:@"Gama_httpRequest_SharingResult"//GAMA_NOTIFICATION_SHARE_RESULT
//                                                   object:nil];
//        [[NSNotificationCenter defaultCenter] addObserver:self
//                                                 selector:@selector(_gamaNoteListener:)
//                                                     name:@"GAMA_BIND_PHONE_RESULT"//GAMA_NOTIFICATION_SHARE_RESULT
//                                                   object:nil];
        
        // 监听登录成功通知，调用数据统计等接口
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_gamaNoteListener:) name:GAMA_NOTIFICATION_SUCCESS_LOGIN object:nil];
        
    }
    
    return self;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)sdkLoginWithHandler:(SDKLoginCompletionHandler)cmopleteHandler
{
        self.loginCompletionHandler = cmopleteHandler;
        SDKLoginViewController *controller = [[SDKLoginViewController alloc] initWithPageType:(SDKPage_Login)];
//        controller.definesPresentationContext = YES;
//        controller.modalPresentationStyle = UIModalPresentationOverCurrentContext;//关键语句，必须有
        [[GamaFunction getCurrentViewController] presentViewController: controller animated:NO completion:^{
    
        }];
}


/**
 保存或更新角色信息

 @param roleInfo 角色信息
 */
- (void)setRoleInfo:(NSString *)roleId
           roleName:(NSString *)roleName
         roleLevel:(NSString *)roleLevel
roleVipLevel:(NSString *)roleVipLevel
serverCode:(NSString *)serverCode
serverName:(NSString *)serverName
{
    
    NSLog(@"角色信息：roleID = %@，roleName = %@，roleLevel = %@，roleVipLevel = %@，serverCode = %@，serverName = %@",
                             roleId,roleName,roleLevel,roleVipLevel,serverCode,serverName);
    
    // 对必要参数进行检查
    if ([self _isEmpty:roleId] ||
        [self _isEmpty:roleName] ||
        [self _isEmpty:roleLevel] ||
        [self _isEmpty:serverCode]
        )
    {
        //NSLog(@"角色重要信息为空,请检查参数中 key-value 是否都有值，key 为 GAMA_PRM_ROLE_ID、GAMA_PRM_ROLE_NAME、GAMA_PRM_ROLE_LEVEL、GAMA_PRM_ROLE_SERVER_ID， 均是 SDK 定义的宏");
        [GamaAlertView showAlertWithMessage:@"角色重要信息为空,请检查参数中 roleId roleName roleLevel serverCode是否有值"];
        return;
    }
    
    [SdkUserInfoModel shareInfoModel].roleID     = roleId;
    [SdkUserInfoModel shareInfoModel].roleName   = roleName;
    [SdkUserInfoModel shareInfoModel].roleLevel  = roleLevel;
    [SdkUserInfoModel shareInfoModel].vipLevel   = roleVipLevel;
    [SdkUserInfoModel shareInfoModel].serverCode = serverCode;
    [SdkUserInfoModel shareInfoModel].serverName = serverName;
    
    
//    NSString *loginName = nil;
//    NSString *loginPwd = nil;
//    [GamaUtils getUserInfo:&loginName andPassword:&loginPwd fromFile:GAMA_SAVE_Guest_USER_FILE_NAME];

    ///平台悬浮按钮设置接口
//    if ([NSClassFromString(@"GMPlatformSDKTW") respondsToSelector:NSSelectorFromString(@"setPlatformDataWithUserId:accountName:gameCode:serverCode:roleName:roleId:roleLevel:appKey:loginToken:loginTimestamp:loginType:isLandscape:")]) {
//        ((void(*)(Class, SEL,id,id,id,id,id,id,int,id,id,id,id,BOOL))objc_msgSend)(NSClassFromString(@"GMPlatformSDKTW"),
//                                                                                   NSSelectorFromString(@"setPlatformDataWithUserId:accountName:gameCode:serverCode:roleName:roleId:roleLevel:appKey:loginToken:loginTimestamp:loginType:isLandscape:"),
//                                                                                   [GamaUserInfoModel shareInfoModel].gamaUID,
//                                                                                   loginName ? loginName : @"",
//                                                                                   SDKConReaderGetString(SDK_GAME_CODE),
//                                                                                   roleServerId,
//                                                                                   roleName,
//                                                                                   roleId,
//                                                                                   [roleLevel integerValue],
//                                                                                   SDKConReaderGetString(GAMA_GAME_KEY),
//                                                                                   [GamaUserInfoModel shareInfoModel].accessToken,
//                                                                                   [GamaUserInfoModel shareInfoModel].timestamp,
//                                                                                   [GamaUserInfoModel shareInfoModel].loginTypeStr,
//                                                                                   GAMA_IS_INTERFACE_THWARTWISE);
//    }

//    Class class = NSClassFromString(@"GMPlatformSDKTW");
//    [class platformLogOut];
//    [GMPlatformSDKTW platformLogOut];
//    [class setPlatformDataWithUserId:[GamaUserInfoModel shareInfoModel].gamaUID
//                       accountName:loginName ? loginName : @""
//                          gameCode:SDKConReaderGetString(SDK_GAME_CODE)
//                        serverCode:roleServerId
//                          roleName:roleName
//                            roleId:roleId
//                         roleLevel:[roleLevel integerValue]
//                            appKey:SDKConReaderGetString(GAMA_GAME_KEY)
//                        loginToken:[GamaUserInfoModel shareInfoModel].accessToken
//                    loginTimestamp:[GamaUserInfoModel shareInfoModel].timestamp
//                         loginType:[GamaUserInfoModel shareInfoModel].loginTypeStr
//                       isLandscape:GAMA_IS_INTERFACE_THWARTWISE];

    ///用户登入信息上报
    [GamaAdInterface allEventReportWithEventName:GAMESWORD_EVENT_ROLE_INFO parameters:@{@"gama_role_id":roleId,
                                                                                        @"gama_role_name":roleName,
                                                                                        @"gama_level":roleLevel,
                                                                                        @"gama_vip_level":roleVipLevel,
                                                                                        @"gama_server_code":serverCode,
                                                                                        @"gama_server_name":serverName,
                                                                                        @"userId":[SdkUserInfoModel shareInfoModel].userId,
                                                                                        }];
    /**
    NSDateFormatter *sysTemFormatter = [[NSDateFormatter alloc]init];
    NSDate *date = [NSDate date]; // 获得时间对象 UTC 比北京时间少8个小时
    [sysTemFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString* systemDateStr = [sysTemFormatter stringFromDate:date];//自动转换就对+回8个小时了？这么强？

    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSTimeZone * timeZone = [NSTimeZone timeZoneForSecondsFromGMT:8*60*60];
    [formatter setTimeZone:timeZone];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *datenow = [NSDate date];
    NSString* beijingtimeStr = [formatter stringFromDate:datenow];
    
    //https://ads.gamamobi.com/separateServer/{userId}/{gameCode}/{packageName}/{serverCode}/{roleId}/{beijingTime}/{localTime}?loingServerSignature
    NSString *urlParamer = [NSString stringWithFormat:
                            @"%@/%@/%@/%@/%@/%@/%@?logingServerSignature=%@&json=%@",
                            [GamaUserInfoModel shareInfoModel].gamaUID,
                            SDKConReaderGetString(SDK_GAME_CODE),
                            [GamaFunction getBundleIdentifier],
                            roleServerId,
                            roleId,
                            beijingtimeStr,
                            systemDateStr,
                            [GamaUserInfoModel shareInfoModel].accessToken,
    @{@"gama_role_id":roleId,@"gama_role_name":roleName,@"gama_level":roleLevel,@"gama_vip_level":roleVipLevel,@"gama_server_code":roleServerId,@"gama_server_name":roleServerName,@"userId":[GamaUserInfoModel shareInfoModel].gamaUID}];
    
    urlParamer = [urlParamer gamaUrlDecodeString];
    NSString *urlUtf8Encode = [urlParamer gamaUrlEncodeString];
    NSString *domainUrl = [NSString stringWithFormat:@"%@separateServer/%@",SDKConReaderGetString(GAMA_AD_DOMAIN_NAME),urlUtf8Encode];
    
//    NSString *urlEncodeUrl = [domainUrl stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    //分服数据上报
    [GamaRequestor requestByNSURLRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:domainUrl]]
                       ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
    }];
     */
    [GamaTimer gama_UserRetentionEvent];

}

// 参数检查
- (BOOL)_isEmpty:(NSString *)parm
{
    return parm == nil || [parm isEqualToString:@""];
}

/**
 充值

 @param payParms 充值参数
 */
- (void)pay:(SDK_PAY_TYPE)payType
  productId:(NSString *)productId
  cpOrderId:(NSString *)cpOrderId
      extra:(NSString *)extra
completionHandler:(PayCompletionHandler) handler
{

    SDK_LOG(@"储值接口传入的参数 ：productid : %@ , cpOrderId : %@ , extra : %@",productId,cpOrderId,extra);
    // 第三方
    if (payType == SDK_PAY_TYPE_WEB) {
        [self _pay_webview];
        return;
    }
    self.payHandler = handler;
    [GamaInterfaceSDK gamaPay:productId cpOrderId:cpOrderId extra:extra];

}

- (void)_pay_webview
{
   //NSMutableString *resultURL = [[NSMutableString alloc] init];
  // [resultURL appendFormat:@"%@web/page/service.app?",SDKConReaderGetString(@"platformDomainName")];
    NSString * resultURL = [[ConfigCoreUtil share] createSdkUrl:@"https://platform.flyfungame.com/"];
   [GamaWebViewController webViewControllerPresentingWithURLRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:resultURL]] layoutHandler:nil animation:NO animationStyle:UIModalTransitionStyleCoverVertical];
    
}

- (void)openCs
{
//    NSMutableString *resultURL = [[NSMutableString alloc] init];
//           [resultURL appendFormat:@"%@",@"https://platform.flyfungame.com/api/web/service.do?"];
//           [resultURL appendFormat:@"gameCode=%@&",SDKConReaderGetString(SDK_GAME_CODE)];
//           [resultURL appendFormat:@"userId=%@&",[SdkUserInfoModel shareInfoModel].userId];
//           [resultURL appendFormat:@"accessToken=%@&",[SdkUserInfoModel shareInfoModel].accessToken];
//           [resultURL appendFormat:@"packageName=%@&",[GamaFunction getBundleIdentifier]];
//           [resultURL appendFormat:@"timestamp=%@&",[SdkUserInfoModel shareInfoModel].timestamp];
//           [resultURL appendFormat:@"serverCode=%@&",[SdkUserInfoModel shareInfoModel].serverCode];
//           [resultURL appendFormat:@"roleId=%@&",[SdkUserInfoModel shareInfoModel].roleID];
//           [resultURL appendFormat:@"from=%@",@"gamePage"];
//           NSLog(@"openWebUrl:%@",resultURL);
    NSString *resultURL = [[ConfigCoreUtil share] createSdkUrl:@"https://platform.flyfungame.com/api/web/service.do"];
           [GamaWebViewController webViewControllerPresentingWithURLRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:resultURL]] layoutHandler:nil animation:NO animationStyle:UIModalTransitionStyleCoverVertical];
}

- (void)openWebPage:(NSDictionary *)webParams {
    
//    NSMutableString *resultURL = [[NSMutableString alloc] init];
//    [resultURL appendFormat:@"%@/web/page/service.app?",@"https://www.flyfungame.com"];
//    [resultURL appendFormat:@"gameCode=%@&",SDKConReaderGetString(SDK_GAME_CODE)];
//    [resultURL appendFormat:@"userId=%@&",[SdkUserInfoModel shareInfoModel].userId];
//    [resultURL appendFormat:@"accessToken=%@&",[SdkUserInfoModel shareInfoModel].accessToken];
//    [resultURL appendFormat:@"packageName=%@&",[GamaFunction getBundleIdentifier]];
//    [resultURL appendFormat:@"timestamp=%@&",[SdkUserInfoModel shareInfoModel].timestamp];
//    [resultURL appendFormat:@"serverCode=%@&",[SdkUserInfoModel shareInfoModel].serverCode];
//    [resultURL appendFormat:@"roleId=%@&",[SdkUserInfoModel shareInfoModel].roleID];
//    [resultURL appendFormat:@"from=%@",@"gamePage"];
//    NSLog(@"openWebUrl:%@",resultURL);
//    [GamaWebViewController webViewControllerPresentingWithURLRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:resultURL]] layoutHandler:nil animation:NO animationStyle:UIModalTransitionStyleCoverVertical];
    
    /**
    NSString *webPageUrl = webParams[GAMA_PRM_OPEN_WEB_URL];
    if ([webPageUrl isEqualToString:GAMA_PRM_WEB_SERVICE]) {    //客服系统；
        NSMutableString *resultURL = [[NSMutableString alloc] init];
        [resultURL appendFormat:@"%@/web/page/service.app?",@"https://www.flyfungame.com"];
        [resultURL appendFormat:@"gameCode=%@&",SDKConReaderGetString(SDK_GAME_CODE)];
        [resultURL appendFormat:@"userId=%@&",[SdkUserInfoModel shareInfoModel].userId];
        [resultURL appendFormat:@"accessToken=%@&",[SdkUserInfoModel shareInfoModel].accessToken];
        [resultURL appendFormat:@"packageName=%@&",[GamaFunction getBundleIdentifier]];
        [resultURL appendFormat:@"timestamp=%@&",[SdkUserInfoModel shareInfoModel].timestamp];
        [resultURL appendFormat:@"serverCode=%@&",[SdkUserInfoModel shareInfoModel].serverCode];
        [resultURL appendFormat:@"roleId=%@&",[SdkUserInfoModel shareInfoModel].roleID];
        [resultURL appendFormat:@"from=%@",@"gamePage"];
        NSLog(@"openWebUrl:%@",resultURL);
        [GamaWebViewController webViewControllerPresentingWithURLRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:resultURL]] layoutHandler:nil animation:NO animationStyle:UIModalTransitionStyleCoverVertical];
        return ;
    }else if([webPageUrl isEqualToString:GAMA_PRM_WEB_NOTICE]) {    //系统公告；
        
        NSMutableString *resultURL = [[NSMutableString alloc] init];
        [resultURL appendFormat:@"%@%@?",SDKConReaderGetString(GAMA_PLATFORM_DOMAIN_NAME),SDKConReaderGetString(GAMA_LOGIN_UNFIED_SWITCH)];
        [resultURL appendFormat:@"gameCode=%@",SDKConReaderGetString(SDK_GAME_CODE)];
        [resultURL appendFormat:@"&type=%@",@"notice,fb"];
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:resultURL]];
        
        [GamaURLConnect accessServerWithRequest:request andHandler:^(NSData *resultData, NSString *resultStr, NSError *error) {
            NSError *errors = nil;
            NSDictionary *resultDic = [NSJSONSerialization JSONObjectWithData:resultData options:NSJSONReadingMutableLeaves error:&errors];
            NSLog(@"%@",resultDic);
            NSString *code = (NSString *)resultDic[@"code"];
            NSString *noticeUrl = resultDic[@"data"][@"notice"][@"url"];
            if([code isEqual:@1000] && noticeUrl.length > 1){
                HelloProtocolViewController *protocol = [[HelloProtocolViewController alloc] init];
                [protocol openWebPage:noticeUrl];  //打开链接
            }else{
                [[NSNotificationCenter defaultCenter] postNotificationName:@"GAMA_NOTICE_CLOSE" object:nil userInfo:nil];
            }
        }];

        return;
    }
    HelloProtocolViewController *protocol = [[HelloProtocolViewController alloc] init];
    [protocol openWebPage:webPageUrl];  //打开链接
     */
}

- (void)share:(NSDictionary *)shareParams
{
    NSDictionary *paymentDict = nil;
    
    NSString *uid = [SdkUserInfoModel shareInfoModel].userId;
    NSString *serverCode = [SdkUserInfoModel shareInfoModel].serverCode;
    NSString *roleId = [SdkUserInfoModel shareInfoModel].roleID;
    NSMutableString *contentUrl = [NSMutableString stringWithFormat:@"%@",shareParams[GAMA_PRM_SHARE_CONTENT_URL]];
    NSMutableString *campaign = [[NSMutableString alloc] init];
    BOOL serverCodeExist = serverCode && ![serverCode isEqualToString:@""];
    BOOL roleIdExist = roleId && ![roleId isEqualToString:@""];
    if (serverCodeExist && roleIdExist) {
        NSString *sValue =[NSString stringWithFormat:@"%@||S||%@||S||%@",uid,serverCode,roleId];
        [campaign appendFormat:@"campaign=%@",[sValue gamaUrlEncodeString]];
    }
    
    if ([contentUrl rangeOfString:@"?"].location != NSNotFound) {
        [contentUrl appendFormat:@"&%@",campaign];
    } else {
        [contentUrl appendFormat:@"?%@",campaign];
    }
    
    @try {
        paymentDict = @{
                        GAMA_PRM_SHARE_CONTENT_URL       : contentUrl,
                        };
    }
    @catch (NSException *exception)
    {
        dispatch_async(dispatch_get_main_queue(),^
                       {
                           NSString *errorStr = [NSString stringWithFormat:@"!!!ERROR Dit At :\n %@ \n %@", paymentDict, exception.description];
                           NSLog(@"%@",errorStr);
                       });
    }
    
//    [NSClassFromString(@"GamaFacebookPort") postFacebookShareDialogWithContentUrl:contentUrl];
    [FLSDK gama_shareWithKind:GamaThirdPartyTypeFacebook param:@{GAMA_PRM_SOCIAL_SHARE_LINK:contentUrl} success:^(NSDictionary * _Nullable result) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"Gama_httpRequest_SharingResult"
                                                            object:nil
                                                          userInfo:@{@"code":@"1000",@"message":SDKConReaderGetString(GAMA_SHARE_TEXT_SHARE_SUCCESS)}];
    } failure:^(NSError * _Nullable error) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"Gama_httpRequest_SharingResult"
                                                            object:nil
                                                          userInfo:@{@"code":@"1010",@"message":SDKConReaderGetString(GAMA_SHARE_TEXT_DO_SHARE_FAIL)}];
    }];
}



#pragma mark - 内部方法

/**
 内部通知事件监听

 @param note 通知
 */
- (void)_gamaNoteListener:(NSNotification *)note
{
    NSString *noteName = note.name;
    
    if ([noteName isEqualToString:GAMA_NOTIFICATION_SUCCESS_LOGIN]) {
        // 对外界发送登录成功的通知
//        [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_LOGIN_SUCCUESS
//                                                             object:nil
//                                                           userInfo:note.userInfo];
        
        //增加登入成功时间戳
//        NSString *loginUid = [[NSUserDefaults standardUserDefaults] objectForKey:@"saveLoginUid"];
//        if ([loginUid isEqual:note.userInfo[@"userId"]]) {
//
//        }else{//首次登入
//        [GamaTimer setStartTimeStamp];
//        [GamaTimer shareInstance].loginState = YES;
//        [GamaBaseSDK _gamaLoginSuccess:note];
//        }
//        [[NSUserDefaults standardUserDefaults] setObject:note.userInfo[@"userId"] forKey:@"saveLoginUid"];
//        [[NSUserDefaults standardUserDefaults] synchronize];
        
    }
    else if ([noteName isEqualToString:GAMA_NOTIFICATION_PHCHASE_SUCCESSFUL]) {
        NSMutableDictionary *resultDic = [NSMutableDictionary dictionaryWithDictionary:note.userInfo];
        //  handle productID
        NSString *sucProductId = resultDic[@"productID"];
        if (sucProductId && ![@"" isEqualToString:sucProductId]) {
            //  remove productID
            [resultDic removeObjectForKey:@"productID"];
        }

        //  post outside
//        [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_PAY_SUCCUESS
//                                                            object:nil
//                                                          userInfo:resultDic];
        [GamaBaseSDK _in_app_purchases:note];
        if (self.payHandler) {
            self.payHandler(SDK_PAY_STATUS_SUCCESS, resultDic);
        }
    }
    else if ([noteName isEqualToString:GAMA_NOTIFICATION_PHCHASE_FAIL]) {
//        [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_PAY_FAIL
//                                                            object:nil
//                                                          userInfo:note.userInfo];
        if (self.payHandler) {
            self.payHandler(SDK_PAY_STATUS_FAIL, note.userInfo);
        }
        
    }
    else if ([noteName isEqualToString:GAMA_NOTIFICATION_PHCHASE_PUCHASING]) {
//        [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_PAY_PUCHESSING
//                                                            object:nil
//                                                          userInfo:note.userInfo];
        if (self.payHandler) {
                   self.payHandler(SDK_PAY_STATUS_PUCHESSING, note.userInfo);
               }
    }
//    else if ([noteName isEqualToString:GAMA_NOTIFICATION_PHCHASE_PUCHASING]) {
//        [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_PAY_PUCHESSING
//                                                            object:nil
//                                                          userInfo:note.userInfo];
//    }
    else if ([noteName isEqualToString:GAMA_NOTIFICATION_SHARE_RESULT]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_SHARE_RESULT
                                                            object:nil
                                                          userInfo:note.userInfo];
    }else if([noteName isEqualToString:GAMA_BIND_PHONE_RESULT]){
        //[FLSDK share].result(note.userInfo, nil);
    }
    else {
        return;
    }
}

- (void)trackEvent:(SDKEventReportChannel)channel eventName:(NSString *)name eventPar:(NSDictionary *)eventParmas
{
    if (channel == SDKEventReportAllChannel || channel == 0) {
        [GamaAdPort reportEventChannel:GamaThirdAdvertisementAllChannel eventName:name eventValues:eventParmas];
        return ;//保险
    }
    if (channel & SDKEventReportFacebook){
        [GamaAdPort reportEventChannel:GamaThirdAdvertisementFacebook eventName:name eventValues:eventParmas];
    }
    if(channel & SDKEventReportFirebase){
        [GamaAdPort reportEventChannel:GamaThirdAdvertisementFirebase eventName:name eventValues:eventParmas];
    }
    if(channel & SDKEventReportAppsflyer){
        [GamaAdPort reportEventChannel:GamaThirdAdvertisementAppsflyer eventName:name eventValues:eventParmas];
    }
    if (channel & SDKEventReportAdjust) {
        [GamaAdPort reportEventChannel:GamaThirdAdvertisementAdjust eventName:name eventValues:eventParmas];
    }
}

- (void)gama_showPlatformToView:(UIView *)view
{

}

- (void)gama_hiddenPlatform
{
   
}


//- (void)gama_openFuntion:(GamaOpenFuntion)funtion requeirePar:(NSDictionary *)par handlerResult:(void(^)(NSDictionary *result,NSError *error))result{
//    switch (funtion) {
//        case GamaOpenPhoneBindView:{
////            if([GamaLoginViewModel model].isBeLinked ==YES){
////                [GamaAlertView showAlertWithMessage:SDKConReaderGetLocalizedString(@"")];
////                return;
////            }
//            [FLSDK share].result = result;
//            CGFloat curWidth = Device_Is_Landscape ? winWidth : winHeight;
//            CGFloat curHeight = Device_Is_Landscape ? winHeight : winWidth;
//            HelloRigisterView *registerV = [[HelloRigisterView alloc] initWithFrame:CGRectMake(0, 0, curWidth, curHeight) viewMode:Hello_Bind_Phone_Fetch_Reward];
//            [appTopViewController.view addSubview:registerV];
//
//        }
//            break;
//
//        default:
//            break;
//    }
//}

@end
