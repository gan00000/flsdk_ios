

#import "AgorkinPepscyView.h"
#import "PassformHappysionView.h"
#import "SdkHeader.h"
#import "TaurstuffelVasetteView.h"
#import "ExoSingleitorButton.h"
#import "PhantarianZofoldCell.h"
#import "DecimfyWhom.h"
#import "YYModel.h"
#import "AccountModel.h"
#import "QuartaciousForwardization.h"
#import "UIColor+RemainorHes.h"
#import "ProtectialWeaponate.h"
#import "MedicalistWallainButton.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import "BagOftenair.h"
#import "AvoidizationRotView.h"
#import "StegLentsiveView.h"
#import "OmasageFastotView.h"
#import "UrbeousTript.h"
#import "UIView+HusbandizeRecognizeular.h"
#import "CidainBrevoriumView.h"

@interface AgorkinPepscyView()

@end

@implementation AgorkinPepscyView
{
    PassformHappysionView *accountSDKTextFiledView;

    UIButton *accountLoginBtn;
  
    
    UITableView *accountListTableView;
    NSMutableArray<AccountModel *>  *accountDataList;
    
    BOOL isSaveAccountInfo;
    
    UIButton *checkBoxTermsBtn;
    
    BagOftenair *gamaAppleLogin;
    
    TaurstuffelVasetteView *mLoginTitleView;
    
    AccountModel *currentAccountModel;
    OmasageFastotView *accountListView;
    
    UIButton *swithAccountBtn_2;
    UIButton *update_change_btn;
    UIButton *swithAccountBtn;
    
    UIView *deleteAccountConfireView;
    
    CidainBrevoriumView *accountMaskView;
    
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
    
        
        mLoginTitleView = [[TaurstuffelVasetteView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_text_welcome_back) hander_MMMethodMMM:^(NSInteger) {
            
        }];
        mLoginTitleView.backBtn.hidden = YES;
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            
            make.leading.trailing.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));
        }];
        
        
        accountSDKTextFiledView = [[PassformHappysionView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.inputUITextField.enabled = NO;
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));;
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            make.height.mas_equalTo(VH(40));
        }];
        
        
        
        
        
        
       
        
        accountLoginBtn = [AndryColdooret initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_go_game) fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kGoGameActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [accountLoginBtn.layer setCornerRadius:VH(25)];
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F94925];
        [self addSubview:accountLoginBtn];
        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(42));
            make.height.mas_equalTo(VH(50));
        }];
        
        swithAccountBtn_2 = [AndryColdooret initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_switch_account) fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kSwitchAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [swithAccountBtn_2.layer setCornerRadius:VH(20)];
        swithAccountBtn_2.layer.borderColor = [UIColor whiteColor].CGColor;
        swithAccountBtn_2.layer.borderWidth = 1;
        [self addSubview:swithAccountBtn_2];
        
        [swithAccountBtn_2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(15));
            make.height.mas_equalTo(VH(40));
        
        }];
        
        update_change_btn = [AndryColdooret initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_update_account_bind) fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kBindAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
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
        
        swithAccountBtn = [AndryColdooret initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_switch_account) fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kSwitchAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
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
        accountDataList = [NSMutableArray array];
        
        NSArray<AccountModel *> *mAccountArray = [[AatorTrusular share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            currentAccountModel = mAccountArray[0];
            
            [accountDataList removeAllObjects];
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [StegLentsiveView makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: nil];
            
            [self setViewStatue_MMMethodMMM];
            
        }
    
        
        
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            
            if (accountMaskView && accountListView) {
                
                
                if (accountMaskView.isHidden) {
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = YES;
                    accountMaskView.hidden = NO;
                    NSArray *mAccountArray = [[AatorTrusular share] getAccountModels_MMMethodMMM];
                    [accountDataList removeAllObjects];
                    [accountDataList addObjectsFromArray:mAccountArray];
                    accountListView.accountDataList = accountDataList;
                    [accountListView.accountListTableView reloadData];
                    
                }else{
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = NO;
                    accountMaskView.hidden = YES;
                    
                }
                
            }else{
                accountSDKTextFiledView.moreAccountBtn.selected = YES;
                [self addAccountListView_MMMethodMMM];
                NSArray *mAccountArray = [[AatorTrusular share] getAccountModels_MMMethodMMM];
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
    
    accountMaskView = [[CidainBrevoriumView alloc] init];
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
    
    accountListView = [[OmasageFastotView alloc] init];
    accountListView.layer.cornerRadius = 2.5f;
    accountListView.layer.masksToBounds = YES;
    [accountMaskView addSubview:accountListView];
    [accountListView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
        make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(4);
        make.height.mas_equalTo(VH(200));
        
        
    }];
    kBlockSelf
    kWeakSelf
    accountListView.mAccountModelClickHander = ^(BOOL isDelete, AccountModel * _Nullable aModel, NSMutableArray<AccountModel *> *list) {
        
        if (isDelete) {
            
            if (accountDataList.count > 0) {
                currentAccountModel = accountDataList[0];
                
    
    
                
                [StegLentsiveView makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: nil];
            }else{
                currentAccountModel = nil;
                [accountMaskView removeFromSuperview];
                accountMaskView = nil;
                accountListView = nil;
                
                if (self.delegate) {
                    
                    [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_LOGIN_WITH_REG from_MMMethodMMM:CURRENT_PAGE_TYPE_WELCOME_BACK param_MMMethodMMM:nil];
                }
                
            }
            
            
        }else{
            blockSelf->currentAccountModel = aModel;
            blockSelf->accountSDKTextFiledView.moreAccountBtn.selected = NO;
            accountMaskView.hidden = YES;
            [StegLentsiveView makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:blockSelf->accountSDKTextFiledView pwdView_MMMethodMMM:nil];
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
    
    UIImageView *deleteWarmIV = [AndryColdooret initImageViewWithImage_MMMethodMMM:nend_update_account_bg];
    [deleteView addSubview:deleteWarmIV];
    [deleteWarmIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteView).mas_offset(VH(12));
        make.centerX.equalTo(self);
        make.height.width.mas_equalTo(VW(25));
    }];
    
    UILabel *deleteWarmLabel = [AndryColdooret initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account_tips) fontSize_MMMethodMMM:FS(13) textColor_MMMethodMMM:[UIColor whiteColor]];
    [deleteView addSubview:deleteWarmLabel];
    deleteWarmLabel.numberOfLines = 0;
    [deleteWarmLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteWarmIV.mas_bottom).mas_offset(VH(10));
        make.leading.mas_equalTo(deleteView).mas_offset(VW(14));
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-14));
    }];
    
    UIButton *cancelBtn = [AndryColdooret initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_cancel) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kCancelDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
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
    
    UIButton *sureBtn = [AndryColdooret initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kSureDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
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
    }];
    
    UIImageView *deleteIV = [AndryColdooret initImageViewWithImage_MMMethodMMM:mw_delete_icon];
    [deleteView addSubview:deleteIV];
    [deleteIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteView).mas_offset(VW(13));
        make.top.mas_equalTo(deleteView).mas_offset(VW(6));
        make.bottom.mas_equalTo(deleteView).mas_offset(VW(-6));
        make.centerY.equalTo(deleteView);
        make.width.height.mas_equalTo(VW(16));
    }];
    
    UILabel *delLabel = [AndryColdooret initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor blackColor]];
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

        
        update_change_btn.tag = kChangePwdActTag;
        [update_change_btn setTitle:GetString(wwwww_tag_wwwww_py_login_page_change_pwd) forState:(UIControlStateNormal)];
        
    }else{
        
        if (currentAccountModel.isBind) {
            swithAccountBtn_2.hidden = NO;
            swithAccountBtn.hidden = YES;
            update_change_btn.hidden = YES;
        }else{
            
            swithAccountBtn_2.hidden = YES;
            swithAccountBtn.hidden = NO;
            update_change_btn.hidden = NO;
            
            
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
                [QuartaciousForwardization toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];
                return;
            }
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_BIND_ACCOUNT from_MMMethodMMM:CURRENT_PAGE_TYPE_WELCOME_BACK param_MMMethodMMM:currentAccountModel];
            }
            break;
            
            
        case kChangePwdActTag:
            SDK_LOG(wwwww_tag_wwwww_kChangePwdActTag);
            if (!currentAccountModel) {
                [QuartaciousForwardization toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];
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
        [QuartaciousForwardization toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];
        return;
    }
    if ([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
       
        [UrbeousTript selfLoginAndRequest_MMMethodMMM:self.delegate account_MMMethodMMM:currentAccountModel.account pwd_MMMethodMMM:currentAccountModel.password];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]) {
        
        [UrbeousTript fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]) {
        
        [UrbeousTript appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]) {
        
        [UrbeousTript guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]) {
        
        [UrbeousTript googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]) {
        [UrbeousTript lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
    }
}


- (void)doDeleteAccount_MMMethodMMM {
    [UrbeousTript deleteAccountAndRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self account_MMMethodMMM:currentAccountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^{
        [deleteAccountConfireView removeFromSuperview];
        NSArray<AccountModel *> *mAccountArray = [[AatorTrusular share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            currentAccountModel = mAccountArray[0];
            
            [accountDataList removeAllObjects];
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [StegLentsiveView makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: nil];
            
            [self setViewStatue_MMMethodMMM];
            
        }else{
            
            currentAccountModel = nil;
            if (self.delegate) {
                
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_LOGIN_WITH_REG from_MMMethodMMM:CURRENT_PAGE_TYPE_WELCOME_BACK param_MMMethodMMM:nil];
            }
            
        }
        
    }];
}

@end
