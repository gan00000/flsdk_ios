//
//  AccountLoginView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/9.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "AccountLoginView.h"
#import "SDKTextFiledView.h"
#import "SdkHeader.h"
#import "LoginTitleView.h"
#import "LoginButton.h"
#import "AccountListViewCell.h"
#import "HttpServiceEngineLogin.h"
#import "YYModel.h"
#import "AccountModel.h"
#import "SdkUtil.h"
#import "UIColor+HexStringToColorTW.h"
#import "SDKRequest.h"
#import "LoginTypeButton.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import "AppleLogin.h"
#import "GamaFacebookPort.h"
#import "TermsView.h"

static  NSString *AccountListViewCellID = @"AccountListViewCellID";

@interface AccountLoginView() <UITableViewDelegate, UITableViewDataSource>
    


@end

//会员登入view
@implementation AccountLoginView
{
    SDKTextFiledView *passwordSDKTextFiledView;
    SDKTextFiledView *accountSDKTextFiledView;
//    UIButton *checkBoxBtn;
    UIButton *accountLoginBtn;
    UIButton *backBtn;
    UITableView *accountListTableView;
    
    NSMutableArray<AccountModel *>  *accountDataList;//账号列表数据
    
    BOOL isSaveAccountInfo;
    
    UIButton *checkBoxTermsBtn;
    
    AppleLogin *gamaAppleLogin;
    
    BOOL isAgree;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

- (instancetype)initView
{
    self = [super init];
    if (self) {
        
//        UIColor *color = [UIColor colorWithHexString:ContentViewBgColor];
//        self.backgroundColor = color;//UIColor.lightGrayColor;// 底图透明，控件不透明
//        self.layer.cornerRadius = 10; //设置圆角
//        self.layer.masksToBounds = YES;
        
        /**
        //登入頁logo
        UIImageView *logoImageView = [[UIImageView alloc] initWithImage:[UIImage gama_imageNamed:@"fl_sdk_logo"]];
        logoImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:logoImageView];
        [logoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(12);
            make.centerX.mas_equalTo(self);
            make.width.mas_equalTo(self).mas_offset(-30);
            make.height.mas_equalTo(kPageTitleHeight * 1.2);
        }];
        logoImageView.hidden = YES;
        
        backBtn = [UIUtil initBtnWithNormalImage:@"sdk_btn_back.png" highlightedImage:nil tag:kBackBtnActTag selector:@selector(registerViewBtnAction:) target:self];
        backBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:backBtn];
        [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(20);
            make.width.mas_equalTo(kInputTextFiledHeight * 0.6);
            make.top.equalTo(self).mas_offset(20);
            make.height.mas_equalTo(kInputTextFiledHeight * 0.6);
        }];
        backBtn.hidden = YES
         
         */
        
        //账号
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
    
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           // make.centerX.mas_equalTo(self);
            make.top.equalTo(self);
            make.leading.mas_equalTo(self).mas_offset(VW(42));
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            make.height.mas_equalTo(VH(40));
        }];
        
        
        //密码
        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password)];
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(22));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        
        //找回密碼
        
        UIButton *findPasswordBtn = [UIUtil initBtnWithTitleText:@"忘記密碼?" fontSize:FS(12) textColor:[UIColor colorWithHexString:@"#C0C0C0"] tag:kFindPwdActTag selector:@selector(registerViewBtnAction:) target:self];
        
        [self addSubview:findPasswordBtn];
        [findPasswordBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(7));
//            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
//            make.width.mas_equalTo(VW(140));
        }];
        
       
        //账号登入
//        accountLoginBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_ACCOUNT_LOGIN) tag:kAccountLoginActTag selector:@selector(registerViewBtnAction:)  target:self];
        
        accountLoginBtn = [UIUtil initBtnWithTitleText:@"登入" fontSize:FS(17) textColor:[UIColor whiteColor] tag:kAccountLoginActTag selector:@selector(registerViewBtnAction:) target:self];
        
        [accountLoginBtn.layer setCornerRadius:VH(20)];
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString:@"#F94925"];
        [self addSubview:accountLoginBtn];
        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(findPasswordBtn.mas_bottom).mas_offset(VH(30));
            make.width.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(VH(40));
        }];
        
        
        
    /**
        NSString *xtext = @"我已閱讀並同意定型化契約";
        UILabel *rememberTermsLable = [[UILabel alloc] init];
//        rememberTermsLable.text =  @"我已閱讀並同意定型化契約";
        rememberTermsLable.font = [UIFont systemFontOfSize:VH(20)];
        rememberTermsLable.textAlignment = NSTextAlignmentLeft;
        rememberTermsLable.backgroundColor = [UIColor clearColor];
        rememberTermsLable.numberOfLines = 1;
        rememberTermsLable.textColor = [UIColor blackColor];
        rememberTermsLable.adjustsFontSizeToFitWidth = YES;
        
        // 下划线
         NSDictionary *attribtDic = @{NSUnderlineStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleSingle],
                                      NSFontAttributeName: [UIFont systemFontOfSize:VH(20)]
         };
         NSMutableAttributedString *attribtStr = [[NSMutableAttributedString alloc]initWithString:xtext];
        [attribtStr addAttributes:attribtDic range: NSMakeRange(xtext.length-5, 5)];
         //赋值
        rememberTermsLable.attributedText = attribtStr;
        
        [self addSubview:rememberTermsLable];
        [rememberTermsLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(self).mas_offset(VW(20));
            make.width.mas_greaterThanOrEqualTo(VW(280));
            make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(10));
            make.height.mas_equalTo(VH(40));
        }];
        rememberTermsLable.userInteractionEnabled = YES; // 可以理解为设置label可被点击
        UITapGestureRecognizer *tapGr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(rememberTermsLableTapped:)];
        [rememberTermsLable addGestureRecognizer:tapGr];
        
        checkBoxTermsBtn = [UIUtil initBtnWithNormalImage:@"btn_checkbox_checked.png" highlightedImage:nil tag:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction:) target:self];
        
        [self addSubview:checkBoxTermsBtn];
        [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(rememberTermsLable.mas_leading).mas_offset(-4);
            make.centerY.mas_equalTo(rememberTermsLable);
            make.width.mas_equalTo(VH(26));
            make.height.mas_equalTo(VH(26));
        }];
        
        [TermsView saveAgreenProvisionState:YES];
        isAgree = [TermsView isAgreenProvision];
        if (isAgree) {
            [checkBoxTermsBtn setImage:GetImage(@"btn_checkbox_checked.png") forState:(UIControlStateNormal)];
        }else{
            [checkBoxTermsBtn setImage:GetImage(@"btn_checkbox_uncheck.png") forState:(UIControlStateNormal)];
        }
     */
//        NSUInteger w = VW(90 * 4) + VW(48 * 3);
//        if (@available(iOS 13.0, *)) {
//            w = VW(90 * 4) + VW(48 * 3);
//        }else{
//            w = VW(90 * 3) + VW(48 * 2);
//        }
        
        CGFloat btn_w = VW(28);
        CGFloat btn_h = btn_w;
        CGFloat margin_leading = VW(24);
        
        UIView *loginTypeView = [[UIView alloc] init];
        [self addSubview:loginTypeView];
        [loginTypeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
//            make.bottom.mas_equalTo(self).mas_offset(VH(-10));
            make.top.mas_equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(30));
//            make.centerX.mas_equalTo(self);
            make.height.mas_equalTo(btn_h);
        }];
        
        UILabel *otherLabelTips = [[UILabel alloc] init];
        otherLabelTips.font = [UIFont systemFontOfSize:FS(11)];
        otherLabelTips.text = @"其他登入";
        otherLabelTips.numberOfLines = 1; //0为多行
        otherLabelTips.textColor = [UIColor colorWithHexString:@"#C0C0C0"];
        
        [loginTypeView addSubview:otherLabelTips];
        [otherLabelTips mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(loginTypeView.mas_leading);
            make.centerY.mas_equalTo(loginTypeView);
           
        }];
        
        UIView *leadingView = otherLabelTips;
       
        LoginTypeButton *guestBtn = [[LoginTypeButton alloc] initWithType:guestLoginActTag title:@"遊客登入" image:@"mw_guest_icon" selector:@selector(registerViewBtnAction:) target:self];
        [loginTypeView addSubview:guestBtn];
        [guestBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(btn_w);
            make.height.mas_equalTo(btn_h);
            make.top.mas_equalTo(loginTypeView);
            make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(VW(8));
        }];
        leadingView = guestBtn;
        
        if (@available(iOS 13.0, *)) {
            ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                      authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleBlack];
            [appleLoginBtn addTarget:self action:@selector(registerViewBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
            appleLoginBtn.tag = appleLoginActTag;
            appleLoginBtn.cornerRadius = btn_w / 2;
            [loginTypeView addSubview:appleLoginBtn];
            
            [appleLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.mas_equalTo(btn_w);
                make.height.mas_equalTo(btn_h);
                make.top.mas_equalTo(loginTypeView);
                make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(margin_leading);
            }];
            
            leadingView = appleLoginBtn;
            
        }
        
        LoginTypeButton *fbBtn = [[LoginTypeButton alloc] initWithType:fbLoginActTag title:@"FB登入" image:@"mw_fb_icon" selector:@selector(registerViewBtnAction:) target:self];
        [loginTypeView addSubview:fbBtn];
        [fbBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(btn_w);
            make.height.mas_equalTo(btn_h);
            make.top.mas_equalTo(loginTypeView);
            make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(margin_leading);
        }];
        leadingView = fbBtn;
        
        LoginTypeButton *googleBtn = [[LoginTypeButton alloc] initWithType:googleLoginActTag title:@"" image:@"mw_gp_icon" selector:@selector(registerViewBtnAction:) target:self];
        [loginTypeView addSubview:googleBtn];
        [googleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(btn_w);
            make.height.mas_equalTo(btn_h);
            make.top.mas_equalTo(loginTypeView);
            make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(margin_leading);
        }];
        leadingView = googleBtn;
        
        
        LoginTypeButton *lineBtn = [[LoginTypeButton alloc] initWithType:lineLoginActTag title:@"" image:@"mw_line_icon" selector:@selector(registerViewBtnAction:) target:self];
        [loginTypeView addSubview:lineBtn];
        [lineBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(btn_w);
            make.height.mas_equalTo(btn_h);
            make.top.mas_equalTo(loginTypeView);
            make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(margin_leading);
        }];
        leadingView = lineBtn;
        
     
        [ConfigCoreUtil share].isSaveAccountInfo = YES;
        isSaveAccountInfo = YES;
        accountDataList = [NSMutableArray array];//账号列表数据
        
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
        if (mAccountArray.count > 0){//设置默认显示第一个，即按照时间排序最后登录的一个账号
            accountSDKTextFiledView.inputUITextField.text = mAccountArray[0].accountName;
            passwordSDKTextFiledView.inputUITextField.text = mAccountArray[0].accountPwd;
        }
        if (mAccountArray.count > 1) {
//            accountSDKTextFiledView.moreAccountBtn.hidden = NO;
            [accountDataList addObjectsFromArray:mAccountArray];
            
        }else{
//            accountSDKTextFiledView.moreAccountBtn.hidden = YES;
        }
        
        //添加账号显示列表
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            
            if (accountListTableView) {
                //设置点击显示、隐藏
                if (accountListTableView.tag == 0) {
                    [weakSelf setTableViewHiden:YES];
                }else{
                    NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
                   [accountDataList removeAllObjects];
                   [accountDataList addObjectsFromArray:mAccountArray];
                   [accountListTableView reloadData];
                    [weakSelf setTableViewHiden:NO];
                }
                
                
            }else{//第一次点击显示

                [self addAccountListTableView];
            }
            
        };
    }
    return self;
}

-(void)rememberTermsLableTapped:(UITapGestureRecognizer*)tapGr
{
    SDK_LOG(@"rememberTermsLableTapped");
    if (self.delegate) {
        [self.delegate goPageView:CURRENT_PAGE_TYPE_TEARMS];
    }
}

-(void) updatePasswordData{
    
   NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
    if (mAccountArray.count > 0){//设置默认显示第一个，即按照时间排序最后登录的一个账号
        accountSDKTextFiledView.inputUITextField.text = mAccountArray[0].accountName;
        passwordSDKTextFiledView.inputUITextField.text = mAccountArray[0].accountPwd;
    }
    [accountDataList removeAllObjects];
    [accountDataList addObjectsFromArray:mAccountArray];
    if (accountListTableView) {
        [accountListTableView reloadData];
    }
    
}

- (void)updateTermsStatus
{
    isAgree = [TermsView isAgreenProvision];
    if (isAgree) {
        [checkBoxTermsBtn setImage:GetImage(@"btn_checkbox_checked.png") forState:(UIControlStateNormal)];
    }else{
        [checkBoxTermsBtn setImage:GetImage(@"btn_checkbox_uncheck.png") forState:(UIControlStateNormal)];
    }
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    accountSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
    passwordSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
}

//设置隐藏或者显示
-(void) setTableViewHiden:(BOOL) hiden
{
    accountListTableView.hidden = hiden;
    if (hiden) {
        accountListTableView.tag = 1;
    }else{
        accountListTableView.tag = 0;
    }
}


- (void)addAccountListTableView
{
    //获取需要显示的数据
    NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
     [accountDataList removeAllObjects];
     [accountDataList addObjectsFromArray:mAccountArray];

    
    //账号下拉列表
    accountListTableView = [[UITableView alloc] init];
    accountListTableView.backgroundColor = [UIColor whiteColor];
    [self setTableViewHiden:NO];
    accountListTableView.delegate = self;
    accountListTableView.dataSource = self;
    accountListTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    //    accountListTableView.estimatedRowHeight = 0;
    //    accountListTableView.estimatedSectionFooterHeight = 0;
    //    accountListTableView.estimatedSectionHeaderHeight = 0;
    
    [accountListTableView registerClass:[AccountListViewCell class] forCellReuseIdentifier:AccountListViewCellID];
    [self addSubview:accountListTableView];
    [accountListTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
        make.top.equalTo(accountSDKTextFiledView.mas_bottom);
        make.height.mas_equalTo(100);
    }];
}


- (void)registerViewBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
        case kCheckBoxBtnTag:
            SDK_LOG(@"kCheckBoxBtnTag");
//            isSaveAccountInfo = !isSaveAccountInfo;
//            [ConfigCoreUtil share].isSaveAccountInfo = isSaveAccountInfo;
//            if (isSaveAccountInfo) {
//                //checkBoxBtn = [UIUtil initBtnWithNormalImage:@"btn_checkbox_checked.png" highlightedImage:nil tag:kCheckBoxBtnTag selector:@selector(registerViewBtnAction:) target:self];
//                [checkBoxBtn setImage:GetImage(@"btn_checkbox_checked.png") forState:UIControlStateNormal];
//            }else{
//                [checkBoxBtn setImage:GetImage(@"btn_checkbox_uncheck.png") forState:UIControlStateNormal];
//            }
            break;
            
        case kFindPwdActTag:
            SDK_LOG(@"kFindPwdActTag");
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_FIND_PWD];
            }
            break;
            
        case kBindAccountActTag:
            SDK_LOG(@"kBindAccountActTag");
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_SELECT_BIND_TYPE];
            }
            break;
            
        case kRegisterAccountActTag:
            SDK_LOG(@"kRegisterAccountActTag");
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_REG_ACCOUNT];
            }
            break;
            
        case kChangePwdActTag:
            SDK_LOG(@"kChangePwdActTag");
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_CHANGE_PWD];
            }
            break;
            
        case kBackBtnActTag:
            SDK_LOG(@"kBackBtnActTag");
            if (self.delegate) {
                [self.delegate goBackBtn:backBtn backCount:1 sdkPage:(CURRENT_PAGE_TYPE_LOGIN_ACCOUNT)];
            }
            break;
            
        case kAccountLoginActTag:
            SDK_LOG(@"kAccountLoginActTag");
            if (!isAgree) {//先同意
                [SdkUtil gamaToastWithMsg:SDKConReaderGetLocalizedString(@"GAMA_PROVISIONS_AGREENT_TERM")];
                return;
            }
            [TermsView saveAgreenProvisionState:isAgree];
            [self requestAccountLogin];
            break;
            
        //新加
        case fbLoginActTag:
        {
            
            [SdkUtil gamaStarLoadingAtView:self];
            [GamaFacebookPort loginWithFacebook:^(NSError *loginError, NSString *facebookID, NSString *facebookTokenStr) {
                [SdkUtil gamaStopLoadingAtView:self];
                if (!loginError)
                {
                    
                    NSString *appsStr = [NSString stringWithFormat:@"%@_%@",facebookID, [SDKConReader getFacebookAppId]];
                    NSDictionary *additionDic = @{
                        @"apps":appsStr,
                        @"tokenBusiness":@"",
                        @"fb_oauthToken":facebookTokenStr,
                    };
                    
                    [SDKRequest thirdLoginOrReg:facebookID andThirdPlate:_SDK_PLAT_FB addOtherParams:additionDic successBlock:^(id responseData) {
                        
                        if (self.delegate) {
                            [self.delegate handleLoginOrRegSuccess:responseData thirdPlate:_SDK_PLAT_FB];
                        }
                        
                    } errorBlock:^(BJError *error) {
                        if (error && error.message) {
                            [GamaAlertView showAlertWithMessage:error.message];
                        }
                    }];
                    
                    
                }else{
                    //[GamaAlertView showAlertWithMessage:@"error.message"];
                }
                
            }];
            
        }
            break;
        case appleLoginActTag:
        {
            [self doAppleLogin];
        }
            break;
            
        case guestLoginActTag:
        {
            
            [SDKRequest freeLoginOrRegisterWithSuccessBlock:^(id responseData) {
                
                if (self.delegate) {
                    [self.delegate handleLoginOrRegSuccess:responseData thirdPlate:_SDK_PLAT_MAC];
                }
                
            } errorBlock:^(BJError *error) {
                if (error && error.message) {
                    [GamaAlertView showAlertWithMessage:error.message];
                }
                
            }];
        }
        
        case kAgreeTermsCheckBoxBtnTag:
        {
            isAgree = !isAgree;
            if (isAgree) {
                [checkBoxTermsBtn setImage:GetImage(@"btn_checkbox_checked.png") forState:(UIControlStateNormal)];
            }else{
                [checkBoxTermsBtn setImage:GetImage(@"btn_checkbox_uncheck.png") forState:(UIControlStateNormal)];
            }
            
        }
            
        default:
            break;
    }
    
}

-(void) doAppleLogin
{
    if (@available(iOS 13, *)) {
                  
    }else{
       [GamaAlertView showAlertWithMessage:SDKConReaderGetLocalizedString(@"GAMA_APPLE_SYSTEM_OLD_WARNING")];
        return;
    }
    
    gamaAppleLogin = [AppleLogin makeAppleCallbackSuccessBlock:^(NSDictionary * _Nullable result) {
        NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:result];
        NSString *appleID = [tempMutableDic[@"appleThirdID"] copy];
        [tempMutableDic removeObjectForKey:@"appleThirdID"];

        [SDKRequest thirdLoginOrReg:appleID andThirdPlate:_SDK_PLAT_APPLE addOtherParams:tempMutableDic successBlock:^(id responseData) {
            
            if (self.delegate) {
                [self.delegate handleLoginOrRegSuccess:responseData thirdPlate:_SDK_PLAT_APPLE];
            }
            
        } errorBlock:^(BJError *error) {
            if (error && error.message) {
                [GamaAlertView showAlertWithMessage:error.message];
            }
        }];
        
    } andErrorBlock:^(NSError * _Nullable error) {
        //           [GamaUtils gamaStopLoadingAtView:self.view];
        //        [GamaAlertView showAlertWithMessage:SDKConReaderGetLocalizedString(error?GAMA_TEXT_NO_NET:GAMA_TEXT_SERVER_RETURN_NULL)];
    }];
    [gamaAppleLogin handleAuthrization:nil];
}

-(void) requestAccountLogin
{
    
    NSString *accountName = [SdkUtil triString:accountSDKTextFiledView.inputUITextField.text];
    NSString *pwd = [SdkUtil triString:passwordSDKTextFiledView.inputUITextField.text];
    
        
    if (!accountName || [accountName isEqualToString:@""]) {
        [SdkUtil gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_INPUT_ACCOUNT")];
        return;
    }
    
    if (![SdkUtil validUserName:accountName]) {
        [SdkUtil gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_ACCOUNT_RULE")];
        return;
    }
    
    if (!pwd || [pwd isEqualToString:@""]) {
        [SdkUtil gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_INPUT_PWD")];
        return;
    }
//    if (GamaLoginViewModel.model.vfConfig == YES){
//        if(vfTF.text.length<1){
//            [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"GAMA_LOGIN_CAPTCH_PLACEHOLDER")];
//            return;
//        }
//    }
    kWeakSelf
    [SDKRequest doLoginWithAccount:accountName andPassword:pwd otherDic:nil successBlock:^(id responseData) {
        
        if (weakSelf.delegate) {
            CCSDKResponse *cc = (CCSDKResponse *)responseData;
            cc.account = accountName;
            cc.password = pwd;
            [weakSelf.delegate handleLoginOrRegSuccess:cc thirdPlate:_SDK_PLAT_SELF];
        }
        
    } errorBlock:^(BJError *error) {
        [GamaAlertView showAlertWithMessage:error.message];
    }];
}


#pragma mark tableview deletage
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return accountDataList.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 30;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    AccountModel *mAccountModel = accountDataList[indexPath.row];
    AccountListViewCell *cell = [tableView dequeueReusableCellWithIdentifier:AccountListViewCellID forIndexPath:indexPath];
    cell.accountUILabel.text = mAccountModel.accountName;
    kWeakSelf
    cell.mItemViewClickHander = ^(NSInteger tag) {
        if (tag == kMoreAccountDeleteActTag) {
            [accountDataList removeObject:mAccountModel];
            [tableView reloadData];
            [[ConfigCoreUtil share] saveAccountModels:accountDataList];//保存
            if (accountDataList.count == 0) { //删除到位0的时候隐藏tableview和moreAccountBtn
                [weakSelf setTableViewHiden:YES];
//                accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            }
        }
    };
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    SDK_LOG(@"didSelectRowAtIndexPath %ld", indexPath.row);
    AccountModel *mAccountModel = accountDataList[indexPath.row];
    accountSDKTextFiledView.inputUITextField.text = mAccountModel.accountName;
    passwordSDKTextFiledView.inputUITextField.text = mAccountModel.accountPwd;
    [self setTableViewHiden:YES];
}

@end
