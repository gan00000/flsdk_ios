

#import "SDKLoginViewController.h"

#import "YYModel.h"
#import "LoginResponse.h"
#import "AccountModel.h"
#import "Masonry.h"

#import "MainHomeViewV2.h"
#import "LoginWithRegViewV2.h"
#import "FindPasswordViewV2.h"
#import "AutoLoginView.h"

#import "AccountModel.h"

#import <FBSDKCoreKit/FBSDKCoreKit.h>


@interface SDKLoginViewController()

@property (nonatomic,strong)UIView *sdkContentView_MMMPRO;


@end

@implementation SDKLoginViewController{
    
    SDKPage sdkPageType;
    
    
    SDKBaseView *mAutoLoginView;
    SDKBaseView *mLoginWithRegView;
    SDKBaseView *mMainHomeView;
    
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
    SDK_DATA.mUITextFieldDelegate_MMMPRO = nil;
    SDK_LOG(wwwww_tag_wwwww_roboracity_starety);
}

- (void)viewDidLoad {   
    [super viewDidLoad];
    
    SDK_LOG(wwwww_tag_wwwww_viewDidLoad);
    self.view.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.9];
    
    SDK_DATA.mUITextFieldDelegate_MMMPRO = self;
    switch (sdkPageType) {
        case SDKPage_Login:
        {
            [self showLoginPageOrAutoLogin_MMMethodMMM:(CURRENT_PAGE_TYPE_NULL)];
        }
            break;
            
        default:
            break;
    }
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
    
    
    ConfigModel *mConfigModel = SDK_DATA.mConfigModel_MMMPRO;
   
    NSArray<AccountModel *> *accountModels = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
    if (accountModels && accountModels.count > 0) {
        
        [self addAutoLoginView_MMMethodMMM];
        
        
    }else{
        [self addLoginWithRegView_MMMethodMMM];
    }
    
}


-(UIView *)sdkContentView_MMMPRO
{
    if (!_sdkContentView_MMMPRO) {
        _sdkContentView_MMMPRO = [[UIView alloc]init];
        
        [self.view addSubview:_sdkContentView_MMMPRO];
        [_sdkContentView_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
            
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
    return _sdkContentView_MMMPRO;
}

#pragma mark -頁面添加部分


-(SDKBaseView *)addLoginWithRegView_MMMethodMMM
{
    
    
    
    for (UIView *subView in [self sdkContentView_MMMPRO].subviews) {
        [subView removeFromSuperview];
    }
    
    mLoginWithRegView = [[LoginWithRegViewV2 alloc] initView_MMMethodMMM];
    
    [self addSubSdkLoginView_MMMethodMMM:mLoginWithRegView];
    return mLoginWithRegView;
}




-(void)addAutoLoginView_MMMethodMMM 
{

    
    for (UIView *subView in [self sdkContentView_MMMPRO].subviews) {
        [subView removeFromSuperview];
    }
    mAutoLoginView = [[AutoLoginView alloc] initView_MMMethodMMM];
    [self addSubSdkLoginView_MMMethodMMM:mAutoLoginView];
}





-(void)addFindPasswordView_MMMethodMMM
{
    FindPasswordViewV2 *view = [[FindPasswordViewV2 alloc] initView_MMMethodMMM];
    [self addSubSdkLoginView_MMMethodMMM:view];
}

-(void)addHomeView_MMMethodMMM
{
    
    for (UIView *subView in [self sdkContentView_MMMPRO].subviews) {
        [subView removeFromSuperview];
    }
    mMainHomeView = [[MainHomeViewV2 alloc] initView_MMMethodMMM];
    [self addSubSdkLoginView_MMMethodMMM:mMainHomeView];
}



-(void)addSubSdkLoginView_MMMethodMMM:(SDKBaseView *)mSDKBaseView
{
    
    mSDKBaseView.loginDelegate_MMMPRO = self;
    
    
    
    
    
    for (UIView *subView in self.sdkContentView_MMMPRO.subviews) {
        subView.hidden = YES;
    }
    
    [self.sdkContentView_MMMPRO addSubview:mSDKBaseView];
    
    [mSDKBaseView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo([self sdkContentView_MMMPRO]);
        make.center.mas_equalTo([self sdkContentView_MMMPRO]);
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
    SDKBaseView *mView;
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
            
        default:
            break;
    }
    
    if (mView && fromPage && fromPage != CURRENT_PAGE_TYPE_NULL) {
        mView.fromPage_MMMPRO = fromPage;
        mView.fromPageParam_MMMPRO = obj;
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
    SDK_DATA.mLoginResponse_MMMPRO = loginResopnse;
    
    AccountModel *rData = loginResopnse.data;
    rData.loginType = thirdPlate;
    [[ConfigCoreUtil share] saveAccountModel_MMMethodMMM:rData];
    
    [[ConfigCoreUtil share] saveLoginType_MMMethodMMM:thirdPlate];
    
    
    if ([LOGIN_TYPE_SELF isEqualToString:thirdPlate]) {
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    if (loginResopnse.code == BJResponseCode_OK_Register) {
        
        [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_af_complete_registration_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer];
        [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_sign_up_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Firebase];
        
        
        [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_af_login_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer];
        [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_login_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Firebase];
        
        
        if ([LOGIN_TYPE_SELF isEqualToString:thirdPlate]) {
            
            [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_sign_up_account_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
            
            [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_login_account_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
            
        }else if([LOGIN_TYPE_GUEST isEqualToString:thirdPlate]){
            
            [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_sign_up_visitor_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
            
            [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_login_visitor_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
        }
        
        
        [[ConfigCoreUtil share] saveGameUserInfo_MMMethodMMM:loginResopnse];
        
    }else {
        
        [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_af_login_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer];
        [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_login_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Firebase];
        
        if ([LOGIN_TYPE_SELF isEqualToString:thirdPlate]) {
            
            [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_login_account_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
            
        }else if([LOGIN_TYPE_GUEST isEqualToString:thirdPlate]){
            
            [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_login_visitor_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
        }
        
        GameUserModel *xxGameUserModel = [[ConfigCoreUtil share] getGameUserInfo_MMMethodMMM:loginResopnse.data.userId];
        
        if (xxGameUserModel) {
            NSInteger days = [SUtil daysBetween_MMMethodMMM:xxGameUserModel.regTime endDate_MMMethodMMM:loginResopnse.data.timestamp];
            if(days == 2){
                [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_complete_2nd_login_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_All isOnce:YES];
            }
            if(days == 3){
                [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_complete_3nd_login_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_All isOnce:YES];
            }
            if(days == 5){
                [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_complete_5nd_login_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_All isOnce:YES];
            }
            if(days == 7){
                [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_complete_7nd_login_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_All isOnce:YES];
            }
            
            xxGameUserModel.lastLoginTime = loginResopnse.data.timestamp;
            [[ConfigCoreUtil share] updateGameUserInfo_MMMethodMMM:xxGameUserModel];
        }
        
        
    }
    
    
    if ([MWSDK share].dySDKLoginBlock) {
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
        
        [MWSDK share].dySDKLoginBlock(loginData);
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
    if (self.currentEditingTextViewFrame_MMMPRO.origin.y == 0) {
        return;
    }
    
    
    NSDictionary* info = [note userInfo];
    CGSize kbSize = [[info objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size;
    SDK_DATA.keyBoardHeight_MMMPRO = kbSize.height;
    CGFloat offSet = self.currentEditingTextViewFrame_MMMPRO.origin.y + self.currentEditingTextViewFrame_MMMPRO.size.height - (self.view.frame.size.height - kbSize.height);
    
    if (offSet > 0.01) {
        kWeakSelf
        [UIView animateWithDuration:0.3 animations:^{
            
            [weakSelf.sdkContentView_MMMPRO mas_updateConstraints:^(MASConstraintMaker *make) {
                make.centerY.equalTo(@(0)).mas_offset(-(offSet + 15));
            }];
        }];
    }
}

-(void)keyboardWillHide_MMMethodMMM:(NSNotification *)note{
    SDK_LOG(wwwww_tag_wwwww_keyboardWillHide);
    kWeakSelf
    [UIView animateWithDuration:0.3 animations:^{
        
        [weakSelf.sdkContentView_MMMPRO mas_updateConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(@(0));
        }];
    }];
    self.currentEditingTextViewFrame_MMMPRO = CGRectMake(0, 0, 0, 0);
    SDK_DATA.keyBoardHeight_MMMPRO = 0;
    
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
    
    self.currentEditingTextViewFrame_MMMPRO = [textField convertRect:textField.frame toView:self.view];
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
