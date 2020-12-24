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
    
    UIImageView *lableIconImageView = [[UIImageView alloc] initWithImage:[UIImage gama_imageNamed:iconName]];
    lableIconImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:lableIconImageView];
    [lableIconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.equalTo(self.mas_leading).mas_offset(10);
        make.centerY.mas_equalTo(self);
        make.height.mas_equalTo(VH(30));
        make.width.mas_equalTo(VH(30));
        
    }];
    
    self.aracCodeUILabel = [[UILabel alloc] init];//区号
    self.aracCodeUILabel.font = [UIFont systemFontOfSize:VH(14)];
    self.aracCodeUILabel.text = @"886";
    self.aracCodeUILabel.textAlignment = NSTextAlignmentCenter;
    self.aracCodeUILabel.backgroundColor = [UIColor clearColor];
    self.aracCodeUILabel.numberOfLines = 1; //0为多行
    self.aracCodeUILabel.textColor = [UIColor colorWithHexString:@"#E32CBC"];
    
    [self addSubview:self.aracCodeUILabel];
    [self.aracCodeUILabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(lableIconImageView.mas_trailing).mas_offset(VW(4));
        make.top.mas_equalTo(self).mas_offset(2);
        make.bottom.mas_equalTo(self).mas_offset(-2);
        make.width.mas_equalTo(40);
        
    }];
    
    UIButton *dropButton = [UIUtil initBtnWithNormalImage:@"sdk_list_down.png" highlightedImage:@"sdk_list_down.png" tag:222 selector:@selector(itemBtnAction:) target:self];
    
    [self addSubview:dropButton];
    dropButton.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:dropButton];
    [dropButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.aracCodeUILabel.mas_trailing).mas_offset(2);
        make.centerY.mas_equalTo(self);
        make.height.mas_equalTo(VH(19));
        make.width.mas_equalTo(VH(19));
        
    }];
    
    self.aracCodeUILabel.userInteractionEnabled = YES; // 可以理解为设置label可被点击
    UITapGestureRecognizer *tapGr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped:)];
    [self.aracCodeUILabel addGestureRecognizer:tapGr];
    
    //============
    
    //电话号码输入框
    UIView *phoneInputContentView = [[UIView alloc] init];
    
//    phoneInputContentView.layer.cornerRadius = 4;
    phoneInputContentView.backgroundColor = [UIColor whiteColor];
    [self addSubview:phoneInputContentView];
    [phoneInputContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(dropButton.mas_trailing).mas_offset(VW(6));
        make.top.mas_equalTo(self);
        make.bottom.mas_equalTo(self);
        make.trailing.mas_equalTo(self.mas_trailing);
    }];
    
    self.mUITextField = [[UITextField alloc] init];
    self.mUITextField.font = [UIFont systemFontOfSize:VH(14)];
    self.mUITextField.textColor = [UIColor blackColor];
    [self.mUITextField setKeyboardType:(UIKeyboardTypePhonePad)];
    
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:SDKConReaderGetLocalizedString(@"text_enter_phone")
                                                                  attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:VH(14)],
                                                                               NSForegroundColorAttributeName: [UIColor colorWithHexString:@"#999999"]}];
    self.mUITextField.attributedPlaceholder = attrStr;
    [phoneInputContentView addSubview:self.mUITextField];
    [self.mUITextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(phoneInputContentView);
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
