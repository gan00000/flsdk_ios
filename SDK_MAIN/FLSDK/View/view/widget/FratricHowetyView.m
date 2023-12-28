

#import "FratricHowetyView.h"
#import "SdkHeader.h"

@implementation FratricHowetyView

- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        self.phoneModel_MMMPRO = [[CenslyPagefaction alloc] init];
        self.phoneModel_MMMPRO.phoneDelegate_MMMPRO = self;
        
        [self addPhoneViewContentView_MMMethodMMM];
    }
    return self;
}


- (void)addPhoneViewContentView_MMMethodMMM
{
    
    self.backgroundColor = [UIColor clearColor];
    
    NSString *iconName = wwwww_tag_wwwww_fl_sdk_mb_png;
    NSString *lableName = wwwww_tag_wwwww_purgresponseism_polship;
    
    UIView *areaCodeContentView = [[UIView alloc] init];
    areaCodeContentView.layer.cornerRadius = 4;
    areaCodeContentView.backgroundColor = [UIColor whiteColor];
    [self addSubview:areaCodeContentView];
    [areaCodeContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.mas_leading);
        make.top.mas_equalTo(self);
        make.height.mas_equalTo(self);
        if (device_is_iPhoneX || !IS_PORTRAIT) {
            make.width.mas_equalTo(self).multipliedBy(0.45);
        }else{
            make.width.mas_equalTo(self).multipliedBy(0.5);
        }
        
    }];
    
    UIImageView *lableIconImageView = [[UIImageView alloc] initWithImage:[UIImage res_imageNamed_MMMethodMMM:iconName]];
    lableIconImageView.contentMode = UIViewContentModeScaleAspectFit;
    [areaCodeContentView addSubview:lableIconImageView];
    [lableIconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(areaCodeContentView.mas_leading).mas_offset(10);
        make.centerY.mas_equalTo(areaCodeContentView);
        make.height.mas_equalTo(areaCodeContentView).multipliedBy(0.4);
        make.width.mas_equalTo(lableIconImageView.mas_height);
    }];
    
    UILabel *tipsUILabel = [[UILabel alloc] init];
    if (device_is_iPhoneX || !IS_PORTRAIT) {
           tipsUILabel.font = [UIFont systemFontOfSize:16];
       }else{
           tipsUILabel.font = [UIFont systemFontOfSize:14];
       }
    tipsUILabel.text = lableName;
    tipsUILabel.textAlignment = NSTextAlignmentCenter;
    tipsUILabel.backgroundColor = [UIColor clearColor];
    tipsUILabel.numberOfLines = 1; 
    
    tipsUILabel.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_FF3E37];
    
    [areaCodeContentView addSubview:tipsUILabel];
    [tipsUILabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(lableIconImageView.mas_trailing).mas_offset(2);
        make.top.mas_equalTo(areaCodeContentView).offset(2);
        make.bottom.mas_equalTo(areaCodeContentView).offset(-2);
        make.width.mas_equalTo(40);
        
    }];
    
    
    self.aracCodeUILabel_MMMPRO = [[UILabel alloc] init];
    self.aracCodeUILabel_MMMPRO.font = [UIFont systemFontOfSize:14];
    self.aracCodeUILabel_MMMPRO.text = wwwww_tag_wwwww_886;
    self.aracCodeUILabel_MMMPRO.textAlignment = NSTextAlignmentCenter;
    self.aracCodeUILabel_MMMPRO.backgroundColor = [UIColor clearColor];
    self.aracCodeUILabel_MMMPRO.numberOfLines = 1; 
    self.aracCodeUILabel_MMMPRO.textColor = [UIColor blackColor];
    
    [areaCodeContentView addSubview:self.aracCodeUILabel_MMMPRO];
    [self.aracCodeUILabel_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(tipsUILabel.mas_trailing);
        make.top.mas_equalTo(areaCodeContentView).offset(2);
        make.bottom.mas_equalTo(areaCodeContentView).offset(-2);
        make.width.mas_equalTo(40);
        
    }];
    
    UIButton *dropButton = [LeukastBetweenate initBtnWithNormalImage_MMMethodMMM:sdk_list_down highlightedImage_MMMethodMMM:sdk_list_down tag_MMMethodMMM:222 selector:@selector(itemBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    int moffset = -6;
    if (IS_IPHONE && IS_PORTRAIT) {
        moffset = -2;
    }
    
    [areaCodeContentView addSubview:dropButton];
    dropButton.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [areaCodeContentView addSubview:dropButton];
    [dropButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.aracCodeUILabel_MMMPRO.mas_trailing).mas_offset(2);
        make.centerY.mas_equalTo(areaCodeContentView);
        make.height.mas_equalTo(10);
        
        make.trailing.mas_equalTo(areaCodeContentView.mas_trailing);
    }];
    
    self.aracCodeUILabel_MMMPRO.userInteractionEnabled = YES; 
    UITapGestureRecognizer *tapGr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped_MMMethodMMM:)];
    [self.aracCodeUILabel_MMMPRO addGestureRecognizer:tapGr];
    
    
    
    
    UIView *phoneInputContentView = [[UIView alloc] init];
    
    phoneInputContentView.layer.cornerRadius = 4;
    phoneInputContentView.backgroundColor = [UIColor whiteColor];
    [self addSubview:phoneInputContentView];
    [phoneInputContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(areaCodeContentView.mas_trailing).mas_offset(10);
        make.top.mas_equalTo(self);
        make.bottom.mas_equalTo(self);
        make.trailing.mas_equalTo(self.mas_trailing);
    }];
    
    self.mUITextField_MMMPRO = [[UITextField alloc] init];
    
    self.mUITextField_MMMPRO.font = [UIFont systemFontOfSize:12];
    self.mUITextField_MMMPRO.textColor = [UIColor blackColor];
    [self.mUITextField_MMMPRO setKeyboardType:(UIKeyboardTypePhonePad)];
    
    int placeHolderTextSize = 8;
       if (!IS_PORTRAIT || device_is_iPhoneX) {
           placeHolderTextSize = 10;
       }
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:wwwww_tag_wwwww_anything_scanslike
                                                                  attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:placeHolderTextSize],
                                                                               NSForegroundColorAttributeName: [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_A0A0A0]}];
    self.mUITextField_MMMPRO.attributedPlaceholder = attrStr;
    [phoneInputContentView addSubview:self.mUITextField_MMMPRO];
    [self.mUITextField_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(phoneInputContentView).mas_offset(20);
        make.top.mas_equalTo(phoneInputContentView);
        make.bottom.mas_equalTo(phoneInputContentView);
        make.trailing.mas_equalTo(phoneInputContentView);
        
    }];
    
    
}

-(NSString *)getPhoneNumber_MMMethodMMM
{
    return self.mUITextField_MMMPRO.text;
}

-(NSString *)getPhoneAreaCode_MMMethodMMM
{
    return self.aracCodeUILabel_MMMPRO.text;
}

#pragma mark -- 电话号码
- (void)pushAreaTable_MMMethodMMM:(UIButton *)sender{
    [self.phoneModel_MMMPRO showAreaCodesActionSheetFromView_MMMethodMMM:sender];
}

-(void)showSelectedAreaCodeValue_MMMethodMMM:(NSString *)selectedAreaCodeValue{
    self.aracCodeUILabel_MMMPRO.text = selectedAreaCodeValue;
    
}

-(void)viewTapped_MMMethodMMM:(UITapGestureRecognizer*)tapGr
{
    [self pushAreaTable_MMMethodMMM:nil];
}

- (void)itemBtnAction_MMMethodMMM:(UIButton *)sender
{
    [self pushAreaTable_MMMethodMMM:sender];
}
@end
