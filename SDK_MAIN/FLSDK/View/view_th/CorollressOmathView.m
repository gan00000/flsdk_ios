

#import "CorollressOmathView.h"
#import "SdkHeader.h"
#import "KineelChildetteView.h"
#import "PolicyacyArchaeoibleView.h"
#import "FratricHowetyView.h"
#import "HospitalastLepidmanagementileButton.h"
#import "AnxiariumVehwindature.h"
#import "StinityAsterature.h"
#import "GnarficMeter.h"
#import "EitheratorConditionlet.h"
#import "FloorariumRect.h"

@implementation CorollressOmathView
{
    PolicyacyArchaeoibleView *accountSDKTextFiledView;
    PolicyacyArchaeoibleView *passwordSDKTextFiledView;
    PolicyacyArchaeoibleView *passwordAgainSDKTextFiledView;
    PolicyacyArchaeoibleView *vfCodeFiledView;
    UIButton *regAccountBtn; 
    KineelChildetteView   *mLoginTitleView;
    int phoneCountdown;
    NSTimer *downTimer;
    
    UIButton *getVfCodeBtn;
    
    
}


- (instancetype)initView_MMMethodMMM
{
    self = [self initViewWithBindType_MMMethodMMM:0];
    if (!self) {
        return nil;
    }
    return self;
}
- (instancetype)initViewWithBindType_MMMethodMMM:(NSInteger) bindType
{
    self = [super init];
    if (self) {
        
        
        
        
        self.bindType_MMMPRO = bindType;
        
       
        
        accountSDKTextFiledView = [[PolicyacyArchaeoibleView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.moreAccountBtn_MMMPRO.hidden = YES;
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self);
            make.leading.mas_equalTo(self).mas_offset(VW(34));
            make.trailing.mas_equalTo(self).mas_offset(-VW(34));
            make.height.mas_equalTo(VH(40));
        }];
        
        
        
        passwordSDKTextFiledView = [[PolicyacyArchaeoibleView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
#ifdef SDK_FOR_APP
        getVfCodeBtn = [LeukastBetweenate initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_get_vfcode) fontSize_MMMethodMMM:FS(14) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor] tag_MMMethodMMM:kGetVfCodeActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];

        getVfCodeBtn.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor].CGColor;
        getVfCodeBtn.layer.borderWidth = 1;
        getVfCodeBtn.layer.cornerRadius = VH(20);
        [self addSubview:getVfCodeBtn];
        [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.width.mas_equalTo(VW(100));
            make.height.mas_equalTo(accountSDKTextFiledView);
            
        }];
        [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
        
        vfCodeFiledView = [[PolicyacyArchaeoibleView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_VfCode)];
        
        [self addSubview:vfCodeFiledView];
        [vfCodeFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(getVfCodeBtn);
            make.bottom.equalTo(getVfCodeBtn);
            
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(getVfCodeBtn.mas_leading).mas_offset(VW(-16));
        }];
        
#endif
        
        UILabel *tipsUILabel = [[UILabel alloc] init];
        tipsUILabel.font = [UIFont systemFontOfSize:FS(10)];
        tipsUILabel.text = wwwww_tag_wwwww_text_reg_tips.localx;
        tipsUILabel.textAlignment = NSTextAlignmentLeft;
        tipsUILabel.numberOfLines = 0; 
        tipsUILabel.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    
        [self addSubview:tipsUILabel];
        [tipsUILabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            if(vfCodeFiledView){
                make.top.mas_equalTo(vfCodeFiledView.mas_bottom).offset(8);
            }else{
                make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).offset(8);
            }
    
        }];
        
        
        
        regAccountBtn = [LeukastBetweenate initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_confire_reg.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kRegisterAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [regAccountBtn.layer setCornerRadius:VH(25)];
        regAccountBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
        [self addSubview:regAccountBtn];
        
        [regAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            make.top.equalTo(tipsUILabel.mas_bottom).mas_offset(VH(40));
            make.height.mas_equalTo(VH(50));
        }];
        
        CAGradientLayer *gl = [FloorariumRect createGradientLayerWithRadius_MMMethodMMM:VH(25)];
        [regAccountBtn.layer addSublayer:gl];
        [self addDrawRectBolck_MMMethodMMM:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            gl.frame = regAccountBtn.bounds;
        }];

    }
    return self;
}

-(void)downTime_MMMethodMMM{
    
    phoneCountdown = 60;
    getVfCodeBtn.userInteractionEnabled = NO;
    [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    
    
    
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
    downTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                 target:self
                                               selector:@selector(phoneFireTimer_MMMethodMMM)
                                               userInfo:nil
                                                repeats:YES];
    
    
}

- (void)phoneFireTimer_MMMethodMMM {
    phoneCountdown--;
    if (phoneCountdown < 0) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
    }else{
        [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    }
    
}

-(void)resetVfCodeBtnStatue_MMMethodMMM
{
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
    getVfCodeBtn.userInteractionEnabled = YES;
    [getVfCodeBtn setTitle:GetString(wwwww_tag_wwwww_text_get_vfcode) forState:UIControlStateNormal];
}

- (void)dealloc
{
    
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
}



- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {
            
        case kGetVfCodeActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kGetVfCodeActTag);
            NSString *account = [accountSDKTextFiledView.inputUITextField_MMMPRO.text trim_MMMethodMMM];
            if (![StinityAsterature validUserName_MMMethodMMM:account]) {
                return;
            }
            [self requestVfCodeByEmail_MMMethodMMM:account];
        }
            break;
            
        case kRegisterAccountActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kRegisterAccountActTag);
            NSString *accountName = [accountSDKTextFiledView.inputUITextField_MMMPRO.text trim_MMMethodMMM];
            NSString *pwd = [passwordSDKTextFiledView.inputUITextField_MMMPRO.text trim_MMMethodMMM];
            
            
            if (![StinityAsterature validUserName_MMMethodMMM:accountName]) {
                
                return;
            }
            
            if (![StinityAsterature validPwd_MMMethodMMM:pwd]) {
                return;
            }
            
            NSString *vfCode = @"";
#ifdef SDK_FOR_APP
            
            vfCode = vfCodeFiledView.inputUITextField_MMMPRO.text;
            if([VentlongonDifficult isEmpty_MMMethodMMM:vfCode]){
                [StinityAsterature toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_vfcode_empty)];
                return;
            }
            
#endif
          
            [EitheratorConditionlet accountRegister_MMMethodMMM:self.loginDelegate_MMMPRO view_MMMethodMMM:self areaCode_MMMethodMMM:@"" name:accountName password_MMMethodMMM:pwd phoneNum_MMMethodMMM:@"" vfCode_MMMethodMMM:vfCode];
            
        }
            break;
            
        default:
            break;
    }
}


- (void)requestVfCodeByEmail_MMMethodMMM:(NSString *)email
{
    
    [AnxiariumVehwindature requestVfCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@""  email_MMMethodMMM:email interfaces_MMMethodMMM:@"1" otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [StinityAsterature toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_send_vf_code_success)];
        [self downTime_MMMethodMMM];
    } errorBlock_MMMethodMMM:^(AlleloitySex *error) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
        [FearicalVoracwise showAlertWithMessage_MMMethodMMM:error.message];
    }];
}

@end
