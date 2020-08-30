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

- (instancetype)initView
{
    self = [super init];
    if (self) {
        
        self.phoneModel = [[GamaPhoneModel alloc] init];
        self.phoneModel.delegate = self;
        
        [self addContentView];
    }
    return self;
}


- (void) addContentView
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
        if (device_is_iPhoneX || Device_Is_Landscape) {
            make.width.mas_equalTo(self).multipliedBy(0.45);
        }else{
            make.width.mas_equalTo(self).multipliedBy(0.5);
        }
        
    }];
    
    UIImageView *lableIconImageView = [[UIImageView alloc] initWithImage:[UIImage gama_imageNamed:iconName]];
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
    if (device_is_iPhoneX || Device_Is_Landscape) {
           tipsUILabel.font = [UIFont systemFontOfSize:16];
       }else{
           tipsUILabel.font = [UIFont systemFontOfSize:14];
       }
    tipsUILabel.text = lableName;
    tipsUILabel.textAlignment = NSTextAlignmentCenter;
    tipsUILabel.backgroundColor = [UIColor clearColor];
    tipsUILabel.numberOfLines = 1; //0为多行
    //tipsUILabel.textColor = [UIColor blackColor];
    tipsUILabel.textColor = [UIColor colorWithHexString:@"#FF3E37"];
    
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
    
    UIButton *dropButton = [UIUtil initBtnWithNormalImage:@"sdk_list_down.png" highlightedImage:@"sdk_list_down.png" tag:222 selector:@selector(itemBtnAction:) target:self];
    
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
    UITapGestureRecognizer *tapGr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped:)];
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
       if (Device_Is_Landscape || device_is_iPhoneX) {
           placeHolderTextSize = 10;
       }
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:@"請輸入電話號碼"
                                                                  attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:placeHolderTextSize],
                                                                               NSForegroundColorAttributeName: [UIColor colorWithHexString:@"#A0A0A0"]}];
    self.mUITextField.attributedPlaceholder = attrStr;
    [phoneInputContentView addSubview:self.mUITextField];
    [self.mUITextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(phoneInputContentView).mas_offset(20);
        make.top.mas_equalTo(phoneInputContentView);
        make.bottom.mas_equalTo(phoneInputContentView);
        make.trailing.mas_equalTo(phoneInputContentView);
        
    }];
    
    
}

-(NSString *) getPhoneNumber
{
    return self.mUITextField.text;
}

-(NSString *) getPhoneAreaCode
{
    return self.aracCodeUILabel.text;
}

#pragma mark -- 电话号码
- (void)pushAreaTable:(UIButton *)sender{
    [self.phoneModel gamaShowAreaCodesActionSheetFromView:sender];
}

-(void)showSelectedAreaCodeValue:(NSString *)selectedAreaCodeValue{
    self.aracCodeUILabel.text = selectedAreaCodeValue;
    //    [self.mobile_area_tf setTitle:selectedAreaCodeValue forState:UIControlStateNormal];
}

-(void)viewTapped:(UITapGestureRecognizer*)tapGr
{
    [self pushAreaTable:nil];
}

- (void)itemBtnAction:(UIButton *)sender
{
    [self pushAreaTable:sender];
}
@end
