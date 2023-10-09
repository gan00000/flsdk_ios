

#import "ViewkinFelinisticView.h"
#import "SdkHeader.h"
#import "RhombtyWesternentView.h"
#import "AgoniaShootalView.h"
#import "PathacityThoughainView.h"
#import "TrichoasterPhaneruleButton.h"
#import "AloneuleCipitdifferenting.h"
#import "DiseaseitudeGastroaire.h"
#import "IdefierBudgetingView.h"

@implementation ViewkinFelinisticView

{
    RhombtyWesternentView *thirdAccountSDKTextFiledView;
    RhombtyWesternentView *accountSDKTextFiledView;
    RhombtyWesternentView *pwdSDKTextFiledView;
    
    
    
    AgoniaShootalView   *mLoginTitleView;
    
    
}

- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        
        
        
        
        
        
        
        
        mLoginTitleView = [[AgoniaShootalView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_text_update_account) hander_MMMethodMMM:^(NSInteger) {
            
            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_BIND_ACCOUNT) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_WELCOME_BACK)];
        }];
        
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            make.leading.trailing.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));
        }];
        
        
        thirdAccountSDKTextFiledView = [[RhombtyWesternentView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        thirdAccountSDKTextFiledView.moreAccountBtn.hidden = YES;
        [self addSubview:thirdAccountSDKTextFiledView];
        
        [thirdAccountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(40);
            make.trailing.mas_equalTo(self).mas_offset(-40);
            make.height.mas_equalTo(VH(40));

            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));
            
        }];
        
        
        accountSDKTextFiledView = [[RhombtyWesternentView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(thirdAccountSDKTextFiledView);
            make.trailing.mas_equalTo(thirdAccountSDKTextFiledView);
            make.height.mas_equalTo(thirdAccountSDKTextFiledView);

            make.top.equalTo(thirdAccountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        
        pwdSDKTextFiledView = [[RhombtyWesternentView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
        [self addSubview:pwdSDKTextFiledView];
        
        [pwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(thirdAccountSDKTextFiledView);
            make.trailing.mas_equalTo(thirdAccountSDKTextFiledView);
            make.height.mas_equalTo(thirdAccountSDKTextFiledView);
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        UILabel *bindTipLabel = [SmilePitate initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_bind_account_tips) fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
        [self addSubview:bindTipLabel];
        
        [bindTipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(thirdAccountSDKTextFiledView);
            make.trailing.mas_equalTo(thirdAccountSDKTextFiledView);
            make.top.equalTo(pwdSDKTextFiledView.mas_bottom).mas_offset(VH(6));
            
        }];
        
        
        
        UIButton *okBtn = [SmilePitate initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire_update) fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [okBtn.layer setCornerRadius:VH(25)];
        okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F94925];
        [self addSubview:okBtn];
        
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(bindTipLabel.mas_bottom).mas_offset(VH(32));
            make.width.mas_equalTo(pwdSDKTextFiledView);
            make.height.mas_equalTo(VH(50));
        }];
        
      
    }
    return self;
}

- (void)initData_MMMethodMMM
{
    [super initData_MMMethodMMM];
    AccountModel *tempAccountModel = (AccountModel *)self.fromPageParam;
    [IdefierBudgetingView makeAccountFiledViewStatus_MMMethodMMM:tempAccountModel accountView_MMMethodMMM:thirdAccountSDKTextFiledView pwdView_MMMethodMMM:nil];
    thirdAccountSDKTextFiledView.inputUITextField.enabled = NO;
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {
            
     
        case kOkActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kOkActTag);
            [self endEditing:YES];
            [self bindAccount_MMMethodMMM];
        }
            
            
            break;
            
            
        default:
            break;
    }
}

-(void)bindAccount_MMMethodMMM
{
    
    if (!self.fromPageParam) {
        [DiseaseitudeGastroaire toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];
        return;
    }
    
    AccountModel * currentAccountModel = (AccountModel *)self.fromPageParam;
    
    
    NSString *account = accountSDKTextFiledView.inputUITextField.text;
    NSString *pasword = pwdSDKTextFiledView.inputUITextField.text;
  
    
 
    if (![DiseaseitudeGastroaire validUserName_MMMethodMMM:account]) {
        return;
    }
    
    
    if (![DiseaseitudeGastroaire validPwd_MMMethodMMM:pasword]) {
        return;
    }
    
    if (!currentAccountModel) {
        [DiseaseitudeGastroaire toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];
        return;
    }
  
    [AloneuleCipitdifferenting bindAccountAndRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self account_MMMethodMMM:currentAccountModel account_MMMethodMMM:account pwd_MMMethodMMM:pasword];
}


@end
