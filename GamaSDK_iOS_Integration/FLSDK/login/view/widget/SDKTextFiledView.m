//
//  SDKTextFiledView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/9.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "SDKTextFiledView.h"
#import "UIUtil.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "SdkHeader.h"

@implementation SDKTextFiledView
{
    UITextField *mUITextField;
}


- (instancetype)initViewWithType:(SDKTextFiledView_Type) type
{
    self = [super init];
    if (self) {
        [self addContentView:type];
    }
    return self;
}


- (void) addContentView:(SDKTextFiledView_Type) type
{
    
//    self.backgroundColor = [UIColor whiteColor];
//    self.layer.cornerRadius = 4;
    
    NSString *iconName;
    NSString *lableName;
    BOOL showEye = NO;
    BOOL addMoreAccountBtn = NO;
    UIKeyboardType mUIKeyboardType = UIKeyboardTypeDefault;
    NSString *placeholderText = @"";
    
    switch (type) {
        case SDKTextFiledView_Type_VfCode:
            iconName = @"fl_sdk_dx.png";
            lableName = @"驗證碼";
            mUIKeyboardType = UIKeyboardTypeNumberPad;
            placeholderText = @"請輸入驗證碼";
            break;
            
        case SDKTextFiledView_Type_Account:
            iconName = @"mw_account_icon.png";
            lableName = @"帳號";
            placeholderText = @"6~18字元,僅限字母或數字";
            addMoreAccountBtn = YES;
            break;
            
        case SDKTextFiledView_Type_Password:
            
            iconName = @"mw_passowrd_icon.png";
            lableName = @"密碼";
            placeholderText = @"8-16字元，英文與數字混合";
            showEye = YES;
            break;
            
            case SDKTextFiledView_Type_Password_Again:
            
            iconName = @"mw_passowrd_icon.png";
            lableName = @"密碼";
            placeholderText = @"請再次輸入密碼";
            showEye = YES;
            break;
            
        case SDKTextFiledView_Type_Password_New:
            iconName = @"mw_passowrd_icon.png";
            lableName = @"新密碼";
            placeholderText = SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_INPUT_PWD_NEW");
            showEye = YES;
            break;
        case SDKTextFiledView_Type_Password_Old:
            iconName = @"mw_passowrd_icon.png";
            lableName = @"舊密碼";
            placeholderText = SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_INPUT_PWD_OLD");
            showEye = YES;
            break;
            
        default:
            break;
    }
    
    UIImageView *lableIconImageView = [[UIImageView alloc] initWithImage:[UIImage gama_imageNamed:iconName]];
    lableIconImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:lableIconImageView];
    [lableIconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.mas_leading);
        make.centerY.mas_equalTo(self);
        make.height.mas_equalTo(VH(21));//icon,字体需要使用高度比
        make.width.mas_equalTo(lableIconImageView.mas_height);
    }];
    
//    UILabel *tipsUILabel = [[UILabel alloc] init];
//    if (device_is_iPhoneX) {
//        tipsUILabel.font = [UIFont systemFontOfSize:16];
//    }else{
//        tipsUILabel.font = [UIFont systemFontOfSize:14];
//    }
//    tipsUILabel.font = [UIFont systemFontOfSize:14];
//
//    tipsUILabel.text = lableName;
//    tipsUILabel.textAlignment = NSTextAlignmentLeft;
//    tipsUILabel.backgroundColor = [UIColor clearColor];
//    tipsUILabel.numberOfLines = 1; //0为多行
//    tipsUILabel.textColor = [UIColor colorWithHexString:@"#FF3E37"];
//
//    [self addSubview:tipsUILabel];
//    [tipsUILabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.leading.equalTo(lableIconImageView.mas_trailing).mas_offset(4);
//        make.top.mas_equalTo(self).offset(2);
//        make.bottom.mas_equalTo(self).offset(-2);
//        if (lableName.length > 2) {
//            make.width.mas_equalTo(60);
//        }else{
//            make.width.mas_equalTo(40);
//        }
//
//
//    }];
    
    
    UIView *lineView1 = [[UIView alloc] init];
    lineView1.backgroundColor = [UIColor colorWithHexString:@"#C0C0C0"];
    [self addSubview:lineView1];
    [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.mas_equalTo(0.5);
        make.leading.mas_equalTo(lableIconImageView.mas_trailing).mas_offset(VW(8));
        make.centerY.mas_equalTo(self);
        
        make.height.mas_equalTo(VH(14));

    }];
    
    
    int trailing_offset = -10;
    if (addMoreAccountBtn || showEye) {
        trailing_offset = -VW(30);
    }
    
    mUITextField = [[UITextField alloc] init];
    self.inputUITextField = mUITextField;
    if (mUIKeyboardType) {
        [mUITextField setKeyboardType:mUIKeyboardType];
    }
    mUITextField.textColor = [UIColor whiteColor];
    
    mUITextField.font = [UIFont systemFontOfSize:FS(14)];
    mUITextField.adjustsFontSizeToFitWidth = YES;//文字大小适配宽度大小
    
    // 设置placeholder文字大小和居中显示
//    NSMutableParagraphStyle *style = [mUITextField.defaultTextAttributes[NSParagraphStyleAttributeName] mutableCopy];
//    style.minimumLineHeight = mUITextField.font.lineHeight - (mUITextField.font.lineHeight - [UIFont systemFontOfSize:14.0].lineHeight) / 2.0;
    
    int placeHolderTextSize = FS(14);
//    if (Device_Is_Landscape || device_is_iPhoneX) {
//        placeHolderTextSize = 10;
//    }
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:placeholderText
                                                                  attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:placeHolderTextSize],NSForegroundColorAttributeName: [UIColor colorWithHexString:@"#848484"]}];
    mUITextField.attributedPlaceholder = attrStr;
    //mUITextField.placeholder = placeholderText;
    
    [self addSubview:mUITextField];
    [mUITextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(lineView1.mas_trailing).mas_offset(VW(8));
        make.top.mas_equalTo(self).offset(2);
        make.bottom.mas_equalTo(self).offset(-2);
        make.trailing.mas_equalTo(self.mas_trailing).mas_offset(trailing_offset);
        
    }];
    
    if (addMoreAccountBtn) {
        
        self.moreAccountBtn = [UIUtil initBtnWithNormalImage:@"sdk_list_down.png" highlightedImage:@"sdk_list_down.png" tag:kMoreAccountListActTag selector:@selector(clickItemBtn:) target:self];
//        self.moreAccountBtn.hidden = YES;
        self.moreAccountBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:self.moreAccountBtn];
        [self.moreAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.trailing.mas_equalTo(self).mas_offset(VW(-8));;
            make.centerY.mas_equalTo(self);
            
            make.height.mas_equalTo(self.mas_height);
            make.width.mas_equalTo(VW(17));
        }];
        
    }
    
    
    
    if (showEye) {
        mUITextField.secureTextEntry = NO;
        UIButton *eyeBtn = [UIUtil initBtnWithNormalImage:@"fl_sdk_ky.png" highlightedImage:@"fl_sdk_ky.png" tag:22 selector:@selector(eyeViewBtnAction:) target:self];
        eyeBtn.selected = NO;//设置为没有选择
        
        //        UIImageView *eyeImageView = [[UIImageView alloc] initWithImage:[UIImage gama_imageNamed:@"fl_sdk_by.png"]];
        //        eyeImageView.contentMode = UIViewContentModeScaleAspectFit;
        eyeBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:eyeBtn];
        [eyeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.trailing.mas_equalTo(self).mas_offset(VW(-8));
            make.centerY.mas_equalTo(self);
            
            make.height.mas_equalTo(self.mas_height);
            make.width.mas_equalTo(VW(17));
//            if (device_is_iPhoneX) {
//                make.width.mas_equalTo(self.mas_height).multipliedBy(0.6);
//            }else{
//                make.width.mas_equalTo(self.mas_height).multipliedBy(0.45);
//            }
        }];
    }
    
    
    UIView *lineView2 = [[UIView alloc] init];
    lineView2.backgroundColor = [UIColor colorWithHexString:@"#C0C0C0"];
    [self addSubview:lineView2];
    [lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        //make.width.mas_equalTo(0.5);
        make.leading.trailing.mas_equalTo(self);
        make.bottom.mas_equalTo(self);
        
        make.height.mas_equalTo(1);

    }];
    
}

- (void)eyeViewBtnAction:(UIButton *)sender
{
    
    if (sender.selected) { // 按下去了就是明文
        
        NSString *tempPwdStr = mUITextField.text;
        mUITextField.text = @""; // 这句代码可以防止切换的时候光标偏移
        mUITextField.secureTextEntry = NO;
        mUITextField.text = tempPwdStr;
        [sender setImage:GetImage(@"fl_sdk_ky.png") forState:UIControlStateNormal];
        
    } else { // 暗文
        
        NSString *tempPwdStr = mUITextField.text;
        mUITextField.text = @"";
        mUITextField.secureTextEntry = YES;
        mUITextField.text = tempPwdStr;
        
        [sender setImage:GetImage(@"fl_sdk_by.png") forState:UIControlStateNormal];
    }
    // 切换按钮的状态
    sender.selected = !sender.selected;
}

//点击账号记录下拉列表
- (void)clickItemBtn:(UIButton *)sender
{
    if (self.clickAccountListItem) {
        self.clickAccountListItem(sender.tag);
    }
}

@end
