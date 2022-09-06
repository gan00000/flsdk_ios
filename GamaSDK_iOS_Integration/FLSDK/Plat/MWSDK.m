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

#import <StoreKit/StoreKit.h>

// 通知类型
//NSString *const SDK_LOGIN_SUCCUESS    = @"SDK_LOGIN_SUCCUESS";

//NSString *const GAMA_PAY_SUCCUESS      = @"GAMAPHCHASESUCCESSFUL";
//NSString *const GAMA_PAY_FAIL          = @"GAMAPHCHASEFAIL";
//NSString *const GAMA_PAY_PUCHESSING    = @"GAMAPHCHASING";
//NSString *const GAMA_SHARE_RESULT      = @"CONST_GAMA_SHARE_RESULT";
//NSString *const GAMA_NOTICE_CLOSE      = @"GAMA_NOTICE_CLOSE";

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
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage:@"请在主线程调用该接口"];
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


-(void)showNoticeView
{
    NoticeViewV2 *mNoticeViewV2 = [[NoticeViewV2 alloc] initWithCompleter:^{
        
        [self sdkLoginWithHandlerForInner];
    }];
    UIView *superView = appTopViewController.view;
    [superView addSubview:mNoticeViewV2];
    
    [mNoticeViewV2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(superView);
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
        [AlertUtil showAlertWithMessage:@"请在主线程调用该接口"];
        return;
    }
    
    SDK_LOG(@"储值接口传入的参数 ：roleId : %@ , serverCode : %@ , roleName : %@",roleId,serverCode,roleName);
    SDK_LOG(@"储值接口传入的参数 ：productid : %@ , cpOrderId : %@ , extra : %@",productId,cpOrderId,extra);
    
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
    
    if (self.isPaying) {//是否正在充值中
        SDK_LOG(@"正在充值中...");
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
        [AlertUtil showAlertWithMessage:@"error:請重新登入遊戲進行充值"];
        self.isPaying = NO;
        return;
    }
    
    [[MWApplePayManager shareManager] startPayWithProductId:productId cpOrderId:cpOrderId extra:extra gameInfo:SDK_DATA.gameUserModel accountModel:accountModel payStatusBlock:^(BOOL success, PayData * _Nullable payData) {
        
        self.isPaying = NO;
        
        if (self.payHandler) {
            if (success) {
               
                BOOL havePay = [USDefault _userdefaultGetBoolForKey:SDK_DATA.mLoginResponse.data.userId];
                if (!havePay) {
//                    [AdLogger logWithEventName:AD_EVENT_FIRST_PURCHASE parameters:nil];
                }
                [USDefault _userdefaultSetBool:YES forKey:SDK_DATA.mLoginResponse.data.userId];
                
                [AdDelegate logEventPurchaseValues:payData type:(AdType_All)];
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
        [AlertUtil showAlertWithMessage:@"请在主线程调用该接口"];
        return;
    }
    [AdLogger logWithEventName:name parameters:eventValues];
}


- (void)requestStoreReview
{
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage:@"请在主线程调用该接口"];
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
        [AlertUtil showAlertWithMessage:@"请在主线程调用该接口"];
        return;
    }
    
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

-(void)showBindPhoneViewWithBlock:(MWBlock) mBlock
{
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage:@"请在主线程调用该接口"];
        return;
    }
    if (!is_Version2) {
        [SdkUtil toastMsg: @"当前版本不支持该功能"];
        return;
    }
    BindPhoneViewV2 *mBindPhoneViewV2 = [[BindPhoneViewV2 alloc] init];
    mBindPhoneViewV2.mMWBlock = mBlock;
    UIView *superView = appTopViewController.view;
    [superView addSubview:mBindPhoneViewV2];
    
    [mBindPhoneViewV2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(superView);
    }];
    
}

- (void)showUpgradeAccountViewWithBlock:(MWBlock)mBlock
{
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage:@"请在主线程调用该接口"];
        return;
    }
    
    if (!is_Version2) {
        [SdkUtil toastMsg: @"当前版本不支持该功能"];
        return;
    }
    BindAccountViewV2 *mBindAccountViewV2 = [[BindAccountViewV2 alloc] initView];
    mBindAccountViewV2.mMWBlock = mBlock;
    UIView *superView = appTopViewController.view;
    [superView addSubview:mBindAccountViewV2];
    
    [mBindAccountViewV2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(superView);
    }];
    
}


- (void)requestVfCodeWithAreaCode:(NSString *)areaCode telephone:(NSString *)telephone Block:(MWBlock)mMWBlock
{
   
    if ([StringUtil isEmpty:areaCode]) {
        [SdkUtil toastMsg: @"text_area_code_not_empty".localx];
        return;
    }
    if ([StringUtil isEmpty:telephone]) {
        [SdkUtil toastMsg: @"text_phone_not_empty".localx];
        return;
    }
//    if (![SdkUtil validPhone:telephone phoneRegex:mPhoneInfoModel.selectedRegularExpression]) {
//        [SdkUtil toastMsg: @"text_phone_not_match".localx];
//        return;
//    }
    
    [SDKRequest requestMobileVfCode:areaCode phoneNumber:telephone email:@"" otherDic:nil successBlock:^(id responseData) {
        
//        [SdkUtil toastMsg: @"text_vfcode_has_send".localx];
        if (mMWBlock) {
            mMWBlock(YES, nil);
        }
        
    } errorBlock:^(BJError *error) {
        
//        if (error.message) {
//            [AlertUtil showAlertWithMessage:error.message];
//        }
        if (mMWBlock) {
            mMWBlock(NO, error.message);
        }
        
    }];
}

- (void)requestBindPhoneAreaCode:(NSString *)areaCode telephone:(NSString *)telephone vfCode:(NSString *)vfCode Block:(MWBlock)mMWBlock{
    
    if ([StringUtil isEmpty:areaCode]) {
        [SdkUtil toastMsg: @"text_area_code_not_empty".localx];
        return;
    }
    if ([StringUtil isEmpty:telephone]) {
        [SdkUtil toastMsg: @"text_phone_not_empty".localx];
        return;
    }
    
//    if (![SdkUtil validPhone:telephone phoneRegex:mPhoneInfoModel.selectedRegularExpression]) {
//        [SdkUtil toastMsg: @"text_phone_not_match".localx];
//        return;
//    }
    
    if ([StringUtil isEmpty:vfCode]) {
        [SdkUtil toastMsg: @"py_msg_vfcode_hint".localx];
        return;
    }
    
    [SDKRequest bindAccountPhone:areaCode phoneNumber:telephone vCode:vfCode otherDic:nil successBlock:^(id responseData) {
        
//        [SdkUtil toastMsg: @"text_phone_bind_success".localx];
        SDK_DATA.mLoginResponse.data.telephone = [NSString stringWithFormat:@"%@-%@",areaCode,telephone];
        SDK_DATA.mLoginResponse.data.isBindPhone = YES;
        
        if (mMWBlock) {
            mMWBlock(YES, SDK_DATA.mLoginResponse.data.telephone);
        }
        
    } errorBlock:^(BJError *error) {
        
//        if (error.message) {
//            [AlertUtil showAlertWithMessage:error.message];
//        }
        if (mMWBlock) {
            mMWBlock(NO, error.message);
        }
        
    }];
    
    
}

- (void)requestUpgradeWithAccount:(NSString *)account password:(NSString *)password Block:(MWBlock)mMWBlock
{
    if (![SdkUtil validUserName:account]) {
        return;
    }


    if (![SdkUtil validPwd:password]) {
        return;
    }
    
    AccountModel *currentAccountModel = SDK_DATA.mLoginResponse.data;
    if (!currentAccountModel) {
//        [SdkUtil toastMsg:GetString(@"text_select_account")];
        SDK_LOG(@"用户登录信息不存在 currentAccountModel nil");
        return;
    }
    
    [SDKRequest doAccountBindingWithUserName:account password:password phoneAreaCode:@"" phoneNumber:@"" vfCode:@"" email:account thirdId:currentAccountModel.thirdId thirdPlate:currentAccountModel.loginType otherParamsDic:nil successBlock:^(id responseData) {
        
//        [SdkUtil toastMsg:GetString(@"text_account_bind_success2")];
        
        LoginResponse *cc = (LoginResponse *)responseData;
        cc.data.account = account;
        cc.data.password = password;
        cc.data.loginType = LOGIN_TYPE_SELF;
        SDK_DATA.mLoginResponse = cc;
        
        [[ConfigCoreUtil share] saveAccountModel:cc.data];
        
//        [delegate handleLoginOrRegSuccess:cc thirdPlate:LOGIN_TYPE_SELF];
        
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
        
    } errorBlock:^(BJError *error) {
//        if (error.message) {
//            [AlertUtil showAlertWithMessage:error.message];
//        }
        if (mMWBlock) {
            mMWBlock(NO, error.message);
        }
    }];
    
}


- (void)openCs
{
    SDK_LOG(@"openCs..");
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage:@"请在主线程调用该接口"];
        return;
    }
    
    NSString * csurl = SDK_DATA.urls.csUrl;
    if ([StringUtil isEmpty:csurl]) {
        SDK_LOG(@"客服地址错误 csurl=%@",csurl);
        return;
    }
    NSString *resultURL = [SDKRequest createSdkUrl:csurl];
    [MWWebViewController webViewControllerPresentingWithURLRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:resultURL]] layoutHandler:nil animation:NO animationStyle:UIModalTransitionStyleCoverVertical];
}


- (void)shareLineWithContent:(NSString *)content block:(MWBlock) bMWBlock
{
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [AlertUtil showAlertWithMessage:@"请在主线程调用该接口"];
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



#pragma mark - 内部方法

- (void)gama_showPlatformToView:(UIView *)view
{
    
}

- (void)gama_hiddenPlatform
{
    
}

@end
