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
#import "SdkAutoLoginView.h"
#import "FindPasswordView.h"
#import "SelectLoginTypeView.h"
#import "YYModel.h"
#import "CCSDKResponse.h"
#import "AccountModel.h"
#import "Masonry.h"
#import "TermsView.h"

#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@implementation SDKLoginViewController{
    SelectLoginTypeView *mSelectLoginTypeView;
    SDKPage sdkPageType;
   
    AccountLoginView *mAccountLoginView;
    SdkAutoLoginView *mAutoLoginView;
    
    UIView *sdkContentView;
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
    SDK_LOG(@"dealloc视图被销毁");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    SDK_LOG(@"viewDidLoad");
    self.view.backgroundColor = [UIColor clearColor];
    
   // [self registNotification];
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
            
        case SDKPage_UnBind:
        {
            
        }
            break;
        default:
            break;
    }

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
    
    if ([TermsView openProvision]) {//是否打开服务条款页面，没同意过需要打开
        TermsView *mTermsView = [[TermsView alloc] initWithCompleter:^{
            [self addSelectLoginTypeView];//同意之后打开登录页面
        }];

        [self addTermsView:mTermsView];
    }else{

        NSString *loginType = [ConfigCoreUtil share].loginType;
        if (SDK_DATA.isNeedAutoLogin && loginType && ![loginType isEqualToString:@""]) {//是否需要自动登录
            if ([loginType isEqualToString:_SDK_PLAT_SELF]) {//自動登錄
                NSArray *accounts = [[ConfigCoreUtil share] getAccountModels];
               if (!accounts || accounts.count == 0) {
                   [self addSelectLoginTypeView];
                   return;
               }
            }else if ([loginType isEqualToString:_SDK_PLAT_MAC])
            {
                [self addSelectLoginTypeView];
                return;
            }
             [self addAutoLoginView];
           
        }else{
             [self addSelectLoginTypeView];
        }

    }
    
  
}

-(UIView *) sdkContentView
{
    if (!sdkContentView) {
        sdkContentView = [[UIView alloc]init];
        sdkContentView.backgroundColor = [UIColor clearColor];
        [self.view addSubview:sdkContentView];
        [sdkContentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(@(0));
            make.centerY.equalTo(@(0));
            make.width.equalTo(@(kBgWidth));
            make.height.equalTo(@(kBgHeight));
        }];
    }
    return sdkContentView;
}

#pragma mark -頁面添加部分
-(void)addSelectLoginTypeView
{
    //移除所有子视图
    [[self sdkContentView].subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    mSelectLoginTypeView = [[SelectLoginTypeView alloc] initView];
    [self addSubSdkLoginView:mSelectLoginTypeView];
}


-(void)addTermsView:(TermsView *)mTermsView //服務條款
{
    int width = kBgWidth;
    int height = kBgHeight;
    if (Device_Is_Landscape) {
        width = SCREEN_WIDTH * 0.7;
    }else{
         height = kBgHeight + 60;
    }
    [self.view addSubview:mTermsView];
    [mTermsView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(width));
        make.height.equalTo(@(height));
    }];
    
}

-(void)addAutoLoginView //自动登录中界面
{
    
    mAutoLoginView = [[SdkAutoLoginView alloc] initView];
    mAutoLoginView.delegate = self;
    mAutoLoginView.theViewUIViewController = self;
    [self.view addSubview:mAutoLoginView];
    
    [mAutoLoginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(kBgWidth - 20));
        make.height.equalTo(@(kBgHeight * 0.5));
    }];
}

-(void)addAccountLoginView
{
    
    mAccountLoginView = [[AccountLoginView alloc] initView];
    [self addSubSdkLoginView:mAccountLoginView];
}

-(void)addRegisterAccountView
{
    //綁定和註冊共用頁面
    RegisterAccountView *mRegisterAccountView = [[RegisterAccountView alloc] initView];
    [self addSubSdkLoginView:mRegisterAccountView];
}

-(void)addBindAccountView:(NSInteger) p
{
    //綁定和註冊共用頁面
    RegisterAccountView *mRegisterAccountView = [[RegisterAccountView alloc] initViewWithBindType:p];
    [self addSubSdkLoginView:mRegisterAccountView];
}

-(void)addChangePasswordView
{
    
    ChangePasswordView *view = [[ChangePasswordView alloc] initView];
    [self addSubSdkLoginView:view];
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


-(void)addSubSdkLoginView:(SDKBaseView *)mSDKBaseView
{
    
    mSDKBaseView.delegate = self;
    mSDKBaseView.theViewUIViewController = self;
    mSDKBaseView.mUITextFieldDelegate = self;
    [[self sdkContentView] addSubview:mSDKBaseView];

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
    [self goPageView:pageType param:0];
    
}

- (void)goPageView:(CURRENT_PAGE_TYPE)pageType param:(NSInteger)p
{
    switch (pageType) {
        case CURRENT_PAGE_TYPE_AUTO:
            
            break;
            
        case CURRENT_PAGE_TYPE_FIND_PWD:
            [self addFindPasswordView];
            break;
            
        case CURRENT_PAGE_TYPE_SELECT_LOGIN_TYPE:
            [self addSelectLoginTypeView];//選擇登入方式
            break;
            
        case CURRENT_PAGE_TYPE_LOGIN_ACCOUNT:
            [self addAccountLoginView];//賬號登入頁面
            break;
            
        case CURRENT_PAGE_TYPE_REG_ACCOUNT:
            [self addRegisterAccountView];//註冊
            break;
            
        case CURRENT_PAGE_TYPE_CHANGE_PWD:
            [self addChangePasswordView];
            break;
            
        case CURRENT_PAGE_TYPE_SELECT_BIND_TYPE:
            [self addSelectBindTypeView];//選擇綁定方式頁面
            break;
            
        case CURRENT_PAGE_TYPE_BIND_ACCOUNT:
                   [self addBindAccountView:p];//綁定賬號頁面
                   break;
        default:
            break;
    }
}

- (void)goBackBtn:(UIView *)backView backCount:(NSUInteger) count{
    if (count == 1) {
        [[backView superview] removeFromSuperview];
    }else if (count == 2){
        [[[backView superview] superview] removeFromSuperview];
    }
    
}

- (void)logout
{
    
}

- (void)loginSuccess
{
    
}


-(void)cancelAutoSwitchAccount
{
    
    [self goPageView:CURRENT_PAGE_TYPE_SELECT_LOGIN_TYPE];
}

-(void)changPasswordSuccess //密码改变
{
    if (mAccountLoginView) {
        [mAccountLoginView updatePasswordData];
    }
}

-(void) handleLoginOrRegSuccess:(id)responseData thirdPlate:(NSString *)thirdPlate
{
    CCSDKResponse *cc = (CCSDKResponse *)responseData;
    cc.thirdPlate = thirdPlate;
    SDK_DATA.mCCSDKResponse = cc;
    [[ConfigCoreUtil share] saveLoginType:thirdPlate];
    [SdkUserInfoModel shareInfoModel].userId = cc.userId;
    [SdkUserInfoModel shareInfoModel].accessToken = cc.accessToken;
    //[SdkUserInfoModel shareInfoModel].loginType = thirdPlate;
    [SdkUserInfoModel shareInfoModel].loginTypeStr = thirdPlate;
    [SdkUserInfoModel shareInfoModel].timestamp = cc.timestamp;
    
    if ([_SDK_PLAT_SELF isEqualToString:thirdPlate]) {
        //是否需要保存账号密码
        if (SDK_DATA.mCCSDKResponse.account && SDK_DATA.mCCSDKResponse.password) {
            if (SDK_DATA.mCCSDKResponse.code == 1001) {//注册
                [GamaAdInterface allEventReportWithEventName:GAMESWORD_EVENT_REGISTER parameters:@{@"userId":cc.userId}];
                [[ConfigCoreUtil share] saveAccount:SDK_DATA.mCCSDKResponse.account password:SDK_DATA.mCCSDKResponse.password updateTime:YES];
            }else if([ConfigCoreUtil share].isSaveAccountInfo){//登录并勾选记住密码
                [GamaAdInterface allEventReportWithEventName:GAMESWORD_EVENT_LOGIN parameters:@{@"userId":cc.userId}];
                [[ConfigCoreUtil share] saveAccount:SDK_DATA.mCCSDKResponse.account password:SDK_DATA.mCCSDKResponse.password updateTime:YES];
            }
            
        }

    }
    
    if ([FLSDK share].loginCompletionHandler) {
        LoginData *loginData = [[LoginData alloc] init];
        loginData.accessToken = SDK_DATA.mCCSDKResponse.accessToken;
        loginData.userId = SDK_DATA.mCCSDKResponse.userId;
        loginData.timestamp = SDK_DATA.mCCSDKResponse.timestamp;
        
        [FLSDK share].loginCompletionHandler(loginData);
    }
    
    [self dismissViewControllerAnimated:NO completion:^{
        
    }];
}



#pragma mark notification 通知管理
/**
 *    @brief    通知注册
 *    @return
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
    //140是文本框的高度，如果你的文本框高度不一样，则可以进行不同的调整
    CGFloat offSet = self.currentEditingTextViewFrame.origin.y + kInputTextFiledHeight*2 - (self.view.frame.size.height - kbSize.height);
    //将试图的Y坐标向上移动offset个单位，以使界面腾出开的地方用于软键盘的显示
    if (offSet > 0.01) {
        kWeakSelf
        [UIView animateWithDuration:0.3 animations:^{
            //weakSelf.tableView.contentOffset = CGPointMake(0, offSet);
            [sdkContentView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.centerY.equalTo(@(0)).mas_offset(-offSet);
            }];
        }];
    }else if(offSet < - kInputTextFiledHeight){
        kWeakSelf
        [UIView animateWithDuration:0.3 animations:^{
            //weakSelf.tableView.contentOffset = CGPointMake(0, offSet);
            [sdkContentView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.centerY.equalTo(@(0));
            }];
        }];
        self.currentEditingTextViewFrame = CGRectMake(0, 0, 0, 0);//设置为0
    }
}

-(void)keyboardWillHide:(NSNotification *)note{
   SDK_LOG(@"keyboardWillHide");
    kWeakSelf
    [UIView animateWithDuration:0.3 animations:^{
        //weakSelf.tableView.contentOffset = CGPointMake(0, offSet);
        [sdkContentView mas_updateConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(@(0));
        }];
    }];
    self.currentEditingTextViewFrame = CGRectMake(0, 0, 0, 0);//设置为0
    
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
