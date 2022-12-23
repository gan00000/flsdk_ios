
#import "MCoolFishManagerController.h"

#import "MCoolFishInterruptView.h"
#import "MCoolFishModityOrderView.h"
#import "MCoolFishNewsView.h"
#import "MCoolFishAppleGameView.h"
#import "MCoolFishColorNoticeView.h"
#import "YYModel.h"
#import "LoginResponse.h"
#import "AccountModel.h"
#import "Masonry.h"
#import "MCoolFishHeaderView.h"
#import "MCoolFishThirdStringView.h"
#import "MCoolFishWelcomeTouchView.h"
#import "MCoolFishPasswordView.h"

#import "MCoolFishFirebase.h"
#import "MCoolFishType.h"
#import "MCoolFishLogin.h"

#import "AccountModel.h"

#import <FBSDKCoreKit/FBSDKCoreKit.h>

@interface MCoolFishManagerController()


@property(nonatomic, assign)double  frame_xb;
@property(nonatomic, assign)Boolean  isEvent;


@property (nonatomic,strong)UIView *sdkContentView;


@end

@implementation MCoolFishManagerController{
    
    SDKPage sdkPageType;
    
    
    MCoolFishRegisterView *mLoginWithRegView;
    MCoolFishRegisterView *mMainHomeView;
    MCoolFishRegisterView *mWelcomeBackView;
    
}


-(void)addFindPasswordView_MMMethodMMM
{
    if (is_Version2) {
        
        MCoolFishLogin *view = [[MCoolFishLogin alloc] initView_MMMethodMMM];
        [self addSubSdkLoginView_MMMethodMMM:view];
        
    }else{
        MCoolFishColorNoticeView *view = [[MCoolFishColorNoticeView alloc] initView_MMMethodMMM];
        [self addSubSdkLoginView_MMMethodMMM:view];
    }
   
}


- (void)textFieldDidEndEditing:(UITextField *)textField 
{
    SDK_LOG(wwwww_tag_wwwww_textFieldDidEndEditing);
}


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
            
            [self.sdkContentView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.centerY.equalTo(@(0)).mas_offset(-(offSet + 15));
            }];
        }];
    }
}


-(MCoolFishRegisterView *)addLoginWithRegView_MMMethodMMM
{
    
    
    
    if (is_Version2) {
        mLoginWithRegView = [[MCoolFishType alloc] initView_MMMethodMMM];
    }else{
        mLoginWithRegView = [[MCoolFishThirdStringView alloc] initView_MMMethodMMM];
    }
    
    [self addSubSdkLoginView_MMMethodMMM:mLoginWithRegView];
    return mLoginWithRegView;
}


-(void)addSelectBindTypeView_MMMethodMMM
{
    
    MCoolFishAppleGameView *view = [[MCoolFishAppleGameView alloc] initView_MMMethodMMM];
    [self addSubSdkLoginView_MMMethodMMM:view];
}


-(UIView *)sdkContentView
{
    if (!_sdkContentView) {
        _sdkContentView = [[UIView alloc]init];
        
        [self.view addSubview:_sdkContentView];
        [_sdkContentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(@(0));
            make.centerY.equalTo(@(0));
            if (IS_PORTRAIT) {
                make.width.mas_equalTo(VW(375));
                make.height.mas_equalTo(VH(667));
            }else{
                
                make.width.mas_equalTo(VW(380));
                make.height.mas_equalTo(VH(375));
            }
           
        }];
    }
    return _sdkContentView;
}


- (void)logout_MMMethodMMM
{
    
}



- (void)goPageView_MMMethodMMM:(CURRENT_PAGE_TYPE)toPage from_MMMethodMMM:(CURRENT_PAGE_TYPE)fromPage param_MMMethodMMM:(id)obj
{
    MCoolFishRegisterView *mView;
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


- (BOOL)textFieldShouldReturn:(UITextField *)textField  
{
    SDK_LOG(wwwww_tag_wwwww_textFieldShouldReturn);
    [textField resignFirstResponder];
    return YES;
}

#pragma mark -頁面添加部分


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event  
{
    [self.view endEditing:YES];
    
    [super touchesBegan:touches withEvent:event];
}


- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField  
{
    SDK_LOG(wwwww_tag_wwwww_textFieldShouldBeginEditing);
    
    self.currentEditingTextViewFrame = [textField convertRect:textField.frame toView:self.view];
    return YES;
}



-(void)showLoginPageOrAutoLogin_MMMethodMMM
{
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    NSArray<AccountModel *> *accountModels = [[MCoolFishPple share] getAccountModels_MMMethodMMM];
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





- (void)registNotification_MMMethodMMM
{
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow_MMMethodMMM:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide_MMMethodMMM:) name:UIKeyboardWillHideNotification object:nil];
}


-(void)goPageView_MMMethodMMM:(CURRENT_PAGE_TYPE) pageType;
{
    [self goPageView_MMMethodMMM:pageType from_MMMethodMMM:CURRENT_PAGE_TYPE_NULL param_MMMethodMMM:@(0)];
    
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


- (void)_animationWithView_MMMethodMMM:(UIView *)view frame_MMMethodMMM:(CGRect)viewFrame duration_MMMethodMMM:(NSTimeInterval)duration
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:duration];
    [view setFrame:viewFrame];
    [UIView commitAnimations];
}


-(MCoolFishRegisterView *)addChangePasswordView_MMMethodMMM
{
    
    MCoolFishNewsView *view = [[MCoolFishNewsView alloc] initView_MMMethodMMM];
    [self addSubSdkLoginView_MMMethodMMM:view];
    return view;
}




- (void)viewDidAppear:(BOOL)animated    
{
    SDK_LOG(wwwww_tag_wwwww_viewDidAppear);
    
    
}


#pragma mark - Touches

-(void)changPasswordSuccess_MMMethodMMM 
{
    
    
    
}



-(MCoolFishRegisterView *)addTermsView_MMMethodMMM
{
    MCoolFishHeaderView *mTermsView = [[MCoolFishHeaderView alloc] initWithCompleter_MMMethodMMM:^{
        
        
    }];
    
    mTermsView.delegate = self;
    [self addSubSdkLoginView_MMMethodMMM:mTermsView];
    
    return mTermsView;
}

#pragma mark - LoginViewDelegate代理


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


-(MCoolFishRegisterView *)addBindAccountView_MMMethodMMM
{
    MCoolFishPasswordView *view = [[MCoolFishPasswordView alloc] initView_MMMethodMMM];
    [self addSubSdkLoginView_MMMethodMMM:view];
    return view;
}


- (void)viewWillAppear:(BOOL)animated   
{
    SDK_LOG(wwwww_tag_wwwww_viewWillAppear);
}


-(void)addHomeView_MMMethodMMM
{
    
    for (UIView *subView in [self sdkContentView].subviews) {
        [subView removeFromSuperview];
    }
    if (is_Version2) {
        mMainHomeView = [[MCoolFishFirebase alloc] initView_MMMethodMMM];
    }else{
        mMainHomeView = [[MCoolFishWelcomeTouchView alloc] initView_MMMethodMMM];
    }
    
    [self addSubSdkLoginView_MMMethodMMM:mMainHomeView];
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
            [self showLoginPageOrAutoLogin_MMMethodMMM];
        }
            break;
            
        case SDKPage_LoginType:
        {
        }
            break;
        default:
            break;
    }
    [MCoolFishCore logWithEventName_MMMethodMMM:AD_EVENT_OPEN_LOGIN_SCREEN parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
}

-(void) handleLoginOrRegSuccess_MMMethodMMM:(id)responseData thirdPlate_MMMethodMMM:(NSString *)thirdPlate
{
    LoginResponse *loginResopnse = (LoginResponse *)responseData;
    SDK_DATA.mLoginResponse = loginResopnse;
    
    AccountModel *rData = loginResopnse.data;
    rData.loginType = thirdPlate;
    [[MCoolFishPple share] saveAccountModel_MMMethodMMM:rData];
    
    [[MCoolFishPple share] saveLoginType_MMMethodMMM:thirdPlate];
    
    
    if ([LOGIN_TYPE_SELF isEqualToString:thirdPlate]) {
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    if (loginResopnse.code == BJResponseCode_OK_Register) {
        [MCoolFishCore logWithEventName_MMMethodMMM:AD_EVENT_REGISTER_SUCCESS parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
        
        [MCoolFishCore logWithEventName_MMMethodMMM:FBSDKAppEventNameCompletedRegistration parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_FB];
        [MCoolFishCore logWithEventName_MMMethodMMM:AD_EVENT_COMPLETE_REGISTRATION_IOS parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_FB];
        
        [MCoolFishCore logWithEventName_MMMethodMMM:AD_EVENT_LOGIN_SUCCESS parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
        
    }else {
        [MCoolFishCore logWithEventName_MMMethodMMM:AD_EVENT_LOGIN_SUCCESS parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
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
 

-(void)cancelAutoSwitchAccount_MMMethodMMM
{
    
    [self goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_LOGIN_ACCOUNT];
}

#pragma mark --键盘弹出收起管理

- (void)loginSuccess_MMMethodMMM
{
    
}


- (void)viewDidDisappear:(BOOL)animated 
{
    SDK_LOG(wwwww_tag_wwwww_viewDidDisappear);
}
#pragma mark - UITextField Delegate


- (void)textFieldDidBeginEditing:(UITextField *)textField   
{
    SDK_LOG(wwwww_tag_wwwww_textFieldDidBeginEditing);
}


- (void)viewWillDisappear:(BOOL)animated    
{
    SDK_LOG(wwwww_tag_wwwww_viewWillDisappear);
}


- (BOOL)textFieldShouldEndEditing:(UITextField *)textField  
{
    SDK_LOG(wwwww_tag_wwwww_textFieldShouldEndEditing);
    
    return YES;
}


-(void)addSubSdkLoginView_MMMethodMMM:(MCoolFishRegisterView *)mSDKBaseView
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


-(void)addWelcomeView_MMMethodMMM
{
    
    for (UIView *subView in [self sdkContentView].subviews) {
        [subView removeFromSuperview];
    }
    mWelcomeBackView = [[MCoolFishUtilView alloc] initView_MMMethodMMM];
    [self addSubSdkLoginView_MMMethodMMM:mWelcomeBackView];
}


@end
