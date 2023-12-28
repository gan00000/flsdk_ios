

#import "LeproorSuantView.h"
#import "StinityAsterature.h"
#import "UIColor+LacrimisticJunior.h"
#import "SdkHeader.h"
#import "HospitalastLepidmanagementileButton.h"
#import "FloorariumRect.h"
#import "EitheratorConditionlet.h"

@interface LeproorSuantView () <CountTimerDelegate>

@end

@implementation LeproorSuantView
{
    UILabel *accountLable;
    TvadeRhigant *mAccountModel;
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
    
    
    
    
    
    
    
    
    
 
    UIView *contentView = [[UIView alloc] init];
    [self addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
    }];
    
    
    accountLable = [LeukastBetweenate initLabelWithText_MMMethodMMM:@"" fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
    
    
    accountLable.numberOfLines = 1;
    
    [contentView addSubview:accountLable];
    [accountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(contentView);
        make.centerX.mas_equalTo(contentView);
    }];
    
    
    
    UILabel *waitLable = [LeukastBetweenate initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_waiting.localx fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
    
    
    waitLable.numberOfLines = 1;
    
    [contentView addSubview:waitLable];
    [waitLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(accountLable.mas_bottom).mas_offset(VH(25));
        make.centerX.mas_equalTo(contentView);
    }];
    
    
    
    
    UIButton *changeAccountBtn = [LeukastBetweenate initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_change_account.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kSwitchAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [changeAccountBtn.layer setCornerRadius:VH(20)];
    [contentView addSubview:changeAccountBtn];
    
    CAGradientLayer *mGl = [FloorariumRect createGradientLayerWithRadius_MMMethodMMM:VH(20)];
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
    
    
    NSArray<TvadeRhigant *> *accountModels = [[FerrCultural share] getAccountModels_MMMethodMMM];
    if (accountModels && accountModels.count > 0) {
        
        
        mAccountModel = [accountModels firstObject];
        if([LOGIN_TYPE_GUEST isEqualToString:mAccountModel.loginType]){
            accountLable.text = mAccountModel.userId;
            accountTips = mAccountModel.userId;
            
            
        }else if([LOGIN_TYPE_SELF isEqualToString:mAccountModel.loginType]){
            accountLable.text = mAccountModel.account;
            
            accountTips = mAccountModel.account;
        }
        self.totalCount_MMMPRO = 3;
        
        self.countTimerDelegate_MMMPRO = self;
        [self startCountTimer_MMMethodMMM];
    }
    
    
}

-(void)requestAccountLogin_MMMethodMMM:(TvadeRhigant *)mAccountModel
{
    
    NSString *accountName = [StinityAsterature triString_MMMethodMMM:mAccountModel.account];
    NSString *pwd = [StinityAsterature triString_MMMethodMMM:mAccountModel.password];
    
    
    if (!accountName || [accountName isEqualToString:@""]) {
        [StinityAsterature toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_account_empty)];
        return;
    }
    
    if (![StinityAsterature validUserName_MMMethodMMM:accountName]) {
        [StinityAsterature toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_format)];
        return;
    }
    
    if (!pwd || [pwd isEqualToString:@""]) {
        [StinityAsterature toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_password_empty)];
        return;
    }
    [EitheratorConditionlet selfLoginAndRequest_MMMethodMMM:self.loginDelegate_MMMPRO account_MMMethodMMM:accountName pwd_MMMethodMMM:pwd];
}


- (void)beforeStartTimer_MMMethodMMM{
    
    if(mAccountModel){
        accountLable.text = STR_FORMAT(@"%@(%d)", accountTips, self.totalCount_MMMPRO);
    }
    
}

- (void)timing_MMMethodMMM:(NSString *)count
{
    if(mAccountModel){
        accountLable.text = STR_FORMAT(wwwww_tag_wwwww_respondfaction_offeracy, accountTips, count);
    }
    
}

- (void)finishTimer_MMMethodMMM
{
    if([LOGIN_TYPE_GUEST isEqualToString:mAccountModel.loginType]){
        [EitheratorConditionlet guestLoginAndThirdRequest_MMMethodMMM:self.loginDelegate_MMMPRO];
        
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
