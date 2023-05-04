#import "MWSDK.h"

#import "AdLogger.h"
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

#import "NoticeViewV2.h"
#import "BindPhoneViewV2.h"
#import "BindAccountViewV2.h"

#import "AdDelegate.h"
#import "MWWebViewController.h"
#import "TouchEventInterruptView.h"
#import <StoreKit/StoreKit.h>
#import "GIDDelegate.h"










@interface MWSDK()

@property (nonatomic, assign) BOOL isPaying;

@end

@implementation MWSDK


- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
    SDK_LOG(@"application openURL sourceApplication annotation");
    [AdDelegate application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    BOOL result = [FBDelegate application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    if (!result) {
        result = [LineDelegate application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    }
    
    return result;
}


- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary *)options
{
    SDK_LOG(@"ios9 and later = application openURL options，openURL:%@", [url absoluteString]);
    [AdDelegate application:application openURL:url options:options];
    BOOL result = [FBDelegate application:application openURL:url options:options];
    if (!result) {
        result = [LineDelegate application:application openURL:url options:options];
    }
    
    if (!result) {
        result = [GIDDelegate application:application openURL:url options:options];
    }
    return result;
}

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return YES;
}



+ (instancetype)share
{
    static MWSDK *_shareSP = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shareSP = [[MWSDK alloc] init];
        _shareSP.sdkBaseEncryptKey = @"SdkV6202304";
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
    SDK_LOG(@"sdkLoginWithHandler");
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    self.loginCompletionHandler = cmopleteHandler;
    if (is_Version2 && SDK_DATA.mConfigModel.showNotice) {
        
        [self showNoticeView];
        
    }else{
        [self sdkLoginWithHandlerForInner];
    }
    
}

- (void)switchLoginWithHandler:(SDKLoginBlock)cmopleteHandler
{
    SDK_LOG(@"switchLoginWithHandler");
    [self sdkLoginWithHandler:cmopleteHandler];
}

#pragma mark - 内部方法
- (void)sdkLoginWithHandlerForInner
{
    SDK_LOG(@"sdkLoginWithHandlerForInner");
    SDKLoginViewController *controller = [[SDKLoginViewController alloc] initWithPageType_MMMethodMMM:(SDKPage_Login)];
    
#ifdef __IPHONE_8_0
    if ([[UIDevice currentDevice] systemVersion].intValue < 8) {
        SDK_LOG(@"[UIDevice currentDevice] systemVersion].intValue < 8");
    }
    else {
        SDK_LOG(@"controller setModalPresentationStyle:UIModalPresentationOverCurrentContext");
        [controller setModalPresentationStyle:UIModalPresentationOverFullScreen];
    }
#else
    SDK_LOG(@"not def __IPHONE_8_0");
#endif
    
    [[SUtil getCurrentViewController_MMMethodMMM] presentViewController: controller animated:NO completion:^{
        
    }];
    

}


-(void)showNoticeView
{
    NoticeViewV2 *mNoticeViewV2 = [[NoticeViewV2 alloc] initWithCompleter_MMMethodMMM:^{
        
        [self sdkLoginWithHandlerForInner];
    }];
    
    UIView *superView = appTopViewController.view;
    UIView *bgV = [[TouchEventInterruptView alloc] init];
    [superView addSubview:bgV];
    [bgV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(superView);
    }];
    
    [bgV addSubview:mNoticeViewV2];
    
    [mNoticeViewV2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(bgV);
    }];
    
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
    
    
    if ([StringUtil isEmpty_MMMethodMMM:roleId] || [StringUtil isEmpty_MMMethodMMM:roleName] ||
        [StringUtil isEmpty_MMMethodMMM:roleLevel] ||
        [StringUtil isEmpty_MMMethodMMM:serverCode])
    {
        
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"角色重要信息为空,请检查参数中 roleId roleName roleLevel serverCode是否有值"];
        return;
    }
    
    SDK_DATA.gameUserModel.roleID = roleId ? : @"";
    SDK_DATA.gameUserModel.roleName = roleName ? : @"";
    SDK_DATA.gameUserModel.roleLevel = roleLevel ? : @"";
    SDK_DATA.gameUserModel.roleVipLevel = roleVipLevel ? : @"";
    SDK_DATA.gameUserModel.serverCode = serverCode ? : @"";
    SDK_DATA.gameUserModel.serverName = serverName ? : @"";
    
}


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
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    SDK_LOG(@"储值接口传入的参数 ：roleId : %@ , serverCode : %@ , roleName : %@",roleId,serverCode,roleName);
    SDK_LOG(@"储值接口传入的参数 ：productid : %@ , cpOrderId : %@ , extra : %@",productId,cpOrderId,extra);
    
    if ([StringUtil isEmpty_MMMethodMMM:productId]) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"productId must be not empty"];
        return;
    }
    if ([StringUtil isEmpty_MMMethodMMM:roleId]) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"roleId must be not empty"];
        return;
    }
    if ([StringUtil isEmpty_MMMethodMMM:serverCode]) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"serverCode must be not empty"];
        return;
    }
    if ([StringUtil isEmpty_MMMethodMMM:cpOrderId]) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"cpOrderId must be not empty"];
        return;
    }
    
    if (self.isPaying) {
        SDK_LOG(wwwww_tag_wwwww_gloriistic_diamisslike);
        return;
    }
    self.isPaying = YES;
    
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
        [AlertUtil showAlertWithMessage_MMMethodMMM:@"error:請重新登入遊戲進行充值"];
        self.isPaying = NO;
        return;
    }
    
    [[MWApplePayManager shareManager_MMMethodMMM] startPayWithProductId_MMMethodMMM:productId cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra gameInfo_MMMethodMMM:SDK_DATA.gameUserModel accountModel_MMMethodMMM:accountModel payStatusBlock_MMMethodMMM:^(BOOL success, PayData * _Nullable payData) {
        
        self.isPaying = NO;
        
        if (self.payHandler) {
            if (success) {
               
                BOOL havePay = [USDefault _userdefaultGetBoolForKey:SDK_DATA.mLoginResponse.data.userId];
                if (!havePay) {

                }
                [USDefault _userdefaultSetBool:YES forKey:SDK_DATA.mLoginResponse.data.userId];
                
                [AdDelegate logEventPurchaseValues_MMMethodMMM:payData type_MMMethodMMM:(AdType_All)];
                self.payHandler(SDK_PAY_STATUS_SUCCESS, payData);
                
                
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
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    [AdLogger logServerWithEventName_MMMethodMMM:name];
    [AdLogger logWithEventName_MMMethodMMM:name parameters_MMMethodMMM:eventValues];
}


- (void)requestStoreReview
{
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    if (@available(iOS 10.3, *)) {
        [SKStoreReviewController requestReview];
    } else {
        
    }
}

- (void)shareWithTag:(NSString *)hashTag message:(NSString *)message url:(NSString *)url successBlock:(ShareBlock)shareBlock{
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    [[FBDelegate share] shareWithTag_MMMethodMMM:hashTag message_MMMethodMMM:message url_MMMethodMMM:url presentingViewController:appTopViewController successBlock_MMMethodMMM:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        
        if (shareBlock) {
            shareBlock(YES,dic);
        }
    } failBlock_MMMethodMMM:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        if (shareBlock) {
            shareBlock(NO,nil);
        }
    }];
}

-(void)showBindPhoneViewWithBlock:(MWBlock) mBlock
{
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    if (!is_Version2) {
        [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_meraceous_nugaciular];
        return;
    }
    BindPhoneViewV2 *mBindPhoneViewV2 = [[BindPhoneViewV2 alloc] init];
    mBindPhoneViewV2.mMWBlock = mBlock;
    UIView *superView = appTopViewController.view;
    
    UIView *bgV = [[TouchEventInterruptView alloc] init];
    [superView addSubview:bgV];
    [bgV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(superView);
    }];
    
    [bgV addSubview:mBindPhoneViewV2];
    [mBindPhoneViewV2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(bgV);
    }];
    
}

- (void)showUpgradeAccountViewWithBlock:(MWBlock)mBlock
{
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    if (!is_Version2) {
        [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_meraceous_nugaciular];
        return;
    }
    BindAccountViewV2 *mBindAccountViewV2 = [[BindAccountViewV2 alloc] initView_MMMethodMMM];
    mBindAccountViewV2.mMWBlock = mBlock;
    UIView *superView = appTopViewController.view;
    
    UIView *bgV = [[TouchEventInterruptView alloc] init];
    [superView addSubview:bgV];
    [bgV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(superView);
    }];
    
    [bgV addSubview:mBindAccountViewV2];
    [mBindAccountViewV2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(bgV);
    }];
    
}


- (void)requestVfCodeWithAreaCode:(NSString *)areaCode telephone:(NSString *)telephone Block:(MWBlock)mMWBlock
{
    areaCode = [areaCode trim_MMMethodMMM];
    telephone = [telephone trim_MMMethodMMM];

    if ([StringUtil isEmpty_MMMethodMMM:areaCode]) {
        [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_area_code_not_empty.localx];
        return;
    }
    if ([StringUtil isEmpty_MMMethodMMM:telephone]) {
        [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_empty.localx];
        return;
    }




    
    [SDKRequest requestMobileVfCode_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:telephone email_MMMethodMMM:@"" otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        

        if (mMWBlock) {
            mMWBlock(YES, nil);
        }
        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        



        if (mMWBlock) {
            mMWBlock(NO, error.message);
        }
        
    }];
}

- (void)requestBindPhoneAreaCode:(NSString *)areaCode telephone:(NSString *)telephone vfCode:(NSString *)vfCode Block:(MWBlock)mMWBlock{
    
    areaCode = [areaCode trim_MMMethodMMM];
    telephone = [telephone trim_MMMethodMMM];
    vfCode = [vfCode trim_MMMethodMMM];
    
    if ([StringUtil isEmpty_MMMethodMMM:areaCode]) {
        [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_area_code_not_empty.localx];
        return;
    }
    if ([StringUtil isEmpty_MMMethodMMM:telephone]) {
        [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_empty.localx];
        return;
    }
    




    
    if ([StringUtil isEmpty_MMMethodMMM:vfCode]) {
        [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_py_msg_vfcode_hint.localx];
        return;
    }
    
    [SDKRequest bindAccountPhone_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:telephone vCode_MMMethodMMM:vfCode otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        

        SDK_DATA.mLoginResponse.data.telephone = [NSString stringWithFormat:@"%@-%@",areaCode,telephone];
        SDK_DATA.mLoginResponse.data.isBindPhone = YES;
        
        if (mMWBlock) {
            mMWBlock(YES, SDK_DATA.mLoginResponse.data.telephone);
        }
        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        



        if (mMWBlock) {
            mMWBlock(NO, error.message);
        }
        
    }];
    
    
}

- (void)requestUpgradeWithAccount:(NSString *)account password:(NSString *)password Block:(MWBlock)mMWBlock
{
    account = [account trim_MMMethodMMM];
    if (![SdkUtil validUserName_MMMethodMMM:account]) {
        return;
    }

    password = [password trim_MMMethodMMM];
    if (![SdkUtil validPwd_MMMethodMMM:password]) {
        return;
    }
    
    AccountModel *currentAccountModel = SDK_DATA.mLoginResponse.data;
    if (!currentAccountModel) {

        SDK_LOG(@"用户登录信息不存在 currentAccountModel nil");
        return;
    }
    
    [SDKRequest doAccountBindingWithUserName_MMMethodMMM:account password_MMMethodMMM:password phoneAreaCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@"" vfCode_MMMethodMMM:@"" email_MMMethodMMM:account thirdId_MMMethodMMM:currentAccountModel.thirdId thirdPlate_MMMethodMMM:currentAccountModel.loginType otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        

        
        LoginResponse *cc = (LoginResponse *)responseData;
        cc.data.account = account;
        cc.data.password = password;
        cc.data.loginType = LOGIN_TYPE_SELF;
        SDK_DATA.mLoginResponse = cc;
        
        [[ConfigCoreUtil share] saveAccountModel_MMMethodMMM:cc.data];
        

        
        
        [AdLogger logServerWithEventName_MMMethodMMM:AD_EVENT_UPGRADE_ACCOUNT];
        [AdLogger logWithEventName_MMMethodMMM:AD_EVENT_UPGRADE_ACCOUNT parameters_MMMethodMMM:nil];
        
        AccountModel *rData = cc.data;
        LoginData *loginData = [[LoginData alloc] init];
        loginData.accessToken = rData.token;
        loginData.userId = rData.userId;
        loginData.timestamp = rData.timestamp;
        
        loginData.isBind = rData.isBind;
        loginData.isBindPhone = rData.isBindPhone;
        loginData.loginType = rData.loginType;
        
        loginData.sign = rData.sign;
        loginData.telephone = rData.telephone;
        loginData.loginId = rData.loginId;
        
        if (mMWBlock) {
            mMWBlock(YES, loginData);
        }
        
    } errorBlock_MMMethodMMM:^(BJError *error) {



        if (mMWBlock) {
            mMWBlock(NO, error.message);
        }
    }];
    
}


- (void)openCs
{
    SDK_LOG(wwwww_tag_wwwww_openCs__);
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    NSString * csurl = SDK_DATA.urls.csUrl;
    if ([StringUtil isEmpty_MMMethodMMM:csurl]) {
        SDK_LOG(@"客服地址错误 csurl=%@",csurl);
        return;
    }
    NSString *resultURL = [SDKRequest createSdkUrl_MMMethodMMM:csurl];
    SDK_LOG(@"客服地址csurl=%@",resultURL);
    [MWWebViewController webViewControllerPresentingWithURLRequest_MMMethodMMM:[NSURLRequest requestWithURL:[NSURL URLWithString:resultURL]] layoutHandler_MMMethodMMM:nil animation_MMMethodMMM:NO animationStyle_MMMethodMMM:UIModalTransitionStyleCoverVertical];
}


- (void)shareLineWithContent:(NSString *)content block:(MWBlock) bMWBlock
{
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    if(![[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"line://"]]){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https:itunes.apple.com/app/line/id443904275"]];
        return;
    }
    
    NSString *lineUrl = [NSString stringWithFormat:@"line://msg/text/%@",[content stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    BOOL result = [[UIApplication sharedApplication] openURL:[NSURL URLWithString:lineUrl]];
    if (result) {
        if (bMWBlock) {
            bMWBlock(YES, @"Scheme share succeed");
        }
    } else {
        if (bMWBlock) {
            bMWBlock(NO,nil);
        }
    }
    
}







- (void)addLocalNotificationWithTitle:(NSString *)title subtitle:(NSString *)subtitle body:(NSString *)body trigger:(nullable UNNotificationTrigger *)trigger notifyId:(NSString *)notifyId{
   
    SDK_LOG(wwwww_tag_wwwww_addLocalNotificationWithTitle);
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    if (@available(iOS 10.0, *)) {
        UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
        UNMutableNotificationContent *content = [[UNMutableNotificationContent alloc] init];
        
        content.title = title;
        content.subtitle = subtitle;
        
        content.body = body;
        
       
        content.sound = [UNNotificationSound defaultSound];
     

        

        
        
        if ([StringUtil isEmpty_MMMethodMMM:notifyId]) {
            notifyId = [SUtil getMD5StrFromString_MMMethodMMM:title];
        }
        
        UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:notifyId content:content trigger:trigger];
        
        [center addNotificationRequest:request withCompletionHandler:^(NSError *_Nullable error) {
            SDK_LOG(@"addLocalNotificationWithTitle 成功添加推送");
        }];
        
    }else {















    }
}


- (NSString *)decryptMsString:(NSString *)data
{
    return [SDKRES decryptAllStringContent_MMMethodMMM:data];
}


@end
