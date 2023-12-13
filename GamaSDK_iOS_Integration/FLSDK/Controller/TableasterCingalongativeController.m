

#import "TableasterCingalongativeController.h"

#import "DiseaseageRamView.h"
#import "LetterileCauseitorView.h"
#import "SecutetyMolliceView.h"
#import "JuniorismIfibleView.h"
#import "PterficationOnlyaneousView.h"
#import "YYModel.h"
#import "LoginResponse.h"
#import "AccountModel.h"
#import "Masonry.h"
#import "DesRhombentView.h"
#import "PictanswerialCentralifyView.h"
#import "AffectfulChairView.h"
#import "SceleticMegalView.h"

#import "UponNihiliseView.h"
#import "LargeonLampView.h"
#import "HelitorSidemostView.h"

#import "AccountModel.h"

#import <FBSDKCoreKit/FBSDKCoreKit.h>

#ifdef SDK_KR
#import "AgeQuaView.h"
#endif

@interface TableasterCingalongativeController()

@property (nonatomic,strong)UIView *sdkContentView;


@end

@implementation TableasterCingalongativeController{
    
    SDKPage sdkPageType;
    
    
    AnaitorProtofulView *mLoginWithRegView;
    AnaitorProtofulView *mMainHomeView;
    AnaitorProtofulView *mWelcomeBackView;
    
}

-(instancetype)initWithPageType_MMMethodMMM:(SDKPage) pageType
{
    self = [super init];
    if (self) {
        sdkPageType = pageType;
        [self registNotification_MMMethodMMM];
    }
    
    return self;
}

- (void)dealloc 
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    SDK_DATA.mUITextFieldDelegate = nil;
    SDK_LOG(wwwww_tag_wwwww_roboracity_starety);
}

- (void)viewDidLoad {   
    [super viewDidLoad];
    
    SDK_LOG(wwwww_tag_wwwww_viewDidLoad);
    self.view.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.9];
    
    SDK_DATA.mUITextFieldDelegate = self;
    switch (sdkPageType) {
        case SDKPage_Login:
        {
            [self showLoginPageOrAutoLogin_MMMethodMMM:(CURRENT_PAGE_TYPE_NULL)];
        }
            break;
            
        case SDKPage_LoginType:
        {
        }
            break;
        default:
            break;
    }
    [CheckWifewise logServerWithEventName_MMMethodMMM:AD_EVENT_OPEN_LOGIN_SCREEN];
    [CheckWifewise logWithEventName_MMMethodMMM:AD_EVENT_OPEN_LOGIN_SCREEN parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_All];
}

- (void)viewDidAppear:(BOOL)animated    
{
    SDK_LOG(wwwww_tag_wwwww_viewDidAppear);
    
    
}

- (void)viewWillAppear:(BOOL)animated   
{
    SDK_LOG(wwwww_tag_wwwww_viewWillAppear);
}

- (void)viewWillDisappear:(BOOL)animated    
{
    SDK_LOG(wwwww_tag_wwwww_viewWillDisappear);
}

- (void)viewDidDisappear:(BOOL)animated 
{
    SDK_LOG(wwwww_tag_wwwww_viewDidDisappear);
}


-(void)showLoginPageOrAutoLogin_MMMethodMMM:(CURRENT_PAGE_TYPE) page
{
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
    if (!mConfigModel.visitorLogin && !mConfigModel.appleLogin && !mConfigModel.fbLogin && !mConfigModel.lineLogin && !mConfigModel.naverLogin) {
        [self addLoginWithRegView_MMMethodMMM];
        return;
    }
    
    NSArray<AccountModel *> *accountModels = [[DreamerSixry share] getAccountModels_MMMethodMMM];
    if (accountModels && accountModels.count > 0) {
        
        if (is_Version2) {
            
            [self addLoginWithRegView_MMMethodMMM];
            
        }else{
            [self addWelcomeView_MMMethodMMM];
        }
        
    }else{
        [self addHomeView_MMMethodMMM];
    }
    
}


-(UIView *)sdkContentView
{
    if (!_sdkContentView) {
        _sdkContentView = [[UIView alloc]init];
        
        [self.view addSubview:_sdkContentView];
        [_sdkContentView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            if([SDK_VERSION_VN isEqualToString:[SDKRES getSdkVersion_MMMethodMMM]] ||
               [SDK_VERSION_V6 isEqualToString:[SDKRES getSdkVersion_MMMethodMMM]] ||
               [SDK_VERSION_KR isEqualToString:[SDKRES getSdkVersion_MMMethodMMM]]){
                
                
                make.centerX.equalTo(@(0));
                make.centerY.equalTo(@(0));
                make.width.mas_equalTo(SCREEN_WIDTH);
                make.height.mas_equalTo(SCREEN_HEIGHT);
                
            }else{
                
                make.centerX.equalTo(@(0));
                make.centerY.equalTo(@(0));
                if (IS_PORTRAIT) {
                    make.width.mas_equalTo(VW(375));
                    make.height.mas_equalTo(VH(667));
                }else{
    
    
                    
                    make.width.mas_equalTo(VW(380));
                    make.height.mas_equalTo(VH(375));
                }
            }
           
        }];
    }
    return _sdkContentView;
}

#pragma mark -頁面添加部分

-(AnaitorProtofulView *)addAgeQuaView_MMMethodMMM
{
    AnaitorProtofulView *ageQuaView = nil;
#ifdef SDK_KR
    
    for (UIView *subView in [self sdkContentView].subviews) {
        [subView removeFromSuperview];
    }
    ageQuaView = [[AgeQuaView alloc] initView_MMMethodMMM];
    [self addSubSdkLoginView_MMMethodMMM:ageQuaView];
    
#endif
    return ageQuaView;
}

-(AnaitorProtofulView *)addLoginWithRegView_MMMethodMMM
{
    
    
    
    if (is_Version2) {
        mLoginWithRegView = [[LargeonLampView alloc] initView_MMMethodMMM];
    }else{
        mLoginWithRegView = [[PictanswerialCentralifyView alloc] initView_MMMethodMMM];
    }
    
    [self addSubSdkLoginView_MMMethodMMM:mLoginWithRegView];
    return mLoginWithRegView;
}

-(void)addWelcomeView_MMMethodMMM
{
    
    for (UIView *subView in [self sdkContentView].subviews) {
        [subView removeFromSuperview];
    }
    mWelcomeBackView = [[StructwantibleIlupoView alloc] initView_MMMethodMMM];
    [self addSubSdkLoginView_MMMethodMMM:mWelcomeBackView];
}


-(AnaitorProtofulView *)addTermsView_MMMethodMMM
{
    DesRhombentView *mTermsView = [[DesRhombentView alloc] initWithCompleter_MMMethodMMM:^{
        
        
    }];
    
    mTermsView.delegate = self;
    [self addSubSdkLoginView_MMMethodMMM:mTermsView];
    
    return mTermsView;
}




-(AnaitorProtofulView *)addBindAccountView_MMMethodMMM
{
    SceleticMegalView *view = [[SceleticMegalView alloc] initView_MMMethodMMM];
    [self addSubSdkLoginView_MMMethodMMM:view];
    return view;
}

-(AnaitorProtofulView *)addChangePasswordView_MMMethodMMM
{
    
    SecutetyMolliceView *view = [[SecutetyMolliceView alloc] initView_MMMethodMMM];
    [self addSubSdkLoginView_MMMethodMMM:view];
    return view;
}

-(void)addSelectBindTypeView_MMMethodMMM
{
    
    JuniorismIfibleView *view = [[JuniorismIfibleView alloc] initView_MMMethodMMM];
    [self addSubSdkLoginView_MMMethodMMM:view];
}

-(void)addFindPasswordView_MMMethodMMM
{
    if (is_Version2) {
        
        HelitorSidemostView *view = [[HelitorSidemostView alloc] initView_MMMethodMMM];
        [self addSubSdkLoginView_MMMethodMMM:view];
        
    }else{
        PterficationOnlyaneousView *view = [[PterficationOnlyaneousView alloc] initView_MMMethodMMM];
        [self addSubSdkLoginView_MMMethodMMM:view];
    }
   
}

-(void)addHomeView_MMMethodMMM
{
    
    for (UIView *subView in [self sdkContentView].subviews) {
        [subView removeFromSuperview];
    }
    if (is_Version2) {
        mMainHomeView = [[UponNihiliseView alloc] initView_MMMethodMMM];
    }else{
        mMainHomeView = [[AffectfulChairView alloc] initView_MMMethodMMM];
    }
    
    [self addSubSdkLoginView_MMMethodMMM:mMainHomeView];
}



-(void)addSubSdkLoginView_MMMethodMMM:(AnaitorProtofulView *)mSDKBaseView
{
    
    mSDKBaseView.delegate = self;
    
    
    
    
    
    for (UIView *subView in self.sdkContentView.subviews) {
        subView.hidden = YES;
    }
    
    [self.sdkContentView addSubview:mSDKBaseView];
    
    [mSDKBaseView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo([self sdkContentView]);
        make.center.mas_equalTo([self sdkContentView]);
    }];
}


#pragma mark - Touches
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event  
{
    [self.view endEditing:YES];
    
    [super touchesBegan:touches withEvent:event];
}


- (void)_animationWithView_MMMethodMMM:(UIView *)view frame_MMMethodMMM:(CGRect)viewFrame duration_MMMethodMMM:(NSTimeInterval)duration
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:duration];
    [view setFrame:viewFrame];
    [UIView commitAnimations];
}

#pragma mark - LoginViewDelegate代理

-(void)goPageView_MMMethodMMM:(CURRENT_PAGE_TYPE) pageType
{
    [self goPageView_MMMethodMMM:pageType from_MMMethodMMM:CURRENT_PAGE_TYPE_NULL param_MMMethodMMM:@(0)];
    
}

- (void)goPageView_MMMethodMMM:(CURRENT_PAGE_TYPE)toPage from_MMMethodMMM:(CURRENT_PAGE_TYPE)fromPage param_MMMethodMMM:(id)obj
{
    AnaitorProtofulView *mView;
    switch (toPage) {
        case CURRENT_PAGE_TYPE_AUTO:
            
            break;
            
        case CURRENT_PAGE_TYPE_FIND_PWD:
            [self addFindPasswordView_MMMethodMMM];
            break;
            
        case CURRENT_PAGE_TYPE_MAIN_HOME:
            [self addHomeView_MMMethodMMM];
            break;
            
        case CURRENT_PAGE_TYPE_LOGIN_WITH_REG:
        {
            
            mView = [self addLoginWithRegView_MMMethodMMM];
            
        }
            break;
            
        case CURRENT_PAGE_TYPE_CHANGE_PWD:
            mView = [self addChangePasswordView_MMMethodMMM];
            break;
            
        case CURRENT_PAGE_TYPE_SELECT_BIND_TYPE:
            [self addSelectBindTypeView_MMMethodMMM];
            break;
            
        case CURRENT_PAGE_TYPE_BIND_ACCOUNT:
            mView = [self addBindAccountView_MMMethodMMM];
            break;
            
        case CURRENT_PAGE_TYPE_TEARMS:
        {
            mView = [self addTermsView_MMMethodMMM];
        }
            break;
        default:
            break;
    }
    
    if (mView && fromPage && fromPage != CURRENT_PAGE_TYPE_NULL) {
        mView.fromPage = fromPage;
        mView.fromPageParam = obj;
        [mView initData_MMMethodMMM];
    }
}

-(void)goBackBtn_MMMethodMMM:(UIView *)backView backCount_MMMethodMMM:(NSUInteger) count fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE) fromPage toPage_MMMethodMMM:(CURRENT_PAGE_TYPE) toPage{
    
    switch (toPage) {
        case CURRENT_PAGE_TYPE_LOGIN_WITH_REG:
            if (mLoginWithRegView) {
                mLoginWithRegView.hidden = NO;
            }
            break;
            
        case CURRENT_PAGE_TYPE_MAIN_HOME:
            if (mMainHomeView) {
                mMainHomeView.hidden = NO;
            }else{
                [self addHomeView_MMMethodMMM];
            }
            break;
            
        case CURRENT_PAGE_TYPE_WELCOME_BACK:
            if (mWelcomeBackView) {
                mWelcomeBackView.hidden = NO;
            }else{
                [self addWelcomeView_MMMethodMMM];
            }
            break;
            
        default:
            break;
    }
    
    if (backView) {
        [backView removeFromSuperview];
    }
    
    
    
    
    
    
}

- (void)logout_MMMethodMMM
{
    
}

- (void)loginSuccess_MMMethodMMM
{
    
}


-(void)cancelAutoSwitchAccount_MMMethodMMM
{
    
    [self goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_LOGIN_ACCOUNT];
}

-(void)changPasswordSuccess_MMMethodMMM 
{
    
    
    
}

-(void) handleLoginOrRegSuccess_MMMethodMMM:(id)responseData thirdPlate_MMMethodMMM:(NSString *)thirdPlate
{
    LoginResponse *loginResopnse = (LoginResponse *)responseData;
    SDK_DATA.mLoginResponse = loginResopnse;
    
    AccountModel *rData = loginResopnse.data;
    rData.loginType = thirdPlate;
    [[DreamerSixry share] saveAccountModel_MMMethodMMM:rData];
    
    [[DreamerSixry share] saveLoginType_MMMethodMMM:thirdPlate];
    
    
    if ([LOGIN_TYPE_SELF isEqualToString:thirdPlate]) {
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    if (loginResopnse.code == BJResponseCode_OK_Register) {
        [CheckWifewise logWithEventName_MMMethodMMM:AD_EVENT_REGISTER_SUCCESS parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
        
        [CheckWifewise logWithEventName_MMMethodMMM:FBSDKAppEventNameCompletedRegistration parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_FB];
        [CheckWifewise logWithEventName_MMMethodMMM:AD_EVENT_COMPLETE_REGISTRATION_IOS parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_FB];
        
        [CheckWifewise logWithEventName_MMMethodMMM:AD_EVENT_LOGIN_SUCCESS parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];

        [CheckWifewise logServerWithEventName_MMMethodMMM:AD_EVENT_REGISTER_SUCCESS];
        [CheckWifewise logServerWithEventName_MMMethodMMM:AD_EVENT_LOGIN_SUCCESS];
        
        [[DreamerSixry share] saveGameUserInfo_MMMethodMMM:loginResopnse];
        
    }else {
        
        [CheckWifewise logServerWithEventName_MMMethodMMM:AD_EVENT_LOGIN_SUCCESS];
        [CheckWifewise logWithEventName_MMMethodMMM:AD_EVENT_LOGIN_SUCCESS parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
        
        GlassressTheorymost *xxGameUserModel = [[DreamerSixry share] getGameUserInfo_MMMethodMMM:loginResopnse.data.userId];
        if(xxGameUserModel && xxGameUserModel.isRegDayPay){
            
            NSString *yesterDate = [PuteeDamnsive getYesterdayDateWithTimeStr_MMMethodMMM:loginResopnse.data.timestamp dateFormat_MMMethodMMM:@"yyyy-MM-dd"];
            NSString *regDate = [PuteeDamnsive getDateStringWithTimeStr_MMMethodMMM:xxGameUserModel.regTime dateFormat_MMMethodMMM:@"yyyy-MM-dd"];
            SDK_LOG(@"yesterDate=%@, regDate=%@", yesterDate, regDate);
            if([yesterDate isEqualToString:regDate] && xxGameUserModel.isRegDayPay){
                
                SDK_LOG(@"log event Paid_D2Login start");
                [CheckWifewise logWithEventName_MMMethodMMM:@"Paid_D2Login" parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_All];
            }
        }
    }
    
    
    
    if ([MWSDK share].loginCompletionHandler) {
        LoginData *loginData = [[LoginData alloc] init];
        loginData.accessToken = rData.token;
        loginData.userId = rData.userId;
        loginData.timestamp = rData.timestamp;
        
        loginData.isBind = rData.isBind;
        loginData.isBindPhone = rData.isBindPhone;
        loginData.loginType = thirdPlate;
        
        loginData.sign = rData.sign;
        loginData.telephone = rData.telephone;
        loginData.loginId = rData.loginId;
        
        [MWSDK share].loginCompletionHandler(loginData);
    }
    
    [self dismissViewControllerAnimated:NO completion:^{
        
    }];
}



#pragma mark notification 通知管理

- (void)registNotification_MMMethodMMM
{
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow_MMMethodMMM:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide_MMMethodMMM:) name:UIKeyboardWillHideNotification object:nil];
}

#pragma mark --键盘弹出收起管理
-(void)keyboardWillShow_MMMethodMMM:(NSNotification *)note{
    SDK_LOG(wwwww_tag_wwwww_keyboardWillShow);
    if (self.currentEditingTextViewFrame.origin.y == 0) {
        return;
    }
    
    
    NSDictionary* info = [note userInfo];
    CGSize kbSize = [[info objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size;
    SDK_DATA.keyBoardHeight = kbSize.height;
    CGFloat offSet = self.currentEditingTextViewFrame.origin.y + self.currentEditingTextViewFrame.size.height - (self.view.frame.size.height - kbSize.height);
    
    if (offSet > 0.01) {
        kWeakSelf
        [UIView animateWithDuration:0.3 animations:^{
            
            [weakSelf.sdkContentView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.centerY.equalTo(@(0)).mas_offset(-(offSet + 15));
            }];
        }];
    }
}

-(void)keyboardWillHide_MMMethodMMM:(NSNotification *)note{
    SDK_LOG(wwwww_tag_wwwww_keyboardWillHide);
    kWeakSelf
    [UIView animateWithDuration:0.3 animations:^{
        
        [weakSelf.sdkContentView mas_updateConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(@(0));
        }];
    }];
    self.currentEditingTextViewFrame = CGRectMake(0, 0, 0, 0);
    SDK_DATA.keyBoardHeight = 0;
    
}
#pragma mark - UITextField Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField  
{
    SDK_LOG(wwwww_tag_wwwww_textFieldShouldReturn);
    [textField resignFirstResponder];
    return YES;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField  
{
    SDK_LOG(wwwww_tag_wwwww_textFieldShouldBeginEditing);
    
    self.currentEditingTextViewFrame = [textField convertRect:textField.frame toView:self.view];
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField  
{
    SDK_LOG(wwwww_tag_wwwww_textFieldShouldEndEditing);
    
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField   
{
    SDK_LOG(wwwww_tag_wwwww_textFieldDidBeginEditing);
}

- (void)textFieldDidEndEditing:(UITextField *)textField 
{
    SDK_LOG(wwwww_tag_wwwww_textFieldDidEndEditing);
}


@end
