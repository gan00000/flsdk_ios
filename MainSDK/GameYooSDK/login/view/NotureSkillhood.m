//
//  SinistritionCaptexplainine.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/9.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "NotureSkillhood.h"
#import "GuberntyPyr.h"
#import "SdkHeader.h"
#import "AboutiblePropertyible.h"
#import "PyrAmongproof.h"
#import "LifeencePushity.h"
#import "BrothersionDipsodeath.h"
#import "YYModel.h"
#import "AccountModel.h"
#import "GenuosityFirst.h"
#import "UIColor+SignificantationBisward.h"
#import "RangeionHer.h"
#import "MorningeerGramoety.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import "HeaterIndividualation.h"
#import "FailkinEveryonear.h"
#import "SinistritionCaptexplainine.h"
#import "PosicStigbut.h"
#import "AuousSituationic.h"
#import "UIView+UliginivityAlwaysly.h"
#import "OverastSuperor.h"

@interface NotureSkillhood()

@end

//会员登入view
@implementation NotureSkillhood
{
//    GuberntyPyr *passwordSDKTextFiledView;
    GuberntyPyr *accountSDKTextFiledView;

    UIButton *accountLoginBtn;
  
    
    UITableView *accountListTableView;
    NSMutableArray<AccountModel *>  *accountDataList;//账号列表数据
    
    BOOL isSaveAccountInfo;
    
    UIButton *checkBoxTermsBtn;
    
    HeaterIndividualation *gamaAppleLogin;
    
    AboutiblePropertyible *mLoginTitleView;
    
    AccountModel *currentAccountModel;
    PosicStigbut *accountListView;
    
    UIButton *swithAccountBtn_2;
    UIButton *update_change_btn;
    UIButton *swithAccountBtn;
    
    UIView *deleteAccountConfireView;
    
    OverastSuperor *accountMaskView;
    
    BOOL isAgree;
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
    
        //title
        mLoginTitleView = [[AboutiblePropertyible alloc] initViewWithTitle:GetString(@"text_welcome_back") hander:^(NSInteger) {
            
//            [self.delegate goBackBtn:self backCount:1 sdkPage:(CURRENT_PAGE_TYPE_FIND_PWD)];
        }];
        mLoginTitleView.backBtn.hidden = YES;
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            
            make.leading.trailing.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));
        }];
        
        //账号
        accountSDKTextFiledView = [[GuberntyPyr alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
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
//        passwordSDKTextFiledView = [[GuberntyPyr alloc] initViewWithType:(SDKTextFiledView_Type_Password)];
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
//        UIButton *accountUpdateTipsBtn = [StenRoborious initBtnWithNormalImage:@"nend_update_account_bg" highlightedImage:nil tag:0 selector:nil target:nil];
//
//        [self addSubview:accountUpdateTipsBtn];
//        [accountUpdateTipsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.centerY.mas_equalTo(accountUpdateTipsLable);
//            make.leading.mas_equalTo(accountUpdateTipsBtn.mas_trailing).mas_offset(3);
//            make.height.mas_equalTo(VH(18));
//            make.width.mas_equalTo(accountUpdateTipsBtn.mas_height);
//        }];
        
       
        
        accountLoginBtn = [StenRoborious initBtnWithTitleText:GetString(@"text_go_game") fontSize:FS(17) textColor:[UIColor whiteColor] tag:kGoGameActTag selector:@selector(registerViewBtnAction:) target:self];
        
        [accountLoginBtn.layer setCornerRadius:VH(25)];
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString:@"#F94925"];
        [self addSubview:accountLoginBtn];
        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(42));
            make.height.mas_equalTo(VH(50));
        }];
        
        swithAccountBtn_2 = [StenRoborious initBtnWithTitleText:GetString(@"text_switch_account") fontSize:FS(15) textColor:[UIColor whiteColor] tag:kSwitchAccountActTag selector:@selector(registerViewBtnAction:) target:self];
        [swithAccountBtn_2.layer setCornerRadius:VH(20)];
        swithAccountBtn_2.layer.borderColor = [UIColor whiteColor].CGColor;
        swithAccountBtn_2.layer.borderWidth = 1;
        [self addSubview:swithAccountBtn_2];
        
        [swithAccountBtn_2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(15));
            make.height.mas_equalTo(VH(40));
        
        }];
        
        update_change_btn = [StenRoborious initBtnWithTitleText:GetString(@"text_update_account_bind") fontSize:FS(15) textColor:[UIColor whiteColor] tag:kBindAccountActTag selector:@selector(registerViewBtnAction:) target:self];
        
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
        
        swithAccountBtn = [StenRoborious initBtnWithTitleText:GetString(@"text_switch_account") fontSize:FS(15) textColor:[UIColor whiteColor] tag:kSwitchAccountActTag selector:@selector(registerViewBtnAction:) target:self];
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
            [self addDeleteAccountView];
        }
        
        
        isSaveAccountInfo = YES;
        accountDataList = [NSMutableArray array];//账号列表数据
        
        NSArray<AccountModel *> *mAccountArray = [[UsBag share] getAccountModels];//获取保存的数据
        if (mAccountArray.count > 0){//设置默认显示第一个，即按照时间排序最后登录的一个账号
            currentAccountModel = mAccountArray[0];
            
            [accountDataList removeAllObjects];
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [SinistritionCaptexplainine makeAccountFiledViewStatus:currentAccountModel accountView:accountSDKTextFiledView pwdView: nil];
            
            [self setViewStatue];
            
        }
    
        
        //添加账号显示列表
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            
            if (accountMaskView && accountListView) {
                //设置点击显示、隐藏
                
                if (accountMaskView.isHidden) {
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = YES;
                    accountMaskView.hidden = NO;
                    NSArray *mAccountArray = [[UsBag share] getAccountModels];//获取保存的数据
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
                NSArray *mAccountArray = [[UsBag share] getAccountModels];//获取保存的数据
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
    
    accountMaskView = [[OverastSuperor alloc] init];
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
    
    accountListView = [[PosicStigbut alloc] init];
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
                
                [SinistritionCaptexplainine makeAccountFiledViewStatus:blockSelf->currentAccountModel accountView:accountSDKTextFiledView pwdView: nil];
            }else{
                currentAccountModel = nil;
                [accountMaskView removeFromSuperview];
                accountMaskView = nil;
                accountListView = nil;
                
                if (self.delegate) {
                    //数据为空不再返回此页面，返回到主登录页面
                    [self.delegate goPageView:CURRENT_PAGE_TYPE_LOGIN_WITH_REG from:CURRENT_PAGE_TYPE_WELCOME_BACK param:nil];
                }
                
            }
            
            
        }else{//选择
            blockSelf->currentAccountModel = aModel;
            blockSelf->accountSDKTextFiledView.moreAccountBtn.selected = NO;
            accountMaskView.hidden = YES;
            [SinistritionCaptexplainine makeAccountFiledViewStatus:blockSelf->currentAccountModel accountView:blockSelf->accountSDKTextFiledView pwdView:nil];
            [weakSelf setViewStatue];
        }
        
    };
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
    
    UIImageView *deleteWarmIV = [StenRoborious initImageViewWithImage:nend_update_account_bg];
    [deleteView addSubview:deleteWarmIV];
    [deleteWarmIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteView).mas_offset(VH(12));
        make.centerX.equalTo(self);
        make.height.width.mas_equalTo(VW(25));
    }];
    
    UILabel *deleteWarmLabel = [StenRoborious initLabelWithText:GetString(@"text_delete_account_tips") fontSize:FS(13) textColor:[UIColor whiteColor]];
    [deleteView addSubview:deleteWarmLabel];
    deleteWarmLabel.numberOfLines = 0;
    [deleteWarmLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteWarmIV.mas_bottom).mas_offset(VH(10));
        make.leading.mas_equalTo(deleteView).mas_offset(VW(14));
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-14));
    }];
    
    UIButton *cancelBtn = [StenRoborious initBtnWithTitleText:GetString(@"text_cancel") fontSize:FS(12) textColor:UIColor.whiteColor tag:kCancelDeleteAccountActTag selector:@selector(registerViewBtnAction:) target:self];
    cancelBtn.layer.backgroundColor = [UIColor colorWithHexString:@"#F23B12"].CGColor;
    cancelBtn.layer.cornerRadius = VW(16);
    [deleteView addSubview:cancelBtn];
    [cancelBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteWarmLabel.mas_bottom).mas_offset(VH(18));
        make.bottom.mas_equalTo(deleteView).mas_offset(VH(-18));
        make.height.mas_equalTo(VW(32));
        make.width.mas_equalTo(VW(108));
        make.trailing.mas_equalTo(deleteView.mas_centerX).mas_offset(VW(-11));
    }];
    
    UIButton *sureBtn = [StenRoborious initBtnWithTitleText:GetString(@"text_confire") fontSize:FS(12) textColor:UIColor.whiteColor tag:kSureDeleteAccountActTag selector:@selector(registerViewBtnAction:) target:self];
//    sureBtn.layer.backgroundColor = [UIColor colorWithHexString:@"#F23B12"].CGColor;
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
    
    UIImageView *deleteIV = [StenRoborious initImageViewWithImage:mw_delete_icon];
    [deleteView addSubview:deleteIV];
    [deleteIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteView).mas_offset(VW(13));
        make.top.mas_equalTo(deleteView).mas_offset(VW(6));
        make.bottom.mas_equalTo(deleteView).mas_offset(VW(-6));
        make.centerY.equalTo(deleteView);
        make.width.height.mas_equalTo(VW(16));
    }];
    
    UILabel *delLabel = [StenRoborious initLabelWithText:GetString(@"text_delete_account") fontSize:FS(12) textColor:[UIColor blackColor]];
    [deleteView addSubview:delLabel];
    [delLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteIV.mas_trailing).mas_offset(VW(6));
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-13));
        make.centerY.equalTo(deleteView);
       
    }];
    
    [deleteView addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {
        
        [self addDeleteAccountConfireView];
       
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
            if (!currentAccountModel) {
                [GenuosityFirst toastMsg:GetString(@"text_select_account")];
                return;
            }
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_BIND_ACCOUNT from:CURRENT_PAGE_TYPE_WELCOME_BACK param:currentAccountModel];
            }
            break;
            
            
        case kChangePwdActTag:
            SDK_LOG(@"kChangePwdActTag");
            if (!currentAccountModel) {
                [GenuosityFirst toastMsg:GetString(@"text_select_account")];
                return;
            }
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_CHANGE_PWD from:(CURRENT_PAGE_TYPE_WELCOME_BACK) param:currentAccountModel];
            }
            break;
        
        case kGoGameActTag:
            SDK_LOG(@"kGoGameActTag");
            [self goGame];
            break;
            
        case kSwitchAccountActTag:
            SDK_LOG(@"kSwitchAccountActTag");
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_LOGIN_WITH_REG from:(CURRENT_PAGE_TYPE_WELCOME_BACK) param:@(0)];
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



-(void) goGame
{
    if (!currentAccountModel) {
        [GenuosityFirst toastMsg:GetString(@"text_select_account")];
        return;
    }
    if ([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
       
        [AuousSituationic selfLoginAndRequest:self.delegate account:currentAccountModel.account pwd:currentAccountModel.password];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]) {
        
        [AuousSituationic fbLoginAndThirdRequest:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]) {
        
        [AuousSituationic appleLoginAndThirdRequest:self.delegate view:self];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]) {
        
        [AuousSituationic guestLoginAndThirdRequest:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]) {
        
        [AuousSituationic googleLoginAndThirdRequest:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]) {
        [AuousSituationic lineLoginAndThirdRequest:self.delegate];
    }
}


- (void)doDeleteAccount {
    [AuousSituationic deleteAccountAndRequest:self.delegate view:self account:currentAccountModel otherParamsDic:nil successBlock:^{
        [deleteAccountConfireView removeFromSuperview];
        NSArray<AccountModel *> *mAccountArray = [[UsBag share] getAccountModels];//获取保存的数据
        if (mAccountArray.count > 0){//设置默认显示第一个，即按照时间排序最后登录的一个账号
            currentAccountModel = mAccountArray[0];
            
            [accountDataList removeAllObjects];
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [SinistritionCaptexplainine makeAccountFiledViewStatus:currentAccountModel accountView:accountSDKTextFiledView pwdView: nil];
            
            [self setViewStatue];
            
        }else{
            
            currentAccountModel = nil;
            if (self.delegate) {
                //数据为空不再返回此页面，返回到主登录页面
                [self.delegate goPageView:CURRENT_PAGE_TYPE_LOGIN_WITH_REG from:CURRENT_PAGE_TYPE_WELCOME_BACK param:nil];
            }
            
        }
        
    }];
}

@end
