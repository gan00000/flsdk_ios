#import "MWSDK.h"

#import "ApenneCetersive.h"
#import "CoelAlonearyController.h"
#import "SchemOnymen.h"
#import "MelanisticSebiition.h"

#import <objc/runtime.h>
#import <objc/message.h>

#import "SpringSecond.h"

#import "GirlthHen.h"
#import "TraistIdea.h"
#import "BetterabilityTac.h"
#import "ApenneCetersive.h"

#import "AdmitlingOpacficationView.h"
#import "EightryGroupuousView.h"
#import "LexfoldMuscisticView.h"

#import "CrucieousCili.h"
#import "EtharmficCauliileController.h"
#import "CivilativeFutilView.h"
#import <StoreKit/StoreKit.h>
#import "DuringacleCaulimomentful.h"
#import "CreateOrderResp.h"
#import "SquamierFrainespeciallysomeView.h"
#import "VeriPhylacacityView.h"
#import "WaterardFidiseView.h"

#import "MissfoldPitcourseardController.h"
#import "WeightObsressController.h"

#ifdef SDK_KR
#import "OfosityVivance.h"
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
    [CrucieousCili application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    BOOL result = [GirlthHen application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    
    return result;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary *)options
{
    SDK_LOG(@"ios9 and later = application openURL options，openURL:%@", [url absoluteString]);
    [CrucieousCili application:application openURL:url options:options];
    BOOL result = [GirlthHen application:application openURL:url options:options];
    if (!result) {
        result = [TraistIdea application:application openURL:url options:options];
    }
    
    if (!result) {
        result = [DuringacleCaulimomentful application:application openURL:url options:options];
    }
    
#ifdef SDK_KR
    if (!result) {
        result = [[OfosityVivance share] application:application openURL:url options:options];
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
    
    NSArray *infoUISupportedInterfaceOrientations_aar = [SchemOnymen getProjectInfoPlist_MMMethodMMM][@"UISupportedInterfaceOrientations"];
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
    _shareSP.sdkBaseEncryptKey = @"wxsdk-vn2023";
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
        [HalioTractless showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    self.loginCompletionHandler = cmopleteHandler;
    
#ifdef SDK_KR
    
    if([SquamierFrainespeciallysomeView isShowTerm_MMMethodMMM]){
        
        if (is_Version2 && SDK_DATA.mConfigModel.showNotice) {
            
            [self showNoticeView];
            
        }else{
            [self sdkLoginWithHandlerForInner];
        }
        
    }else{
        [self showTermViewWithBlock];
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
    CoelAlonearyController *controller = [[CoelAlonearyController alloc] initWithPageType_MMMethodMMM:(SDKPage_Login)];
    
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
    
    [[SchemOnymen getCurrentViewController_MMMethodMMM] presentViewController: controller animated:NO completion:^{
        
    }];
    
}


-(void)showNoticeView
{
    AdmitlingOpacficationView *mNoticeViewV2 = [[AdmitlingOpacficationView alloc] initWithCompleter_MMMethodMMM:^{
        
        [self sdkLoginWithHandlerForInner];
    }];
    
    UIView *superView = appTopViewController.view;
    UIView *bgV = [[CivilativeFutilView alloc] init];
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
    
    
    if ([MelanisticSebiition isEmpty_MMMethodMMM:roleId]  ||
        [MelanisticSebiition isEmpty_MMMethodMMM:serverCode])
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
    [[BetterabilityTac shareManager_MMMethodMMM] startPayWithProductId_MMMethodMMM:productId cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra gameInfo_MMMethodMMM:SDK_DATA.gameUserModel accountModel_MMMethodMMM:accountModel payStatusBlock_MMMethodMMM:^(BOOL success, PayData * _Nullable payData) {
        
        self.isPaying = NO;
        
        if (self.payHandler) {
            if (success) {
                
                BOOL havePay = [DoxhoodAsure _userdefaultGetBoolForKey:SDK_DATA.mLoginResponse.data.userId];
                if (!havePay) {
                    
                }
                [DoxhoodAsure _userdefaultSetBool:YES forKey:SDK_DATA.mLoginResponse.data.userId];
                
                [CrucieousCili logEventPurchaseValues_MMMethodMMM:payData type_MMMethodMMM:(AdType_All)];
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
    if ([MelanisticSebiition isEmpty_MMMethodMMM:myPayUrl]) {
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
    
    NSString *resultURL = [SpringSecond createSdkUrl_MMMethodMMM:myPayUrl otherDic_MMMethodMMM:dic];
    SDK_LOG(@"startMySdkPay myPayUrl=%@",resultURL);
    EtharmficCauliileController *webVC = [EtharmficCauliileController webViewControllerPresentingWithURLRequest_MMMethodMMM:[NSURLRequest requestWithURL:[NSURL URLWithString:resultURL]] isShowTitle_MMMethodMMM:YES animation_MMMethodMMM:NO animationStyle_MMMethodMMM:UIModalTransitionStyleCoverVertical];
    webVC.viewDidLoadCompletion = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        self.switchInterfaceOrientationPortrait = YES;
    };
    webVC.willDismissCallback = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        self.switchInterfaceOrientationPortrait = NO;
    };
    webVC.didDismissCallback = ^{
        
    };
    
    [appTopViewController presentViewController:webVC animated:NO completion:^{
        SDK_LOG(@"EtharmficCauliileController presentViewController completioN");
        
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
        [HalioTractless showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    SDK_LOG(@"储值接口传入的参数 ：roleId : %@ , serverCode : %@ , roleName : %@",roleId,serverCode,roleName);
    SDK_LOG(@"储值接口传入的参数 ：productid : %@ , cpOrderId : %@ , extra : %@",productId,cpOrderId,extra);
    
    if ([MelanisticSebiition isEmpty_MMMethodMMM:productId]) {
        [HalioTractless showAlertWithMessage_MMMethodMMM:@"productId must be not empty"];
        return;
    }
    if ([MelanisticSebiition isEmpty_MMMethodMMM:roleId]) {
        [HalioTractless showAlertWithMessage_MMMethodMMM:@"roleId must be not empty"];
        return;
    }
    if ([MelanisticSebiition isEmpty_MMMethodMMM:serverCode]) {
        [HalioTractless showAlertWithMessage_MMMethodMMM:@"serverCode must be not empty"];
        return;
    }
    if ([MelanisticSebiition isEmpty_MMMethodMMM:cpOrderId]) {
        [HalioTractless showAlertWithMessage_MMMethodMMM:@"cpOrderId must be not empty"];
        return;
    }
    
    if (self.isPaying) {
        SDK_LOG(wwwww_tag_wwwww_gloriistic_diamisslike);
        return;
    }
    self.isPaying = YES;
    
    [self setRoleInfoWithRoleId:roleId roleName:roleName roleLevel:roleLevel roleVipLevel:roleVipLevel serverCode:serverCode serverName:serverName];
    
    self.payHandler = handler;
    
    LoginResponse *sLoginResponse = SDK_DATA.mLoginResponse;
    AccountModel *accountModel = sLoginResponse.data;
    
    if (!accountModel || !accountModel.userId) {
        [HalioTractless showAlertWithMessage_MMMethodMMM:@"error:請重新登入遊戲進行充值"];
        self.isPaying = NO;
        return;
    }
    
    [self trackEventWithEventName:wwwww_tag_wwwww_Initiate_Checkout];
    self.isPaying = NO;
    if(SDK_DATA.mConfigModel.togglePay){
        
        [SemblfactionShootot showLoadingAtView_MMMethodMMM:nil];
        [SpringSecond checkPayChannelWithSuccessBlock_MMMethodMMM:productId cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra gameInfo_MMMethodMMM:SDK_DATA.gameUserModel accountModel_MMMethodMMM:accountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
            
            [SemblfactionShootot stopLoadingAtView_MMMethodMMM:nil];
            
            if(responseData){
                CreateOrderResp *cor = (CreateOrderResp *)responseData;
                if(cor.isTogglePay){
                    
                    if(cor.hideSelectChannel){
                        
                        [self startMySdkPay_MMMethodMMM:accountModel cpOrderId_MMMethodMMM:cpOrderId extra_MMMethodMMM:extra productId_MMMethodMMM:productId];
                    }else{
                        
                        UIView *superView = appTopViewController.view;
                        UIView *bgV = [[CivilativeFutilView alloc] init];
                        [superView addSubview:bgV];
                        [bgV mas_makeConstraints:^(MASConstraintMaker *make) {
                            make.edges.mas_equalTo(superView);
                        }];
                        
                        VeriPhylacacityView *mSelectPayChannelView = [[VeriPhylacacityView alloc] init];
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
            
        } errorBlock_MMMethodMMM:^(OntoingUliginpmier *error) {
            
            [SemblfactionShootot stopLoadingAtView_MMMethodMMM:nil];
            
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
        [HalioTractless showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    [ApenneCetersive logServerWithEventName_MMMethodMMM:name];
    [ApenneCetersive logWithEventName_MMMethodMMM:name parameters_MMMethodMMM:eventValues];
}


- (void)requestStoreReview
{
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [HalioTractless showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
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
        [HalioTractless showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    [[GirlthHen share] shareWithTag_MMMethodMMM:hashTag message_MMMethodMMM:message url_MMMethodMMM:url presentingViewController:appTopViewController successBlock_MMMethodMMM:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        
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
        [HalioTractless showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    if (!is_Version2) {
        [SemblfactionShootot toastMsg_MMMethodMMM: wwwww_tag_wwwww_meraceous_nugaciular];
        return;
    }
    EightryGroupuousView *mBindPhoneViewV2 = [[EightryGroupuousView alloc] init];
    mBindPhoneViewV2.mMWBlock = mBlock;
    UIView *superView = appTopViewController.view;
    
    UIView *bgV = [[CivilativeFutilView alloc] init];
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
        [HalioTractless showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    if (!is_Version2) {
        [SemblfactionShootot toastMsg_MMMethodMMM: wwwww_tag_wwwww_meraceous_nugaciular];
        return;
    }
    LexfoldMuscisticView *mBindAccountViewV2 = [[LexfoldMuscisticView alloc] initView_MMMethodMMM];
    mBindAccountViewV2.mMWBlock = mBlock;
    UIView *superView = appTopViewController.view;
    
    UIView *bgV = [[CivilativeFutilView alloc] init];
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

    if ([MelanisticSebiition isEmpty_MMMethodMMM:areaCode]) {
        [SemblfactionShootot toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_area_code_not_empty.localx];
        if (mMWBlock) {
            mMWBlock(NO, wwwww_tag_wwwww_text_area_code_not_empty.localx);
        }
        return;
    }
    if ([MelanisticSebiition isEmpty_MMMethodMMM:telephone]) {
        [SemblfactionShootot toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_empty.localx];
        if (mMWBlock) {
            mMWBlock(NO, wwwww_tag_wwwww_text_phone_not_empty.localx);
        }
        return;
    }
    
    NSDictionary *pInfo = [SemblfactionShootot getPhoneInfoByAreaCode_MMMethodMMM:areaCode];
    if(pInfo){
        
        NSString *regularExpression = pInfo[wwwww_tag_wwwww_pattern];
        if (![SemblfactionShootot validPhone_MMMethodMMM:telephone phoneRegex_MMMethodMMM:regularExpression]) {
            [SemblfactionShootot toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_match.localx];
            if (mMWBlock) {
                mMWBlock(NO, wwwww_tag_wwwww_text_phone_not_match.localx);
            }
            return;
        }
    }
    
    
    [SpringSecond requestMobileVfCode_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:telephone email_MMMethodMMM:@"" otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        if (mMWBlock) {
            mMWBlock(YES, nil);
        }
        
    } errorBlock_MMMethodMMM:^(OntoingUliginpmier *error) {
        
        if (mMWBlock) {
            mMWBlock(NO, error.message);
        }
        
    }];
}

- (void)requestBindPhoneAreaCode:(NSString *)areaCode telephone:(NSString *)telephone vfCode:(NSString *)vfCode Block:(MWBlock)mMWBlock{
    
    areaCode = [areaCode trim_MMMethodMMM];
    telephone = [telephone trim_MMMethodMMM];
    vfCode = [vfCode trim_MMMethodMMM];
    
    if ([MelanisticSebiition isEmpty_MMMethodMMM:areaCode]) {
        [SemblfactionShootot toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_area_code_not_empty.localx];
        return;
    }
    if ([MelanisticSebiition isEmpty_MMMethodMMM:telephone]) {
        [SemblfactionShootot toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_empty.localx];
        return;
    }
    
    
    if ([MelanisticSebiition isEmpty_MMMethodMMM:vfCode]) {
        [SemblfactionShootot toastMsg_MMMethodMMM: wwwww_tag_wwwww_py_msg_vfcode_hint.localx];
        return;
    }
    
    [SpringSecond bindAccountPhone_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:telephone vCode_MMMethodMMM:vfCode otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        SDK_DATA.mLoginResponse.data.telephone = [NSString stringWithFormat:@"%@-%@",areaCode,telephone];
        SDK_DATA.mLoginResponse.data.isBindPhone = YES;
        
        if (mMWBlock) {
            mMWBlock(YES, SDK_DATA.mLoginResponse.data.telephone);
        }
        
    } errorBlock_MMMethodMMM:^(OntoingUliginpmier *error) {
        
        if (mMWBlock) {
            mMWBlock(NO, error.message);
        }
        
    }];
    
    
}

- (void)requestUpgradeWithAccount:(NSString *)account password:(NSString *)password Block:(MWBlock)mMWBlock
{
    account = [account trim_MMMethodMMM];
    if (![SemblfactionShootot validUserName_MMMethodMMM:account]) {
        return;
    }

    password = [password trim_MMMethodMMM];
    if (![SemblfactionShootot validPwd_MMMethodMMM:password]) {
        return;
    }
    
    AccountModel *currentAccountModel = SDK_DATA.mLoginResponse.data;
    if (!currentAccountModel) {
        SDK_LOG(@"用户登录信息不存在 currentAccountModel nil");
        return;
    }
    
    [SpringSecond doAccountBindingWithUserName_MMMethodMMM:account password_MMMethodMMM:password phoneAreaCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@"" vfCode_MMMethodMMM:@"" email_MMMethodMMM:account thirdId_MMMethodMMM:currentAccountModel.thirdId thirdPlate_MMMethodMMM:currentAccountModel.loginType otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        
        LoginResponse *cc = (LoginResponse *)responseData;
        cc.data.account = account;
        cc.data.password = password;
        cc.data.loginType = LOGIN_TYPE_SELF;
        SDK_DATA.mLoginResponse = cc;
        
        [[IncludingularOwner share] saveAccountModel_MMMethodMMM:cc.data];
        
        
        
        [ApenneCetersive logServerWithEventName_MMMethodMMM:AD_EVENT_UPGRADE_ACCOUNT];
        [ApenneCetersive logWithEventName_MMMethodMMM:AD_EVENT_UPGRADE_ACCOUNT parameters_MMMethodMMM:nil];
        
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
        
    } errorBlock_MMMethodMMM:^(OntoingUliginpmier *error) {
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
    
    if ([MelanisticSebiition isEmpty_MMMethodMMM:roleId]) {
        [HalioTractless showAlertWithMessage_MMMethodMMM:@"roleId must be not empty"];
        return;
    }
    if ([MelanisticSebiition isEmpty_MMMethodMMM:serverCode]) {
        [HalioTractless showAlertWithMessage_MMMethodMMM:@"serverCode must be not empty"];
        return;
    }
    
    [self setRoleInfoWithRoleId:roleId roleName:roleName roleLevel:roleLevel roleVipLevel:roleVipLevel serverCode:serverCode serverName:serverName];
    
    [self openCs];
    
}

- (void)openCs
{
    SDK_LOG(wwwww_tag_wwwww_openCs__);
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [HalioTractless showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    [self openCsWithParams:nil];
}

- (void)openCsWithParams:(NSDictionary *)paramDic {
    NSString * csurl = SDK_DATA.urls.csUrl;
    if ([MelanisticSebiition isEmpty_MMMethodMMM:csurl]) {
        SDK_LOG(@"客服地址错误 csurl=%@",csurl);
        return;
    }
    NSString *resultURL = [SpringSecond createSdkUrl_MMMethodMMM:csurl otherDic_MMMethodMMM:paramDic];
    SDK_LOG(@"客服地址csurl=%@",resultURL);
    EtharmficCauliileController *webVC = [EtharmficCauliileController webViewControllerPresentingWithURLRequest_MMMethodMMM:[NSURLRequest requestWithURL:[NSURL URLWithString:resultURL]] isShowTitle_MMMethodMMM:NO animation_MMMethodMMM:NO animationStyle_MMMethodMMM:UIModalTransitionStyleCoverVertical];
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
        SDK_LOG(@"EtharmficCauliileController presentViewController completioN");
        
    }];
    SDK_LOG(@"客服地址open end");
}

- (void)shareLineWithContent:(NSString *)content block:(MWBlock) bMWBlock
{
    
    if (![[NSThread currentThread] isMainThread]) {
        SDK_LOG(@"currentThread is not main thread");
        [HalioTractless showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
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
        [HalioTractless showAlertWithMessage_MMMethodMMM:wwwww_tag_wwwww_neg_pretiproof];
        return;
    }
    
    if (@available(iOS 10.0, *)) {
        UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
        UNMutableNotificationContent *content = [[UNMutableNotificationContent alloc] init];
        
        content.title = title;
        content.subtitle = subtitle;
        
        content.body = body;
        
       
        content.sound = [UNNotificationSound defaultSound];
     
        
        
        
        if ([MelanisticSebiition isEmpty_MMMethodMMM:notifyId]) {
            notifyId = [SchemOnymen getMD5StrFromString_MMMethodMMM:title];
        }
        
        UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:notifyId content:content trigger:trigger];
        
        [center addNotificationRequest:request withCompletionHandler:^(NSError *_Nullable error) {
            SDK_LOG(@"addLocalNotificationWithTitle 成功添加推送");
        }];
        
    }else {
    }
}

-(void)showTermViewWithBlock
{

#ifdef SDK_KR
    SquamierFrainespeciallysomeView *aTermsViewV2 = [[SquamierFrainespeciallysomeView alloc] initWithCompleter_MMMethodMMM:^{
        
    }];
    
    UIView *superView = appTopViewController.view;
    
    UIView *bgV = [[CivilativeFutilView alloc] init];
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
    
    UIView *bgV = [[CivilativeFutilView alloc] init];
    [superView addSubview:bgV];
    [bgV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(superView);
    }];
    
    WaterardFidiseView *mSocialBannerView = [[WaterardFidiseView alloc] init];
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
        [SemblfactionShootot toastMsg_MMMethodMMM:@"This feature is not turned on"];
        return;
    }
    
    [SemblfactionShootot showLoadingAtView_MMMethodMMM:nil];
    [SpringSecond checkActSwitchWithSuccessBlock_MMMethodMMM:@"" otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        [SemblfactionShootot stopLoadingAtView_MMMethodMMM:nil];
        [SpringSecond getActConfigWithSuccessBlock_MMMethodMMM:^(id responseData) {
            [SemblfactionShootot stopLoadingAtView_MMMethodMMM:nil];
            
            UIViewController *actController;
            if(IS_PORTRAIT){
                MissfoldPitcourseardController *mExposureController = [[MissfoldPitcourseardController alloc] initWithNibName:XIB_ExposureController bundle:SDK_BUNDLE];
                mExposureController.expoModelArry = responseData;
                actController = mExposureController;
            }else{
                WeightObsressController *mExposureHorControllerViewController = [[WeightObsressController alloc] initWithNibName:XIB_ExposureHorControllerViewController bundle:SDK_BUNDLE];
                mExposureHorControllerViewController.expoModelArry = responseData;
                actController = mExposureHorControllerViewController;
            }
            
            SDK_LOG(@"controller setModalPresentationStyle:UIModalPresentationOverCurrentContext");
            [actController setModalPresentationStyle:UIModalPresentationOverFullScreen];
            [[SchemOnymen getCurrentViewController_MMMethodMMM] presentViewController: actController animated:NO completion:^{
                
            }];
            
        } errorBlock_MMMethodMMM:^(OntoingUliginpmier *error) {
            
            [SemblfactionShootot toastMsg_MMMethodMMM:@"This feature is not turned on"];
        }];
        
        
    } errorBlock_MMMethodMMM:^(OntoingUliginpmier *error) {
        
        [SemblfactionShootot stopLoadingAtView_MMMethodMMM:nil];
        [SemblfactionShootot toastMsg_MMMethodMMM:@"This feature is not turned on"];
    }];
    
}


@end
