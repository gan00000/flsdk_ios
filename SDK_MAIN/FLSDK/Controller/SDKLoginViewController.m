//
//  CCSkyHourLoginViewController.m
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/29.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

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

//@property (nonatomic,strong)UIView *mLoginWithRegView;
//@property (nonatomic,strong)UIView *mMainHomeView;
//@property (nonatomic,strong)UIView *sdkContentView;

@end

@implementation SDKLoginViewController{
    
    SDKPage sdkPageType;
    
    //    AccountLoginView *mAccountLoginView;
    SDKBaseView *mAutoLoginView;
    SDKBaseView *mLoginWithRegView;
    SDKBaseView *mMainHomeView;
//    SDKBaseView *mWelcomeBackView;
    
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
    SDK_DATA.mUITextFieldDelegate_MMMPRO = nil;
    SDK_LOG(wwwww_tag_wwwww_roboracity_starety);
}

- (void)viewDidLoad {   //system_method
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    SDK_LOG(wwwww_tag_wwwww_viewDidLoad);
    self.view.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.9];//[UIColor clearColor];
    
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
//    [AdLogger logServerWithEventName_MMMethodMMM:AD_EVENT_OPEN_LOGIN_SCREEN];
//    [AdLogger logWithEventName_MMMethodMMM:AD_EVENT_OPEN_LOGIN_SCREEN parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_All];
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


-(void)showLoginPageOrAutoLogin_MMMethodMMM:(CURRENT_PAGE_TYPE) page
{
    
    
    ConfigModel *mConfigModel = SDK_DATA.mConfigModel_MMMPRO;
   
    NSArray<AccountModel *> *accountModels = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
    if (accountModels && accountModels.count > 0) {
        
        [self addAutoLoginView_MMMethodMMM];//自动登录
        
        
    }else{
        [self addLoginWithRegView_MMMethodMMM];//跳到注册
    }
    
}


-(UIView *)sdkContentView_MMMPRO
{
    if (!_sdkContentView_MMMPRO) {
        _sdkContentView_MMMPRO = [[UIView alloc]init];
        //        sdkContentView.backgroundColor = [UIColor redColor];
        [self.view addSubview:_sdkContentView_MMMPRO];
        [_sdkContentView_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
            
            if([SDK_VERSION_VN isEqualToString:[SDKRES getSdkVersion_MMMethodMMM]] ||
               [SDK_VERSION_V6 isEqualToString:[SDKRES getSdkVersion_MMMethodMMM]] ||
               [SDK_VERSION_KR isEqualToString:[SDKRES getSdkVersion_MMMethodMMM]]){
                
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
    return _sdkContentView_MMMPRO;
}

#pragma mark -頁面添加部分


//这里是第一个页面
-(SDKBaseView *)addLoginWithRegView_MMMethodMMM
{
    //移除所有子视图
    //    [[self sdkContentView].subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    for (UIView *subView in [self sdkContentView_MMMPRO].subviews) {
        [subView removeFromSuperview];
    }
    
    mLoginWithRegView = [[LoginWithRegViewV2 alloc] initView_MMMethodMMM];
    
    [self addSubSdkLoginView_MMMethodMMM:mLoginWithRegView];
    return mLoginWithRegView;
}



//-(SDKBaseView *)addTermsView_MMMethodMMM//服務條款
//{
//}

-(void)addAutoLoginView_MMMethodMMM //自动登录中界面
{

    
    for (UIView *subView in [self sdkContentView_MMMPRO].subviews) {
        [subView removeFromSuperview];
    }
    mAutoLoginView = [[AutoLoginView alloc] initView_MMMethodMMM];
    [self addSubSdkLoginView_MMMethodMMM:mAutoLoginView];
}

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

//-(SDKBaseView *)addBindAccountView_MMMethodMMM
//{
//    BindAccountView *view = [[BindAccountView alloc] initView_MMMethodMMM];
//    [self addSubSdkLoginView_MMMethodMMM:view];
//    return view;
//}
//
//-(SDKBaseView *)addChangePasswordView_MMMethodMMM
//{
//
//    ChangePasswordView *view = [[ChangePasswordView alloc] initView_MMMethodMMM];
//    [self addSubSdkLoginView_MMMethodMMM:view];
//    return view;
//}

//-(void)addSelectBindTypeView_MMMethodMMM
//{
//
//    SelectBindTypeView *view = [[SelectBindTypeView alloc] initView_MMMethodMMM];
//    [self addSubSdkLoginView_MMMethodMMM:view];
//}

-(void)addFindPasswordView_MMMethodMMM
{
    FindPasswordViewV2 *view = [[FindPasswordViewV2 alloc] initView_MMMethodMMM];
    [self addSubSdkLoginView_MMMethodMMM:view];
}

-(void)addHomeView_MMMethodMMM
{
    //移除所有子视图
//    [[self sdkContentView_MMMethodMMM].subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    for (UIView *subView in [self sdkContentView_MMMPRO].subviews) {
        [subView removeFromSuperview];
    }
    mMainHomeView = [[MainHomeViewV2 alloc] initView_MMMethodMMM];
    [self addSubSdkLoginView_MMMethodMMM:mMainHomeView];
}



-(void)addSubSdkLoginView_MMMethodMMM:(SDKBaseView *)mSDKBaseView
{
    
    mSDKBaseView.loginDelegate_MMMPRO = self;
//    mSDKBaseView.theViewUIViewController = self;
//    mSDKBaseView.mUITextFieldDelegate = self;
    
    //移除所有子视图
    //    [[self sdkContentView].subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
//    [self.sdkContentView.subviews makeObjectsPerformSelector:@selector(setHidden:) withObject:@YES];
    
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
            
//        case CURRENT_PAGE_TYPE_CHANGE_PWD:
//            mView = [self addChangePasswordView_MMMethodMMM];
//            break;
//
//        case CURRENT_PAGE_TYPE_SELECT_BIND_TYPE:
//            [self addSelectBindTypeView_MMMethodMMM];//選擇綁定方式頁面
//            break;
//
//        case CURRENT_PAGE_TYPE_BIND_ACCOUNT:
//            mView = [self addBindAccountView_MMMethodMMM];//綁定賬號頁面
//            break;
//
//        case CURRENT_PAGE_TYPE_TEARMS:
//        {
//            mView = [self addTermsView_MMMethodMMM];//服务条款頁面
//        }
//            break;
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
//            if (mWelcomeBackView) {
//                mWelcomeBackView.hidden = NO;
//            }else{
//                [self addWelcomeView_MMMethodMMM];
//            }
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
    SDK_DATA.mLoginResponse_MMMPRO = loginResopnse;
    
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
        //注册
        [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_af_complete_registration_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer];
        [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_sign_up_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Firebase];
        
        //注册成功也是登录成功
        [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_af_login_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer];
        [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_login_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Firebase];
        
        
        if ([LOGIN_TYPE_SELF isEqualToString:thirdPlate]) {
            
            [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_sign_up_account_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
            
            [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_login_account_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
            
        }else if([LOGIN_TYPE_GUEST isEqualToString:thirdPlate]){
            
            [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_sign_up_visitor_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
            
            [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_login_visitor_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
        }
        
//        [AdLogger logServerWithEventName_MMMethodMMM:AD_EVENT_REGISTER_SUCCESS];
//        [AdLogger logServerWithEventName_MMMethodMMM:AD_EVENT_LOGIN_SUCCESS];
        
        [[ConfigCoreUtil share] saveGameUserInfo_MMMethodMMM:loginResopnse];//记录，后面广告时间追踪使用
        
    }else {//登录
        
        [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_af_login_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer];//注册成功也是登录成功
        [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_login_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Firebase];
        
        if ([LOGIN_TYPE_SELF isEqualToString:thirdPlate]) {
            
            [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_login_account_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
            
        }else if([LOGIN_TYPE_GUEST isEqualToString:thirdPlate]){
            
            [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_login_visitor_hf parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
        }
        
        GameUserModel *xxGameUserModel = [[ConfigCoreUtil share] getGameUserInfo_MMMethodMMM:loginResopnse.data.userId];
//        if(xxGameUserModel && xxGameUserModel.isRegDayPay){//注册首日付费用户
//
//            NSString *yesterDate = [SUtil getYesterdayDateWithTimeStr_MMMethodMMM:loginResopnse.data.timestamp dateFormat_MMMethodMMM:@"yyyy-MM-dd"];
//            NSString *regDate = [SUtil getDateStringWithTimeStr_MMMethodMMM:xxGameUserModel.regTime dateFormat_MMMethodMMM:@"yyyy-MM-dd"];
//            SDK_LOG(wwwww_tag_wwwww_asant_shotot, yesterDate, regDate);
//            if([yesterDate isEqualToString:regDate] && xxGameUserModel.isRegDayPay){//玩家第二天登录上报
//                //注册首日付费玩家第二天登录上报
//                SDK_LOG(wwwww_tag_wwwww_log_event_Paid_D2Login_start);
//                [AdLogger logWithEventName_MMMethodMMM:wwwww_tag_wwwww_Paid_D2Login parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_All];
//            }
//        }
        
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
    if (self.currentEditingTextViewFrame_MMMPRO.origin.y == 0) {//为0返回
        return;
    }
    
    //获取键盘高度
    NSDictionary* info = [note userInfo];
    CGSize kbSize = [[info objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size;
    SDK_DATA.keyBoardHeight_MMMPRO = kbSize.height;
    CGFloat offSet = self.currentEditingTextViewFrame_MMMPRO.origin.y + self.currentEditingTextViewFrame_MMMPRO.size.height - (self.view.frame.size.height - kbSize.height);
    //将试图的Y坐标向上移动offset个单位，以使界面腾出开的地方用于软键盘的显示
    if (offSet > 0.01) {
        kWeakSelf
        [UIView animateWithDuration:0.3 animations:^{
            //weakSelf.tableView.contentOffset = CGPointMake(0, offSet);
            [weakSelf.sdkContentView_MMMPRO mas_updateConstraints:^(MASConstraintMaker *make) {
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
        
        [weakSelf.sdkContentView_MMMPRO mas_updateConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(@(0));
        }];
    }];
    self.currentEditingTextViewFrame_MMMPRO = CGRectMake(0, 0, 0, 0);//设置为0
    SDK_DATA.keyBoardHeight_MMMPRO = 0;
    
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
    self.currentEditingTextViewFrame_MMMPRO = [textField convertRect:textField.frame toView:self.view];
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
