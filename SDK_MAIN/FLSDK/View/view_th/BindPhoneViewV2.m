
#import "BindPhoneViewV2.h"
#import "SdkUtil.h"
#import "UIColor+HexStringToColorTW.h"
#import "SdkHeader.h"
#import "LoginButton.h"
#import "LoginTitleView.h"
#import "MyTextFiled.h"
#import "CountTimerDelegate.h"
#import "PhoneInfoModel.h"
#import "SDKRequest.h"
#import "ViewUtil.h"

@interface BindPhoneViewV2 () <CountTimerDelegate,PhoneInfoModelDelegate>

@end

@implementation BindPhoneViewV2
{
    UIButton *getVfCodeBtn;
    
    UIButton *okBtn;
    
    UILabel *hasBindPhoneTips;
    UIView *phoneContentView;
    UILabel *areaCodeLabel;
    
    PhoneInfoModel *mPhoneInfoModel;
    MyTextFiled *vfCodeFiled;
    MyTextFiled *phoneNumFiled;
    
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        
        
        
        self.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.15];
        
        mPhoneInfoModel = [[PhoneInfoModel alloc] init];
        mPhoneInfoModel.phoneDelegate_MMMPRO = self;
        
        [self addView_MMMethodMMM];
        
        
    }
    return self;
}


- (void)addView_MMMethodMMM {
    
    
    UIView *contentView = [[UIView alloc] init];
    
    UIColor *color = [UIColor whiteColor];
    contentView.backgroundColor = color;
    contentView.layer.cornerRadius = 10; 
    contentView.layer.masksToBounds = YES;
    
    [self addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
        make.width.mas_equalTo(VW(330));
        make.height.mas_equalTo(VH(265));
    }];
    
    
    UIView *titleView = [[UIView alloc] init];
    [contentView addSubview:titleView];
    [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(contentView.mas_top).mas_offset(VH(15));
        make.leading.mas_equalTo(contentView).mas_offset(VW(15));
        make.trailing.mas_equalTo(contentView).mas_offset(VW(-15));
        
        
    }];
    
    UIView *tagView = [[UIView alloc] init];
    tagView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    [titleView addSubview:tagView];
    [tagView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(titleView);
        make.leading.mas_equalTo(titleView);
        make.width.mas_equalTo(VW(4));
        make.height.mas_equalTo(VH(14));
        
        make.bottom.mas_equalTo(titleView);
    }];
    
    
    UILabel *titleLabel = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_phone_bind.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_2A2A2A]];
    titleLabel.font = [UIFont boldSystemFontOfSize:FS(15)];
    
    [titleView addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.mas_equalTo(titleView).mas_offset(6);
        make.trailing.mas_equalTo(titleView);
        make.top.mas_equalTo(titleView);
        make.bottom.mas_equalTo(titleView);
    }];
    
    UIButton *closeBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:icon_close_3 highlightedImage_MMMethodMMM:icon_close_3 tag_MMMethodMMM:TAG_CLOSE selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [titleView addSubview:closeBtn];
    [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.trailing.mas_equalTo(titleView);
        make.centerY.mas_equalTo(titleView);
        make.width.mas_equalTo(VH(22));
        make.height.mas_equalTo(VH(22));
    }];
    
    phoneContentView = [[UIView alloc] init];
    [contentView addSubview:phoneContentView];
    [phoneContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(titleView);
        make.trailing.mas_equalTo(titleView);
        make.top.mas_equalTo(titleView.mas_bottom).mas_offset(VH(28));
        
    }];
    
    
    UIView *phoneAreaCodeView = [[UIView alloc] init];
    phoneAreaCodeView.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_606060].CGColor;
    phoneAreaCodeView.layer.borderWidth = 0.5;
    phoneAreaCodeView.layer.cornerRadius = VH(20);
    [phoneContentView addSubview:phoneAreaCodeView];
    [phoneAreaCodeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(phoneContentView);
        make.top.bottom.mas_equalTo(phoneContentView);
        make.width.mas_equalTo(VW(85));
        make.height.mas_equalTo(VH(40));
    }];
    
    areaCodeLabel = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_area_code.localx fontSize_MMMethodMMM:FS(14) textColor_MMMethodMMM:UIColor.blackColor];
    areaCodeLabel.text = mPhoneInfoModel.selectedAreaCodeValue_MMMPRO;
    
    [phoneAreaCodeView addSubview:areaCodeLabel];
    [areaCodeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(phoneAreaCodeView);
        make.leading.mas_equalTo(phoneAreaCodeView).mas_offset(VW(15));
        
    }];
    
    UIButton *areaMoreBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:icon_down_list2 highlightedImage_MMMethodMMM:icon_down_list2 tag_MMMethodMMM:kMoreAccountListActTag selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [phoneAreaCodeView addSubview:areaMoreBtn];
    [areaMoreBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(areaCodeLabel.mas_trailing).mas_offset(VW(10));
        make.centerY.mas_equalTo(phoneAreaCodeView);
        make.width.height.mas_equalTo(VH(16));
        
    }];
    
    
    
    phoneNumFiled = [[MyTextFiled alloc] initWithTextColor_MMMethodMMM:UIColor.blackColor fontOfSize_MMMethodMMM:FS(14) placeholder_MMMethodMMM:wwwww_tag_wwwww_text_please_input_phone.localx placeColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_B8B8B8]];
    
    phoneNumFiled.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_606060].CGColor;
    phoneNumFiled.layer.borderWidth = 0.5;
    phoneNumFiled.layer.cornerRadius = VH(20);
    phoneNumFiled.inputTextField_MMMPRO.keyboardType = UIKeyboardTypePhonePad;
    
    [phoneContentView addSubview:phoneNumFiled];
    [phoneNumFiled mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(phoneAreaCodeView);
        make.leading.mas_equalTo(phoneAreaCodeView.mas_trailing).mas_offset(VW(15));
        make.trailing.mas_equalTo(phoneContentView);
        
    }];
    
    
    
    
    
    
    UIView *vfInfoView = [[UIView alloc] init];
    
    
    
    [contentView addSubview:vfInfoView];
    [vfInfoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(titleView);
        make.top.mas_equalTo(phoneContentView.mas_bottom).mas_offset(VH(15));
    }];
    
    vfCodeFiled = [[MyTextFiled alloc] initWithTextColor_MMMethodMMM:UIColor.blackColor fontOfSize_MMMethodMMM:FS(14) placeholder_MMMethodMMM:wwwww_tag_wwwww_py_msg_vfcode_hint.localx placeColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_B8B8B8]];
    
    vfCodeFiled.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_606060].CGColor;
    vfCodeFiled.layer.borderWidth = 0.5;
    vfCodeFiled.layer.cornerRadius = VH(20);
    vfCodeFiled.inputTextField_MMMPRO.keyboardType = UIKeyboardTypeNumberPad;
    vfCodeFiled.inputTextField_MMMPRO.textAlignment = NSTextAlignmentCenter;
    
    [vfInfoView addSubview:vfCodeFiled];
    [vfCodeFiled mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(vfInfoView);
        make.leading.mas_equalTo(phoneAreaCodeView);
        make.height.mas_equalTo(VH(40));
        make.width.mas_equalTo(VW(187));
        
    }];
    
    
    getVfCodeBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_get_vfcode) fontSize_MMMethodMMM:FS(14) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor] tag_MMMethodMMM:kGetVfCodeActTag selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    
    getVfCodeBtn.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor].CGColor;
    getVfCodeBtn.layer.borderWidth = 0.5;
    getVfCodeBtn.layer.cornerRadius = VH(20);
    
    
    [vfInfoView addSubview:getVfCodeBtn];
    [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(vfInfoView);
        make.trailing.mas_equalTo(vfInfoView);
        make.width.mas_equalTo(VW(100));
        
    }];
    [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    
    
    okBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_py_confire.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [okBtn.layer setCornerRadius:VH(20)];
    okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    [contentView addSubview:okBtn];
    
    [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(titleView);
        make.bottom.mas_equalTo(contentView.mas_bottom).mas_offset(-VH(28));
        make.height.mas_equalTo(VH(40));
    }];
    
    CAGradientLayer *gl = [ViewUtil createGradientLayerWithRadius_MMMethodMMM:VH(20)];
    [okBtn.layer addSublayer:gl];
    [self addDrawRectBolck_MMMethodMMM:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        gl.frame = okBtn.bounds;
    }];
    
    hasBindPhoneTips = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_has_phone_bind_tips.localx fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:ColorHex(wwwww_tag_wwwww__CC_4B4B4B)];
    hasBindPhoneTips.numberOfLines = 0;
    [contentView addSubview:hasBindPhoneTips];
    
    [hasBindPhoneTips mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(phoneContentView);
        make.top.mas_equalTo(phoneContentView.mas_bottom).mas_offset(VH(8));
        make.leading.trailing.mas_equalTo(vfInfoView);
    }];
    
    self.countTimerDelegate_MMMPRO = self;
    
    
    if (SDK_DATA.mLoginResponse_MMMPRO.data.isBindPhone) {
        
        hasBindPhoneTips.hidden = NO;
        vfInfoView.hidden = YES;
        [phoneContentView mas_updateConstraints:^(MASConstraintMaker *make) {
            
            make.top.mas_equalTo(titleView.mas_bottom).mas_offset(VH(46));
            
        }];
        NSString *tel = SDK_DATA.mLoginResponse_MMMPRO.data.telephone;
        NSArray *pairs = [tel componentsSeparatedByString:@"-"];
        if (pairs && pairs.count >=2) {
            NSString *areaCode = pairs[0];
            NSString *telNum = pairs[1];
            areaCodeLabel.text = areaCode;
            phoneNumFiled.inputTextField_MMMPRO.text = telNum;
            phoneNumFiled.inputTextField_MMMPRO.enabled = NO;
            areaMoreBtn.hidden = YES;
            
            [areaCodeLabel mas_remakeConstraints:^(MASConstraintMaker *make) {
                make.center.mas_equalTo(phoneAreaCodeView);
                
            }];
            
        }
        
    }else{
        hasBindPhoneTips.hidden = YES;
        vfInfoView.hidden = NO;
    }
}


- (void)btnClickAction_MMMethodMMM:(UIButton *)sender
{
    
    switch (sender.tag) {
            
        case TAG_CLOSE:
            [self removeFromGameView_MMMethodMMM];
            if (self.mMWBlock_MMMPRO) {
                self.mMWBlock_MMMPRO(NO, nil);
            }
            break;
        case kGetVfCodeActTag:
        {
            NSString *tel = phoneNumFiled.inputTextField_MMMPRO.text;
            tel = [tel trim_MMMethodMMM];
            
            NSString *areaCode = mPhoneInfoModel.selectedAreaCodeValue_MMMPRO;
            areaCode = [areaCode trim_MMMethodMMM];
            
            
            if ([StringUtil isEmpty_MMMethodMMM:areaCode]) {
                [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_area_code_not_empty.localx];
                return;
            }
            if ([StringUtil isEmpty_MMMethodMMM:tel]) {
                [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_empty.localx];
                return;
            }
            if (![SdkUtil validPhone_MMMethodMMM:tel phoneRegex_MMMethodMMM:mPhoneInfoModel.selectedRegularExpression_MMMPRO]) {
                [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_match.localx];
                return;
            }
            
            [SDKRequest requestMobileVfCode_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:tel email_MMMethodMMM:@"" otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
                
                [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_vfcode_has_send.localx];
                [self startCountTimer_MMMethodMMM];
                
            } errorBlock_MMMethodMMM:^(BJError *error) {
                
                [self cancelCountTimer_MMMethodMMM];
                [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
                
            }];
            
        }
            
            break;
            
        case kMoreAccountListActTag:
            
            [mPhoneInfoModel showAreaCodesActionSheetFromView_MMMethodMMM:sender];
            
            break;
            
        case kOkActTag:
            
        {
            if(SDK_DATA.mLoginResponse_MMMPRO.data.isBindPhone) 
            {
                [self removeFromGameView_MMMethodMMM];
                return;
            }
            NSString *tel = phoneNumFiled.inputTextField_MMMPRO.text;
            tel = [tel trim_MMMethodMMM];
            
            NSString *areaCode = mPhoneInfoModel.selectedAreaCodeValue_MMMPRO;
            areaCode = [areaCode trim_MMMethodMMM];
            
            NSString *vfCode = vfCodeFiled.inputTextField_MMMPRO.text;
            vfCode = [vfCode trim_MMMethodMMM];
            
            if ([StringUtil isEmpty_MMMethodMMM:areaCode]) {
                [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_area_code_not_empty.localx];
                return;
            }
            if ([StringUtil isEmpty_MMMethodMMM:tel]) {
                [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_empty.localx];
                return;
            }
            
            if (![SdkUtil validPhone_MMMethodMMM:tel phoneRegex_MMMethodMMM:mPhoneInfoModel.selectedRegularExpression_MMMPRO]) {
                [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_match.localx];
                return;
            }
            
            if ([StringUtil isEmpty_MMMethodMMM:vfCode]) {
                [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_py_msg_vfcode_hint.localx];
                return;
            }
            
            [SDKRequest bindAccountPhone_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:tel vCode_MMMethodMMM:vfCode otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
                
                [SdkUtil toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_bind_success.localx];
                SDK_DATA.mLoginResponse_MMMPRO.data.telephone = [NSString stringWithFormat:@"%@-%@",areaCode,tel];
                SDK_DATA.mLoginResponse_MMMPRO.data.isBindPhone = YES;
                
                if (self.mMWBlock_MMMPRO) {
                    self.mMWBlock_MMMPRO(YES, SDK_DATA.mLoginResponse_MMMPRO.data.telephone);
                }
                [self removeFromGameView_MMMethodMMM];
                
            } errorBlock_MMMethodMMM:^(BJError *error) {
                
                if (error.message) {
                    [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
                }
                
                
            }];
            
        }
            
            break;
            
            
        default:
            break;
    }
    
}

- (void)beforeStartTimer_MMMethodMMM {
    self.totalCount_MMMPRO = 60;
    getVfCodeBtn.userInteractionEnabled = NO;
    [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%ld", self.totalCount_MMMPRO] forState:UIControlStateNormal];
    
}

- (void)finishTimer_MMMethodMMM {
    
    getVfCodeBtn.userInteractionEnabled = YES;
    [getVfCodeBtn setTitle:GetString(wwwww_tag_wwwww_text_get_vfcode) forState:UIControlStateNormal];
}

- (void)onCancelTimer_MMMethodMMM{
    getVfCodeBtn.userInteractionEnabled = YES;
    [getVfCodeBtn setTitle:GetString(wwwww_tag_wwwww_text_get_vfcode) forState:UIControlStateNormal];
}

- (void)timing_MMMethodMMM:(NSString *)count{
    
    [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%@", count] forState:UIControlStateNormal];
    
}

- (void)showSelectedAreaCodeValue_MMMethodMMM:(NSString *)selectedAreaCodeValue
{
    areaCodeLabel.text = selectedAreaCodeValue;
}

@end
