//
//  CCSkyHourLoginViewController.m
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/29.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import "SDKLoginViewController.h"

#import "AccountLoginView.h"
#import "RegisterAccountView.h"
#import "ChangePasswordView.h"
#import "SelectBindTypeView.h"
#import "FindPasswordView.h"
#import "YYModel.h"
#import "LoginResponse.h"
#import "AccountModel.h"
#import "Masonry.h"
#import "TermsView.h"
#import "LoginWithRegView.h"
#import "MainHomeView.h"
#import "BindAccountView.h"

#import "MainHomeViewV2.h"
#import "LoginWithRegViewV2.h"
#import "FindPasswordViewV2.h"

#import "AccountModel.h"

#import <FBSDKCoreKit/FBSDKCoreKit.h>

@interface SDKLoginViewController()

@property (nonatomic,strong)UIView *sdkContentView;

//@property (nonatomic,strong)UIView *mLoginWithRegView;
//@property (nonatomic,strong)UIView *mMainHomeView;
//@property (nonatomic,strong)UIView *sdkContentView;

@end

@implementation SDKLoginViewController{
    
    SDKPage sdkPageType;
    
    //    AccountLoginView *mAccountLoginView;
//    SdkAutoLoginView *mAutoLoginView;
    SDKBaseView *mLoginWithRegView;
    SDKBaseView *mMainHomeView;
    SDKBaseView *mWelcomeBackView;
    
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

// 视图被销毁
- (void)dealloc //system_method
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    SDK_DATA.mUITextFieldDelegate = nil;
    SDK_LOG(wwwww_tag_wwwww_roboracity_starety);
}

- (void)viewDidLoad {   //system_method
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    SDK_LOG(wwwww_tag_wwwww_viewDidLoad);
    self.view.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.9];//[UIColor clearColor];
    
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
    [AdLogger logServerWithEventName_MMMethodMMM:AD_EVENT_OPEN_LOGIN_SCREEN];
    [AdLogger logWithEventName_MMMethodMMM:AD_EVENT_OPEN_LOGIN_SCREEN parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_All];
}

- (void)viewDidAppear:(BOOL)animated    //system_method
{
    SDK_LOG(wwwww_tag_wwwww_viewDidAppear);
    
    
}

- (void)viewWillAppear:(BOOL)animated   //system_method
{
    SDK_LOG(wwwww_tag_wwwww_viewWillAppear);
}

- (void)viewWillDisappear:(BOOL)animated    //system_method
{
    SDK_LOG(wwwww_tag_wwwww_viewWillDisappear);
}

- (void)viewDidDisappear:(BOOL)animated //system_method
{
    SDK_LOG(wwwww_tag_wwwww_viewDidDisappear);
}


-(void)showLoginPageOrAutoLogin_MMMethodMMM
{
    
    //    if ([TermsView openProvision_MMMethodMMM]) {//是否打开服务条款页面，没同意过需要打开
    //        [self showTramsView];
    //    }else{
    //
    //        NSString *loginType = [ConfigCoreUtil share].loginType;
    //        if (SDK_DATA.isNeedAutoLogin && loginType && ![loginType isEqualToString:@""]) {//是否需要自动登录
    //            if ([loginType isEqualToString:LOGIN_TYPE_SELF]) {//自動登錄
    //                NSArray *accounts = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
    //               if (!accounts || accounts.count == 0) {
    //                   [self addMainLoginView];
    //                   return;
    //               }
    //            }else if ([loginType isEqualToString:LOGIN_TYPE_GUEST])
    //            {
    //                [self addMainLoginView];
    //                return;
    //            }
    //             [self addAutoLoginView];
    //
    //        }else{
    //             [self addMainLoginView];
    //        }
    //
    //    }
    
    //    NSString *loginType = [ConfigCoreUtil share].loginType;
    //    if (SDK_DATA.isNeedAutoLogin && loginType && ![loginType isEqualToString:@""]) {//是否需要自动登录
    //        if ([loginType isEqualToString:LOGIN_TYPE_SELF]) {//自動登錄
    //            NSArray *accounts = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
    //           if (!accounts || accounts.count == 0) {
    //               [self addMainLoginView];
    //               return;
    //           }
    //        }else if ([loginType isEqualToString:LOGIN_TYPE_GUEST])
    //        {
    //            [self addMainLoginView];
    //            return;
    //        }
    //         [self addAutoLoginView];
    //
    //    }else{
    //         [self addMainLoginView];
    //    }
    
    //test code start
//    SDK_DATA.mConfigModel.appleLogin = NO;
//    SDK_DATA.mConfigModel.visitorLogin = NO;
//    SDK_DATA.mConfigModel.fbLogin = NO;
//    SDK_DATA.mConfigModel.lineLogin = NO;
    //test code end
    
    ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
    if (!mConfigModel.visitorLogin && !mConfigModel.appleLogin && !mConfigModel.fbLogin && !mConfigModel.lineLogin) {
        [self addLoginWithRegView_MMMethodMMM];
        return;
    }
    
    NSArray<AccountModel *> *accountModels = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
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
        //        sdkContentView.backgroundColor = [UIColor redColor];
        [self.view addSubview:_sdkContentView];
        [_sdkContentView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            if([@"v_vn" isEqualToString:[SDKRES getSdkVersion_MMMethodMMM]] ||
               [@"v6" isEqualToString:[SDKRES getSdkVersion_MMMethodMMM]]){
                
                //make.edges.mas_equalTo(self.view);
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
    //                make.width.mas_equalTo(VW(667));
    //                make.height.mas_equalTo(VH(375));
                    
                    make.width.mas_equalTo(VW(380));
                    make.height.mas_equalTo(VH(375));
                }
            }
           
        }];
    }
    return _sdkContentView;
}

#pragma mark -頁面添加部分

-(SDKBaseView *)addLoginWithRegView_MMMethodMMM
{
    //移除所有子视图
    //    [[self sdkContentView].subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    if (is_Version2) {
        mLoginWithRegView = [[LoginWithRegViewV2 alloc] initView_MMMethodMMM];
    }else{
        mLoginWithRegView = [[LoginWithRegView alloc] initView_MMMethodMMM];
    }
    
    [self addSubSdkLoginView_MMMethodMMM:mLoginWithRegView];
    return mLoginWithRegView;
}

-(void)addWelcomeView_MMMethodMMM
{
    //移除所有子视图
//    [[self sdkContentView].subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    for (UIView *subView in [self sdkContentView].subviews) {
        [subView removeFromSuperview];
    }
    mWelcomeBackView = [[WelcomeBackView alloc] initView_MMMethodMMM];
    [self addSubSdkLoginView_MMMethodMMM:mWelcomeBackView];
}


-(SDKBaseView *)addTermsView_MMMethodMMM//服務條款
{
    TermsView *mTermsView = [[TermsView alloc] initWithCompleter_MMMethodMMM:^{
        //[self addMainLoginView];//同意之后打开登录页面
        
    }];
    
    mTermsView.delegate = self;
    [self addSubSdkLoginView_MMMethodMMM:mTermsView];
    
    return mTermsView;
}

//-(void)addAutoLoginView //自动登录中界面
//{
//
//    mAutoLoginView = [[SdkAutoLoginView alloc] initView_MMMethodMMM];
//    mAutoLoginView.delegate = self;
//    mAutoLoginView.theViewUIViewController = self;
//    [self.view addSubview:mAutoLoginView];
//
//    [mAutoLoginView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerX.equalTo(@(0));
//        make.centerY.equalTo(@(0));
//        make.width.equalTo(@(kBgWidth - 20));
//        make.height.equalTo(@(kBgHeight * 0.5));
//    }];
//}

//-(void)addAccountLoginView
//{
//
//    mAccountLoginView = [[AccountLoginView alloc] initView_MMMethodMMM];
//    [self addSubSdkLoginView_MMMethodMMM:mAccountLoginView];
//}

//-(void)addRegisterAccountView
//{
//    //綁定和註冊共用頁面
//    RegisterAccountView *mRegisterAccountView = [[RegisterAccountView alloc] initView_MMMethodMMM];
//    [self addSubSdkLoginView_MMMethodMMM:mRegisterAccountView];
//}

-(SDKBaseView *)addBindAccountView_MMMethodMMM
{
    BindAccountView *view = [[BindAccountView alloc] initView_MMMethodMMM];
    [self addSubSdkLoginView_MMMethodMMM:view];
    return view;
}

-(SDKBaseView *)addChangePasswordView_MMMethodMMM
{
    
    ChangePasswordView *view = [[ChangePasswordView alloc] initView_MMMethodMMM];
    [self addSubSdkLoginView_MMMethodMMM:view];
    return view;
}

-(void)addSelectBindTypeView_MMMethodMMM
{
    
    SelectBindTypeView *view = [[SelectBindTypeView alloc] initView_MMMethodMMM];
    [self addSubSdkLoginView_MMMethodMMM:view];
}

-(void)addFindPasswordView_MMMethodMMM
{
    if (is_Version2) {
        
        FindPasswordViewV2 *view = [[FindPasswordViewV2 alloc] initView_MMMethodMMM];
        [self addSubSdkLoginView_MMMethodMMM:view];
        
    }else{
        FindPasswordView *view = [[FindPasswordView alloc] initView_MMMethodMMM];
        [self addSubSdkLoginView_MMMethodMMM:view];
    }
   
}

-(void)addHomeView_MMMethodMMM
{
    //移除所有子视图
//    [[self sdkContentView_MMMethodMMM].subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    for (UIView *subView in [self sdkContentView].subviews) {
        [subView removeFromSuperview];
    }
    if (is_Version2) {
        mMainHomeView = [[MainHomeViewV2 alloc] initView_MMMethodMMM];
    }else{
        mMainHomeView = [[MainHomeView alloc] initView_MMMethodMMM];
    }
    
    [self addSubSdkLoginView_MMMethodMMM:mMainHomeView];
}



-(void)addSubSdkLoginView_MMMethodMMM:(SDKBaseView *)mSDKBaseView
{
    
    mSDKBaseView.delegate = self;
//    mSDKBaseView.theViewUIViewController = self;
//    mSDKBaseView.mUITextFieldDelegate = self;
    
    //移除所有子视图
    //    [[self sdkContentView].subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
//    [self.sdkContentView.subviews makeObjectsPerformSelector:@selector(setHidden:) withObject:@YES];
    
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
// keybord down
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event  //system_method
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
            [self addHomeView_MMMethodMMM];//選擇登入方式
            break;
            
        case CURRENT_PAGE_TYPE_LOGIN_WITH_REG:
        {
            //[self addAccountLoginView];//賬號登入和注册頁面
            mView = [self addLoginWithRegView_MMMethodMMM];
            
        }
            break;
            
        case CURRENT_PAGE_TYPE_CHANGE_PWD:
            mView = [self addChangePasswordView_MMMethodMMM];
            break;
            
        case CURRENT_PAGE_TYPE_SELECT_BIND_TYPE:
            [self addSelectBindTypeView_MMMethodMMM];//選擇綁定方式頁面
            break;
            
        case CURRENT_PAGE_TYPE_BIND_ACCOUNT:
            mView = [self addBindAccountView_MMMethodMMM];//綁定賬號頁面
            break;
            
        case CURRENT_PAGE_TYPE_TEARMS:
        {
            mView = [self addTermsView_MMMethodMMM];//服务条款頁面
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
    //    if (count == 1) {
    //        [[backView superview] removeFromSuperview];
    //    }else if (count == 2){
    //        [[[backView superview] superview] removeFromSuperview];
    //    }
    //
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

-(void)changPasswordSuccess_MMMethodMMM //密码改变
{
    //    if (mAccountLoginView) {
    //        [mAccountLoginView updatePasswordData];
    //    }
}

-(void) handleLoginOrRegSuccess_MMMethodMMM:(id)responseData thirdPlate_MMMethodMMM:(NSString *)thirdPlate
{
    LoginResponse *loginResopnse = (LoginResponse *)responseData;
    SDK_DATA.mLoginResponse = loginResopnse;
    
    AccountModel *rData = loginResopnse.data;
    rData.loginType = thirdPlate;
    [[ConfigCoreUtil share] saveAccountModel_MMMethodMMM:rData];
    
    [[ConfigCoreUtil share] saveLoginType_MMMethodMMM:thirdPlate];
//    [SdkUserInfoModel shareInfoModel].userId = rData.userId;
//    [SdkUserInfoModel shareInfoModel].accessToken = rData.token;
    //[SdkUserInfoModel shareInfoModel].loginType = thirdPlate;
//    [SdkUserInfoModel shareInfoModel].loginTypeStr = thirdPlate;
//    [SdkUserInfoModel shareInfoModel].timestamp = rData.timestamp;
    
    if ([LOGIN_TYPE_SELF isEqualToString:thirdPlate]) {
        //是否需要保存账号密码
        //        if (SDK_DATA.mCCSDKResponse.account && SDK_DATA.mCCSDKResponse.password) {
        //            if (SDK_DATA.mCCSDKResponse.code == 1001) {//注册
        ////                [GamaAdInterface allEventReportWithEventName:GAMESWORD_EVENT_REGISTER parameters_MMMethodMMM:@{wwwww_tag_wwwww_userId:cc.userId}];
        //                [[ConfigCoreUtil share] saveAccount:SDK_DATA.mCCSDKResponse.account password_MMMethodMMM:SDK_DATA.mCCSDKResponse.password updateTime:YES];
        //            }else if([ConfigCoreUtil share].isSaveAccountInfo){//登录并勾选记住密码
        ////                [GamaAdInterface allEventReportWithEventName:GAMESWORD_EVENT_LOGIN parameters_MMMethodMMM:@{wwwww_tag_wwwww_userId:cc.userId}];
        //                [[ConfigCoreUtil share] saveAccount:SDK_DATA.mCCSDKResponse.account password_MMMethodMMM:SDK_DATA.mCCSDKResponse.password updateTime:YES];
        //            }
        //
        //        }
        
    }
    
    
    if (loginResopnse.code == BJResponseCode_OK_Register) {//注册
        [AdLogger logWithEventName_MMMethodMMM:AD_EVENT_REGISTER_SUCCESS parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
        
        [AdLogger logWithEventName_MMMethodMMM:FBSDKAppEventNameCompletedRegistration parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_FB];
        [AdLogger logWithEventName_MMMethodMMM:AD_EVENT_COMPLETE_REGISTRATION_IOS parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_FB];
        
        [AdLogger logWithEventName_MMMethodMMM:AD_EVENT_LOGIN_SUCCESS parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];//注册成功也是登录成功
        
        [AdLogger logServerWithEventName_MMMethodMMM:AD_EVENT_REGISTER_SUCCESS];
        [AdLogger logServerWithEventName_MMMethodMMM:AD_EVENT_LOGIN_SUCCESS];
        
    }else {//登录
        
        [AdLogger logServerWithEventName_MMMethodMMM:AD_EVENT_LOGIN_SUCCESS];
        [AdLogger logWithEventName_MMMethodMMM:AD_EVENT_LOGIN_SUCCESS parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
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
/**
 *    @brief    通知注册
 */
- (void)registNotification_MMMethodMMM
{
    // observe keyboard hide and show notifications to resize the text view appropriately
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow_MMMethodMMM:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide_MMMethodMMM:) name:UIKeyboardWillHideNotification object:nil];
}

#pragma mark --键盘弹出收起管理
-(void)keyboardWillShow_MMMethodMMM:(NSNotification *)note{
    SDK_LOG(wwwww_tag_wwwww_keyboardWillShow);
    if (self.currentEditingTextViewFrame.origin.y == 0) {//为0返回
        return;
    }
    
    //获取键盘高度
    NSDictionary* info = [note userInfo];
    CGSize kbSize = [[info objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size;
    SDK_DATA.keyBoardHeight = kbSize.height;
    CGFloat offSet = self.currentEditingTextViewFrame.origin.y + self.currentEditingTextViewFrame.size.height - (self.view.frame.size.height - kbSize.height);
    //将试图的Y坐标向上移动offset个单位，以使界面腾出开的地方用于软键盘的显示
    if (offSet > 0.01) {
        kWeakSelf
        [UIView animateWithDuration:0.3 animations:^{
            //weakSelf.tableView.contentOffset = CGPointMake(0, offSet);
            [weakSelf.sdkContentView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.centerY.equalTo(@(0)).mas_offset(-(offSet + 15));
            }];
        }];
    }
//    else if(offSet < - kInputTextFiledHeight){
//        kWeakSelf
//        [UIView animateWithDuration:0.3 animations:^{
//            //weakSelf.tableView.contentOffset = CGPointMake(0, offSet);
//            [self.sdkContentView mas_updateConstraints:^(MASConstraintMaker *make) {
//                make.centerY.equalTo(@(0));
//            }];
//        }];
//        self.currentEditingTextViewFrame = CGRectMake(0, 0, 0, 0);//设置为0
//    }
}

-(void)keyboardWillHide_MMMethodMMM:(NSNotification *)note{
    SDK_LOG(wwwww_tag_wwwww_keyboardWillHide);
    kWeakSelf
    [UIView animateWithDuration:0.3 animations:^{
        
        [weakSelf.sdkContentView mas_updateConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(@(0));
        }];
    }];
    self.currentEditingTextViewFrame = CGRectMake(0, 0, 0, 0);//设置为0
    SDK_DATA.keyBoardHeight = 0;
    
}
#pragma mark - UITextField Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField  //system_method
{
    SDK_LOG(wwwww_tag_wwwww_textFieldShouldReturn);
    [textField resignFirstResponder];
    return YES;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField  //system_method
{
    SDK_LOG(wwwww_tag_wwwww_textFieldShouldBeginEditing);
    //获取当前输入文本框相对于当前view的位置
    self.currentEditingTextViewFrame = [textField convertRect:textField.frame toView:self.view];
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField  //system_method
{
    SDK_LOG(wwwww_tag_wwwww_textFieldShouldEndEditing);
    
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField   //system_method
{
    SDK_LOG(wwwww_tag_wwwww_textFieldDidBeginEditing);
}

- (void)textFieldDidEndEditing:(UITextField *)textField //system_method
{
    SDK_LOG(wwwww_tag_wwwww_textFieldDidEndEditing);
}

//===============================

@end
