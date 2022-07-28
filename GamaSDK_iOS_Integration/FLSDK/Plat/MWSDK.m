#import "MWSDK.h"

#import "BaseSDK.h"
#import "BaseSDKImpl.h"
#import "AdLogger.h"
#import "GamaWebViewController.h"
#import "SDKLoginViewController.h"
#import "SUtil.h"
#import "StringUtil.h"

#import <objc/runtime.h>
#import <objc/message.h>

#import "SDKRequest.h"

#import "FBDelegate.h"
#import "LineDelegate.h"
#import "MWApplePayManager.h"
#import "AdLogger.h"

#import <StoreKit/StoreKit.h>

// 通知类型
//NSString *const SDK_LOGIN_SUCCUESS    = @"SDK_LOGIN_SUCCUESS";

//NSString *const GAMA_PAY_SUCCUESS      = @"GAMAPHCHASESUCCESSFUL";
//NSString *const GAMA_PAY_FAIL          = @"GAMAPHCHASEFAIL";
//NSString *const GAMA_PAY_PUCHESSING    = @"GAMAPHCHASING";
//NSString *const GAMA_SHARE_RESULT      = @"CONST_GAMA_SHARE_RESULT";
//NSString *const GAMA_NOTICE_CLOSE      = @"GAMA_NOTICE_CLOSE";

@interface MWSDK()

@end

@implementation MWSDK

/**
 应用间跳转
 
 */
- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
    [AdDelegate application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    BOOL result = [FBDelegate application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    if (!result) {
        result = [LineDelegate application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    }
    
    return result;
}

//system version is ios9 and later
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary *)options
{
    [AdDelegate application:application openURL:url options:options];
    BOOL result = [FBDelegate application:application openURL:url options:options];
    if (!result) {
        result = [LineDelegate application:application openURL:url options:options];
    }
    return result;
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
    static MWSDK *_shareSP = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shareSP = [[MWSDK alloc] init];
    });
    
    return _shareSP;
}

- (instancetype)init
{
    if (self = [super init]) {
        
        SDK_LOG(@"SDK Version : %@", FL_SDK_VERSION);
    }
    
    return self;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)sdkLoginWithHandler:(SDKLoginBlock)cmopleteHandler
{
    self.loginCompletionHandler = cmopleteHandler;
    SDKLoginViewController *controller = [[SDKLoginViewController alloc] initWithPageType:(SDKPage_Login)];
    //        controller.definesPresentationContext = YES;
#ifdef __IPHONE_8_0
    if ([[UIDevice currentDevice] systemVersion].intValue < 8) {
        SDK_LOG(@"[UIDevice currentDevice] systemVersion].intValue < 8");
    }
    else {
        SDK_LOG(@"controller setModalPresentationStyle:UIModalPresentationOverCurrentContext");
        [controller setModalPresentationStyle:UIModalPresentationOverFullScreen];//UIModalPresentationFullScreen不能背景透明、UIModalPresentationOverFullScreen可以
    }
#else
    SDK_LOG(@"not def __IPHONE_8_0");
#endif
    //        controller.modalPresentationStyle = UIModalPresentationOverCurrentContext;//关键语句，必须有
    [[SUtil getCurrentViewController] presentViewController: controller animated:NO completion:^{
        
    }];
    
//    [AdUtil requestIDFA]
}

- (void)setRoleInfoWithRoleId:(NSString *)roleId
                     roleName:(NSString *)roleName
                    roleLevel:(NSString *)roleLevel
                 roleVipLevel:(NSString *)roleVipLevel
                   serverCode:(NSString *)serverCode
                   serverName:(NSString *)serverName
{
    
    SDK_LOG(@"setRoleInfo角色信息：roleID = %@，roleName = %@，roleLevel = %@，roleVipLevel = %@，serverCode = %@，serverName = %@",
            roleId,roleName,roleLevel,roleVipLevel,serverCode,serverName);
    
    // 对必要参数进行检查
    if ([StringUtil isEmpty:roleId] || [StringUtil isEmpty:roleName] ||
        [StringUtil isEmpty:roleLevel] ||
        [StringUtil isEmpty:serverCode])
    {
        //NSLog(@"角色重要信息为空,请检查参数中 key-value 是否都有值，key 为 GAMA_PRM_ROLE_ID、GAMA_PRM_ROLE_NAME、GAMA_PRM_ROLE_LEVEL、GAMA_PRM_ROLE_SERVER_ID， 均是 SDK 定义的宏");
        [AlertUtil showAlertWithMessage:@"角色重要信息为空,请检查参数中 roleId roleName roleLevel serverCode是否有值"];
        return;
    }
    
    SDK_DATA.gameUserModel.roleID = roleId ? : @"";
    SDK_DATA.gameUserModel.roleName = roleName ? : @"";
    SDK_DATA.gameUserModel.roleLevel = roleLevel ? : @"";
    SDK_DATA.gameUserModel.roleVipLevel = roleVipLevel ? : @"";
    SDK_DATA.gameUserModel.serverCode = serverCode ? : @"";
    SDK_DATA.gameUserModel.serverName = serverName ? : @"";
    
    
    
    //    NSString *loginName = nil;
    //    NSString *loginPwd = nil;
    //    [GamaUtils getUserInfo:&loginName andPassword:&loginPwd fromFile:GAMA_SAVE_Guest_USER_FILE_NAME];
    
    ///平台悬浮按钮设置接口
    //    if ([NSClassFromString(@"GMPlatformSDKTW") respondsToSelector:NSSelectorFromString(@"setPlatformDataWithUserId:accountName:gameCode:serverCode:roleName:roleId:roleLevel:appKey:loginToken:loginTimestamp:loginType:isLandscape:")]) {
    //        ((void(*)(Class, SEL,id,id,id,id,id,id,int,id,id,id,id,BOOL))objc_msgSend)(NSClassFromString(@"GMPlatformSDKTW"),
    //                                                                                   NSSelectorFromString(@"setPlatformDataWithUserId:accountName:gameCode:serverCode:roleName:roleId:roleLevel:appKey:loginToken:loginTimestamp:loginType:isLandscape:"),
    //                                                                                   [GamaUserInfoModel shareInfoModel].gamaUID,
    //                                                                                   loginName ? loginName : @"",
    //                                                                                   GetConfigString(SDK_GAME_CODE),
    //                                                                                   roleServerId,
    //                                                                                   roleName,
    //                                                                                   roleId,
    //                                                                                   [roleLevel integerValue],
    //                                                                                   GetConfigString(GAMA_GAME_KEY),
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
    //                          gameCode:GetConfigString(SDK_GAME_CODE)
    //                        serverCode:roleServerId
    //                          roleName:roleName
    //                            roleId:roleId
    //                         roleLevel:[roleLevel integerValue]
    //                            appKey:GetConfigString(GAMA_GAME_KEY)
    //                        loginToken:[GamaUserInfoModel shareInfoModel].accessToken
    //                    loginTimestamp:[GamaUserInfoModel shareInfoModel].timestamp
    //                         loginType:[GamaUserInfoModel shareInfoModel].loginTypeStr
    //                       isLandscape:GAMA_IS_INTERFACE_THWARTWISE];
    
    ///用户登入信息上报
    //    [GamaAdInterface allEventReportWithEventName:GAMESWORD_EVENT_ROLE_INFO parameters:@{@"role_id":roleId,
    //                                                                                        @"role_name":roleName,
    //                                                                                        @"level":roleLevel,
    //                                                                                        @"vip_level":roleVipLevel,
    //                                                                                        @"server_code":serverCode,
    //                                                                                        @"server_name":serverName,
    //                                                                                        @"userId":[SdkUserInfoModel shareInfoModel].userId,
    //                                                                                        }];
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
     GetConfigString(SDK_GAME_CODE),
     [GamaFunction getBundleIdentifier],
     roleServerId,
     roleId,
     beijingtimeStr,
     systemDateStr,
     [GamaUserInfoModel shareInfoModel].accessToken,
     @{@"gama_role_id":roleId,@"gama_role_name":roleName,@"gama_level":roleLevel,@"gama_vip_level":roleVipLevel,@"gama_server_code":roleServerId,@"gama_server_name":roleServerName,@"userId":[GamaUserInfoModel shareInfoModel].gamaUID}];
     
     urlParamer = [urlParamer gamaUrlDecodeString];
     NSString *urlUtf8Encode = [urlParamer gamaUrlEncodeString];
     NSString *domainUrl = [NSString stringWithFormat:@"%@separateServer/%@",GetConfigString(GAMA_AD_DOMAIN_NAME),urlUtf8Encode];
     
     //    NSString *urlEncodeUrl = [domainUrl stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
     //分服数据上报
     [GamaRequestor requestByNSURLRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:domainUrl]]
     ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
     }];
     */
    //    [GamaTimer gama_UserRetentionEvent];
    
}

/**
 充值
 
 @param payParms 充值参数
 */
- (void)payWithRoleId:(NSString *)roleId
             roleName:(NSString *)roleName
            roleLevel:(NSString *)roleLevel
         roleVipLevel:(NSString *)roleVipLevel
           serverCode:(NSString *)serverCode
           serverName:(NSString *)serverName
            productId:(NSString *)productId
            cpOrderId:(NSString *)cpOrderId
                extra:(NSString *)extra
    completionHandler:(SDKPayBlock) handler
{
    SDK_LOG(@"储值接口传入的参数 ：roleId : %@ , serverCode : %@ , roleName : %@",roleId,serverCode,roleName);
    SDK_LOG(@"储值接口传入的参数 ：productid : %@ , cpOrderId : %@ , extra : %@",productId,cpOrderId,extra);
    // 第三方
//    if (payType == SDK_PAY_TYPE_WEB) {
//        [self _pay_webview];
//        return;
//    }
    
    if ([StringUtil isEmpty:productId]) {
        [AlertUtil showAlertWithMessage:@"productId must be not empty"];
        return;
    }
    if ([StringUtil isEmpty:roleId]) {
        [AlertUtil showAlertWithMessage:@"roleId must be not empty"];
        return;
    }
    if ([StringUtil isEmpty:serverCode]) {
        [AlertUtil showAlertWithMessage:@"serverCode must be not empty"];
        return;
    }
    if ([StringUtil isEmpty:cpOrderId]) {
        [AlertUtil showAlertWithMessage:@"cpOrderId must be not empty"];
        return;
    }
    
    SDK_DATA.gameUserModel.roleID = roleId ? : @"";
    SDK_DATA.gameUserModel.roleName = roleName ? : @"";
    SDK_DATA.gameUserModel.roleLevel = roleLevel ? : @"";
    SDK_DATA.gameUserModel.roleVipLevel = roleVipLevel ? : @"";
    SDK_DATA.gameUserModel.serverCode = serverCode ? : @"";
    SDK_DATA.gameUserModel.serverName = serverName ? : @"";
    
    self.payHandler = handler;
    
    LoginResponse *sLoginResponse = SDK_DATA.mLoginResponse;
    AccountModel *accountModel = sLoginResponse.data;
    
    if (!accountModel || !accountModel.userId) {
        [AlertUtil showAlertWithMessage:@"error:請重新登入遊戲進行充值"];
        return;
    }
    
    [[MWApplePayManager shareManager] startPayWithProductId:productId cpOrderId:cpOrderId extra:extra gameInfo:SDK_DATA.gameUserModel accountModel:accountModel payStatusBlock:^(BOOL success, PayData * _Nullable payData) {
        
        if (self.payHandler) {
            if (success) {
               
                BOOL havePay = [USDefault _userdefaultGetBoolForKey:SDK_DATA.mLoginResponse.data.userId];
                if (!havePay) {
                    [AdLogger logWithEventName:AD_EVENT_FIRST_PURCHASE parameters:nil];
                }
                [USDefault _userdefaultSetBool:YES forKey:SDK_DATA.mLoginResponse.data.userId];
                
                PayData *mPayData = [[PayData alloc] init];
                self.payHandler(SDK_PAY_STATUS_SUCCESS, mPayData);
                
                
            }else{
                self.payHandler(SDK_PAY_STATUS_FAIL, nil);
            }
        }
        
    }];
}

- (void)trackEventWithEventName:(NSString *)name{
    [self trackEventWithEventName:name eventValues:nil];
}

- (void)trackEventWithEventName:(NSString *)name eventValues:(NSDictionary<NSString * , id> * _Nullable)eventValues
{
    [AdLogger logWithEventName:name parameters:eventValues];
}


- (void)requestStoreReview
{
    if (@available(iOS 10.3, *)) {
        [SKStoreReviewController requestReview];
    } else {
        // Fallback on earlier versions
    }
}

- (void)shareWithTag:(NSString *)hashTag message:(NSString *)message url:(NSString *)url successBlock:(ShareBlock)shareBlock{
    
    [[FBDelegate share] shareWithTag:hashTag message:message url:url presentingViewController:appTopViewController successBlock:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        
        if (shareBlock) {
            shareBlock(YES,dic);
        }
    } failBlock:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        if (shareBlock) {
            shareBlock(NO,nil);
        }
    }];
    
}

- (void)_pay_webview
{
//    NSString * resultURL = [SDKRequest createSdkUrl:@"https://platform.flyfungame.com/"];
//    [GamaWebViewController webViewControllerPresentingWithURLRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:resultURL]] layoutHandler:nil animation:NO animationStyle:UIModalTransitionStyleCoverVertical];
    
}

- (void)openCs
{
//    SDK_LOG(@"openCs..");
//    NSString *resultURL = [SDKRequest createSdkUrl:@"https://platform.flyfungame.com/api/web/service.do"];
//    [GamaWebViewController webViewControllerPresentingWithURLRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:resultURL]] layoutHandler:nil animation:NO animationStyle:UIModalTransitionStyleCoverVertical];
}

- (void)openWebPage:(NSDictionary *)webParams {
    
    //    NSMutableString *resultURL = [[NSMutableString alloc] init];
    //    [resultURL appendFormat:@"%@/web/page/service.app?",@"https://www.flyfungame.com"];
    //    [resultURL appendFormat:@"gameCode=%@&",GetConfigString(SDK_GAME_CODE)];
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
     [resultURL appendFormat:@"gameCode=%@&",GetConfigString(SDK_GAME_CODE)];
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
     [resultURL appendFormat:@"%@%@?",GetConfigString(GAMA_PLATFORM_DOMAIN_NAME),GetConfigString(GAMA_LOGIN_UNFIED_SWITCH)];
     [resultURL appendFormat:@"gameCode=%@",GetConfigString(SDK_GAME_CODE)];
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
    //    NSDictionary *paymentDict = nil;
    //
    //    NSString *uid = [SdkUserInfoModel shareInfoModel].userId;
    //    NSString *serverCode = [SdkUserInfoModel shareInfoModel].serverCode;
    //    NSString *roleId = [SdkUserInfoModel shareInfoModel].roleID;
    //    NSMutableString *contentUrl = [NSMutableString stringWithFormat:@"%@",shareParams[GAMA_PRM_SHARE_CONTENT_URL]];
    //    NSMutableString *campaign = [[NSMutableString alloc] init];
    //    BOOL serverCodeExist = serverCode && ![serverCode isEqualToString:@""];
    //    BOOL roleIdExist = roleId && ![roleId isEqualToString:@""];
    //    if (serverCodeExist && roleIdExist) {
    //        NSString *sValue =[NSString stringWithFormat:@"%@||S||%@||S||%@",uid,serverCode,roleId];
    //        [campaign appendFormat:@"campaign=%@",[sValue urlEncode]];
    //    }
    //
    //    if ([contentUrl rangeOfString:@"?"].location != NSNotFound) {
    //        [contentUrl appendFormat:@"&%@",campaign];
    //    } else {
    //        [contentUrl appendFormat:@"?%@",campaign];
    //    }
    //
    //    @try {
    //        paymentDict = @{
    //                        GAMA_PRM_SHARE_CONTENT_URL       : contentUrl,
    //                        };
    //    }
    //    @catch (NSException *exception)
    //    {
    //        dispatch_async(dispatch_get_main_queue(),^
    //                       {
    //                           NSString *errorStr = [NSString stringWithFormat:@"!!!ERROR Dit At :\n %@ \n %@", paymentDict, exception.description];
    //                           NSLog(@"%@",errorStr);
    //                       });
    //    }
    //
    ////    [NSClassFromString(@"GamaFacebookPort") postFacebookShareDialogWithContentUrl:contentUrl];
    //    [FLSDK gama_shareWithKind:GamaThirdPartyTypeFacebook param:@{GAMA_PRM_SOCIAL_SHARE_LINK:contentUrl} success:^(NSDictionary * _Nullable result) {
    //
    //    } failure:^(NSError * _Nullable error) {
    //
    //    }];
}



#pragma mark - 内部方法

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
////                [GamaAlertView showAlertWithMessage:GetString(@"")];
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
