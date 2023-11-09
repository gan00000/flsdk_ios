#import "MWSDK.h"

#import "IndiianLeastial.h"
#import "ApstatementaneousPraeicsController.h"
#import "ArchaeitiveCivilant.h"
#import "DemocratficationNeedern.h"

#import <objc/runtime.h>
#import <objc/message.h>

#import "ProtectialWeaponate.h"

#import "PlandomThoughar.h"
#import "GonoenceSayling.h"
#import "NausaveageLabororium.h"
#import "IndiianLeastial.h"

#import "StopitiousOdiseView.h"
#import "RecentityHiementView.h"
#import "QuindecimenneResearchuleView.h"

#import "CutaneityRot.h"
#import "TenenneWeekController.h"
#import "OniseUsuallyetView.h"
#import <StoreKit/StoreKit.h>
#import "SendiseOptimpresentmost.h"
#import "CreateOrderResp.h"
#import "InardPhylactoView.h"
#import "ChromallySolveryView.h"
#import "NonagenculturaliteOmenableView.h"

#import "VerticGoalialController.h"
#import "CommonPhloeatorController.h"

#ifdef SDK_KR
#import "ClaustreastwiseThusade.h"
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
    [CutaneityRot application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    BOOL result = [PlandomThoughar application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    
    return result;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary *)options
{
    SDK_LOG(@"ios9 and later = application openURL options，openURL:%@", [url absoluteString]);
    [CutaneityRot application:application openURL:url options:options];
    BOOL result = [PlandomThoughar application:application openURL:url options:options];
    if (!result) {
        result = [GonoenceSayling application:application openURL:url options:options];
    }
    
    if (!result) {
        result = [SendiseOptimpresentmost application:application openURL:url options:options];
    }
    
#ifdef SDK_KR
    if (!result) {
        result = [[ClaustreastwiseThusade share] application:application openURL:url options:options];
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
    
    NSArray *infoUISupportedInterfaceOrientations_aar = [ArchaeitiveCivilant getProjectInfoPlist_MMMethodMMM][@"UISupportedInterfaceOrientations"];
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
        [StrigLevelule showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    self.loginCompletionHandler = cmopleteHandler;
    
#ifdef SDK_KR
    
    if([InardPhylactoView isShowTerm_MMMethodMMM]){
        
        if (is_Version2 && SDK_DATA.mConfigModel.showNotice) {
            
            [self showNoticeView];
            
        }else{
            [self sdkLoginWithHandlerForInner];
        }
        
    }else{
        [self showTermViewWithBlock_MMMethodMMM];
    }
   

#else
    
    if (is_Version2 && SDK_DATA.mConfigModel.showNotice) {
        
        [self showNoticeView];
        
    }else{
        [self sdkLoginWithHandlerForInner];
    }
    
#endif
    
    
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
    ApstatementaneousPraeicsController *controller = [[ApstatementaneousPraeicsController alloc] initWithPageType_MMMethodMMM:(SDKPage_Login)];
    
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
    
    [[ArchaeitiveCivilant getCurrentViewController_MMMethodMMM] presentViewController: controller animated:NO completion:^{
        
    }];
    
}


-(void)showNoticeView
{
    StopitiousOdiseView *mNoticeViewV2 = [[StopitiousOdiseView alloc] initWithCompleter_MMMethodMMM:^{
        
        [self sdkLoginWithHandlerForInner];
    }];
    
    UIView *superView = appTopViewController.view;
    UIView *bgV = [[OniseUsuallyetView alloc] init];
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
    
    
    if ([DemocratficationNeedern isEmpty_MMMethodMMM:roleId]  ||
        [DemocratficationNeedern isEmpty_MMMethodMMM:serverCode])
    {
        SDK_LOG(@"角色重要信息为空,请检查参数中 roleId roleName roleLevel serverCode是否有值");
        return;
    }
    
    
    [self setRoleInfoWithRoleId_Inner:roleId roleName:roleName roleLevel:roleLevel roleVipLevel:roleVipLevel serverCode:serverCode serverName:serverName];
    
    if(!self.showAct){
        [self requestShowActView];
    }
    
}

- (void)setRoleInfoWithRoleId_Inner:(NSString *)roleId
                     roleName:(NSString *)roleName
                    roleLevel:(NSString *)roleLevel
                 roleVipLevel:(NSString *)roleVipLevel
                   serverCode:(NSString *)serverCode
                   serverName:(NSString *)serverName
{
    
    SDK_LOG(@"setRoleInfo角色信息：roleID = %@，roleName = %@，roleLevel = %@，roleVipLevel = %@，serverCode = %@，serverName = %@",
            roleId,roleName,roleLevel,roleVipLevel,serverCode,serverName);
    
    
    if ([DemocratficationNeedern isEmpty_MMMethodMMM:roleId]  ||
        [DemocratficationNeedern isEmpty_MMMethodMMM:serverCode])
    {
        SDK_LOG(@"角色重要信息为空,请检查参数中 roleId roleName roleLevel serverCode是否有值");
        return;
    }
    
    SDK_DATA.gameUserModel.roleID = roleId ? : @"";
    SDK_DATA.gameUserModel.roleName = roleName ? : @"";
    SDK_DATA.gameUserModel.roleLevel = roleLevel ? : @"";
    SDK_DATA.gameUserModel.roleVipLevel = roleVipLevel ? : @"";
    SDK_DATA.gameUserModel.serverCode = serverCode ? : @"";
    SDK_DATA.gameUserModel.serverName = serverName ? : @"";
    
}

- (void)startIapPay_MMMethodMMM:(AccountModel *)accountModel cpOrderId_MMMethodMMM:(NSString *)cpOrderId extra_MMMethodMMM:(NSString *)extra productId_MMMethodMMM:(NSString *)productId {
    [[NausaveageLabororium shareManager_MMMethodMMM] startPayWithProductId_MMMethodMMM:productId cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra gameInfo_MMMethodMMM:SDK_DATA.gameUserModel accountModel_MMMethodMMM:accountModel payStatusBlock_MMMethodMMM:^(BOOL success, PayData * _Nullable payData) {
        
        self.isPaying = NO;
        
        if (self.payHandler) {
            if (success) {
                
                BOOL havePay = [ReachableRetroable _userdefaultGetBoolForKey:SDK_DATA.mLoginResponse.data.userId];
                if (!havePay) {
                    
                }
                [ReachableRetroable _userdefaultSetBool:YES forKey:SDK_DATA.mLoginResponse.data.userId];
                
                [CutaneityRot logEventPurchaseValues_MMMethodMMM:payData type_MMMethodMMM:(AdType_All)];
                self.payHandler(SDK_PAY_STATUS_SUCCESS, payData);
                
                
            }else{
                self.payHandler(SDK_PAY_STATUS_FAIL, nil);
            }
        }
        
    }];
}

- (void)startMySdkPay_MMMethodMMM:(AccountModel *)accountModel cpOrderId_MMMethodMMM:(NSString *)cpOrderId extra_MMMethodMMM:(NSString *)extra productId_MMMethodMMM:(NSString *)productId
{
    SDK_LOG(@"startMySdkPay...");
    
    NSString * myPayUrl = GetConfigString(@"sdk_other_ppp_url");
    if ([DemocratficationNeedern isEmpty_MMMethodMMM:myPayUrl]) {
        SDK_LOG(@"startMySdkPay myPayUrl=%@",myPayUrl);
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
        NSLog(@"exception:%@",exception.description);
    }
    
    NSString *resultURL = [ProtectialWeaponate createSdkUrl_MMMethodMMM:myPayUrl otherDic_MMMethodMMM:dic];
    SDK_LOG(@"startMySdkPay myPayUrl=%@",resultURL);
    TenenneWeekController *webVC = [TenenneWeekController webViewControllerPresentingWithURLRequest_MMMethodMMM:[NSURLRequest requestWithURL:[NSURL URLWithString:resultURL]] isShowTitle_MMMethodMMM:YES animation_MMMethodMMM:NO animationStyle_MMMethodMMM:UIModalTransitionStyleCoverVertical];
    webVC.viewDidLoadCompletion = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        self.switchInterfaceOrientationPortrait = YES;
    };
    webVC.willDismissCallback = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        self.switchInterfaceOrientationPortrait = NO;
    };
    webVC.didDismissCallback = ^{
        
    };
    
    [appTopViewController presentViewController:webVC animated:NO completion:^{
        SDK_LOG(@"TenenneWeekController presentViewController completioN");
        
    }];
    SDK_LOG(@"startMySdkPay open end");
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
        [StrigLevelule showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    SDK_LOG(@"储值接口传入的参数 ：roleId : %@ , serverCode : %@ , roleName : %@",roleId,serverCode,roleName);
    SDK_LOG(@"储值接口传入的参数 ：productid : %@ , cpOrderId : %@ , extra : %@",productId,cpOrderId,extra);
    
    if ([DemocratficationNeedern isEmpty_MMMethodMMM:productId]) {
        [StrigLevelule showAlertWithMessage_MMMethodMMM:@"productId must be not empty"];
        return;
    }
    if ([DemocratficationNeedern isEmpty_MMMethodMMM:roleId]) {
        [StrigLevelule showAlertWithMessage_MMMethodMMM:@"roleId must be not empty"];
        return;
    }
    if ([DemocratficationNeedern isEmpty_MMMethodMMM:serverCode]) {
        [StrigLevelule showAlertWithMessage_MMMethodMMM:@"serverCode must be not empty"];
        return;
    }
    if ([DemocratficationNeedern isEmpty_MMMethodMMM:cpOrderId]) {
        [StrigLevelule showAlertWithMessage_MMMethodMMM:@"cpOrderId must be not empty"];
        return;
    }
    
    if (self.isPaying) {
        SDK_LOG(wwwww_tag_wwwww_gloriistic_diamisslike);
        return;
    }
    self.isPaying = YES;
    
    [self setRoleInfoWithRoleId_Inner:roleId roleName:roleName roleLevel:roleLevel roleVipLevel:roleVipLevel serverCode:serverCode serverName:serverName];
    
    self.payHandler = handler;
    
    LoginResponse *sLoginResponse = SDK_DATA.mLoginResponse;
    AccountModel *accountModel = sLoginResponse.data;
    
    if (!accountModel || !accountModel.userId) {
        [StrigLevelule showAlertWithMessage_MMMethodMMM:@"error:請重新登入遊戲進行充值"];
        self.isPaying = NO;
        return;
    }
    
    [self trackEventWithEventName:wwwww_tag_wwwww_Initiate_Checkout];
    self.isPaying = NO;
    if(SDK_DATA.mConfigModel.togglePay){
        
        [QuartaciousForwardization showLoadingAtView_MMMethodMMM:nil];
        [ProtectialWeaponate checkPayChannelWithSuccessBlock_MMMethodMMM:productId cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra gameInfo_MMMethodMMM:SDK_DATA.gameUserModel accountModel_MMMethodMMM:accountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
            
            [QuartaciousForwardization stopLoadingAtView_MMMethodMMM:nil];
            
            if(responseData){
                CreateOrderResp *cor = (CreateOrderResp *)responseData;
                if(cor.isTogglePay){
                    
                    if(cor.hideSelectChannel){
                        
                        [self startMySdkPay_MMMethodMMM:accountModel cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra productId_MMMethodMMM:productId];
                    }else{
                        
                        UIView *superView = appTopViewController.view;
                        UIView *bgV = [[OniseUsuallyetView alloc] init];
                        [superView addSubview:bgV];
                        [bgV mas_makeConstraints:^(MASConstraintMaker *make) {
                            make.edges.mas_equalTo(superView);
                        }];
                        
                        ChromallySolveryView *mSelectPayChannelView = [[ChromallySolveryView alloc] init];
                        mSelectPayChannelView.mCallBack = ^(NSString *msg, NSInteger tag, NSDictionary *dic) {
                            
                            switch (tag) {
                               
                                case TAG_PAY_CHANNEL_OTHER:
                                    [self startMySdkPay_MMMethodMMM:accountModel cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra productId_MMMethodMMM:productId];
                                    [self trackEventWithEventName:AD_EVENT_SELECT_OTHER];
                                    break;
                                    
                                case TAG_PAY_CHANNEL_APPLE:
                                    [self startIapPay_MMMethodMMM:accountModel cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra productId_MMMethodMMM:productId];
                                    [self trackEventWithEventName:AD_EVENT_SELECT_APPLE];
                                    break;
                                    
                                case TAG_CLOSE:
                                    break;
                                default:
                                    break;
                            }
                            [bgV removeFromSuperview];
                        };
                        
                        [bgV addSubview:mSelectPayChannelView];
                        [mSelectPayChannelView mas_makeConstraints:^(MASConstraintMaker *make) {
                            make.edges.mas_equalTo(bgV);
                        }];
                        
                    }
                    return;
                }
            }
            
            [self startIapPay_MMMethodMMM:accountModel cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra productId_MMMethodMMM:productId];
            
        } errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
            
            [QuartaciousForwardization stopLoadingAtView_MMMethodMMM:nil];
            
            [self startIapPay_MMMethodMMM:accountModel cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra productId_MMMethodMMM:productId];
        }];
        return;
    }
    
    [self startIapPay_MMMethodMMM:accountModel cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra productId_MMMethodMMM:productId];
    
}

- (void)trackEventWithEventName:(NSString *)name{
    [self trackEventWithEventName:name eventValues:nil];
}

- (void)trackEventWithEventName:(NSString *)name eventValues:(NSDictionary<NSString * , id> * _Nullable)eventValues
{
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [StrigLevelule showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    [IndiianLeastial logServerWithEventName_MMMethodMMM:name];
    [IndiianLeastial logWithEventName_MMMethodMMM:name parameters_MMMethodMMM:eventValues];
}


- (void)requestStoreReview
{
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [StrigLevelule showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
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
        [StrigLevelule showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    [[PlandomThoughar share] shareWithTag_MMMethodMMM:hashTag message_MMMethodMMM:message url_MMMethodMMM:url presentingViewController:appTopViewController successBlock_MMMethodMMM:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        
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
        [StrigLevelule showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    if (!is_Version2) {
        [QuartaciousForwardization toastMsg_MMMethodMMM: wwwww_tag_wwwww_meraceous_nugaciular];
        return;
    }
    RecentityHiementView *mBindPhoneViewV2 = [[RecentityHiementView alloc] init];
    mBindPhoneViewV2.mMWBlock = mBlock;
    UIView *superView = appTopViewController.view;
    
    UIView *bgV = [[OniseUsuallyetView alloc] init];
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
        [StrigLevelule showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    if (!is_Version2) {
        [QuartaciousForwardization toastMsg_MMMethodMMM: wwwww_tag_wwwww_meraceous_nugaciular];
        return;
    }
    QuindecimenneResearchuleView *mBindAccountViewV2 = [[QuindecimenneResearchuleView alloc] initView_MMMethodMMM];
    mBindAccountViewV2.mMWBlock = mBlock;
    UIView *superView = appTopViewController.view;
    
    UIView *bgV = [[OniseUsuallyetView alloc] init];
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

    if ([DemocratficationNeedern isEmpty_MMMethodMMM:areaCode]) {
        [QuartaciousForwardization toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_area_code_not_empty.localx];
        if (mMWBlock) {
            mMWBlock(NO, wwwww_tag_wwwww_text_area_code_not_empty.localx);
        }
        return;
    }
    if ([DemocratficationNeedern isEmpty_MMMethodMMM:telephone]) {
        [QuartaciousForwardization toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_empty.localx];
        if (mMWBlock) {
            mMWBlock(NO, wwwww_tag_wwwww_text_phone_not_empty.localx);
        }
        return;
    }
    
    NSDictionary *pInfo = [QuartaciousForwardization getPhoneInfoByAreaCode_MMMethodMMM:areaCode];
    if(pInfo){
        
        NSString *regularExpression = pInfo[wwwww_tag_wwwww_pattern];
        if (![QuartaciousForwardization validPhone_MMMethodMMM:telephone phoneRegex_MMMethodMMM:regularExpression]) {
            [QuartaciousForwardization toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_match.localx];
            if (mMWBlock) {
                mMWBlock(NO, wwwww_tag_wwwww_text_phone_not_match.localx);
            }
            return;
        }
    }
    
    
    [ProtectialWeaponate requestMobileVfCode_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:telephone email_MMMethodMMM:@"" otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        if (mMWBlock) {
            mMWBlock(YES, nil);
        }
        
    } errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
        
        if (mMWBlock) {
            mMWBlock(NO, error.message);
        }
        
    }];
}

- (void)requestBindPhoneAreaCode:(NSString *)areaCode telephone:(NSString *)telephone vfCode:(NSString *)vfCode Block:(MWBlock)mMWBlock{
    
    areaCode = [areaCode trim_MMMethodMMM];
    telephone = [telephone trim_MMMethodMMM];
    vfCode = [vfCode trim_MMMethodMMM];
    
    if ([DemocratficationNeedern isEmpty_MMMethodMMM:areaCode]) {
        [QuartaciousForwardization toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_area_code_not_empty.localx];
        return;
    }
    if ([DemocratficationNeedern isEmpty_MMMethodMMM:telephone]) {
        [QuartaciousForwardization toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_empty.localx];
        return;
    }
    
    
    if ([DemocratficationNeedern isEmpty_MMMethodMMM:vfCode]) {
        [QuartaciousForwardization toastMsg_MMMethodMMM: wwwww_tag_wwwww_py_msg_vfcode_hint.localx];
        return;
    }
    
    [ProtectialWeaponate bindAccountPhone_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:telephone vCode_MMMethodMMM:vfCode otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        SDK_DATA.mLoginResponse.data.telephone = [NSString stringWithFormat:@"%@-%@",areaCode,telephone];
        SDK_DATA.mLoginResponse.data.isBindPhone = YES;
        
        if (mMWBlock) {
            mMWBlock(YES, SDK_DATA.mLoginResponse.data.telephone);
        }
        
    } errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
        
        if (mMWBlock) {
            mMWBlock(NO, error.message);
        }
        
    }];
    
    
}

- (void)requestUpgradeWithAccount:(NSString *)account password:(NSString *)password Block:(MWBlock)mMWBlock
{
    account = [account trim_MMMethodMMM];
    if (![QuartaciousForwardization validUserName_MMMethodMMM:account]) {
        return;
    }

    password = [password trim_MMMethodMMM];
    if (![QuartaciousForwardization validPwd_MMMethodMMM:password]) {
        return;
    }
    
    AccountModel *currentAccountModel = SDK_DATA.mLoginResponse.data;
    if (!currentAccountModel) {
        SDK_LOG(@"用户登录信息不存在 currentAccountModel nil");
        return;
    }
    
    [ProtectialWeaponate doAccountBindingWithUserName_MMMethodMMM:account password_MMMethodMMM:password phoneAreaCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@"" vfCode_MMMethodMMM:@"" email_MMMethodMMM:account thirdId_MMMethodMMM:currentAccountModel.thirdId thirdPlate_MMMethodMMM:currentAccountModel.loginType otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        
        LoginResponse *cc = (LoginResponse *)responseData;
        cc.data.account = account;
        cc.data.password = password;
        cc.data.loginType = LOGIN_TYPE_SELF;
        SDK_DATA.mLoginResponse = cc;
        
        [[AatorTrusular share] saveAccountModel_MMMethodMMM:cc.data];
        
        
        
        [IndiianLeastial logServerWithEventName_MMMethodMMM:AD_EVENT_UPGRADE_ACCOUNT];
        [IndiianLeastial logWithEventName_MMMethodMMM:AD_EVENT_UPGRADE_ACCOUNT parameters_MMMethodMMM:nil];
        
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
        
    } errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
        if (mMWBlock) {
            mMWBlock(NO, error.message);
        }
    }];
    
}

- (void)openCsWithRoleId:(NSString *)roleId
                 roleName:(NSString *)roleName
                roleLevel:(NSString *)roleLevel
             roleVipLevel:(NSString *)roleVipLevel
               serverCode:(NSString *)serverCode
               serverName:(NSString *)serverName
{
    
    if ([DemocratficationNeedern isEmpty_MMMethodMMM:roleId]) {
        [StrigLevelule showAlertWithMessage_MMMethodMMM:@"roleId must be not empty"];
        return;
    }
    if ([DemocratficationNeedern isEmpty_MMMethodMMM:serverCode]) {
        [StrigLevelule showAlertWithMessage_MMMethodMMM:@"serverCode must be not empty"];
        return;
    }
    
    [self setRoleInfoWithRoleId_Inner:roleId roleName:roleName roleLevel:roleLevel roleVipLevel:roleVipLevel serverCode:serverCode serverName:serverName];
    
    [self openCs];
    
}

- (void)openCs
{
    SDK_LOG(wwwww_tag_wwwww_openCs__);
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [StrigLevelule showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    [self openCsWithParams:nil];
}

- (void)openCsWithParams:(NSDictionary *)paramDic {
    NSString * csurl = SDK_DATA.urls.csUrl;
    if ([DemocratficationNeedern isEmpty_MMMethodMMM:csurl]) {
        SDK_LOG(@"客服地址错误 csurl=%@",csurl);
        return;
    }
    NSString *resultURL = [ProtectialWeaponate createSdkUrl_MMMethodMMM:csurl otherDic_MMMethodMMM:paramDic];
    SDK_LOG(@"客服地址csurl=%@",resultURL);
    TenenneWeekController *webVC = [TenenneWeekController webViewControllerPresentingWithURLRequest_MMMethodMMM:[NSURLRequest requestWithURL:[NSURL URLWithString:resultURL]] isShowTitle_MMMethodMMM:NO animation_MMMethodMMM:NO animationStyle_MMMethodMMM:UIModalTransitionStyleCoverVertical];
    webVC.view.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#3EB2FF"];
    
    webVC.isShowDefulatCloseBtn = YES;
    webVC.viewDidLoadCompletion = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        self.switchInterfaceOrientationPortrait = YES;
    };
    webVC.willDismissCallback = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        self.switchInterfaceOrientationPortrait = NO;
    };
    webVC.didDismissCallback = ^{
        
    };
    
    [appTopViewController presentViewController:webVC animated:NO completion:^{
        SDK_LOG(@"TenenneWeekController presentViewController completioN");
        
    }];
    SDK_LOG(@"客服地址open end");
}

- (void)shareLineWithContent:(NSString *)content block:(MWBlock) bMWBlock
{
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [StrigLevelule showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    if(![[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"line://"]]){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/app/line/id443904275"]];
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
        [StrigLevelule showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    if (@available(iOS 10.0, *)) {
        UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
        UNMutableNotificationContent *content = [[UNMutableNotificationContent alloc] init];
        
        content.title = title;
        content.subtitle = subtitle;
        
        content.body = body;
        
       
        content.sound = [UNNotificationSound defaultSound];
     
        
        
        
        if ([DemocratficationNeedern isEmpty_MMMethodMMM:notifyId]) {
            notifyId = [ArchaeitiveCivilant getMD5StrFromString_MMMethodMMM:title];
        }
        
        UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:notifyId content:content trigger:trigger];
        
        [center addNotificationRequest:request withCompletionHandler:^(NSError *_Nullable error) {
            SDK_LOG(@"addLocalNotificationWithTitle 成功添加推送");
        }];
        
    }else {
    }
}

-(void)showTermViewWithBlock_MMMethodMMM
{

#ifdef SDK_KR
    InardPhylactoView *aTermsViewV2 = [[InardPhylactoView alloc] initWithCompleter_MMMethodMMM:^{
        
    }];
    
    UIView *superView = appTopViewController.view;
    
    UIView *bgV = [[OniseUsuallyetView alloc] init];
    [superView addSubview:bgV];
    [bgV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(superView);
    }];
    
    [bgV addSubview:aTermsViewV2];
    [aTermsViewV2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(bgV);
    }];
    
    aTermsViewV2.mCCallBack = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        
        [bgV removeFromSuperview];
        if (is_Version2 && SDK_DATA.mConfigModel.showNotice) {
            
            [self showNoticeView];
            
        }else{
            [self sdkLoginWithHandlerForInner];
        }
        
    };
    
#endif
}

-(void)showSocialView{
    
    UIView *superView = appTopViewController.view;
    
    UIView *bgV = [[OniseUsuallyetView alloc] init];
    [superView addSubview:bgV];
    [bgV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(superView);
    }];
    
    NonagenculturaliteOmenableView *mSocialBannerView = [[NonagenculturaliteOmenableView alloc] init];
    [bgV addSubview:mSocialBannerView];
    [mSocialBannerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(bgV);
    }];
    
}

- (void)showActView
{
    SDK_LOG(@"showActView");
    
    ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
    if(!mConfigModel.showMarket){
        [QuartaciousForwardization toastMsg_MMMethodMMM:@"This feature is not turned on"];
        return;
    }
    
    [QuartaciousForwardization showLoadingAtView_MMMethodMMM:nil];
    [ProtectialWeaponate checkActSwitchWithSuccessBlock_MMMethodMMM:@"" otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        [QuartaciousForwardization stopLoadingAtView_MMMethodMMM:nil];
        [ProtectialWeaponate getActConfigWithSuccessBlock_MMMethodMMM:^(id responseData) {
            [QuartaciousForwardization stopLoadingAtView_MMMethodMMM:nil];
            
            UIViewController *actController;
            if(IS_PORTRAIT){
                VerticGoalialController *mExposureController = [[VerticGoalialController alloc] initWithNibName:XIB_ExposureController bundle:SDK_BUNDLE];
                mExposureController.expoModelArry = responseData;
                actController = mExposureController;
            }else{
                CommonPhloeatorController *mExposureHorControllerViewController = [[CommonPhloeatorController alloc] initWithNibName:XIB_ExposureHorControllerViewController bundle:SDK_BUNDLE];
                mExposureHorControllerViewController.expoModelArry = responseData;
                actController = mExposureHorControllerViewController;
            }
            
            SDK_LOG(@"controller setModalPresentationStyle:UIModalPresentationOverCurrentContext");
            [actController setModalPresentationStyle:UIModalPresentationOverFullScreen];
            [[ArchaeitiveCivilant getCurrentViewController_MMMethodMMM] presentViewController: actController animated:NO completion:^{
                
            }];
            
        } errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
            
            [QuartaciousForwardization toastMsg_MMMethodMMM:@"This feature is not turned on"];
        }];
        
        
    } errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
        
        [QuartaciousForwardization stopLoadingAtView_MMMethodMMM:nil];
        [QuartaciousForwardization toastMsg_MMMethodMMM:@"This feature is not turned on"];
    }];
    
}

- (void)requestShowActView
{
    SDK_LOG(@"requestShowActView");
    
    ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
    if(!mConfigModel.showMarket){
        self.showAct = NO;
        return;
    }
    
    [ProtectialWeaponate checkActSwitchWithSuccessBlock_MMMethodMMM:@"" otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        self.showAct = YES;
                
    } errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
        self.showAct = NO;
    }];
    
}

- (NSString *)deSdkString:(NSString *)data
{
    return [SDKRES decryptAllStringContent_MMMethodMMM:data];
}

@end
