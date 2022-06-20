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
#import "SdkUtil.h"
#import "UIColor+HexStringToColorTW.h"
#import "SDKRequest.h"
#import "LoginTypeButton.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import "AppleLogin.h"
#import "TermsView.h"
#import "AccountLoginView.h"
#import "AccountListView.h"

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
    
    AppleLogin *gamaAppleLogin;
    
    LoginTitleView *mLoginTitleView;
    
    AccountModel *currentAccountModel;
    AccountListView *accountListView;
    
    UIButton *swithAccountBtn_2;
    UIButton *update_change_btn;
    UIButton *swithAccountBtn;
    
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
        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle:GetString(@"text_welcome_back") hander:^(NSInteger) {
            
//            [self.delegate goBackBtn:self backCount:1 sdkPage:(CURRENT_PAGE_TYPE_FIND_PWD)];
        }];
        mLoginTitleView.backBtn.hidden = YES;
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            
            make.width.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));
        }];
        
        //账号
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.inputUITextField.enabled = NO;
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
//        passwordSDKTextFiledView.hidden = YES;
//        [self addSubview:passwordSDKTextFiledView];
//        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
//
//            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(22));
//            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
//            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
//            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
//
//        }];
        
        
//        UILabel *accountUpdateTipsLable = [[UILabel alloc] init];
//        accountUpdateTipsLable.text =  @"建議升級帳號，提升帳號安全性";
//        accountUpdateTipsLable.font = [UIFont systemFontOfSize:VH(13)];
//        accountUpdateTipsLable.textAlignment = NSTextAlignmentLeft;
//        accountUpdateTipsLable.numberOfLines = 1;
//        accountUpdateTipsLable.textColor = [UIColor colorWithHexString:@"#C0C0C0"];
//
//        [self addSubview:accountUpdateTipsLable];
//
//        [accountUpdateTipsLable mas_makeConstraints:^(MASConstraintMaker *make) {
//
//            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(10));
//            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
//        }];
//
//
//
//
//        UIButton *accountUpdateTipsBtn = [UIUtil initBtnWithNormalImage:@"nend_update_account_bg" highlightedImage:nil tag:0 selector:nil target:nil];
//
//        [self addSubview:accountUpdateTipsBtn];
//        [accountUpdateTipsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.centerY.mas_equalTo(accountUpdateTipsLable);
//            make.leading.mas_equalTo(accountUpdateTipsBtn.mas_trailing).mas_offset(3);
//            make.height.mas_equalTo(VH(18));
//            make.width.mas_equalTo(accountUpdateTipsBtn.mas_height);
//        }];
        
       
        
        accountLoginBtn = [UIUtil initBtnWithTitleText:GetString(@"text_go_game") fontSize:FS(17) textColor:[UIColor whiteColor] tag:kAccountLoginActTag selector:@selector(registerViewBtnAction:) target:self];
        
        [accountLoginBtn.layer setCornerRadius:VH(25)];
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString:@"#F94925"];
        [self addSubview:accountLoginBtn];
        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(42));
            make.height.mas_equalTo(VH(50));
        }];
        
        swithAccountBtn_2 = [UIUtil initBtnWithTitleText:GetString(@"text_switch_account") fontSize:FS(15) textColor:[UIColor whiteColor] tag:kSwitchAccountActTag selector:@selector(registerViewBtnAction:) target:self];
        [swithAccountBtn_2.layer setCornerRadius:VH(20)];
        swithAccountBtn_2.layer.borderColor = [UIColor whiteColor].CGColor;
        swithAccountBtn_2.layer.borderWidth = 1;
        [self addSubview:swithAccountBtn_2];
        
        [swithAccountBtn_2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(15));
            make.height.mas_equalTo(VH(40));
        
        }];
        
        update_change_btn = [UIUtil initBtnWithTitleText:GetString(@"text_update_account_bind") fontSize:FS(15) textColor:[UIColor whiteColor] tag:kBindAccountActTag selector:@selector(registerViewBtnAction:) target:self];
        
        [update_change_btn.layer setCornerRadius:VH(20)];
        update_change_btn.layer.borderColor = [UIColor whiteColor].CGColor;
        update_change_btn.layer.borderWidth = 1;
        [self addSubview:update_change_btn];
        
        [update_change_btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(15));
            make.height.mas_equalTo(VH(40));
            make.width.mas_equalTo(VW(140));
        }];
        
        swithAccountBtn = [UIUtil initBtnWithTitleText:GetString(@"text_switch_account") fontSize:FS(15) textColor:[UIColor whiteColor] tag:kSwitchAccountActTag selector:@selector(registerViewBtnAction:) target:self];
        [swithAccountBtn.layer setCornerRadius:VH(20)];
        swithAccountBtn.layer.borderColor = [UIColor whiteColor].CGColor;
        swithAccountBtn.layer.borderWidth = 1;
        [self addSubview:swithAccountBtn];
        
        [swithAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(15));
            make.height.mas_equalTo(VH(40));
            make.width.mas_equalTo(VW(140));
        }];
        
        [self addDeleteAccountView];
        
        isSaveAccountInfo = YES;
        accountDataList = [NSMutableArray array];//账号列表数据
        
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
        if (mAccountArray.count > 0){//设置默认显示第一个，即按照时间排序最后登录的一个账号
            currentAccountModel = mAccountArray[0];
            
            [accountDataList removeAllObjects];
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [AccountLoginView makeAccountFiledViewStatus:currentAccountModel accountView:accountSDKTextFiledView pwdView: nil];
            
            [self setViewStatue];
            
        }
    
        
        //添加账号显示列表
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            
            if (accountListView) {
                //设置点击显示、隐藏
                
                if (accountListView.isHidden) {
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = YES;
                    accountListView.hidden = NO;
                    NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
                    [accountDataList removeAllObjects];
                    [accountDataList addObjectsFromArray:mAccountArray];
                    accountListView.accountDataList = accountDataList;
                    [accountListView.accountListTableView reloadData];
                    
                }else{
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = NO;
                    accountListView.hidden = YES;
                    
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
    }
    return self;
}

-(void)addAccountListView{
    accountListView = [[AccountListView alloc] init];
    accountListView.layer.cornerRadius = 2.5f;
    accountListView.layer.masksToBounds = YES;
    [self addSubview:accountListView];
    [accountListView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
        make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(4);
        make.height.mas_equalTo(VH(200));
        //        make.edges.mas_equalTo(self);
        
    }];
    kWeakSelf
    accountListView.mAccountModelClickHander = ^(BOOL isDelete, AccountModel * _Nullable aModel, NSMutableArray<AccountModel *> *accountDataList) {
        
        if (isDelete) {
            
        }else{//选择
            currentAccountModel = aModel;
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            [AccountLoginView makeAccountFiledViewStatus:currentAccountModel accountView:accountSDKTextFiledView pwdView:nil];
            [self setViewStatue];
        }
        
    };
}

-(void)addDeleteAccountView
{
    UIView *deleteView = [[UIView alloc] init];
    deleteView.backgroundColor = UIColor.whiteColor;
    deleteView.layer.cornerRadius = VW(14);
    
    [self addSubview:deleteView];
    
    [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self.mas_bottom).mas_offset(VH(-15));
        make.centerX.equalTo(self);
//        make.height.mas_equalTo(VH(28));
    }];
    
    UIImageView *deleteIV = [UIUtil initImageViewWithImage:@"mw_delete_icon"];
    [deleteView addSubview:deleteIV];
    [deleteIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteView).mas_offset(VW(13));
        make.top.mas_equalTo(deleteView).mas_offset(VW(6));
        make.bottom.mas_equalTo(deleteView).mas_offset(VW(-6));
        make.centerY.equalTo(deleteView);
        make.width.height.mas_equalTo(VW(16));
    }];
    
    UILabel *delLabel = [UIUtil initLabelWithText:GetString(@"text_delete_account") fontSize:FS(12) textColor:[UIColor blackColor]];
    [deleteView addSubview:delLabel];
    [delLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteIV.mas_trailing).mas_offset(VW(6));
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-13));
        make.centerY.equalTo(deleteView);
       
    }];
}

-(void)setViewStatue
{
    SDK_LOG(@"setViewStatue");
    if ([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        swithAccountBtn_2.hidden = YES;
        swithAccountBtn.hidden = NO;
        update_change_btn.hidden = NO;

        //修改密码
        update_change_btn.tag = kChangePwdActTag;
        [update_change_btn setTitle:GetString(@"py_login_page_change_pwd") forState:(UIControlStateNormal)];
        
    }else{//三方账号
        
        if (currentAccountModel.isBind) {
            swithAccountBtn_2.hidden = NO;
            swithAccountBtn.hidden = YES;
            update_change_btn.hidden = YES;
        }else{
            
            swithAccountBtn_2.hidden = YES;
            swithAccountBtn.hidden = NO;
            update_change_btn.hidden = NO;
            
            //绑定账号
            update_change_btn.tag = kBindAccountActTag;
            [update_change_btn setTitle:GetString(@"text_update_account_bind") forState:(UIControlStateNormal)];
        }
        
    }
    
    
}


- (void)registerViewBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
                    
        case kBindAccountActTag:
            SDK_LOG(@"kBindAccountActTag");
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_SELECT_BIND_TYPE];
            }
            break;
            
            
        case kChangePwdActTag:
            SDK_LOG(@"kChangePwdActTag");
            if (!currentAccountModel) {
                [SdkUtil toastMsg:GetString(@"text_select_account")];
                return;
            }
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_CHANGE_PWD from:(CURRENT_PAGE_TYPE_WELCOME_BACK) param:currentAccountModel];
            }
            break;
        
        case kAccountLoginActTag:
            SDK_LOG(@"kAccountLoginActTag");
            
            break;
            
        case kSwitchAccountActTag:
            SDK_LOG(@"kSwitchAccountActTag");
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_LOGIN_WITH_REG from:(CURRENT_PAGE_TYPE_WELCOME_BACK) param:@(0)];
            }
            break;
        default:
            break;
    }
    
}

-(void) doAppleLogin
{
    if (@available(iOS 13, *)) {
                  
    }else{
       [AlertUtil showAlertWithMessage:GetString(@"GAMA_APPLE_SYSTEM_OLD_WARNING")];
        return;
    }
    
    gamaAppleLogin = [AppleLogin makeAppleCallbackSuccessBlock:^(NSDictionary * _Nullable result) {
        NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:result];
        NSString *appleID = [tempMutableDic[@"appleThirdID"] copy];
        [tempMutableDic removeObjectForKey:@"appleThirdID"];

        [SDKRequest thirdLoginOrReg:appleID andThirdPlate:LOGIN_TYPE_APPLE addOtherParams:tempMutableDic successBlock:^(id responseData) {
            
            if (self.delegate) {
                [self.delegate handleLoginOrRegSuccess:responseData thirdPlate:LOGIN_TYPE_APPLE];
            }
            
        } errorBlock:^(BJError *error) {
            if (error && error.message) {
                [AlertUtil showAlertWithMessage:error.message];
            }
        }];
        
    } andErrorBlock:^(NSError * _Nullable error) {
        //           [GamaUtils gamaStopLoadingAtView:self.view];
        //        [GamaAlertView showAlertWithMessage:GetString(error?GAMA_TEXT_NO_NET:GAMA_TEXT_SERVER_RETURN_NULL)];
    }];
    [gamaAppleLogin handleAuthrization:nil];
}

-(void) requestAccountLogin
{
    
    NSString *accountName = [SdkUtil triString:accountSDKTextFiledView.inputUITextField.text];
    NSString *pwd = @"";//[GamaUtils triString:passwordSDKTextFiledView.inputUITextField.text];
    
        
    if (!accountName || [accountName isEqualToString:@""]) {
        [SdkUtil toastMsg:GetString(@"TXT_PH_ACCOUNT_INPUT_ACCOUNT")];
        return;
    }
    
    if (![SdkUtil validUserName:accountName]) {
        [SdkUtil toastMsg:GetString(@"ALERT_MSG_ACCOUNT_RULE")];
        return;
    }
    
    if (!pwd || [pwd isEqualToString:@""]) {
        [SdkUtil toastMsg:GetString(@"TXT_PH_ACCOUNT_INPUT_PWD")];
        return;
    }
//    if (GamaLoginViewModel.model.vfConfig == YES){
//        if(vfTF.text.length<1){
//            [GamaUtils gamaToastWithMsg:GetString(@"GAMA_LOGIN_CAPTCH_PLACEHOLDER")];
//            return;
//        }
//    }
    kWeakSelf
    [SDKRequest doLoginWithAccount:accountName andPassword:pwd otherDic:nil successBlock:^(id responseData) {
        
        if (weakSelf.delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = accountName;
            cc.data.password = pwd;
            [weakSelf.delegate handleLoginOrRegSuccess:cc thirdPlate:LOGIN_TYPE_SELF];
        }
        
    } errorBlock:^(BJError *error) {
        [AlertUtil showAlertWithMessage:error.message];
    }];
}


@end
