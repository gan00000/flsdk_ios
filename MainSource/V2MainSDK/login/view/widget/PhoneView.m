//
//  PhoneView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/12.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "PhoneView.h"
#import "SdkHeader.h"

@implementation PhoneView

- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        self.phoneModel = [[PhoneInfoModel alloc] init];
        self.phoneModel.delegate = self;
        
        [self addPhoneViewContentView_MMMethodMMM];
    }
    return self;
}


- (void)addPhoneViewContentView_MMMethodMMM
{
    
    self.backgroundColor = [UIColor clearColor];
    
    NSString *iconName = @"fl_sdk_mb.png";
    NSString *lableName = @"電話";
    
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
//    tipsUILabel.font = [UIFont systemFontOfSize:16];
    if (device_is_iPhoneX || !IS_PORTRAIT) {
           tipsUILabel.font = [UIFont systemFontOfSize:16];
       }else{
           tipsUILabel.font = [UIFont systemFontOfSize:14];
       }
    tipsUILabel.text = lableName;
    tipsUILabel.textAlignment = NSTextAlignmentCenter;
    tipsUILabel.backgroundColor = [UIColor clearColor];
    tipsUILabel.numberOfLines = 1; //0为多行
    //tipsUILabel.textColor = [UIColor blackColor];
    tipsUILabel.textColor = [UIColor colorWithHexString_MMMethodMMM:@"#FF3E37"];
    
    [areaCodeContentView addSubview:tipsUILabel];
    [tipsUILabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(lableIconImageView.mas_trailing).mas_offset(2);
        make.top.mas_equalTo(areaCodeContentView).offset(2);
        make.bottom.mas_equalTo(areaCodeContentView).offset(-2);
        make.width.mas_equalTo(40);
        
    }];
    
    
    self.aracCodeUILabel = [[UILabel alloc] init];//区号
    self.aracCodeUILabel.font = [UIFont systemFontOfSize:14];
    self.aracCodeUILabel.text = @"886";
    self.aracCodeUILabel.textAlignment = NSTextAlignmentCenter;
    self.aracCodeUILabel.backgroundColor = [UIColor clearColor];
    self.aracCodeUILabel.numberOfLines = 1; //0为多行
    self.aracCodeUILabel.textColor = [UIColor blackColor];
    
    [areaCodeContentView addSubview:self.aracCodeUILabel];
    [self.aracCodeUILabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(tipsUILabel.mas_trailing);
        make.top.mas_equalTo(areaCodeContentView).offset(2);
        make.bottom.mas_equalTo(areaCodeContentView).offset(-2);
        make.width.mas_equalTo(40);
        
    }];
    
    UIButton *dropButton = [UIUtil initBtnWithNormalImage_MMMethodMMM:sdk_list_down highlightedImage_MMMethodMMM:sdk_list_down tag_MMMethodMMM:222 selector:@selector(itemBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    int moffset = -6;
    if (IS_IPHONE && IS_PORTRAIT) {
        moffset = -2;
    }
    
    [areaCodeContentView addSubview:dropButton];
    dropButton.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [areaCodeContentView addSubview:dropButton];
    [dropButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.aracCodeUILabel.mas_trailing).mas_offset(2);
        make.centerY.mas_equalTo(areaCodeContentView);
        make.height.mas_equalTo(10);
        //make.width.mas_equalTo(10);
        make.trailing.mas_equalTo(areaCodeContentView.mas_trailing);
    }];
    
    self.aracCodeUILabel.userInteractionEnabled = YES; // 可以理解为设置label可被点击
    UITapGestureRecognizer *tapGr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped_MMMethodMMM:)];
    [self.aracCodeUILabel addGestureRecognizer:tapGr];
    
    //============
    
    //电话号码输入框
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
    
    self.mUITextField = [[UITextField alloc] init];
    
    self.mUITextField.font = [UIFont systemFontOfSize:12];
    self.mUITextField.textColor = [UIColor blackColor];
    [self.mUITextField setKeyboardType:(UIKeyboardTypePhonePad)];
    
    int placeHolderTextSize = 8;
       if (!IS_PORTRAIT || device_is_iPhoneX) {
           placeHolderTextSize = 10;
       }
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:@"請輸入電話號碼"
                                                                  attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:placeHolderTextSize],
                                                                               NSForegroundColorAttributeName: [UIColor colorWithHexString_MMMethodMMM:@"#A0A0A0"]}];
    self.mUITextField.attributedPlaceholder = attrStr;
    [phoneInputContentView addSubview:self.mUITextField];
    [self.mUITextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(phoneInputContentView).mas_offset(20);
        make.top.mas_equalTo(phoneInputContentView);
        make.bottom.mas_equalTo(phoneInputContentView);
        make.trailing.mas_equalTo(phoneInputContentView);
        
    }];
    
    
}

-(NSString *)getPhoneNumber_MMMethodMMM
{
    return self.mUITextField.text;
}

-(NSString *)getPhoneAreaCode_MMMethodMMM
{
    return self.aracCodeUILabel.text;
}

#pragma mark -- 电话号码
- (void)pushAreaTable_MMMethodMMM:(UIButton *)sender{
    [self.phoneModel showAreaCodesActionSheetFromView_MMMethodMMM:sender];
}

-(void)showSelectedAreaCodeValue_MMMethodMMM:(NSString *)selectedAreaCodeValue{
    self.aracCodeUILabel.text = selectedAreaCodeValue;
    //    [self.mobile_area_tf setTitle:selectedAreaCodeValue forState:UIControlStateNormal];
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
