//
//  AccountLoginView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/9.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "WelcomeBackView.h"
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

@interface WelcomeBackView() <UITableViewDelegate, UITableViewDataSource>
    


@end

//会员登入view
@implementation WelcomeBackView
{
//    SDKTextFiledView *passwordSDKTextFiledView;
    SDKTextFiledView *accountSDKTextFiledView;

    UIButton *accountLoginBtn;
  
    
    UITableView *accountListTableView;
    NSMutableArray<AccountModel *>  *accountDataList;//账号列表数据
    
    BOOL isSaveAccountInfo;
    
    UIButton *checkBoxTermsBtn;
    
    GamaAppleLogin *gamaAppleLogin;
    
    LoginTitleView *mLoginTitleView;
    
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
    
        //title
        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle:@"歡迎回來" hander:^(NSInteger) {
            
            [self.delegate goBackBtn:self backCount:1 sdkPage:(CURRENT_PAGE_TYPE_FIND_PWD)];
        }];
        //          mLoginTitleView.delegate = self.delegate;//此处不起作用
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            
            make.width.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));
        }];
        
        //账号
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
    
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           // make.centerX.mas_equalTo(self);
            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));;
            make.leading.mas_equalTo(self).mas_offset(VW(42));
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            make.height.mas_equalTo(VH(40));
        }];
        
        
        //密码
//        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password)];
//        [self addSubview:passwordSDKTextFiledView];
//
//        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
//
//            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(22));
//            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
//            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
//            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
//        }];
        
        
        UILabel *accountUpdateTipsLable = [[UILabel alloc] init];
        accountUpdateTipsLable.text =  @"建議升級帳號，提升帳號安全性";
        accountUpdateTipsLable.font = [UIFont systemFontOfSize:VH(13)];
        accountUpdateTipsLable.textAlignment = NSTextAlignmentLeft;
        accountUpdateTipsLable.numberOfLines = 1;
        accountUpdateTipsLable.textColor = [UIColor colorWithHexString:@"#C0C0C0"];
        
        [self addSubview:accountUpdateTipsLable];

        [accountUpdateTipsLable mas_makeConstraints:^(MASConstraintMaker *make) {

            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(10));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
        }];
        
        
        
        
        UIButton *accountUpdateTipsBtn = [UIUtil initBtnWithNormalImage:@"nend_update_account_bg" highlightedImage:nil tag:0 selector:nil target:nil];
        
        [self addSubview:accountUpdateTipsBtn];
        [accountUpdateTipsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(accountUpdateTipsLable);
            make.leading.mas_equalTo(accountUpdateTipsBtn.mas_trailing).mas_offset(3);
            make.height.mas_equalTo(VH(18));
            make.width.mas_equalTo(accountUpdateTipsBtn.mas_height);
        }];
        
       
        //账号登入
//        accountLoginBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_ACCOUNT_LOGIN) tag:kAccountLoginActTag selector:@selector(registerViewBtnAction:)  target:self];
        
        accountLoginBtn = [UIUtil initBtnWithTitleText:@"繼續遊戲" fontSize:FS(17) textColor:[UIColor whiteColor] tag:kAccountLoginActTag selector:@selector(registerViewBtnAction:) target:self];
        
        [accountLoginBtn.layer setCornerRadius:VH(25)];
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString:@"#F94925"];
        [self addSubview:accountLoginBtn];
        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(accountUpdateTipsLable.mas_bottom).mas_offset(VH(20));
            make.height.mas_equalTo(VH(50));
        }];
        
        
//        UIButton *swithAccountBtn = [UIUtil initBtnWithTitle:@"切換帳號" tag:kAccountLoginActTag selector:@selector(registerViewBtnAction:) target:self];
        UIButton *swithAccountBtn = [UIUtil initBtnWithTitleText:@"切換帳號" fontSize:FS(15) textColor:[UIColor whiteColor] tag:kAccountLoginActTag selector:@selector(registerViewBtnAction:) target:self];
        [swithAccountBtn.layer setCornerRadius:VH(20)];;
        [self addSubview:swithAccountBtn];
        
        [swithAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(15));
            make.height.mas_equalTo(VH(40));
            make.width.mas_equalTo(VW(140));
        }];
        
        
        UIButton *updateAccountBtn = [UIUtil initBtnWithTitleText:@"升級帳號" fontSize:FS(15) textColor:[UIColor whiteColor] tag:kAccountLoginActTag selector:@selector(registerViewBtnAction:) target:self];
        
        [updateAccountBtn.layer setCornerRadius:VH(20)];
//        accountLoginBtn.backgroundColor = [UIColor colorWithHexString:@"#F94925"];
        [self addSubview:updateAccountBtn];
        
        [updateAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(15));
            make.height.mas_equalTo(VH(40));
            make.width.mas_equalTo(VW(140));
        }];
        
        UIButton *changePwdBtn = [UIUtil initBtnWithTitleText:@"修改密碼" fontSize:FS(15) textColor:[UIColor whiteColor] tag:kAccountLoginActTag selector:@selector(registerViewBtnAction:) target:self];
        [changePwdBtn.layer setCornerRadius:VH(20)];
//        accountLoginBtn.backgroundColor = [UIColor colorWithHexString:@"#F94925"];
        [self addSubview:changePwdBtn];
        
        [changePwdBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(swithAccountBtn);
        }];
        
        UIButton *swithAccountBtn2 = [UIUtil initBtnWithTitleText:@"切換帳號" fontSize:FS(15) textColor:[UIColor whiteColor] tag:kAccountLoginActTag selector:@selector(registerViewBtnAction:) target:self];
        
        [swithAccountBtn2.layer setCornerRadius:VH(20)];
//        accountLoginBtn.backgroundColor = [UIColor colorWithHexString:@"#F94925"];
        [self addSubview:swithAccountBtn2];
        
        [swithAccountBtn2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(updateAccountBtn);
        }];
        
        
   
        
        [ConfigCoreUtil share].isSaveAccountInfo = YES;
        isSaveAccountInfo = YES;
        accountDataList = [NSMutableArray array];//账号列表数据
        
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
        if (mAccountArray.count > 0){//设置默认显示第一个，即按照时间排序最后登录的一个账号
            accountSDKTextFiledView.inputUITextField.text = mAccountArray[0].accountName;
//            passwordSDKTextFiledView.inputUITextField.text = mAccountArray[0].accountPwd;
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
//        passwordSDKTextFiledView.inputUITextField.text = mAccountArray[0].accountPwd;
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
//    passwordSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
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
//            if (self.delegate) {
//                [self.delegate goBackBtn:backBtn backCount:1 sdkPage:(CURRENT_PAGE_TYPE_LOGIN_ACCOUNT)];
//            }
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
    NSString *pwd = @"";//[GamaUtils triString:passwordSDKTextFiledView.inputUITextField.text];
    
        
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
//    passwordSDKTextFiledView.inputUITextField.text = mAccountModel.accountPwd;
    [self setTableViewHiden:YES];
}

@end
