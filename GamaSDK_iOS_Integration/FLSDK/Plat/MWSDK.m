#import "MWSDK.h"

#import "PavidaciousCentenity.h"
#import "CapitalaticPartnerenController.h"
#import "BreviVincy.h"
#import "PentadeWhole.h"

#import <objc/runtime.h>
#import <objc/message.h>

#import "ScienceonOmenonceacy.h"

#import "MoneyierExpectity.h"
#import "BucciteActivity.h"
#import "EitherfactionPatriant.h"
#import "PavidaciousCentenity.h"

#import "ArgentariumElectrateView.h"
#import "LithaneousGramitorView.h"
#import "CracyletFringcyView.h"

#import "TegDealfaction.h"
#import "PamosityDevelopuousController.h"
#import "PtyaluponFrictView.h"
#import <StoreKit/StoreKit.h>
#import "LaborsomeClearly.h"

#ifdef SDK_KR
#import "MeasureastCulp.h"
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
    SDK_LOG(@"application openURL sourceApplication annotation");
    [TegDealfaction application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    BOOL result = [MoneyierExpectity application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    
    return result;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary *)options
{
    SDK_LOG(@"ios9 and later = application openURL options，openURL:%@", [url absoluteString]);
    [TegDealfaction application:application openURL:url options:options];
    BOOL result = [MoneyierExpectity application:application openURL:url options:options];
    if (!result) {
        result = [BucciteActivity application:application openURL:url options:options];
    }
    
    if (!result) {
        result = [LaborsomeClearly application:application openURL:url options:options];
    }
    
#ifdef SDK_KR
    if (!result) {
        result = [[MeasureastCulp share] application:application openURL:url options:options];
    }
#endif
    return result;
}

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return YES;
}

- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window{
    
    if(self.switchInterfaceOrientationPortrait){
        return UIInterfaceOrientationMaskPortrait;
    }
    
    NSArray *infoUISupportedInterfaceOrientations_aar = [BreviVincy getProjectInfoPlist_MMMethodMMM][@"UISupportedInterfaceOrientations"];
    if(!infoUISupportedInterfaceOrientations_aar){
        return UIInterfaceOrientationMaskAll;
    }
    
    if(([infoUISupportedInterfaceOrientations_aar containsObject:@"UIInterfaceOrientationPortrait"] || [infoUISupportedInterfaceOrientations_aar containsObject:@"UIInterfaceOrientationPortraitUpsideDown"]) && ([infoUISupportedInterfaceOrientations_aar containsObject:@"UIInterfaceOrientationLandscapeLeft"] || [infoUISupportedInterfaceOrientations_aar containsObject:@"UIInterfaceOrientationLandscapeRight"])){
        return UIInterfaceOrientationMaskAll;
    }
    
    if([infoUISupportedInterfaceOrientations_aar containsObject:@"UIInterfaceOrientationPortrait"] || [infoUISupportedInterfaceOrientations_aar containsObject:@"UIInterfaceOrientationPortraitUpsideDown"]){
        return UIInterfaceOrientationMaskPortrait;
    }
    
    return UIInterfaceOrientationMaskLandscape;
}


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
    self.sdkBaseEncryptKey = @"mwsdk-kr-0828";
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
        [ColdicalProsly showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
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
    CapitalaticPartnerenController *controller = [[CapitalaticPartnerenController alloc] initWithPageType_MMMethodMMM:(SDKPage_Login)];
    
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
    
    [[BreviVincy getCurrentViewController_MMMethodMMM] presentViewController: controller animated:NO completion:^{
        
    }];
    
}


-(void)showNoticeView
{
    ArgentariumElectrateView *mNoticeViewV2 = [[ArgentariumElectrateView alloc] initWithCompleter_MMMethodMMM:^{
        
        [self sdkLoginWithHandlerForInner];
    }];
    
    UIView *superView = appTopViewController.view;
    UIView *bgV = [[PtyaluponFrictView alloc] init];
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
    
    
    if ([PentadeWhole isEmpty_MMMethodMMM:roleId] || [PentadeWhole isEmpty_MMMethodMMM:roleName] ||
        [PentadeWhole isEmpty_MMMethodMMM:roleLevel] ||
        [PentadeWhole isEmpty_MMMethodMMM:serverCode])
    {
        
        [ColdicalProsly showAlertWithMessage_MMMethodMMM:@"角色重要信息为空,请检查参数中 roleId roleName roleLevel serverCode是否有值"];
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
        [ColdicalProsly showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    SDK_LOG(@"储值接口传入的参数 ：roleId : %@ , serverCode : %@ , roleName : %@",roleId,serverCode,roleName);
    SDK_LOG(@"储值接口传入的参数 ：productid : %@ , cpOrderId : %@ , extra : %@",productId,cpOrderId,extra);
    
    if ([PentadeWhole isEmpty_MMMethodMMM:productId]) {
        [ColdicalProsly showAlertWithMessage_MMMethodMMM:@"productId must be not empty"];
        return;
    }
    if ([PentadeWhole isEmpty_MMMethodMMM:roleId]) {
        [ColdicalProsly showAlertWithMessage_MMMethodMMM:@"roleId must be not empty"];
        return;
    }
    if ([PentadeWhole isEmpty_MMMethodMMM:serverCode]) {
        [ColdicalProsly showAlertWithMessage_MMMethodMMM:@"serverCode must be not empty"];
        return;
    }
    if ([PentadeWhole isEmpty_MMMethodMMM:cpOrderId]) {
        [ColdicalProsly showAlertWithMessage_MMMethodMMM:@"cpOrderId must be not empty"];
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
        [ColdicalProsly showAlertWithMessage_MMMethodMMM:@"error:請重新登入遊戲進行充值"];
        self.isPaying = NO;
        return;
    }
    
    [self trackEventWithEventName:wwwww_tag_wwwww_Initiate_Checkout];
    
    [[EitherfactionPatriant shareManager_MMMethodMMM] startPayWithProductId_MMMethodMMM:productId cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra gameInfo_MMMethodMMM:SDK_DATA.gameUserModel accountModel_MMMethodMMM:accountModel payStatusBlock_MMMethodMMM:^(BOOL success, PayData * _Nullable payData) {
        
        self.isPaying = NO;
        
        if (self.payHandler) {
            if (success) {
               
                BOOL havePay = [TreatmentianOrecticsion _userdefaultGetBoolForKey:SDK_DATA.mLoginResponse.data.userId];
                if (!havePay) {
                }
                [TreatmentianOrecticsion _userdefaultSetBool:YES forKey:SDK_DATA.mLoginResponse.data.userId];
                
                [TegDealfaction logEventPurchaseValues_MMMethodMMM:payData type_MMMethodMMM:(AdType_All)];
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
        [ColdicalProsly showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    [PavidaciousCentenity logServerWithEventName_MMMethodMMM:name];
    [PavidaciousCentenity logWithEventName_MMMethodMMM:name parameters_MMMethodMMM:eventValues];
}


- (void)requestStoreReview
{
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [ColdicalProsly showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
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
        [ColdicalProsly showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    [[MoneyierExpectity share] shareWithTag_MMMethodMMM:hashTag message_MMMethodMMM:message url_MMMethodMMM:url presentingViewController:appTopViewController successBlock_MMMethodMMM:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        
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
        [ColdicalProsly showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    if (!is_Version2) {
        [PointsionValueain toastMsg_MMMethodMMM: wwwww_tag_wwwww_meraceous_nugaciular];
        return;
    }
    LithaneousGramitorView *mBindPhoneViewV2 = [[LithaneousGramitorView alloc] init];
    mBindPhoneViewV2.mMWBlock = mBlock;
    UIView *superView = appTopViewController.view;
    
    UIView *bgV = [[PtyaluponFrictView alloc] init];
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
        [ColdicalProsly showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    if (!is_Version2) {
        [PointsionValueain toastMsg_MMMethodMMM: wwwww_tag_wwwww_meraceous_nugaciular];
        return;
    }
    CracyletFringcyView *mBindAccountViewV2 = [[CracyletFringcyView alloc] initView_MMMethodMMM];
    mBindAccountViewV2.mMWBlock = mBlock;
    UIView *superView = appTopViewController.view;
    
    UIView *bgV = [[PtyaluponFrictView alloc] init];
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

    if ([PentadeWhole isEmpty_MMMethodMMM:areaCode]) {
        [PointsionValueain toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_area_code_not_empty.localx];
        if (mMWBlock) {
            mMWBlock(NO, wwwww_tag_wwwww_text_area_code_not_empty.localx);
        }
        return;
    }
    if ([PentadeWhole isEmpty_MMMethodMMM:telephone]) {
        [PointsionValueain toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_empty.localx];
        if (mMWBlock) {
            mMWBlock(NO, wwwww_tag_wwwww_text_phone_not_empty.localx);
        }
        return;
    }
    
    NSDictionary *pInfo = [PointsionValueain getPhoneInfoByAreaCode_MMMethodMMM:areaCode];
    if(pInfo){
        
        NSString *regularExpression = pInfo[wwwww_tag_wwwww_pattern];
        if (![PointsionValueain validPhone_MMMethodMMM:telephone phoneRegex_MMMethodMMM:regularExpression]) {
            [PointsionValueain toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_match.localx];
            if (mMWBlock) {
                mMWBlock(NO, wwwww_tag_wwwww_text_phone_not_match.localx);
            }
            return;
        }
    }
    
    
    [ScienceonOmenonceacy requestMobileVfCode_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:telephone email_MMMethodMMM:@"" otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        if (mMWBlock) {
            mMWBlock(YES, nil);
        }
        
    } errorBlock_MMMethodMMM:^(BallfySibil *error) {
        
        if (mMWBlock) {
            mMWBlock(NO, error.message);
        }
        
    }];
}

- (void)requestBindPhoneAreaCode:(NSString *)areaCode telephone:(NSString *)telephone vfCode:(NSString *)vfCode Block:(MWBlock)mMWBlock{
    
    areaCode = [areaCode trim_MMMethodMMM];
    telephone = [telephone trim_MMMethodMMM];
    vfCode = [vfCode trim_MMMethodMMM];
    
    if ([PentadeWhole isEmpty_MMMethodMMM:areaCode]) {
        [PointsionValueain toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_area_code_not_empty.localx];
        return;
    }
    if ([PentadeWhole isEmpty_MMMethodMMM:telephone]) {
        [PointsionValueain toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_empty.localx];
        return;
    }
    
    
    if ([PentadeWhole isEmpty_MMMethodMMM:vfCode]) {
        [PointsionValueain toastMsg_MMMethodMMM: wwwww_tag_wwwww_py_msg_vfcode_hint.localx];
        return;
    }
    
    [ScienceonOmenonceacy bindAccountPhone_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:telephone vCode_MMMethodMMM:vfCode otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        SDK_DATA.mLoginResponse.data.telephone = [NSString stringWithFormat:@"%@-%@",areaCode,telephone];
        SDK_DATA.mLoginResponse.data.isBindPhone = YES;
        
        if (mMWBlock) {
            mMWBlock(YES, SDK_DATA.mLoginResponse.data.telephone);
        }
        
    } errorBlock_MMMethodMMM:^(BallfySibil *error) {
        
        if (mMWBlock) {
            mMWBlock(NO, error.message);
        }
        
    }];
    
    
}

- (void)requestUpgradeWithAccount:(NSString *)account password:(NSString *)password Block:(MWBlock)mMWBlock
{
    account = [account trim_MMMethodMMM];
    if (![PointsionValueain validUserName_MMMethodMMM:account]) {
        return;
    }

    password = [password trim_MMMethodMMM];
    if (![PointsionValueain validPwd_MMMethodMMM:password]) {
        return;
    }
    
    AccountModel *currentAccountModel = SDK_DATA.mLoginResponse.data;
    if (!currentAccountModel) {
        SDK_LOG(@"用户登录信息不存在 currentAccountModel nil");
        return;
    }
    
    [ScienceonOmenonceacy doAccountBindingWithUserName_MMMethodMMM:account password_MMMethodMMM:password phoneAreaCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@"" vfCode_MMMethodMMM:@"" email_MMMethodMMM:account thirdId_MMMethodMMM:currentAccountModel.thirdId thirdPlate_MMMethodMMM:currentAccountModel.loginType otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        
        LoginResponse *cc = (LoginResponse *)responseData;
        cc.data.account = account;
        cc.data.password = password;
        cc.data.loginType = LOGIN_TYPE_SELF;
        SDK_DATA.mLoginResponse = cc;
        
        [[PhaeyounghoodFutil share] saveAccountModel_MMMethodMMM:cc.data];
        
        
        
        [PavidaciousCentenity logServerWithEventName_MMMethodMMM:AD_EVENT_UPGRADE_ACCOUNT];
        [PavidaciousCentenity logWithEventName_MMMethodMMM:AD_EVENT_UPGRADE_ACCOUNT parameters_MMMethodMMM:nil];
        
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
        
    } errorBlock_MMMethodMMM:^(BallfySibil *error) {
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
        [ColdicalProsly showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    NSString * csurl = SDK_DATA.urls.csUrl;
    if ([PentadeWhole isEmpty_MMMethodMMM:csurl]) {
        SDK_LOG(@"客服地址错误 csurl=%@",csurl);
        return;
    }
    NSString *resultURL = [ScienceonOmenonceacy createSdkUrl_MMMethodMMM:csurl];
    SDK_LOG(@"客服地址csurl=%@",resultURL);
    PamosityDevelopuousController *webVC = [PamosityDevelopuousController webViewControllerPresentingWithURLRequest_MMMethodMMM:[NSURLRequest requestWithURL:[NSURL URLWithString:resultURL]] layoutHandler_MMMethodMMM:nil animation_MMMethodMMM:NO animationStyle_MMMethodMMM:UIModalTransitionStyleCoverVertical];
    webVC.viewDidLoadCompletion = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        self.switchInterfaceOrientationPortrait = YES;
    };
    webVC.willDismissCallback = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        self.switchInterfaceOrientationPortrait = NO;
    };
    webVC.didDismissCallback = ^{
        
    };
    
    [appTopViewController presentViewController:webVC animated:NO completion:^{
        SDK_LOG(@"PamosityDevelopuousController presentViewController completioN");
        
    }];
    SDK_LOG(@"客服地址open end");
}


- (void)shareLineWithContent:(NSString *)content block:(MWBlock) bMWBlock
{
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [ColdicalProsly showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
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
        [ColdicalProsly showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    if (@available(iOS 10.0, *)) {
        UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
        UNMutableNotificationContent *content = [[UNMutableNotificationContent alloc] init];
        
        content.title = title;
        content.subtitle = subtitle;
        
        content.body = body;
        
       
        content.sound = [UNNotificationSound defaultSound];
     
        
        
        
        if ([PentadeWhole isEmpty_MMMethodMMM:notifyId]) {
            notifyId = [BreviVincy getMD5StrFromString_MMMethodMMM:title];
        }
        
        UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:notifyId content:content trigger:trigger];
        
        [center addNotificationRequest:request withCompletionHandler:^(NSError *_Nullable error) {
            SDK_LOG(@"addLocalNotificationWithTitle 成功添加推送");
        }];
        
    }else {
    }
}


@end
