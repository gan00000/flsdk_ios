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

-(instancetype)initWithPageType:(SDKPage) pageType
{
    self = [super init];
    if (self) {
        sdkPageType = pageType;
        [self registNotification];
    }
    
    return self;
}

// 视图被销毁
- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    SDK_DATA.mUITextFieldDelegate = nil;
    SDK_LOG(@"dealloc视图被销毁");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    SDK_LOG(@"viewDidLoad");
    self.view.backgroundColor = [UIColor colorWithHexString:@"#000000" andAlpha:0.9];//[UIColor clearColor];
    
    SDK_DATA.mUITextFieldDelegate = self;
    switch (sdkPageType) {
        case SDKPage_Login:
        {
            [self showLoginPageOrAutoLogin];
        }
            break;
            
        case SDKPage_LoginType:
        {
        }
            break;
        default:
            break;
    }
    [AdLogger logWithEventName:AD_EVENT_OPEN_LOGIN_SCREEN parameters:nil type:AdType_Appflyer|AdType_Firebase];
}

- (void)viewDidAppear:(BOOL)animated
{
    SDK_LOG(@"viewDidAppear");
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    SDK_LOG(@"viewWillAppear");
}

- (void)viewWillDisappear:(BOOL)animated
{
    SDK_LOG(@"viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated
{
    SDK_LOG(@"viewDidDisappear");
}


-(void)showLoginPageOrAutoLogin
{
    
    //    if ([TermsView openProvision]) {//是否打开服务条款页面，没同意过需要打开
    //        [self showTramsView];
    //    }else{
    //
    //        NSString *loginType = [ConfigCoreUtil share].loginType;
    //        if (SDK_DATA.isNeedAutoLogin && loginType && ![loginType isEqualToString:@""]) {//是否需要自动登录
    //            if ([loginType isEqualToString:LOGIN_TYPE_SELF]) {//自動登錄
    //                NSArray *accounts = [[ConfigCoreUtil share] getAccountModels];
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
    //            NSArray *accounts = [[ConfigCoreUtil share] getAccountModels];
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
    
    NSArray<AccountModel *> *accountModels = [[ConfigCoreUtil share] getAccountModels];
    if (accountModels && accountModels.count > 0) {
        [self addWelcomeView];
    }else{
        [self addHomeView];
    }
    
}

-(UIView *) sdkContentView
{
    if (!_sdkContentView) {
        _sdkContentView = [[UIView alloc]init];
        //        sdkContentView.backgroundColor = [UIColor redColor];
        [self.view addSubview:_sdkContentView];
        [_sdkContentView mas_makeConstraints:^(MASConstraintMaker *make) {
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
           
        }];
    }
    return _sdkContentView;
}

#pragma mark -頁面添加部分

-(SDKBaseView *)addLoginWithRegView
{
    //移除所有子视图
    //    [[self sdkContentView].subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    if (is_Version2) {
        mLoginWithRegView = [[LoginWithRegViewV2 alloc] initView];
    }else{
        mLoginWithRegView = [[LoginWithRegView alloc] initView];
    }
    
    [self addSubSdkLoginView:mLoginWithRegView];
    return mLoginWithRegView;
}

-(void)addWelcomeView
{
    //移除所有子视图
//    [[self sdkContentView].subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    for (UIView *subView in [self sdkContentView].subviews) {
        [subView removeFromSuperview];
    }
    mWelcomeBackView = [[WelcomeBackView alloc] initView];
    [self addSubSdkLoginView:mWelcomeBackView];
}


-(SDKBaseView *)addTermsView//服務條款
{
    TermsView *mTermsView = [[TermsView alloc] initWithCompleter:^{
        //[self addMainLoginView];//同意之后打开登录页面
        
    }];
    
    mTermsView.delegate = self;
    [self addSubSdkLoginView:mTermsView];
    
    return mTermsView;
}

//-(void)addAutoLoginView //自动登录中界面
//{
//
//    mAutoLoginView = [[SdkAutoLoginView alloc] initView];
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
//    mAccountLoginView = [[AccountLoginView alloc] initView];
//    [self addSubSdkLoginView:mAccountLoginView];
//}

//-(void)addRegisterAccountView
//{
//    //綁定和註冊共用頁面
//    RegisterAccountView *mRegisterAccountView = [[RegisterAccountView alloc] initView];
//    [self addSubSdkLoginView:mRegisterAccountView];
//}

-(SDKBaseView *)addBindAccountView
{
    BindAccountView *view = [[BindAccountView alloc] initView];
    [self addSubSdkLoginView:view];
    return view;
}

-(SDKBaseView *)addChangePasswordView
{
    
    ChangePasswordView *view = [[ChangePasswordView alloc] initView];
    [self addSubSdkLoginView:view];
    return view;
}

-(void)addSelectBindTypeView
{
    
    SelectBindTypeView *view = [[SelectBindTypeView alloc] initView];
    [self addSubSdkLoginView:view];
}

-(void)addFindPasswordView
{
    
    FindPasswordView *view = [[FindPasswordView alloc] initView];
    [self addSubSdkLoginView:view];
}

-(void)addHomeView
{
    //移除所有子视图
//    [[self sdkContentView].subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    for (UIView *subView in [self sdkContentView].subviews) {
        [subView removeFromSuperview];
    }
    if (is_Version2) {
        mMainHomeView = [[MainHomeViewV2 alloc] initView];
    }else{
        mMainHomeView = [[MainHomeView alloc] initView];
    }
    
    [self addSubSdkLoginView:mMainHomeView];
}



-(void)addSubSdkLoginView:(SDKBaseView *)mSDKBaseView
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
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}


- (void)_animationWithView:(UIView *)view frame:(CGRect)viewFrame duration:(NSTimeInterval)duration
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:duration];
    [view setFrame:viewFrame];
    [UIView commitAnimations];
}

#pragma mark - LoginViewDelegate代理

-(void)goPageView:(CURRENT_PAGE_TYPE) pageType;
{
    [self goPageView:pageType from:CURRENT_PAGE_TYPE_NULL param:@(0)];
    
}

- (void)goPageView:(CURRENT_PAGE_TYPE)toPage from:(CURRENT_PAGE_TYPE)fromPage param:(id)obj
{
    SDKBaseView *mView;
    switch (toPage) {
        case CURRENT_PAGE_TYPE_AUTO:
            
            break;
            
        case CURRENT_PAGE_TYPE_FIND_PWD:
            [self addFindPasswordView];
            break;
            
        case CURRENT_PAGE_TYPE_MAIN_HOME:
            [self addHomeView];//選擇登入方式
            break;
            
        case CURRENT_PAGE_TYPE_LOGIN_WITH_REG:
        {
            //[self addAccountLoginView];//賬號登入和注册頁面
            mView = [self addLoginWithRegView];
            
        }
            break;
            
        case CURRENT_PAGE_TYPE_CHANGE_PWD:
            mView = [self addChangePasswordView];
            break;
            
        case CURRENT_PAGE_TYPE_SELECT_BIND_TYPE:
            [self addSelectBindTypeView];//選擇綁定方式頁面
            break;
            
        case CURRENT_PAGE_TYPE_BIND_ACCOUNT:
            mView = [self addBindAccountView];//綁定賬號頁面
            break;
            
        case CURRENT_PAGE_TYPE_TEARMS:
        {
            mView = [self addTermsView];//服务条款頁面
        }
            break;
        default:
            break;
    }
    
    if (mView && fromPage && fromPage != CURRENT_PAGE_TYPE_NULL) {
        mView.fromPage = fromPage;
        mView.fromPageParam = obj;
        [mView initData];
    }
}

-(void)goBackBtn:(UIView *)backView backCount:(NSUInteger) count fromPage:(CURRENT_PAGE_TYPE) fromPage toPage:(CURRENT_PAGE_TYPE) toPage{
    
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
                [self addHomeView];
            }
            break;
            
        case CURRENT_PAGE_TYPE_WELCOME_BACK:
            if (mWelcomeBackView) {
                mWelcomeBackView.hidden = NO;
            }else{
                [self addWelcomeView];
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

- (void)logout
{
    
}

- (void)loginSuccess
{
    
}


-(void)cancelAutoSwitchAccount
{
    
    [self goPageView:CURRENT_PAGE_TYPE_LOGIN_ACCOUNT];
}

-(void)changPasswordSuccess //密码改变
{
    //    if (mAccountLoginView) {
    //        [mAccountLoginView updatePasswordData];
    //    }
}

-(void) handleLoginOrRegSuccess:(id)responseData thirdPlate:(NSString *)thirdPlate
{
    LoginResponse *loginResopnse = (LoginResponse *)responseData;
    SDK_DATA.mLoginResponse = loginResopnse;
    
    AccountModel *rData = loginResopnse.data;
    rData.loginType = thirdPlate;
    [[ConfigCoreUtil share] saveAccountModel:rData];
    
    [[ConfigCoreUtil share] saveLoginType:thirdPlate];
//    [SdkUserInfoModel shareInfoModel].userId = rData.userId;
//    [SdkUserInfoModel shareInfoModel].accessToken = rData.token;
    //[SdkUserInfoModel shareInfoModel].loginType = thirdPlate;
//    [SdkUserInfoModel shareInfoModel].loginTypeStr = thirdPlate;
//    [SdkUserInfoModel shareInfoModel].timestamp = rData.timestamp;
    
    if ([LOGIN_TYPE_SELF isEqualToString:thirdPlate]) {
        //是否需要保存账号密码
        //        if (SDK_DATA.mCCSDKResponse.account && SDK_DATA.mCCSDKResponse.password) {
        //            if (SDK_DATA.mCCSDKResponse.code == 1001) {//注册
        ////                [GamaAdInterface allEventReportWithEventName:GAMESWORD_EVENT_REGISTER parameters:@{@"userId":cc.userId}];
        //                [[ConfigCoreUtil share] saveAccount:SDK_DATA.mCCSDKResponse.account password:SDK_DATA.mCCSDKResponse.password updateTime:YES];
        //            }else if([ConfigCoreUtil share].isSaveAccountInfo){//登录并勾选记住密码
        ////                [GamaAdInterface allEventReportWithEventName:GAMESWORD_EVENT_LOGIN parameters:@{@"userId":cc.userId}];
        //                [[ConfigCoreUtil share] saveAccount:SDK_DATA.mCCSDKResponse.account password:SDK_DATA.mCCSDKResponse.password updateTime:YES];
        //            }
        //
        //        }
        
    }
    
    
    if (loginResopnse.code == BJResponseCode_OK_Register) {//注册
        [AdLogger logWithEventName:AD_EVENT_REGISTER_SUCCESS parameters:nil type:AdType_Appflyer|AdType_Firebase];
        
        [AdLogger logWithEventName:FBSDKAppEventNameCompletedRegistration parameters:nil type:AdType_FB];
        [AdLogger logWithEventName:AD_EVENT_COMPLETE_REGISTRATION_IOS parameters:nil type:AdType_FB];
        
    }else {//登录
        [AdLogger logWithEventName:AD_EVENT_LOGIN_SUCCESS parameters:nil type:AdType_Appflyer|AdType_Firebase];
    }
    
    if ([MWSDK share].loginCompletionHandler) {
        LoginData *loginData = [[LoginData alloc] init];
        loginData.accessToken = rData.token;
        loginData.userId = rData.userId;
        loginData.timestamp = rData.timestamp;
        
        loginData.isBind = rData.isBind;
        loginData.isBindPhone = rData.isBindPhone;
        loginData.loginType = thirdPlate;
        
        [MWSDK share].loginCompletionHandler(loginData);
    }
    
    [self dismissViewControllerAnimated:NO completion:^{
        
    }];
}



#pragma mark notification 通知管理
/**
 *    @brief    通知注册
 */
- (void)registNotification
{
    // observe keyboard hide and show notifications to resize the text view appropriately
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
}

#pragma mark --键盘弹出收起管理
-(void)keyboardWillShow:(NSNotification *)note{
    SDK_LOG(@"keyboardWillShow");
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
            [self.sdkContentView mas_updateConstraints:^(MASConstraintMaker *make) {
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

-(void)keyboardWillHide:(NSNotification *)note{
    SDK_LOG(@"keyboardWillHide");
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

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    SDK_LOG(@"textFieldShouldReturn");
    [textField resignFirstResponder];
    return YES;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    SDK_LOG(@"textFieldShouldBeginEditing");
    //获取当前输入文本框相对于当前view的位置
    self.currentEditingTextViewFrame = [textField convertRect:textField.frame toView:self.view];
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    SDK_LOG(@"textFieldShouldEndEditing");
    
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    SDK_LOG(@"textFieldDidBeginEditing");
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    SDK_LOG(@"textFieldDidEndEditing");
}

//===============================

@end
