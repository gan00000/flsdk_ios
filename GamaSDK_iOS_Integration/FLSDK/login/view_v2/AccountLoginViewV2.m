//
//  AccountLoginView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/9.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "AccountLoginViewV2.h"
#import "LoginTitleView.h"
#import "LoginButton.h"
#import "AccountListViewCell.h"
#import "HttpServiceEngineLogin.h"
#import "YYModel.h"
#import "AccountModel.h"
#import "SdkUtil.h"
#import "UIColor+HexStringToColorTW.h"
#import "LoginHelper.h"
#import "LoginTypeButton.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import "SAppleLogin.h"
#import "TermsView.h"
#import "AccountListView.h"
#import "UIView+BlockGesture.h"
#import "LoginButtonData.h"
#import "TermsViewV2.h"
#import "BasePopupView.h"

@interface AccountLoginViewV2()


@end

//会员登入view
@implementation AccountLoginViewV2
{
    SDKTextFiledView *passwordSDKTextFiledView;
    SDKTextFiledView *accountSDKTextFiledView;
    //    UIButton *checkBoxBtn;
    UIButton *accountLoginBtn;
    UIButton *backBtn;
    
    NSMutableArray<AccountModel *>  *accountDataList;//账号列表数据
    
    UIButton *checkBoxTermsBtn;
    
    SAppleLogin *gamaAppleLogin;
    
    BOOL isAgree;
    
    AccountModel *currentAccountModel;
    
    AccountListView *accountListView;
    BasePopupView *accountMaskView;
    
    UIView *deleteAccountConfireView;
    UIView *deleteBtnView;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

- (void)dealloc{
    if (accountMaskView) {
        [accountMaskView removeFromSuperview];
    }
}

- (instancetype)initView
{
    self = [super init];
    if (self) {
        
        //账号
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.inputUITextField.placeholder = GetString(@"text_input_account");
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            // make.centerX.mas_equalTo(self);
            make.top.equalTo(self);
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            make.height.mas_equalTo(VH(40));
        }];
        
        
        //密码
        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password)];
        passwordSDKTextFiledView.inputUITextField.placeholder = GetString(@"text_input_pwd");
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.height.mas_equalTo(VH(40));
//            make.height.mas_equalTo();
        }];
        
        
        //找回密碼
        
        UIButton *findPasswordBtn = [UIUtil initBtnWithTitleText:GetString(@"py_findpwd") fontSize:FS(12) textColor:[UIColor colorWithHexString:@"#C0C0C0"] tag:kFindPwdActTag selector:@selector(registerViewBtnAction:) target:self];
        
        [self addSubview:findPasswordBtn];
        [findPasswordBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(7));
            //            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
            //            make.width.mas_equalTo(VW(140));
        }];
        
        //条款
        UIView *termAgreeView = [[UIView alloc] init];
        [self addSubview:termAgreeView];
        [termAgreeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(findPasswordBtn);
            make.leading.mas_equalTo(accountSDKTextFiledView);
        }];
        
        checkBoxTermsBtn = [UIUtil initBtnWithNormalImage:mw_cb_uncheck highlightedImage:nil selectedImageName:mw_cb_check tag:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction:) target:self];
        checkBoxTermsBtn.selected = YES;
        [termAgreeView addSubview:checkBoxTermsBtn];
        [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(termAgreeView);
            make.centerY.mas_equalTo(termAgreeView);
            make.width.height.mas_equalTo(VW(15));
            
        }];
        
        NSString *xtext = GetString(@"sdk_terms_title");
        UILabel *rememberTermsLable = [UIUtil initLabelWithText:xtext fontSize:FS(12) textColor:[UIColor colorWithHexString:@"#C0C0C0"]];
        //            rememberTermsLable.textAlignment = NSTextAlignmentLeft;
        //            rememberTermsLable.backgroundColor = [UIColor clearColor];
        rememberTermsLable.numberOfLines = 1;
        
        
        //             NSDictionary *attribtDic = @{NSForegroundColorAttributeName: [UIColor whiteColor]};
        //             NSMutableAttributedString *attribtStr = [[NSMutableAttributedString alloc]initWithString:xtext];
        //            [attribtStr addAttributes:attribtDic range: NSMakeRange(0,xtext.length-1)];
        //             //赋值
        //            rememberTermsLable.attributedText = attribtStr;
        
        [termAgreeView addSubview:rememberTermsLable];
        [rememberTermsLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(termAgreeView);
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);
            make.trailing.mas_equalTo(termAgreeView.mas_trailing);
        }];
        rememberTermsLable.userInteractionEnabled=YES;
        [rememberTermsLable addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {
            SDK_LOG(@"rememberTermsLableTapped");
//            if (self.delegate) {
//                [self.delegate goPageView:CURRENT_PAGE_TYPE_TEARMS from:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) param:0];
//            }
            TermsViewV2 *aTermsViewV2 = [[TermsViewV2 alloc] initWithCompleter:^{
                checkBoxTermsBtn.selected = YES;
            }];
            
            UIView *superView = appTopViewController.view;
            [superView addSubview:aTermsViewV2];
            
            [aTermsViewV2 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.bottom.mas_equalTo(superView);
                make.leading.mas_equalTo(superView);
                make.trailing.mas_equalTo(superView);
            }];
            
            
            aTermsViewV2.transform = CGAffineTransformTranslate(aTermsViewV2.transform, 0, superView.frame.size.height);
            
            [UIView animateWithDuration:0.6 animations:^{
                
                aTermsViewV2.transform = CGAffineTransformTranslate(aTermsViewV2.transform, 0, -superView.frame.size.height);
                
                
            } completion:^(BOOL finished) {
            }];
            
        }];
        ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
        termAgreeView.hidden = !mConfigModel.showContract;
        findPasswordBtn.hidden = !mConfigModel.showForgetPwd;
        
        //账号登入
        //        accountLoginBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_ACCOUNT_LOGIN) tag:kAccountLoginActTag selector:@selector(registerViewBtnAction:)  target:self];
        
        accountLoginBtn = [UIUtil initBtnWithTitleText:@"text_login".localx fontSize:FS(17) textColor:[UIColor whiteColor] tag:kAccountLoginActTag selector:@selector(registerViewBtnAction:) target:self];
        
        [accountLoginBtn.layer setCornerRadius:VH(20)];
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString:BaseColor];
        [self addSubview:accountLoginBtn];
        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(findPasswordBtn.mas_bottom).mas_offset(VH(25));
            make.width.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(VH(40));
        }];
        
        
        UIView *loginTypeView = [[UIView alloc] init];
        [self addSubview:loginTypeView];
        [loginTypeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(accountSDKTextFiledView);
            //            make.bottom.mas_equalTo(self).mas_offset(VH(-10));
            make.top.mas_equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(16));
            //            make.centerX.mas_equalTo(self);
//            make.height.mas_equalTo(btn_h);
        }];
        
       
        UILabel *otherLabelTips = [[UILabel alloc] init];
        otherLabelTips.font = [UIFont systemFontOfSize:FS(11)];
        otherLabelTips.text = @"text_login_other".localx;
        otherLabelTips.numberOfLines = 1; //0为多行
        otherLabelTips.textColor = [UIColor colorWithHexString:@"#C0C0C0"];
        
        [loginTypeView addSubview:otherLabelTips];
        [otherLabelTips mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(loginTypeView.mas_leading);
            make.centerY.mas_equalTo(loginTypeView);
            
        }];
        
        CGFloat btn_w = VW(34);
        CGFloat btn_h = btn_w;
        CGFloat margin_leading = VW(24);
        
        NSMutableArray *loginBtnDatas = [SdkUtil getShowBtnDatas:SDK_DATA.mConfigModel appleBtn:YES guestBtn:YES];
        UIView *leadingView = otherLabelTips;
       
        for (int i = 0; i < loginBtnDatas.count; i++) {
            
            LoginButtonData *lbd = loginBtnDatas[i];
            UIView *btnView;
            
            if ([lbd.btnType isEqualToString:LOGIN_TYPE_APPLE]) {
                
                if (@available(iOS 13.0, *)) {
                    
                    ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                              authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
                    [appleLoginBtn addTarget:self action:@selector(registerViewBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
                    appleLoginBtn.tag = lbd.tag;
                    appleLoginBtn.cornerRadius = btn_w / 2.0;
                    btnView = appleLoginBtn;
                }
                
            }else{
                
                LoginTypeButton *mBtn = [[LoginTypeButton alloc] initWithType:lbd.tag title:@"" image:lbd.image selector:@selector(registerViewBtnAction:) target:self];
                
                btnView = mBtn;
            }
            
            if (btnView) {
                
                [loginTypeView addSubview:btnView];
                [btnView mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.width.mas_equalTo(btn_w);
                    make.height.mas_equalTo(btn_h);
                    make.top.mas_equalTo(loginTypeView);
                    make.bottom.mas_equalTo(loginTypeView);
                    
                    if (i == 0) {
                        make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(VW(8));
                    }else{
                        make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(margin_leading);
                    }
                    if (i == loginBtnDatas.count - 1) {
                        make.trailing.mas_equalTo(loginTypeView);
                    }
                }];
                
                leadingView = btnView;
                
            }
            
            
        }

        if (mConfigModel.deleteAccount) {
            [self addDeleteAccountView];
        }
        
        accountDataList = [NSMutableArray array];//账号列表数据
        
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
        if (mAccountArray.count > 0){//设置默认显示第一个，即按照时间排序最后登录的一个账号
            
            currentAccountModel = mAccountArray[0];
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [AccountLoginViewV2 makeAccountFiledViewStatus:currentAccountModel accountView:accountSDKTextFiledView pwdView:passwordSDKTextFiledView];
        }else{
            if (deleteBtnView) {
                deleteBtnView.hidden = YES;
            }
        }
        
        
        //添加账号显示列表
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            
            if (accountMaskView && accountListView) {
                //设置点击显示、隐藏
                
                
                if (accountMaskView.isHidden) {
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = YES;
                    accountMaskView.hidden = NO;
                    NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
                    [accountDataList removeAllObjects];
                    [accountDataList addObjectsFromArray:mAccountArray];
                    accountListView.accountDataList = accountDataList;
                    [accountListView.accountListTableView reloadData];
                    
                }else{
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = NO;
                    accountMaskView.hidden = YES;
                    
                }
                
            }else{//第一次点击显示
                accountSDKTextFiledView.moreAccountBtn.selected = YES;
                [self addAccountListView];
                NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
                [accountDataList removeAllObjects];
                [accountDataList addObjectsFromArray:mAccountArray];
                accountListView.accountDataList = accountDataList;
                [accountListView.accountListTableView reloadData];
            }
            
        };
        
        accountSDKTextFiledView.inputTextFieldChange = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
            
            if (currentAccountModel && ![currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
                
                if (![msg isEqualToString:currentAccountModel.userId]) {//修改则变为平台用户登录方式
                    AccountModel *tempAccountModel = [[AccountModel alloc] init];
                    tempAccountModel.loginType = LOGIN_TYPE_SELF;
                    tempAccountModel.account = msg;
                    tempAccountModel.password = @"";
//                    [passwordSDKTextFiledView setPwdFiledView:YES];
                    [AccountLoginViewV2 makeAccountFiledViewStatus:tempAccountModel accountView:accountSDKTextFiledView pwdView:passwordSDKTextFiledView];
                    currentAccountModel = tempAccountModel;
                }
            }
            
            
        };
    }
    
    return self;
}

-(void)addAccountListView{
    
    accountMaskView = [[BasePopupView alloc] init];
//    accountMaskView.backgroundColor = UIColor.blueColor;
    accountMaskView.touchesBeganCallback = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        if (!accountMaskView.isHidden) {
            
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            accountMaskView.hidden = YES;
        }
        
    };
    UIView * topView = self.superview.superview.superview;
    
    [topView addSubview:accountMaskView];
    [accountMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(topView);
    }];
    
    accountListView = [[AccountListView alloc] init];
    accountListView.layer.cornerRadius = 2.5f;
    accountListView.layer.masksToBounds = YES;
    [accountMaskView addSubview:accountListView];
    [accountListView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
        make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(4);
        make.height.mas_equalTo(VH(200));
        //        make.edges.mas_equalTo(self);
        
    }];
    kWeakSelf
    kBlockSelf
    accountListView.mAccountModelClickHander = ^(BOOL isDelete, AccountModel * _Nullable aModel, NSMutableArray<AccountModel *> *accountDataList) {
        
        if (isDelete) {
            
            if (accountDataList.count > 0) {
                currentAccountModel = accountDataList[0];
                
    //            [blockSelf->accountDataList removeAllObjects];
    //            [blockSelf->accountDataList addObjectsFromArray:list];
                
                [AccountLoginViewV2 makeAccountFiledViewStatus:blockSelf->currentAccountModel accountView:accountSDKTextFiledView pwdView: passwordSDKTextFiledView];
            }else{
//                currentAccountModel = nil;
                AccountModel *resetAm = [[AccountModel alloc] init];
                resetAm.loginType = LOGIN_TYPE_SELF;
                resetAm.account = @"";
                resetAm.password = @"";
                currentAccountModel = resetAm;
                [AccountLoginViewV2 makeAccountFiledViewStatus:blockSelf->currentAccountModel accountView:accountSDKTextFiledView pwdView: passwordSDKTextFiledView];
                accountSDKTextFiledView.moreAccountBtn.selected = NO;
                accountMaskView.hidden = YES;
                
                if (deleteBtnView) {
                    deleteBtnView.hidden = YES;
                }
            }
            
        }else{//选择
            currentAccountModel = aModel;
            [AccountLoginViewV2 makeAccountFiledViewStatus:currentAccountModel accountView:accountSDKTextFiledView pwdView:passwordSDKTextFiledView];
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            accountMaskView.hidden = YES;
            
        }
        
    };
}


- (void)registerViewBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
            
        case kFindPwdActTag:
            SDK_LOG(@"kFindPwdActTag");
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_FIND_PWD];
            }
            break;
            
        case kBackBtnActTag:
            SDK_LOG(@"kBackBtnActTag");
            if (self.delegate) {
                [self.delegate goBackBtn:backBtn backCount:1 fromPage:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage:(CURRENT_PAGE_TYPE_MAIN_HOME)];
            }
            break;
            
        case kAccountLoginActTag:
            SDK_LOG(@"kAccountLoginActTag");
            if (![self checkAgreeTerm]) {
                return;
            }
            
            [self goGame];
            break;
            
            //新加
        case fbLoginActTag:
        {
            if (![self checkAgreeTerm]) {
                return;
            }
            [LoginHelper fbLoginAndThirdRequest:self.delegate];
        }
            break;
        case appleLoginActTag:
        {
            if (![self checkAgreeTerm]) {
                return;
            }
            [LoginHelper appleLoginAndThirdRequest:self.delegate view:self];
        }
            break;
            
        case guestLoginActTag:
        {
            if (![self checkAgreeTerm]) {
                return;
            }
            [LoginHelper guestLoginAndThirdRequest:self.delegate];
        }
            break;
        case googleLoginActTag:
        {
            if (![self checkAgreeTerm]) {
                return;
            }
            [LoginHelper googleLoginAndThirdRequest:self.delegate];
        }
            break;
        case lineLoginActTag:
        {
            if (![self checkAgreeTerm]) {
                return;
            }
            [LoginHelper lineLoginAndThirdRequest:self.delegate];
        }
            break;
        case kAgreeTermsCheckBoxBtnTag:
        {
            if (checkBoxTermsBtn.isSelected) {
                checkBoxTermsBtn.selected = NO;
            }else{
                checkBoxTermsBtn.selected = YES;
            }
           
        }
            break;
        case kSureDeleteAccountActTag:
            SDK_LOG(@"kSureDeleteAccountActTag");
            [self doDeleteAccount];
            break;
        case kCancelDeleteAccountActTag:
            SDK_LOG(@"kCancelDeleteAccountActTag");
            [deleteAccountConfireView removeFromSuperview];
            
            break;
        default:
            break;
    }
    
}


-(BOOL)checkAgreeTerm
{
    if (checkBoxTermsBtn.selected) {
        return YES;
    }
    [SdkUtil toastMsg:GetString(@"text_term_not_read")];
    //    [AlertUtil showAlertWithMessage:];
    return NO;
}

-(void) goGame
{
    if (!currentAccountModel) {
        [self requestAccountLogin];
        return;
    }
    if ([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
       
        [self requestAccountLogin];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]) {
        
        [LoginHelper fbLoginAndThirdRequest:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]) {
        
        [LoginHelper appleLoginAndThirdRequest:self.delegate view:self];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]) {
        
        [LoginHelper guestLoginAndThirdRequest:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]) {
        
        [LoginHelper googleLoginAndThirdRequest:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]) {
        [LoginHelper lineLoginAndThirdRequest:self.delegate];
    }
}

-(void) requestAccountLogin
{
    
    NSString *accountName = [SdkUtil triString:accountSDKTextFiledView.inputUITextField.text];
    NSString *pwd = [SdkUtil triString:passwordSDKTextFiledView.inputUITextField.text];
    
    
    if (!accountName || [accountName isEqualToString:@""]) {
        [SdkUtil toastMsg:GetString(@"py_account_empty")];
        return;
    }
    
    if (![SdkUtil validUserName:accountName]) {
        [SdkUtil toastMsg:GetString(@"text_account_format")];
        return;
    }
    
    if (!pwd || [pwd isEqualToString:@""]) {
        [SdkUtil toastMsg:GetString(@"py_password_empty")];
        return;
    }
    [LoginHelper selfLoginAndRequest:self.delegate account:accountName pwd:pwd];
}


+(void)makeAccountFiledViewStatus:(AccountModel *)mAccountModel accountView:(SDKTextFiledView *)accountFiledView pwdView:(SDKTextFiledView *)pwdFiledView{
    
    
    //    passwordSDKTextFiledView.inputUITextField.text = mAccountModel.password;
    
    NSString *account = mAccountModel.userId;
    NSString *iconName = mw_smail_icon;
    NSString *pwdText = GetString(@"text_free_register");
    
    BOOL pwdEnable = YES;
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        account = mAccountModel.account;
        iconName = mw_smail_icon;
        pwdText = mAccountModel.password;
        pwdEnable = YES;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        iconName = fb_smail_icon;
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        iconName = google_smail_icon;
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        iconName = guest_smail_icon;
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        iconName = apple_smail_icon;
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        iconName = line_smail_icon;
        pwdEnable = NO;
    }
    
    accountFiledView.inputUITextField.text = account;
    accountFiledView.lableIconImageView.image = [UIImage res_imageNamed:iconName];
    
    if (pwdFiledView) {
//        [pwdFiledView setPwdFiledView:pwdEnable];
       
        if (pwdEnable) {
            pwdFiledView.hidden = NO;
            pwdFiledView.inputUITextField.text = pwdText;
            
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                
                make.height.mas_equalTo(VH(40));
            }];
            
            
        }else{
            pwdFiledView.inputUITextField.text = @"";
            pwdFiledView.hidden = YES;
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.height.mas_equalTo(1);
            }];
            
            
        }
        [pwdFiledView layoutIfNeeded];
        
    }
}



-(UIView *)addDeleteAccountConfireView
{
    
    if (deleteAccountConfireView) {
        [deleteAccountConfireView removeFromSuperview];
    }
    
    UIView *deleteView = [[UIView alloc] init];
    deleteView.backgroundColor = [UIColor colorWithHexString:@"#000000" andAlpha:0.85];
    deleteView.layer.cornerRadius = VW(10);
    
    [self addSubview:deleteView];
    
    [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.width.mas_equalTo(VW(272));
    }];
    
    UIImageView *deleteWarmIV = [UIUtil initImageViewWithImage:nend_update_account_bg];
    [deleteView addSubview:deleteWarmIV];
    [deleteWarmIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteView).mas_offset(VH(12));
        make.centerX.equalTo(self);
        make.height.width.mas_equalTo(VW(25));
    }];
    
    UILabel *deleteWarmLabel = [UIUtil initLabelWithText:GetString(@"text_delete_account_tips") fontSize:FS(13) textColor:[UIColor whiteColor]];
    [deleteView addSubview:deleteWarmLabel];
    deleteWarmLabel.numberOfLines = 0;
    [deleteWarmLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteWarmIV.mas_bottom).mas_offset(VH(10));
        make.leading.mas_equalTo(deleteView).mas_offset(VW(14));
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-14));
    }];
    
    UIButton *cancelBtn = [UIUtil initBtnWithTitleText:GetString(@"text_cancel") fontSize:FS(12) textColor:UIColor.whiteColor tag:kCancelDeleteAccountActTag selector:@selector(registerViewBtnAction:) target:self];
//    cancelBtn.layer.backgroundColor = [UIColor colorWithHexString:@"#F23B12"].CGColor;
    cancelBtn.layer.cornerRadius = VW(16);
    cancelBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    cancelBtn.layer.borderWidth = 1;
    
    [deleteView addSubview:cancelBtn];
    [cancelBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteWarmLabel.mas_bottom).mas_offset(VH(18));
        make.bottom.mas_equalTo(deleteView).mas_offset(VH(-18));
        make.height.mas_equalTo(VW(32));
        make.width.mas_equalTo(VW(108));
        make.trailing.mas_equalTo(deleteView.mas_centerX).mas_offset(VW(-11));
    }];
    
    UIButton *sureBtn = [UIUtil initBtnWithTitleText:GetString(@"text_confire") fontSize:FS(12) textColor:UIColor.whiteColor tag:kSureDeleteAccountActTag selector:@selector(registerViewBtnAction:) target:self];
    sureBtn.layer.backgroundColor = [UIColor colorWithHexString:@"#F23B12"].CGColor;
    sureBtn.layer.cornerRadius = VW(16);
//    sureBtn.layer.borderColor = [UIColor whiteColor].CGColor;
//    sureBtn.layer.borderWidth = 1;
    
    [deleteView addSubview:sureBtn];
    [sureBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(cancelBtn);
        make.bottom.mas_equalTo(cancelBtn);
        make.width.mas_equalTo(cancelBtn);
        make.leading.mas_equalTo(deleteView.mas_centerX).mas_offset(VW(11));
    }];
    
    deleteAccountConfireView = deleteView;
    return deleteAccountConfireView;
    
}


-(void)addDeleteAccountView
{
    UIView *deleteView = [[UIView alloc] init];
    deleteView.backgroundColor = UIColor.whiteColor;
    deleteView.layer.cornerRadius = VW(14);
    
    [self addSubview:deleteView];
    
    [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self.mas_bottom);
//        make.bottom.mas_equalTo(self.mas_bottom).mas_offset(VH(-10));
        make.centerX.equalTo(self);
//        make.height.mas_equalTo(VH(28));
    }];
    
    UIImageView *deleteIV = [UIUtil initImageViewWithImage:mw_delete_icon];
    [deleteView addSubview:deleteIV];
    [deleteIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteView).mas_offset(VW(13));
        make.top.mas_equalTo(deleteView).mas_offset(VW(6));
        make.bottom.mas_equalTo(deleteView).mas_offset(VW(-6));
        make.centerY.equalTo(deleteView);
        make.width.height.mas_equalTo(VW(15));
    }];
    
    UILabel *delLabel = [UIUtil initLabelWithText:GetString(@"text_delete_account") fontSize:FS(10) textColor:[UIColor blackColor]];
    [deleteView addSubview:delLabel];
    [delLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteIV.mas_trailing).mas_offset(VW(6));
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-13));
        make.centerY.equalTo(deleteView);
       
    }];
    
    [deleteView addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {
        
        [self addDeleteAccountConfireView];
       
    }];
    
    deleteBtnView = deleteView;
}

- (void)doDeleteAccount {
    
    if ([StringUtil isEmpty:currentAccountModel.userId]) {
        [SdkUtil toastMsg:@"text_select_account".localx];
        return;
    }
    [LoginHelper deleteAccountAndRequest:self.delegate view:self account:currentAccountModel otherParamsDic:nil successBlock:^{
        
        [deleteAccountConfireView removeFromSuperview];
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
        if (mAccountArray.count > 0){//设置默认显示第一个，即按照时间排序最后登录的一个账号
            currentAccountModel = mAccountArray[0];
            
            [accountDataList removeAllObjects];
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [AccountLoginViewV2 makeAccountFiledViewStatus:currentAccountModel accountView:accountSDKTextFiledView pwdView: passwordSDKTextFiledView];
            
//            [self setViewStatue];
            
        }else{
            AccountModel *tempA = [[AccountModel alloc] init];
            tempA.loginType = LOGIN_TYPE_SELF;
            tempA.account = @"";
            tempA.password = @"";
            currentAccountModel = tempA;
            [AccountLoginViewV2 makeAccountFiledViewStatus:tempA accountView:accountSDKTextFiledView pwdView: passwordSDKTextFiledView];
            
        }
        
    }];
}


@end
