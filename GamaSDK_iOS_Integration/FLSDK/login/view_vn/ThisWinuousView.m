

#import "ThisWinuousView.h"
#import "SdkHeader.h"
#import "RhombtyWesternentView.h"
#import "AgoniaShootalView.h"
#import "PathacityThoughainView.h"
#import "TrichoasterPhaneruleButton.h"
#import "TransifySideatory.h"
#import "DiseaseitudeGastroaire.h"
#import "LuminseaicalPresentth.h"

@implementation ThisWinuousView

{
    RhombtyWesternentView *accountSDKTextFiledView;
    RhombtyWesternentView *newPwdSDKTextFiledView;
    
    RhombtyWesternentView *vfCodeFiledView;
    
    
    AgoniaShootalView   *mLoginTitleView;
    UIButton *getVfCodeBtn;
    
    
    int phoneCountdown;
    NSTimer *downTimer;
}

- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        
        
        
        
        
        
        
        UIView *myView = [[UIView alloc] init];
    
        [self addSubview:myView];
        [myView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(self);
            make.width.mas_equalTo(VW(340));
            make.height.mas_equalTo(VH(326));
        }];
        
        
        UIImageView *bgIV = [SmilePitate initImageViewWithImage_MMMethodMMM:sdk_bg_page];
        [myView addSubview:bgIV];
        [bgIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(myView);
        }];
        
        
        mLoginTitleView = [[AgoniaShootalView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_text_forgot_pwd) hander_MMMethodMMM:^(NSInteger) {
            
            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_FIND_PWD) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG)];
        }];
        
        
        [myView addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(myView.mas_top).mas_offset(VH(14));
            make.leading.trailing.mas_equalTo(myView);
            make.height.mas_equalTo(VH(40));
        }];
        
        
        
        
        accountSDKTextFiledView = [[RhombtyWesternentView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
        [myView addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(myView).mas_offset(VW(18));
            make.trailing.mas_equalTo(myView).mas_offset(VW(-18));
            make.height.mas_equalTo(VH(40));

            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));
            
        }];
        
        
        newPwdSDKTextFiledView = [[RhombtyWesternentView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_New)];
        [myView addSubview:newPwdSDKTextFiledView];
        
        [newPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(accountSDKTextFiledView);

            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        
        getVfCodeBtn = [SmilePitate initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_get_vfcode) fontSize_MMMethodMMM:FS(14) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kGetVfCodeActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        getVfCodeBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
        getVfCodeBtn.layer.cornerRadius = VH(5);
        [myView addSubview:getVfCodeBtn];
        [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(newPwdSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.width.mas_equalTo(VW(100));
            make.height.mas_equalTo(accountSDKTextFiledView);
            
        }];
        [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
        
        
        vfCodeFiledView = [[RhombtyWesternentView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_VfCode)];
        
        [myView addSubview:vfCodeFiledView];
        [vfCodeFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(getVfCodeBtn);
            make.bottom.equalTo(getVfCodeBtn);
            
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(getVfCodeBtn.mas_leading).mas_offset(VW(-16));
        }];
        
        
        
        UIButton *okBtn = [SmilePitate initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_py_confire.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [okBtn.layer setCornerRadius:VH(5)];
        okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
        [myView addSubview:okBtn];
        
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(getVfCodeBtn.mas_bottom).mas_offset(VH(30));
            make.width.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(VH(40));
        }];
        
        
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            CAGradientLayer *glLayer = [LuminseaicalPresentth createGradientLayerWithRadius_MMMethodMMM:VH(5)];
            glLayer.frame = okBtn.bounds;
            [okBtn.layer addSublayer:glLayer];
            
        }];

        
        
    }
    return self;
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {
            
        case kGetVfCodeActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kGetVfCodeActTag);
            NSString *account = [accountSDKTextFiledView.inputUITextField.text trim_MMMethodMMM];
            if (![DiseaseitudeGastroaire validUserName_MMMethodMMM:account]) {
                return;
            }
            [self requestVfCodeByEmail_MMMethodMMM:account];
        }
            break;
            
        case kOkActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kOkActTag);
            [self findPassword_MMMethodMMM];
        }
            
            
            break;
            
            
        default:
            break;
    }
}

-(void)findPassword_MMMethodMMM
{
    NSString *userName = [accountSDKTextFiledView.inputUITextField.text trim_MMMethodMMM];
    
    NSString *areaCode = @"";
    NSString *phoneNum = @"";
    NSString *vfCode = [vfCodeFiledView.inputUITextField.text trim_MMMethodMMM];
    
    NSString *newPwd = [newPwdSDKTextFiledView.inputUITextField.text trim_MMMethodMMM];
    
    if (![DiseaseitudeGastroaire validUserName_MMMethodMMM:userName]) {
        return;
    }
    
    if ([PietCircumthanklike isEmpty_MMMethodMMM:vfCode]) {
    
        [DiseaseitudeGastroaire toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_vfcode_empty)];
        return;
    }
        
    if (![DiseaseitudeGastroaire validPwd_MMMethodMMM: newPwd]) {
       
        return;
    }
    
    
    NSDictionary *otherParamsDic = nil;
    @try {
        otherParamsDic = @{
            wwwww_tag_wwwww_newPwd        :[CauseenneSper getMD5StrFromString_MMMethodMMM:newPwd],
        };
        
    } @catch (NSException *exception) {
        
    }
    
    kWeakSelf
    [TransifySideatory doForgotPasswordWithUserName_MMMethodMMM:userName phoneAreaCode_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:phoneNum email_MMMethodMMM:userName vfCode_MMMethodMMM:vfCode interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherParamsDic_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
        
        [DiseaseitudeGastroaire toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_change_pwd_success)];

        if (weakSelf.delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = userName;
            cc.data.password = newPwd;
            cc.data.loginType = LOGIN_TYPE_SELF;
            [weakSelf.delegate handleLoginOrRegSuccess_MMMethodMMM:cc thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
        
    } errorBlock_MMMethodMMM:^(EnjoyIdi *error) {
        [DreamismAlthougheous showAlertWithMessage_MMMethodMMM:error.message];
    }];
    
}


- (void)requestVfCodeByEmail_MMMethodMMM:(NSString *)email
{
    
    [TransifySideatory requestVfCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@""  email_MMMethodMMM:email interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [DiseaseitudeGastroaire toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_send_vf_code_success)];
        [self downTime_MMMethodMMM];
    } errorBlock_MMMethodMMM:^(EnjoyIdi *error) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
        [DreamismAlthougheous showAlertWithMessage_MMMethodMMM:error.message];
    }];
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

@end
