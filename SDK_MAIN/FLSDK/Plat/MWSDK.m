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
#import "CreateOrderResp.h"
#import "TermsViewV2.h"
#import "SelectPayChannelView.h"
#import "SocialBannerView.h"


#ifdef SDK_KR
#import "NaverDelegate.h"
#endif




@interface MWSDK()

@property (nonatomic, assign) BOOL isPaying;

@end

@implementation MWSDK


- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
    SDK_LOG(wwwww_tag_wwwww_application_openURL_sourceApplication_annotation);
    [AdDelegate application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    BOOL result = [FBDelegate application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    
    return result;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary *)options
{
    SDK_LOG(wwwww_tag_wwwww_ornithoress_missast, [url absoluteString]);
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
    });
    _shareSP.dyMMMBaseEncryptKey = @"ldy-sdk-1228";
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

- (void)dyLoginWithBlock:(SDKLoginBlock)cmopleteHandler
{
    SDK_LOG(wwwww_tag_wwwww_sdkLoginWithHandler);
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(wwwww_tag_wwwww_currentThread_is_not_main_thread);
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    self.dySDKLoginBlock = cmopleteHandler;
    
    
    [self sdkLoginWithHandlerForInner];
}

- (void)dySwitchLoginWithBlock:(SDKLoginBlock)cmopleteHandler
{
    SDK_LOG(wwwww_tag_wwwww_switchLoginWithHandler);
    [self dyLoginWithBlock:cmopleteHandler];
}

#pragma mark - 内部方法
- (void)sdkLoginWithHandlerForInner
{
    SDK_LOG(wwwww_tag_wwwww_sdkLoginWithHandlerForInner);
    SDKLoginViewController *controller = [[SDKLoginViewController alloc] initWithPageType_MMMethodMMM:(SDKPage_Login)];
    
#ifdef __IPHONE_8_0
    if ([[UIDevice currentDevice] systemVersion].intValue < 8) {
        SDK_LOG(wwwww_tag_wwwww_mensar_failier);
    }
    else {
        SDK_LOG(wwwww_tag_wwwww_controller_setModalPresentationStyle_UIModalPresentationOverCurrentContext);
        [controller setModalPresentationStyle:UIModalPresentationOverFullScreen];
    }
#else
    SDK_LOG(wwwww_tag_wwwww_not_def___IPHONE_8_0);
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

- (void)dySetRoleInfoWithRoleId:(NSString *)roleId
                     roleName:(NSString *)roleName
                    roleLevel:(NSString *)roleLevel
                 roleVipLevel:(NSString *)roleVipLevel
                   serverCode:(NSString *)serverCode
                   serverName:(NSString *)serverName
{
    
    SDK_LOG(wwwww_tag_wwwww_last_stultiarium,
            roleId,roleName,roleLevel,roleVipLevel,serverCode,serverName);
    
    
    if ([StringUtil isEmpty_MMMethodMMM:roleId]  ||
        [StringUtil isEmpty_MMMethodMMM:serverCode])
    {
        SDK_LOG(wwwww_tag_wwwww_ceivite_sidersciencean);
        return;
    }
    
    
    [self setRoleInfoWithRoleId_Inner:roleId roleName:roleName roleLevel:roleLevel roleVipLevel:roleVipLevel serverCode:serverCode serverName:serverName];
    
    
}

- (void)setRoleInfoWithRoleId_Inner:(NSString *)roleId
                     roleName:(NSString *)roleName
                    roleLevel:(NSString *)roleLevel
                 roleVipLevel:(NSString *)roleVipLevel
                   serverCode:(NSString *)serverCode
                   serverName:(NSString *)serverName
{
    
    SDK_LOG(wwwww_tag_wwwww_last_stultiarium,
            roleId,roleName,roleLevel,roleVipLevel,serverCode,serverName);
    
    
    if ([StringUtil isEmpty_MMMethodMMM:roleId]  ||
        [StringUtil isEmpty_MMMethodMMM:serverCode])
    {
        SDK_LOG(wwwww_tag_wwwww_ceivite_sidersciencean);
        return;
    }
    
    SDK_DATA.gameUserModel_MMMPRO.roleID = roleId ? : @"";
    SDK_DATA.gameUserModel_MMMPRO.roleName = roleName ? : @"";
    SDK_DATA.gameUserModel_MMMPRO.roleLevel = roleLevel ? : @"";
    SDK_DATA.gameUserModel_MMMPRO.roleVipLevel = roleVipLevel ? : @"";
    SDK_DATA.gameUserModel_MMMPRO.serverCode = serverCode ? : @"";
    SDK_DATA.gameUserModel_MMMPRO.serverName = serverName ? : @"";
    
}

- (void)startIapPay_MMMethodMMM:(AccountModel *)accountModel cpOrderId_MMMethodMMM:(NSString *)cpOrderId extra_MMMethodMMM:(NSString *)extra productId_MMMethodMMM:(NSString *)productId {
    [[MWApplePayManager shareManager_MMMethodMMM] startPayWithProductId_MMMethodMMM:productId cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra gameInfo_MMMethodMMM:SDK_DATA.gameUserModel_MMMPRO accountModel_MMMethodMMM:accountModel payStatusBlock_MMMethodMMM:^(BOOL success, PayData * _Nullable payData) {
        
        self.isPaying = NO;
        
        if (self.dySDKPayBlock) {
            if (success) {
                
                BOOL havePay = [USDefault _userdefaultGetBoolForKey:SDK_DATA.mLoginResponse_MMMPRO.data.userId];
                if (!havePay) {
                    
                }
                [USDefault _userdefaultSetBool:YES forKey:SDK_DATA.mLoginResponse_MMMPRO.data.userId];
                
                [AdLogger logEventPurchaseValues_MMMethodMMM:payData type_MMMethodMMM:(AdType_All)];
                self.dySDKPayBlock(SDK_PAY_STATUS_SUCCESS, payData);
                
                
            }else{
                self.dySDKPayBlock(SDK_PAY_STATUS_FAIL, nil);
            }
        }
        
    }];
}

- (void)startMySdkPay_MMMethodMMM:(AccountModel *)accountModel cpOrderId_MMMethodMMM:(NSString *)cpOrderId extra_MMMethodMMM:(NSString *)extra productId_MMMethodMMM:(NSString *)productId
{
    SDK_LOG(wwwww_tag_wwwww_startMySdkPay___);
    
    NSString * myPayUrl = GetConfigString(wwwww_tag_wwwww_sdk_other_ppp_url);
    if ([StringUtil isEmpty_MMMethodMMM:myPayUrl]) {
        SDK_LOG(wwwww_tag_wwwww_dower_pollicitude,myPayUrl);
        return;
    }
    
    NSDictionary *dic;
    @try {
         dic = @{
            wwwww_tag_wwwww_thirdPlatId      :accountModel.thirdId ? : @"",
            wwwww_tag_wwwww_thirdLoginId     :accountModel.thirdId ? : @"",
            
            wwwww_tag_wwwww_registPlatform   :accountModel.loginType ? : @"",
            wwwww_tag_wwwww_loginMode        :accountModel.loginType ? : @"",
            
            wwwww_tag_wwwww_payType          :wwwww_tag_wwwww_apple,
            wwwww_tag_wwwww_mode             :wwwww_tag_wwwww_apple,
            wwwww_tag_wwwww_productId           :productId,
            wwwww_tag_wwwww_extra           :extra ? : @"",
            wwwww_tag_wwwww_cpOrderId         :cpOrderId,

        };
        
    } @catch (NSException *exception) {
        NSLog(wwwww_tag_wwwww_tainpage_lepid,exception.description);
    }
    
    NSString *resultURL = [SDKRequest createSdkUrl_MMMethodMMM:myPayUrl otherDic_MMMethodMMM:dic];
    SDK_LOG(wwwww_tag_wwwww_dower_pollicitude,resultURL);
    MWWebViewController *webVC = [MWWebViewController webViewControllerPresentingWithURLRequest_MMMethodMMM:[NSURLRequest requestWithURL:[NSURL URLWithString:resultURL]] isShowTitle_MMMethodMMM:YES animation_MMMethodMMM:NO animationStyle_MMMethodMMM:UIModalTransitionStyleCoverVertical];
    webVC.viewDidLoadCompletion_MMMPRO = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
    };
    webVC.willDismissCallback_MMMPRO = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
    };
    webVC.didDismissCallback_MMMPRO = ^{
        
    };
    
    [appTopViewController presentViewController:webVC animated:NO completion:^{
        SDK_LOG(wwwww_tag_wwwww_MWWebViewController_presentViewController_completioN);
        
    }];
    SDK_LOG(wwwww_tag_wwwww_startMySdkPay_open_end);
}


- (void)dyPayWithRoleId:(NSString *)roleId
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
        SDK_LOG(wwwww_tag_wwwww_currentThread_is_not_main_thread);
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    SDK_LOG(wwwww_tag_wwwww_bilient_loqui,roleId,serverCode,roleName);
    SDK_LOG(wwwww_tag_wwwww_fireuous_quasi,productId,cpOrderId,extra);
    
    if ([StringUtil isEmpty_MMMethodMMM:productId]) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_productId_must_be_not_empty];
        return;
    }
    if ([StringUtil isEmpty_MMMethodMMM:roleId]) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_roleId_must_be_not_empty];
        return;
    }
    if ([StringUtil isEmpty_MMMethodMMM:serverCode]) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_serverCode_must_be_not_empty];
        return;
    }
    if ([StringUtil isEmpty_MMMethodMMM:cpOrderId]) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_cpOrderId_must_be_not_empty];
        return;
    }
    
    if (self.isPaying) {
        SDK_LOG(wwwww_tag_wwwww_gloriistic_diamisslike);
        return;
    }
    self.isPaying = YES;
    
    [self setRoleInfoWithRoleId_Inner:roleId roleName:roleName roleLevel:roleLevel roleVipLevel:roleVipLevel serverCode:serverCode serverName:serverName];
    
    self.dySDKPayBlock = handler;
    
    LoginResponse *sLoginResponse = SDK_DATA.mLoginResponse_MMMPRO;
    AccountModel *accountModel = sLoginResponse.data;
    
    if (!accountModel || !accountModel.userId) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_agoy_beyondan];
        self.isPaying = NO;
        return;
    }
    
    [self dyTrackWithEventName:wwwww_tag_wwwww_Initiate_Checkout];
    self.isPaying = NO;
    
    [self startIapPay_MMMethodMMM:accountModel cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra productId_MMMethodMMM:productId];
    
}

- (void)dyTrackWithEventName:(NSString *)name{
    [self dyTrackWithEventName:name eventValues:nil];
}

- (void)dyTrackWithEventName:(NSString *)name eventValues:(NSDictionary<NSString * , id> * _Nullable)eventValues
{
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(wwwww_tag_wwwww_currentThread_is_not_main_thread);
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    [AdLogger logServerWithEventName_MMMethodMMM:name];
    [AdLogger logWithEventName_MMMethodMMM:name parameters_MMMethodMMM:eventValues];
}



- (void)shareWithTag:(NSString *)hashTag message:(NSString *)message url:(NSString *)url successBlock:(ShareBlock)shareBlock{
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(wwwww_tag_wwwww_currentThread_is_not_main_thread);
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
        SDK_LOG(wwwww_tag_wwwww_currentThread_is_not_main_thread);
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    if (!is_Version2) {
        [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_meraceous_nugaciular];
        return;
    }
    BindPhoneViewV2 *mBindPhoneViewV2 = [[BindPhoneViewV2 alloc] init];
    mBindPhoneViewV2.mMWBlock_MMMPRO = mBlock;
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

- (void)dyBindAccountWithBlock:(MWBlock)mBlock
{
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(wwwww_tag_wwwww_currentThread_is_not_main_thread);
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    if (!is_Version2) {
        [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_meraceous_nugaciular];
        return;
    }
    BindAccountViewV2 *mBindAccountViewV2 = [[BindAccountViewV2 alloc] initView_MMMethodMMM];
    mBindAccountViewV2.mMWBlock_MMMPRO = mBlock;
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
        if (mMWBlock) {
            mMWBlock(NO, wwwww_tag_wwwww_text_area_code_not_empty.localx);
        }
        return;
    }
    if ([StringUtil isEmpty_MMMethodMMM:telephone]) {
        [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_empty.localx];
        if (mMWBlock) {
            mMWBlock(NO, wwwww_tag_wwwww_text_phone_not_empty.localx);
        }
        return;
    }
    
    NSDictionary *pInfo = [SdkUtil getPhoneInfoByAreaCode_MMMethodMMM:areaCode];
    if(pInfo){
        
        NSString *regularExpression = pInfo[wwwww_tag_wwwww_pattern];
        if (![SdkUtil validPhone_MMMethodMMM:telephone phoneRegex_MMMethodMMM:regularExpression]) {
            [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_match.localx];
            if (mMWBlock) {
                mMWBlock(NO, wwwww_tag_wwwww_text_phone_not_match.localx);
            }
            return;
        }
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
        
        SDK_DATA.mLoginResponse_MMMPRO.data.telephone = [NSString stringWithFormat:@"%@-%@",areaCode,telephone];
        SDK_DATA.mLoginResponse_MMMPRO.data.isBindPhone = YES;
        
        if (mMWBlock) {
            mMWBlock(YES, SDK_DATA.mLoginResponse_MMMPRO.data.telephone);
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
    
    AccountModel *currentAccountModel = SDK_DATA.mLoginResponse_MMMPRO.data;
    if (!currentAccountModel) {
        SDK_LOG(wwwww_tag_wwwww_deal_veterose);
        return;
    }
    
    [SDKRequest doAccountBindingWithUserName_MMMethodMMM:account password_MMMethodMMM:password phoneAreaCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@"" vfCode_MMMethodMMM:@"" email_MMMethodMMM:account thirdId_MMMethodMMM:currentAccountModel.thirdId thirdPlate_MMMethodMMM:currentAccountModel.loginType otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        
        LoginResponse *cc = (LoginResponse *)responseData;
        cc.data.account = account;
        cc.data.password = password;
        cc.data.loginType = LOGIN_TYPE_SELF;
        SDK_DATA.mLoginResponse_MMMPRO = cc;
        
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

- (void)dyCsWithRoleId:(NSString *)roleId
                 roleName:(NSString *)roleName
                roleLevel:(NSString *)roleLevel
             roleVipLevel:(NSString *)roleVipLevel
               serverCode:(NSString *)serverCode
               serverName:(NSString *)serverName
{
    
    if ([StringUtil isEmpty_MMMethodMMM:roleId]) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_roleId_must_be_not_empty];
        return;
    }
    if ([StringUtil isEmpty_MMMethodMMM:serverCode]) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_serverCode_must_be_not_empty];
        return;
    }
    
    [self setRoleInfoWithRoleId_Inner:roleId roleName:roleName roleLevel:roleLevel roleVipLevel:roleVipLevel serverCode:serverCode serverName:serverName];
    
    [self openCs];
    
}

- (void)openCs
{
    SDK_LOG(wwwww_tag_wwwww_openCs__);
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(wwwww_tag_wwwww_currentThread_is_not_main_thread);
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    [self openCsWithParams_MMMethodMMM:nil];
}

- (void)openCsWithParams_MMMethodMMM:(NSDictionary *)paramDic {
    NSString * csurl = SDK_DATA.urls_MMMPRO.csUrl;
    if ([StringUtil isEmpty_MMMethodMMM:csurl]) {
        SDK_LOG(wwwww_tag_wwwww_plecfaction_tediunder,csurl);
        return;
    }
    NSString *resultURL = [SDKRequest createSdkUrl_MMMethodMMM:csurl otherDic_MMMethodMMM:paramDic];
    SDK_LOG(wwwww_tag_wwwww_lievtic_managementice,resultURL);
    MWWebViewController *webVC = [MWWebViewController webViewControllerPresentingWithURLRequest_MMMethodMMM:[NSURLRequest requestWithURL:[NSURL URLWithString:resultURL]] isShowTitle_MMMethodMMM:NO animation_MMMethodMMM:NO animationStyle_MMMethodMMM:UIModalTransitionStyleCoverVertical];
    
    webVC.isShowDefulatCloseBtn_MMMPRO = YES;
    webVC.view.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_3EB2FF];
    
    webVC.viewDidLoadCompletion_MMMPRO = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
    };
    webVC.willDismissCallback_MMMPRO = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
    };
    webVC.didDismissCallback_MMMPRO = ^{
        
    };
    
    [appTopViewController presentViewController:webVC animated:NO completion:^{
        SDK_LOG(wwwww_tag_wwwww_MWWebViewController_presentViewController_completioN);
        
    }];
    SDK_LOG(wwwww_tag_wwwww_eueer_cumbsion);
}

- (void)shareLineWithContent:(NSString *)content block:(MWBlock) bMWBlock
{
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(wwwww_tag_wwwww_currentThread_is_not_main_thread);
        [AlertUtil showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    if(![[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:wwwww_tag_wwwww_line___]]){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:wwwww_tag_wwwww_https___itunes_apple_com_app_line_id443904275]];
        return;
    }
    
    NSString *lineUrl = [NSString stringWithFormat:wwwww_tag_wwwww_passeracity_answeric,[content stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    BOOL result = [[UIApplication sharedApplication] openURL:[NSURL URLWithString:lineUrl]];
    if (result) {
        if (bMWBlock) {
            bMWBlock(YES, wwwww_tag_wwwww_Scheme_share_succeed);
        }
    } else {
        if (bMWBlock) {
            bMWBlock(NO,nil);
        }
    }
    
}







-(NSString *)dyDecodeStr:(NSString *)text
{
    return [SDKRES decryptAllStringContent_MMMethodMMM:text];
}

@end
