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

// 通知类型
//NSString *const SDK_LOGIN_SUCCUESS    = wwwww_tag_wwwww_SDK_LOGIN_SUCCUESS;

//NSString *const GAMA_PAY_SUCCUESS      = wwwww_tag_wwwww_GAMAPHCHASESUCCESSFUL;
//NSString *const GAMA_PAY_FAIL          = wwwww_tag_wwwww_GAMAPHCHASEFAIL;
//NSString *const GAMA_PAY_PUCHESSING    = wwwww_tag_wwwww_GAMAPHCHASING;
//NSString *const GAMA_SHARE_RESULT      = wwwww_tag_wwwww_CONST_GAMA_SHARE_RESULT;
//NSString *const GAMA_NOTICE_CLOSE      = wwwww_tag_wwwww_GAMA_NOTICE_CLOSE;

@interface MWSDK()

@property (nonatomic, assign) BOOL isPaying;

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
    SDK_LOG(@"application openURL sourceApplication annotation");
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
    SDK_LOG(@"ios9 and later = application openURL options");
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

- (void)sdkLoginWithHandlerForInner
{

    SDKLoginViewController *controller = [[SDKLoginViewController alloc] initWithPageType_MMMethodMMM:(SDKPage_Login)];
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
    [[SUtil getCurrentViewController_MMMethodMMM] presentViewController: controller animated:NO completion:^{
        
    }];
    
//    [AdUtil requestIDFA]
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
    
    // 对必要参数进行检查
    if ([StringUtil isEmpty_MMMethodMMM:roleId] || [StringUtil isEmpty_MMMethodMMM:roleName] ||
        [StringUtil isEmpty_MMMethodMMM:roleLevel] ||
        [StringUtil isEmpty_MMMethodMMM:serverCode])
    {
        //NSLog(@"角色重要信息为空,请检查参数中 key-value 是否都有值，key 为 GAMA_PRM_ROLE_ID、GAMA_PRM_ROLE_NAME、GAMA_PRM_ROLE_LEVEL、GAMA_PRM_ROLE_SERVER_ID， 均是 SDK 定义的宏");
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
    
    if (self.isPaying) {//是否正在充值中
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
//                    [AdLogger logWithEventName_MMMethodMMM:AD_EVENT_FIRST_PURCHASE parameters_MMMethodMMM:nil];
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
    [AdLogger logServerWithEventName_MMMethodMMM:name];//发送到服务器
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
        // Fallback on earlier versions
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
   
    if ([StringUtil isEmpty_MMMethodMMM:areaCode]) {
        [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_area_code_not_empty.localx];
        return;
    }
    if ([StringUtil isEmpty_MMMethodMMM:telephone]) {
        [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_empty.localx];
        return;
    }
//    if (![SdkUtil validPhone_MMMethodMMM:telephone phoneRegex_MMMethodMMM:mPhoneInfoModel.selectedRegularExpression]) {
//        [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_match.localx];
//        return;
//    }
    
    [SDKRequest requestMobileVfCode_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:telephone email_MMMethodMMM:@"" otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
//        [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_vfcode_has_send.localx];
        if (mMWBlock) {
            mMWBlock(YES, nil);
        }
        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        
//        if (error.message) {
//            [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
//        }
        if (mMWBlock) {
            mMWBlock(NO, error.message);
        }
        
    }];
}

- (void)requestBindPhoneAreaCode:(NSString *)areaCode telephone:(NSString *)telephone vfCode:(NSString *)vfCode Block:(MWBlock)mMWBlock{
    
    if ([StringUtil isEmpty_MMMethodMMM:areaCode]) {
        [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_area_code_not_empty.localx];
        return;
    }
    if ([StringUtil isEmpty_MMMethodMMM:telephone]) {
        [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_empty.localx];
        return;
    }
    
//    if (![SdkUtil validPhone_MMMethodMMM:telephone phoneRegex_MMMethodMMM:mPhoneInfoModel.selectedRegularExpression]) {
//        [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_match.localx];
//        return;
//    }
    
    if ([StringUtil isEmpty_MMMethodMMM:vfCode]) {
        [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_py_msg_vfcode_hint.localx];
        return;
    }
    
    [SDKRequest bindAccountPhone_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:telephone vCode_MMMethodMMM:vfCode otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
//        [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_bind_success.localx];
        SDK_DATA.mLoginResponse.data.telephone = [NSString stringWithFormat:@"%@-%@",areaCode,telephone];
        SDK_DATA.mLoginResponse.data.isBindPhone = YES;
        
        if (mMWBlock) {
            mMWBlock(YES, SDK_DATA.mLoginResponse.data.telephone);
        }
        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        
//        if (error.message) {
//            [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
//        }
        if (mMWBlock) {
            mMWBlock(NO, error.message);
        }
        
    }];
    
    
}

- (void)requestUpgradeWithAccount:(NSString *)account password:(NSString *)password Block:(MWBlock)mMWBlock
{
    if (![SdkUtil validUserName_MMMethodMMM:account]) {
        return;
    }


    if (![SdkUtil validPwd_MMMethodMMM:password]) {
        return;
    }
    
    AccountModel *currentAccountModel = SDK_DATA.mLoginResponse.data;
    if (!currentAccountModel) {
//        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];
        SDK_LOG(@"用户登录信息不存在 currentAccountModel nil");
        return;
    }
    
    [SDKRequest doAccountBindingWithUserName_MMMethodMMM:account password_MMMethodMMM:password phoneAreaCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@"" vfCode_MMMethodMMM:@"" email_MMMethodMMM:account thirdId_MMMethodMMM:currentAccountModel.thirdId thirdPlate_MMMethodMMM:currentAccountModel.loginType otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
//        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_bind_success2)];
        
        LoginResponse *cc = (LoginResponse *)responseData;
        cc.data.account = account;
        cc.data.password = password;
        cc.data.loginType = LOGIN_TYPE_SELF;
        SDK_DATA.mLoginResponse = cc;
        
        [[ConfigCoreUtil share] saveAccountModel_MMMethodMMM:cc.data];
        
//        [delegate handleLoginOrRegSuccess_MMMethodMMM:cc thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        
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
//        if (error.message) {
//            [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
//        }
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


//推送类型:
//UNTimeIntervalNotificationTrigger // （本地通知） 一定时间之后，重复或者不重复推送通知。我们可以设置timeInterval（时间间隔）和repeats（是否重复）
//UNCalendarNotificationTrigger //（本地通知） 一定日期之后，重复或者不重复推送通知 例如，你每天8点推送一个通知，只要dateComponents为8，如果你想每天8点都推送这个通知，只要repeats为YES就可以了
//UNLocationNotificationTrigger // （本地通知）地理位置的一种通知，当用户进入或离开一个地理区域来通知

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
        // 标题
        content.title = title;
        content.subtitle = subtitle;
        // 内容
        content.body = body;
        // 声音
       // 默认声音
        content.sound = [UNNotificationSound defaultSound];
     // 添加自定义声音
//       content.sound = [UNNotificationSound soundNamed:wwwww_tag_wwwww_Alert_ActivityGoalAttained_Salient_Haptic_caf];
        // 角标，桌面icon 小红标数量
//        content.badge = @(1);
        
        // 添加通知的标识符，可以用于移除，更新等操作
        if ([StringUtil isEmpty_MMMethodMMM:notifyId]) {
            notifyId = [SUtil getMD5StrFromString_MMMethodMMM:title];
        }
        
        UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:notifyId content:content trigger:trigger];
        
        [center addNotificationRequest:request withCompletionHandler:^(NSError *_Nullable error) {
            SDK_LOG(@"addLocalNotificationWithTitle 成功添加推送");
        }];
        
    }else {
//        UILocalNotification *notif = [[UILocalNotification alloc] init];
//        // 发出推送的日期
//        notif.fireDate = [NSDate dateWithTimeIntervalSinceNow:10];
//        // 推送的内容
//        notif.alertBody = wwwww_tag_wwwww_octogesimserveation_cause;
//        // 可以添加特定信息
//        notif.userInfo = @{wwwww_tag_wwwww_noticeId:wwwww_tag_wwwww_00001};
//        // 角标
//        notif.applicationIconBadgeNumber = 1;
//        // 提示音
//        notif.soundName = UILocalNotificationDefaultSoundName;
//        // 每周循环提醒
//        notif.repeatInterval = NSCalendarUnitWeekOfYear;
//
//        [[UIApplication sharedApplication] scheduleLocalNotification:notif];
    }
}


#pragma mark - 内部方法

- (void)gama_showPlatformToView:(UIView *)view
{
    
}

- (void)gama_hiddenPlatform
{
    
}

@end
