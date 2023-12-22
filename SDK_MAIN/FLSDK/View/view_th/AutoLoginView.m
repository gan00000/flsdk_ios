//
//  AutoLoginView.m
//  MWSDK_KR
//
//  Created by Gan Yuanrong on 2023/12/12.
//  Copyright © 2023 Gama. All rights reserved.
//

#import "AutoLoginView.h"
#import "SdkUtil.h"
#import "UIColor+HexStringToColorTW.h"
#import "SdkHeader.h"
#import "LoginButton.h"
#import "ViewUtil.h"
#import "LoginHelper.h"

@interface AutoLoginView () <CountTimerDelegate>

@end

@implementation AutoLoginView
{
    UILabel *accountLable;
    AccountModel *mAccountModel;
    NSString *accountTips;
}

- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
       
        [self addView_MMMethodMMM];
    }
    return self;
}

-(void)addView_MMMethodMMM
{
    
    //test
    //    SDK_DATA.mConfigModel.appleLogin = YES;
    //    SDK_DATA.mConfigModel.appPassCheck = YES;
    //    SDK_DATA.mConfigModel.showLogo = YES;
    //    SDK_DATA.mConfigModel.showContract = YES;
    //    SDK_DATA.mConfigModel.deleteAccount = YES;
    //    SDK_DATA.mConfigModel.naverLogin = YES;
    
 
    UIView *contentView = [[UIView alloc] init];
    [self addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
    }];
    
    
    accountLable = [UIUtil initLabelWithText_MMMethodMMM:@"" fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
    //            rememberTermsLable.textAlignment = NSTextAlignmentLeft;
    //            rememberTermsLable.backgroundColor = [UIColor clearColor];
    accountLable.numberOfLines = 1;
    
    [contentView addSubview:accountLable];
    [accountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(contentView);
        make.centerX.mas_equalTo(contentView);
    }];
    
    
    
    UILabel *waitLable = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_waiting.localx fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
    //            rememberTermsLable.textAlignment = NSTextAlignmentLeft;
    //            rememberTermsLable.backgroundColor = [UIColor clearColor];
    waitLable.numberOfLines = 1;
    
    [contentView addSubview:waitLable];
    [waitLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(accountLable.mas_bottom).mas_offset(VH(25));
        make.centerX.mas_equalTo(contentView);
    }];
    
    
    
    
    UIButton *changeAccountBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_change_account.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kSwitchAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [changeAccountBtn.layer setCornerRadius:VH(20)];
    [contentView addSubview:changeAccountBtn];
    
    CAGradientLayer *mGl = [ViewUtil createGradientLayerWithRadius_MMMethodMMM:VH(20)];
    [changeAccountBtn.layer addSublayer:mGl];
    [self addDrawRectBolck_MMMethodMMM:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        mGl.frame = changeAccountBtn.bounds;
    }];
    
    [changeAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(waitLable.mas_bottom).mas_offset(VH(38));
        make.centerX.mas_equalTo(contentView);
        make.height.mas_equalTo(VH(40));
        make.width.mas_equalTo(VW(266));
        
        make.bottom.mas_equalTo(contentView);
        make.trailing.leading.mas_equalTo(contentView);
        
    }];
    
    
    NSArray<AccountModel *> *accountModels = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
    if (accountModels && accountModels.count > 0) {
        
        //[self addLoginWithRegView_MMMethodMMM];//自动登录
        mAccountModel = [accountModels firstObject];
        if([LOGIN_TYPE_GUEST isEqualToString:mAccountModel.loginType]){
            accountLable.text = mAccountModel.userId;
            accountTips = mAccountModel.userId;
            //[LoginHelper guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
            
        }else if([LOGIN_TYPE_SELF isEqualToString:mAccountModel.loginType]){
            accountLable.text = mAccountModel.account;
            //[self requestAccountLogin_MMMethodMMM:mAccountModel];
            accountTips = mAccountModel.account;
        }
        self.totalCount_MMMPRO = 3;
        
        self.countTimerDelegate_MMMPRO = self;
        [self startCountTimer_MMMethodMMM];
    }
    
    
}

-(void)requestAccountLogin_MMMethodMMM:(AccountModel *)mAccountModel
{
    
    NSString *accountName = [SdkUtil triString_MMMethodMMM:mAccountModel.account];
    NSString *pwd = [SdkUtil triString_MMMethodMMM:mAccountModel.password];
    
    
    if (!accountName || [accountName isEqualToString:@""]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_account_empty)];
        return;
    }
    
    if (![SdkUtil validUserName_MMMethodMMM:accountName]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_format)];
        return;
    }
    
    if (!pwd || [pwd isEqualToString:@""]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_password_empty)];
        return;
    }
    [LoginHelper selfLoginAndRequest_MMMethodMMM:self.loginDelegate_MMMPRO account_MMMethodMMM:accountName pwd_MMMethodMMM:pwd];
}


- (void)beforeStartTimer_MMMethodMMM{
    
    if(mAccountModel){
        accountLable.text = STR_FORMAT(@"%@(%d)", accountTips, self.totalCount_MMMPRO);
    }
    
}

- (void)timing_MMMethodMMM:(NSString *)count
{
    if(mAccountModel){
        accountLable.text = STR_FORMAT(@"%@(%@)", accountTips, count);
    }
    
}

- (void)finishTimer_MMMethodMMM
{
    if([LOGIN_TYPE_GUEST isEqualToString:mAccountModel.loginType]){
        [LoginHelper guestLoginAndThirdRequest_MMMethodMMM:self.loginDelegate_MMMPRO];
        
    }else if([LOGIN_TYPE_SELF isEqualToString:mAccountModel.loginType]){
        [self requestAccountLogin_MMMethodMMM:mAccountModel];
    }
}

- (void)onCancelTimer_MMMethodMMM
{
    
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {
            
        case kSwitchAccountActTag:
            [self cancelCountTimer_MMMethodMMM];
            if (self.loginDelegate_MMMPRO) {
                [self.loginDelegate_MMMPRO goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_LOGIN_WITH_REG];
            }
            break;
            
        default:
            break;
            
    }
    
}

@end
