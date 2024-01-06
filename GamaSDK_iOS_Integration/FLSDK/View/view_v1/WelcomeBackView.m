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
#import "SAppleLogin.h"
#import "TermsView.h"
#import "AccountLoginView.h"
#import "AccountListView.h"
#import "LoginHelper.h"
#import "UIView+BlockGesture.h"
#import "BasePopupView.h"

@interface WelcomeBackView()

@end

//会员登入view
@implementation WelcomeBackView
{
//    SDKTextFiledView *passwordSDKTextFiledView;
    SDKTextFiledView *accountSDKTextFiledView;

    UIButton *accountLoginBtn;
  
    
//    UITableView *accountListTableView;
    NSMutableArray<AccountModel *>  *accountDataList;//账号列表数据
    
    BOOL isSaveAccountInfo;
    
    UIButton *checkBoxTermsBtn;
    
    SAppleLogin *gamaAppleLogin;
    
    LoginTitleView *mLoginTitleView;
    
    AccountModel *currentAccountModel;
    AccountListView *accountListView;
    
    UIButton *swithAccountBtn_2;
    UIButton *update_change_btn;
    UIButton *swithAccountBtn;
    
    UIView *deleteAccountConfireView;
    
    BasePopupView *accountMaskView;
    
    BOOL isAgree;
}


- (void)dealloc{
    if (accountMaskView) {
        [accountMaskView removeFromSuperview];
    }
}

- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
    
        //title
        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_text_welcome_back) hander_MMMethodMMM:^(NSInteger) {
            
//            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 sdkPage:(CURRENT_PAGE_TYPE_FIND_PWD)];
        }];
        mLoginTitleView.backBtn.hidden = YES;
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            
            make.leading.trailing.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));
        }];
        
        //账号
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.inputUITextField.enabled = NO;
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           // make.centerX.mas_equalTo(self);
            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));;
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            make.height.mas_equalTo(VH(40));
        }];
        
        
        //密码
//        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
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
//        accountUpdateTipsLable.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
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
//        UIButton *accountUpdateTipsBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:wwwww_tag_wwwww_nend_update_account_bg highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:0 selector:nil target_MMMethodMMM:nil];
//
//        [self addSubview:accountUpdateTipsBtn];
//        [accountUpdateTipsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.centerY.mas_equalTo(accountUpdateTipsLable);
//            make.leading.mas_equalTo(accountUpdateTipsBtn.mas_trailing).mas_offset(3);
//            make.height.mas_equalTo(VH(18));
//            make.width.mas_equalTo(accountUpdateTipsBtn.mas_height);
//        }];
        
       
        
        accountLoginBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_go_game) fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kGoGameActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [accountLoginBtn.layer setCornerRadius:VH(25)];
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F94925];
        [self addSubview:accountLoginBtn];
        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(42));
            make.height.mas_equalTo(VH(50));
        }];
        
        swithAccountBtn_2 = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_switch_account) fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kSwitchAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [swithAccountBtn_2.layer setCornerRadius:VH(20)];
        swithAccountBtn_2.layer.borderColor = [UIColor whiteColor].CGColor;
        swithAccountBtn_2.layer.borderWidth = 1;
        [self addSubview:swithAccountBtn_2];
        
        [swithAccountBtn_2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(15));
            make.height.mas_equalTo(VH(40));
        
        }];
        
        update_change_btn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_update_account_bind) fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kBindAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
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
        
        swithAccountBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_switch_account) fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kSwitchAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
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
        
        ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
        if (mConfigModel.deleteAccount) {
            [self addDeleteAccountView_MMMethodMMM];
        }
        
        
        isSaveAccountInfo = YES;
        accountDataList = [NSMutableArray array];//账号列表数据
        
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];//获取保存的数据
        if (mAccountArray.count > 0){//设置默认显示第一个，即按照时间排序最后登录的一个账号
            currentAccountModel = mAccountArray[0];
            
            [accountDataList removeAllObjects];
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: nil];
            
            [self setViewStatue_MMMethodMMM];
            
        }
    
        
        //添加账号显示列表
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            
            if (accountMaskView && accountListView) {
                //设置点击显示、隐藏
                
                if (accountMaskView.isHidden) {
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = YES;
                    accountMaskView.hidden = NO;
                    NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];//获取保存的数据
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
                [self addAccountListView_MMMethodMMM];
                NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];//获取保存的数据
                [accountDataList removeAllObjects];
                [accountDataList addObjectsFromArray:mAccountArray];
                accountListView.accountDataList = accountDataList;
                [accountListView.accountListTableView reloadData];
            }
        };
    }
    return self;
}

-(void)addAccountListView_MMMethodMMM{
    
    accountMaskView = [[BasePopupView alloc] init];
//    accountMaskView.backgroundColor = UIColor.blueColor;
    accountMaskView.touchesBeganCallback = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        if (!accountMaskView.isHidden) {
            
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            accountMaskView.hidden = YES;
        }
        
    };
    UIView * topView = self.superview.superview;
    
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
    kBlockSelf
    kWeakSelf
    accountListView.mAccountModelClickHander = ^(BOOL isDelete, AccountModel * _Nullable aModel, NSMutableArray<AccountModel *> *list) {
        
        if (isDelete) {
            
            if (accountDataList.count > 0) {
                currentAccountModel = accountDataList[0];
                
    //            [blockSelf->accountDataList removeAllObjects];
    //            [blockSelf->accountDataList addObjectsFromArray:list];
                
                [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: nil];
            }else{
                currentAccountModel = nil;
                [accountMaskView removeFromSuperview];
                accountMaskView = nil;
                accountListView = nil;
                
                if (self.delegate) {
                    //数据为空不再返回此页面，返回到主登录页面
                    [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_LOGIN_WITH_REG from_MMMethodMMM:CURRENT_PAGE_TYPE_WELCOME_BACK param_MMMethodMMM:nil];
                }
                
            }
            
            
        }else{//选择
            blockSelf->currentAccountModel = aModel;
            blockSelf->accountSDKTextFiledView.moreAccountBtn.selected = NO;
            accountMaskView.hidden = YES;
            [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:blockSelf->accountSDKTextFiledView pwdView_MMMethodMMM:nil];
            [weakSelf setViewStatue_MMMethodMMM];
        }
        
    };
}


-(UIView *)addDeleteAccountConfireView_MMMethodMMM
{
    
    if (deleteAccountConfireView) {
        [deleteAccountConfireView removeFromSuperview];
    }
    
    UIView *deleteView = [[UIView alloc] init];
    deleteView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.85];
    deleteView.layer.cornerRadius = VW(10);
    
    [self addSubview:deleteView];
    
    [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.width.mas_equalTo(VW(272));
    }];
    
    UIImageView *deleteWarmIV = [UIUtil initImageViewWithImage_MMMethodMMM:nend_update_account_bg];
    [deleteView addSubview:deleteWarmIV];
    [deleteWarmIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteView).mas_offset(VH(12));
        make.centerX.equalTo(self);
        make.height.width.mas_equalTo(VW(25));
    }];
    
    UILabel *deleteWarmLabel = [UIUtil initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account_tips) fontSize_MMMethodMMM:FS(13) textColor_MMMethodMMM:[UIColor whiteColor]];
    [deleteView addSubview:deleteWarmLabel];
    deleteWarmLabel.numberOfLines = 0;
    [deleteWarmLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteWarmIV.mas_bottom).mas_offset(VH(10));
        make.leading.mas_equalTo(deleteView).mas_offset(VW(14));
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-14));
    }];
    
    UIButton *cancelBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_cancel) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kCancelDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    cancelBtn.layer.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F23B12].CGColor;
    cancelBtn.layer.cornerRadius = VW(16);
    [deleteView addSubview:cancelBtn];
    [cancelBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteWarmLabel.mas_bottom).mas_offset(VH(18));
        make.bottom.mas_equalTo(deleteView).mas_offset(VH(-18));
        make.height.mas_equalTo(VW(32));
        make.width.mas_equalTo(VW(108));
        make.trailing.mas_equalTo(deleteView.mas_centerX).mas_offset(VW(-11));
    }];
    
    UIButton *sureBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kSureDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
//    sureBtn.layer.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F23B12].CGColor;
    sureBtn.layer.cornerRadius = VW(16);
    sureBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    sureBtn.layer.borderWidth = 1;
    
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


-(void)addDeleteAccountView_MMMethodMMM
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
    
    UIImageView *deleteIV = [UIUtil initImageViewWithImage_MMMethodMMM:mw_delete_icon];
    [deleteView addSubview:deleteIV];
    [deleteIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteView).mas_offset(VW(13));
        make.top.mas_equalTo(deleteView).mas_offset(VW(6));
        make.bottom.mas_equalTo(deleteView).mas_offset(VW(-6));
        make.centerY.equalTo(deleteView);
        make.width.height.mas_equalTo(VW(16));
    }];
    
    UILabel *delLabel = [UIUtil initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor blackColor]];
    [deleteView addSubview:delLabel];
    [delLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteIV.mas_trailing).mas_offset(VW(6));
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-13));
        make.centerY.equalTo(deleteView);
       
    }];
    
    [deleteView addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        [self addDeleteAccountConfireView_MMMethodMMM];
       
    }];
}

-(void)setViewStatue_MMMethodMMM
{
    SDK_LOG(wwwww_tag_wwwww_setViewStatue);
    if ([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        swithAccountBtn_2.hidden = YES;
        swithAccountBtn.hidden = NO;
        update_change_btn.hidden = NO;

        //修改密码
        update_change_btn.tag = kChangePwdActTag;
        [update_change_btn setTitle:GetString(wwwww_tag_wwwww_py_login_page_change_pwd) forState:(UIControlStateNormal)];
        
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
            [update_change_btn setTitle:GetString(wwwww_tag_wwwww_text_update_account_bind) forState:(UIControlStateNormal)];
        }
        
    }
    
    
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {
                    
        case kBindAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kBindAccountActTag);
            if (!currentAccountModel) {
                [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];
                return;
            }
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_BIND_ACCOUNT from_MMMethodMMM:CURRENT_PAGE_TYPE_WELCOME_BACK param_MMMethodMMM:currentAccountModel];
            }
            break;
            
            
        case kChangePwdActTag:
            SDK_LOG(wwwww_tag_wwwww_kChangePwdActTag);
            if (!currentAccountModel) {
                [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];
                return;
            }
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_CHANGE_PWD from_MMMethodMMM:(CURRENT_PAGE_TYPE_WELCOME_BACK) param_MMMethodMMM:currentAccountModel];
            }
            break;
        
        case kGoGameActTag:
            SDK_LOG(wwwww_tag_wwwww_kGoGameActTag);
            [self goGame_MMMethodMMM];
            break;
            
        case kSwitchAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kSwitchAccountActTag);
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_LOGIN_WITH_REG from_MMMethodMMM:(CURRENT_PAGE_TYPE_WELCOME_BACK) param_MMMethodMMM:@(0)];
            }
            break;
        case kSureDeleteAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kSureDeleteAccountActTag);
            [self doDeleteAccount_MMMethodMMM];
            break;
        case kCancelDeleteAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kCancelDeleteAccountActTag);
            [deleteAccountConfireView removeFromSuperview];
            break;
        default:
            break;
    }
    
}



-(void)goGame_MMMethodMMM
{
    if (!currentAccountModel) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];
        return;
    }
    if ([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
       
        [LoginHelper selfLoginAndRequest_MMMethodMMM:self.delegate account_MMMethodMMM:currentAccountModel.account pwd_MMMethodMMM:currentAccountModel.password];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]) {
        
        [LoginHelper fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]) {
        
        [LoginHelper appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]) {
        
        [LoginHelper guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]) {
        
        [LoginHelper googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]) {
        [LoginHelper lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
    }
}


- (void)doDeleteAccount_MMMethodMMM {
    [LoginHelper deleteAccountAndRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self account_MMMethodMMM:currentAccountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^{
        [deleteAccountConfireView removeFromSuperview];
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];//获取保存的数据
        if (mAccountArray.count > 0){//设置默认显示第一个，即按照时间排序最后登录的一个账号
            currentAccountModel = mAccountArray[0];
            
            [accountDataList removeAllObjects];
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: nil];
            
            [self setViewStatue_MMMethodMMM];
            
        }else{
            
            currentAccountModel = nil;
            if (self.delegate) {
                //数据为空不再返回此页面，返回到主登录页面
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_LOGIN_WITH_REG from_MMMethodMMM:CURRENT_PAGE_TYPE_WELCOME_BACK param_MMMethodMMM:nil];
            }
            
        }
        
    }];
}

@end
