
#import "HypityPendView.h"
#import "DiseaseitudeGastroaire.h"
#import "UIColor+DuboEgyrsome.h"
#import "SdkHeader.h"
#import "TrichoasterPhaneruleButton.h"
#import "AgoniaShootalView.h"
#import "IssueLikelyeurTextFiled.h"
#import "CountTimerDelegate.h"
#import "EnjoyitionRecentlyship.h"
#import "TransifySideatory.h"
#import "LuminseaicalPresentth.h"

@interface HypityPendView () <CountTimerDelegate,PhoneInfoModelDelegate>

@end

@implementation HypityPendView
{
    UIButton *getVfCodeBtn;
    
    UIButton *okBtn;
    
    UILabel *hasBindPhoneTips;
    UIView *phoneContentView;
    UILabel *areaCodeLabel;
    
    EnjoyitionRecentlyship *mPhoneInfoModel;
    IssueLikelyeurTextFiled *vfCodeFiled;
    IssueLikelyeurTextFiled *phoneNumFiled;
    
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        
        
        
        self.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.15];
        
        mPhoneInfoModel = [[EnjoyitionRecentlyship alloc] init];
        mPhoneInfoModel.delegate = self;
        
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
    
    
    UILabel *titleLabel = [SmilePitate initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_phone_bind.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_2A2A2A]];
    titleLabel.font = [UIFont boldSystemFontOfSize:FS(15)];
    
    [titleView addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.mas_equalTo(titleView).mas_offset(6);
        make.trailing.mas_equalTo(titleView);
        make.top.mas_equalTo(titleView);
        make.bottom.mas_equalTo(titleView);
    }];
    
    UIButton *closeBtn = [SmilePitate initBtnWithNormalImage_MMMethodMMM:icon_close_3 highlightedImage_MMMethodMMM:icon_close_3 tag_MMMethodMMM:TAG_CLOSE selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
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
    phoneAreaCodeView.layer.cornerRadius = VH(5);
    [phoneContentView addSubview:phoneAreaCodeView];
    [phoneAreaCodeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(phoneContentView);
        make.top.bottom.mas_equalTo(phoneContentView);
        make.width.mas_equalTo(VW(85));
        make.height.mas_equalTo(VH(40));
    }];
    
    areaCodeLabel = [SmilePitate initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_area_code.localx fontSize_MMMethodMMM:FS(14) textColor_MMMethodMMM:UIColor.blackColor];
    areaCodeLabel.text = mPhoneInfoModel.selectedAreaCodeValue;
    
    [phoneAreaCodeView addSubview:areaCodeLabel];
    [areaCodeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(phoneAreaCodeView);
        make.leading.mas_equalTo(phoneAreaCodeView).mas_offset(VW(15));
        
    }];
    
    UIButton *areaMoreBtn = [SmilePitate initBtnWithNormalImage_MMMethodMMM:icon_down_list2 highlightedImage_MMMethodMMM:icon_down_list2 tag_MMMethodMMM:kMoreAccountListActTag selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [phoneAreaCodeView addSubview:areaMoreBtn];
    [areaMoreBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(areaCodeLabel.mas_trailing).mas_offset(VW(10));
        make.centerY.mas_equalTo(phoneAreaCodeView);
        make.width.height.mas_equalTo(VH(16));
        
    }];
    
    
    
    phoneNumFiled = [[IssueLikelyeurTextFiled alloc] initWithTextColor_MMMethodMMM:UIColor.blackColor fontOfSize_MMMethodMMM:FS(14) placeholder_MMMethodMMM:wwwww_tag_wwwww_text_please_input_phone.localx placeColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_B8B8B8]];
    
    phoneNumFiled.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_606060].CGColor;
    phoneNumFiled.layer.borderWidth = 0.5;
    phoneNumFiled.layer.cornerRadius = VH(5);
    phoneNumFiled.inputTextField.keyboardType = UIKeyboardTypePhonePad;
    
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
    
    vfCodeFiled = [[IssueLikelyeurTextFiled alloc] initWithTextColor_MMMethodMMM:UIColor.blackColor fontOfSize_MMMethodMMM:FS(14) placeholder_MMMethodMMM:wwwww_tag_wwwww_py_msg_vfcode_hint.localx placeColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_B8B8B8]];
    
    vfCodeFiled.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_606060].CGColor;
    vfCodeFiled.layer.borderWidth = 0.5;
    vfCodeFiled.layer.cornerRadius = VH(5);
    vfCodeFiled.inputTextField.keyboardType = UIKeyboardTypeNumberPad;
    vfCodeFiled.inputTextField.textAlignment = NSTextAlignmentCenter;
    
    [vfInfoView addSubview:vfCodeFiled];
    [vfCodeFiled mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(vfInfoView);
        make.leading.mas_equalTo(phoneAreaCodeView);
        make.height.mas_equalTo(VH(40));
        make.width.mas_equalTo(VW(187));
        
    }];
    
    
    getVfCodeBtn = [SmilePitate initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_get_vfcode) fontSize_MMMethodMMM:FS(14) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kGetVfCodeActTag selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    getVfCodeBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    getVfCodeBtn.layer.cornerRadius = VH(5);
    
    
    [vfInfoView addSubview:getVfCodeBtn];
    [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(vfInfoView);
        make.trailing.mas_equalTo(vfInfoView);
        make.width.mas_equalTo(VW(100));
        
    }];
    [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    
    
    okBtn = [SmilePitate initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_py_confire.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [okBtn.layer setCornerRadius:VH(5)];
    okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    [contentView addSubview:okBtn];
    
    [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(titleView);
        make.bottom.mas_equalTo(contentView.mas_bottom).mas_offset(-VH(28));
        make.height.mas_equalTo(VH(40));
    }];
    
    CAGradientLayer *gl = [LuminseaicalPresentth createGradientLayerWithRadius_MMMethodMMM:VH(5)];
    [okBtn.layer addSublayer:gl];
    [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        gl.frame = okBtn.bounds;
    }];
    
    hasBindPhoneTips = [SmilePitate initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_has_phone_bind_tips.localx fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:ColorHex(wwwww_tag_wwwww__CC_4B4B4B)];
    hasBindPhoneTips.numberOfLines = 0;
    [contentView addSubview:hasBindPhoneTips];
    
    [hasBindPhoneTips mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(phoneContentView);
        make.top.mas_equalTo(phoneContentView.mas_bottom).mas_offset(VH(8));
        make.leading.trailing.mas_equalTo(vfInfoView);
    }];
    
    self.countTimerDelegate = self;
    
    
    if (SDK_DATA.mLoginResponse.data.isBindPhone) {
        
        hasBindPhoneTips.hidden = NO;
        vfInfoView.hidden = YES;
        [phoneContentView mas_updateConstraints:^(MASConstraintMaker *make) {
            
            make.top.mas_equalTo(titleView.mas_bottom).mas_offset(VH(46));
            
        }];
        NSString *tel = SDK_DATA.mLoginResponse.data.telephone;
        NSArray *pairs = [tel componentsSeparatedByString:@"-"];
        if (pairs && pairs.count >=2) {
            NSString *areaCode = pairs[0];
            NSString *telNum = pairs[1];
            areaCodeLabel.text = areaCode;
            phoneNumFiled.inputTextField.text = telNum;
            phoneNumFiled.inputTextField.enabled = NO;
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
            [self removeFromGameView];
            if (self.mMWBlock) {
                self.mMWBlock(NO, nil);
            }
            break;
        case kGetVfCodeActTag:
        {
            NSString *tel = phoneNumFiled.inputTextField.text;
            tel = [tel trim_MMMethodMMM];
            
            NSString *areaCode = mPhoneInfoModel.selectedAreaCodeValue;
            areaCode = [areaCode trim_MMMethodMMM];
            
            
            if ([PietCircumthanklike isEmpty_MMMethodMMM:areaCode]) {
                [DiseaseitudeGastroaire toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_area_code_not_empty.localx];
                return;
            }
            if ([PietCircumthanklike isEmpty_MMMethodMMM:tel]) {
                [DiseaseitudeGastroaire toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_empty.localx];
                return;
            }
            if (![DiseaseitudeGastroaire validPhone_MMMethodMMM:tel phoneRegex_MMMethodMMM:mPhoneInfoModel.selectedRegularExpression]) {
                [DiseaseitudeGastroaire toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_match.localx];
                return;
            }
            
            [TransifySideatory requestMobileVfCode_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:tel email_MMMethodMMM:@"" otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
                
                [DiseaseitudeGastroaire toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_vfcode_has_send.localx];
                [self startCountTimer_MMMethodMMM];
                
            } errorBlock_MMMethodMMM:^(EnjoyIdi *error) {
                
                [self finishCountTimer_MMMethodMMM];
                [DreamismAlthougheous showAlertWithMessage_MMMethodMMM:error.message];
                
            }];
            
        }
            
            break;
            
        case kMoreAccountListActTag:
            
            [mPhoneInfoModel showAreaCodesActionSheetFromView_MMMethodMMM:sender];
            
            break;
            
        case kOkActTag:
            
        {
            if(SDK_DATA.mLoginResponse.data.isBindPhone) 
            {
                [self removeFromGameView];
                return;
            }
            NSString *tel = phoneNumFiled.inputTextField.text;
            tel = [tel trim_MMMethodMMM];
            
            NSString *areaCode = mPhoneInfoModel.selectedAreaCodeValue;
            areaCode = [areaCode trim_MMMethodMMM];
            
            NSString *vfCode = vfCodeFiled.inputTextField.text;
            vfCode = [vfCode trim_MMMethodMMM];
            
            if ([PietCircumthanklike isEmpty_MMMethodMMM:areaCode]) {
                [DiseaseitudeGastroaire toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_area_code_not_empty.localx];
                return;
            }
            if ([PietCircumthanklike isEmpty_MMMethodMMM:tel]) {
                [DiseaseitudeGastroaire toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_empty.localx];
                return;
            }
            
            if (![DiseaseitudeGastroaire validPhone_MMMethodMMM:tel phoneRegex_MMMethodMMM:mPhoneInfoModel.selectedRegularExpression]) {
                [DiseaseitudeGastroaire toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_not_match.localx];
                return;
            }
            
            if ([PietCircumthanklike isEmpty_MMMethodMMM:vfCode]) {
                [DiseaseitudeGastroaire toastMsg_MMMethodMMM: wwwww_tag_wwwww_py_msg_vfcode_hint.localx];
                return;
            }
            
            [TransifySideatory bindAccountPhone_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:tel vCode_MMMethodMMM:vfCode otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
                
                [DiseaseitudeGastroaire toastMsg_MMMethodMMM: wwwww_tag_wwwww_text_phone_bind_success.localx];
                SDK_DATA.mLoginResponse.data.telephone = [NSString stringWithFormat:@"%@-%@",areaCode,tel];
                SDK_DATA.mLoginResponse.data.isBindPhone = YES;
                
                if (self.mMWBlock) {
                    self.mMWBlock(YES, SDK_DATA.mLoginResponse.data.telephone);
                }
                [self removeFromGameView];
                
            } errorBlock_MMMethodMMM:^(EnjoyIdi *error) {
                
                if (error.message) {
                    [DreamismAlthougheous showAlertWithMessage_MMMethodMMM:error.message];
                }
                
                
            }];
            
        }
            
            break;
            
            
        default:
            break;
    }
    
}

- (void)beforeStartTimer_MMMethodMMM {
    self.totalCount = 60;
    getVfCodeBtn.userInteractionEnabled = NO;
    [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%ld", self.totalCount] forState:UIControlStateNormal];
    
}

- (void)finishTimer_MMMethodMMM {
    
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
