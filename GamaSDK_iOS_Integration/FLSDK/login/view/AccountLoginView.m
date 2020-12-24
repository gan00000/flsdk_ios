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
#import "GamaUtils.h"
#import "UIColor+HexStringToColorTW.h"
#import "SDKRequest.h"
#import "LoginTypeButton.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import "GamaAppleLogin.h"
#import "GamaFacebookPort.h"
#import "TermsView.h"

static  NSString *AccountListViewCellID = @"AccountListViewCellID";

//@interface AccountLoginView() <UITableViewDelegate, UITableViewDataSource>
//
//@end

//会员登入view
@implementation AccountLoginView
{
    SDKTextFiledView *passwordSDKTextFiledView;
    SDKTextFiledView *accountSDKTextFiledView;
    UIButton *checkBoxBtn;
    UIButton *accountLoginBtn;
    UIButton *backBtn;
    
    NSMutableArray<AccountModel *>  *accountDataList;//账号列表数据
    
    BOOL isSaveAccountInfo;
    
    UIButton *checkBoxTermsBtn;
    
    GamaAppleLogin *gamaAppleLogin;
    
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
        
        self.layer.contents = (id)[UIImage gama_imageNamed:@"h_bg"].CGImage;
        
        UILabel *titleLabel = [[UILabel alloc] init];
        titleLabel.text = @"Member Login";
        titleLabel.textColor = [UIColor whiteColor];
        titleLabel.font = [UIFont boldSystemFontOfSize:VH(38)];
        
        [self addSubview:titleLabel];
        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(100));
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            make.trailing.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));
        }];
        
        backBtn = [UIUtil initBtnWithNormalImage:@"sdk_btn_back.png" highlightedImage:nil tag:kBackBtnActTag selector:@selector(registerViewBtnAction:) target:self];
        backBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:backBtn];
        [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(VW(16));
            make.top.equalTo(self).mas_offset(VH(55));
            make.height.mas_equalTo(VH(22));
            make.width.mas_equalTo(backBtn.mas_height);
        }];
        
        
        UIView * contentView = [[UIView alloc] init];
        contentView.layer.cornerRadius = VW(30);
        contentView.backgroundColor = [UIColor whiteColor];
        [self addSubview:contentView];
        [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.bottom.right.mas_equalTo(self);
            make.top.mas_equalTo(self).mas_offset(VH(267));
        }];
        
        //登入頁logo
        UIImageView *logoImageView = [[UIImageView alloc] initWithImage:[UIImage gama_imageNamed:@"h_icon_en"]];
        logoImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:logoImageView];
        [logoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(211));
            make.leading.mas_equalTo(self).mas_offset(VW(32.5));
            make.width.mas_equalTo(VH(90));
            make.height.mas_equalTo(VH(90));
        }];
        
        
        //账号
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
    
        [contentView addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
    
            make.top.equalTo(contentView).mas_offset(VH(44));
            make.leading.mas_equalTo(contentView).mas_offset(VW(30));
            make.trailing.mas_equalTo(contentView).mas_offset(-VW(48));
            make.height.mas_equalTo(VH(40));
        }];
        
        UIView *line1 = [[UIView alloc] init];
        line1.backgroundColor = [UIColor colorWithHexString:@"#DDDDDD"];
        [contentView addSubview:line1];
        [line1 mas_makeConstraints:^(MASConstraintMaker *make) {
    
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(8));
            make.leading.mas_equalTo(accountSDKTextFiledView).mas_offset(VW(24));
            make.trailing.mas_equalTo(accountSDKTextFiledView).mas_offset(-VW(24));
            make.height.mas_equalTo(1);
        }];
        
        //密码
        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password)];
        [contentView addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(24));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        UIView *line2 = [[UIView alloc] init];
        line2.backgroundColor = [UIColor colorWithHexString:@"#DDDDDD"];
        [contentView addSubview:line2];
        [line2 mas_makeConstraints:^(MASConstraintMaker *make) {
    
            make.top.equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(8));
            make.leading.mas_equalTo(accountSDKTextFiledView).mas_offset(VW(24));
            make.trailing.mas_equalTo(accountSDKTextFiledView).mas_offset(-VW(24));
            make.height.mas_equalTo(1);
        }];
        
        checkBoxBtn = [UIUtil initBtnWithNormalImage:@"btn_checkbox_checked.png" highlightedImage:nil tag:kCheckBoxBtnTag selector:@selector(registerViewBtnAction:) target:self];
        
        [contentView addSubview:checkBoxBtn];
        [checkBoxBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(30));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading).mas_offset(VW(20));
            make.width.mas_equalTo(20);
            make.height.mas_equalTo(20);
        }];
        isSaveAccountInfo = YES;
        
        //記住密碼
        UILabel *rememberLable = [[UILabel alloc] init];
        rememberLable.text =  SDKConReaderGetLocalizedString(@"text_remember_login");
        rememberLable.font = [UIFont systemFontOfSize:VH(12)];
        rememberLable.textAlignment = NSTextAlignmentLeft;
        rememberLable.backgroundColor = [UIColor clearColor];
        rememberLable.numberOfLines = 1;
        rememberLable.textColor = [UIColor colorWithHexString:@"#969696"];
        
        [self addSubview:rememberLable];
        [rememberLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(passwordSDKTextFiledView.mas_trailing);
            make.leading.mas_equalTo(checkBoxBtn.mas_trailing).mas_offset(10);
            make.height.mas_equalTo(checkBoxBtn);
            make.top.equalTo(checkBoxBtn);
        }];
        
        
//        rememberLable.hidden = YES;
//        checkBoxBtn.hidden = YES;
        
        //账号登入
        accountLoginBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_ACCOUNT_LOGIN) tag:kAccountLoginActTag selector:@selector(registerViewBtnAction:)  target:self];
        [contentView addSubview:accountLoginBtn];
        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(self);
            make.top.mas_equalTo(contentView).mas_offset(VH(300));
            make.width.mas_equalTo(VW(350));
            make.height.mas_equalTo(VH(50));
        }];
        
        
        //找回密碼
        
//        UIButton *findPasswordBtn = [UIUtil initBtnWithTitle2:@"找回密碼" tag:kFindPwdActTag selector:@selector(registerViewBtnAction:) target:self];
//        findPasswordBtn.titleLabel.font = [UIFont systemFontOfSize:12];
//        [findPasswordBtn setTitleColor:[UIColor colorWithHexString:@"ff3e37"] forState:0];
//
//        [self addSubview:findPasswordBtn];
//        [findPasswordBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing).mas_offset(-VW(20));
//            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(10));
//            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
//            make.width.mas_equalTo(VW(140));
//        }];
        
        
        //=================
        UIView * bottomView = [[UIView alloc] init];
        [contentView addSubview:bottomView];
        [bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.mas_equalTo(self);
            make.top.mas_equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(18));
            make.height.mas_equalTo(VH(30));
        }];
        
        UILabel *forgotLable = [[UILabel alloc] init];
        forgotLable.text =  SDKConReaderGetLocalizedString(@"text_forgot_password");
        forgotLable.font = [UIFont systemFontOfSize:VH(12)];
        forgotLable.textAlignment = NSTextAlignmentCenter;
        forgotLable.backgroundColor = [UIColor whiteColor];
        forgotLable.numberOfLines = 0;
        forgotLable.textColor = [UIColor colorWithHexString:@"#969696"];
        forgotLable.tag = kFindPwdActTag;
        [UIUtil addTapGestureWithView:forgotLable tagrget:self action:@selector(uesrViewClicked:)];
        
        [bottomView addSubview:forgotLable];
        [forgotLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(VW(75));
            make.top.bottom.mas_equalTo(bottomView);
            make.trailing.mas_equalTo(bottomView.mas_centerX);
        }];
        
      
        UILabel *regLable = [[UILabel alloc] init];
        regLable.text =  SDKConReaderGetLocalizedString(@"text_register");
        regLable.font = [UIFont systemFontOfSize:VH(12)];
        regLable.textAlignment = NSTextAlignmentCenter;
        regLable.backgroundColor = [UIColor whiteColor];
        regLable.numberOfLines = 0;
        regLable.textColor = [UIColor colorWithHexString:@"#969696"];
        
        [bottomView addSubview:regLable];
        [regLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(VW(75));
            make.top.bottom.mas_equalTo(bottomView);
            make.trailing.mas_equalTo(forgotLable.mas_leading);
        }];
        
    
        UILabel *memberCenterLable = [[UILabel alloc] init];
        memberCenterLable.text =  SDKConReaderGetLocalizedString(@"text_member_center");
        memberCenterLable.font = [UIFont systemFontOfSize:VH(12)];
        memberCenterLable.textAlignment = NSTextAlignmentCenter;
        memberCenterLable.backgroundColor = [UIColor whiteColor];
        memberCenterLable.numberOfLines = 0;
        memberCenterLable.textColor = [UIColor colorWithHexString:@"#969696"];
        
        [bottomView addSubview:memberCenterLable];
        [memberCenterLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(VW(75));
            make.top.bottom.mas_equalTo(bottomView);
            make.leading.mas_equalTo(forgotLable.mas_trailing);
        }];
                
        UILabel *changePwdLable = [[UILabel alloc] init];
        changePwdLable.text =  SDKConReaderGetLocalizedString(@"text_Change_Password");
        changePwdLable.font = [UIFont systemFontOfSize:VH(12)];
        changePwdLable.textAlignment = NSTextAlignmentCenter;
        changePwdLable.backgroundColor = [UIColor whiteColor];
        changePwdLable.numberOfLines = 0;
        changePwdLable.textColor = [UIColor colorWithHexString:@"#969696"];
        
        [bottomView addSubview:changePwdLable];
        [changePwdLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(VW(75));
            make.top.bottom.mas_equalTo(bottomView);
            make.leading.mas_equalTo(memberCenterLable.mas_trailing);
        }];
        
        
        UIView *lineView1 = [[UIView alloc] init];
        lineView1.backgroundColor = [UIColor colorWithHexString:@"#969696"];
        [bottomView addSubview:lineView1];
        [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(1);
            make.height.mas_equalTo(12);
            make.trailing.mas_equalTo(forgotLable.mas_leading);
            make.centerY.mas_equalTo(bottomView);
        }];
        
        
        UIView *lineView2 = [[UIView alloc] init];
        lineView2.backgroundColor = [UIColor colorWithHexString:@"#969696"];
        [bottomView addSubview:lineView2];
        [lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(1);
            make.height.mas_equalTo(12);
            make.leading.mas_equalTo(forgotLable.mas_trailing);
            make.centerY.mas_equalTo(bottomView);
        }];
        
        
        UIView *lineView3 = [[UIView alloc] init];
        lineView3.backgroundColor = [UIColor colorWithHexString:@"#969696"];
        [bottomView addSubview:lineView3];
        [lineView3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(1);
            make.height.mas_equalTo(12);
            make.leading.mas_equalTo(memberCenterLable.mas_trailing);
            make.centerY.mas_equalTo(bottomView);
        }];
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
//    if (accountListTableView) {
//        [accountListTableView reloadData];
//    }
    
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

- (void)uesrViewClicked:(UITapGestureRecognizer *)recognizer

{
    NSLog(@"%d", recognizer.view.tag);
    [self viewAction:recognizer.view.tag];
}

- (void)registerViewBtnAction:(UIButton *)sender
{
    [self viewAction:sender.tag];
}

- (void)viewAction:(NSInteger)tag
{
    switch (tag) {
        case kCheckBoxBtnTag:
            SDK_LOG(@"kCheckBoxBtnTag");
            isSaveAccountInfo = !isSaveAccountInfo;
            [ConfigCoreUtil share].isSaveAccountInfo = isSaveAccountInfo;
            if (isSaveAccountInfo) {
                //checkBoxBtn = [UIUtil initBtnWithNormalImage:@"btn_checkbox_checked.png" highlightedImage:nil tag:kCheckBoxBtnTag selector:@selector(registerViewBtnAction:) target:self];
                [checkBoxBtn setImage:GetImage(@"btn_checkbox_checked.png") forState:UIControlStateNormal];
            }else{
                [checkBoxBtn setImage:GetImage(@"btn_checkbox_uncheck.png") forState:UIControlStateNormal];
            }
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
                [self.delegate goBackBtn:backBtn backCount:1];
            }
            break;
            
        case kAccountLoginActTag:
            SDK_LOG(@"kAccountLoginActTag");
            if (!isAgree) {//先同意
                [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"GAMA_PROVISIONS_AGREENT_TERM")];
                return;
            }
            [TermsView saveAgreenProvisionState:isAgree];
            [self requestAccountLogin];
            break;
            
        //新加
        case fbLoginActTag:
        {
            
            [GamaUtils gamaStarLoadingAtView:self];
            [GamaFacebookPort loginWithFacebook:^(NSError *loginError, NSString *facebookID, NSString *facebookTokenStr) {
                [GamaUtils gamaStopLoadingAtView:self];
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
    
    gamaAppleLogin = [GamaAppleLogin makeAppleCallbackSuccessBlock:^(NSDictionary * _Nullable result) {
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
    
    NSString *accountName = [GamaUtils triString:accountSDKTextFiledView.inputUITextField.text];
    NSString *pwd = [GamaUtils triString:passwordSDKTextFiledView.inputUITextField.text];
    
        
    if (!accountName || [accountName isEqualToString:@""]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_INPUT_ACCOUNT")];
        return;
    }
    
    if (![GamaUtils validUserName:accountName]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_ACCOUNT_RULE")];
        return;
    }
    
    if (!pwd || [pwd isEqualToString:@""]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_INPUT_PWD")];
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

@end
