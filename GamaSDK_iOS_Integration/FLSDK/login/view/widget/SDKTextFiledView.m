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
    
    self.backgroundColor = [UIColor whiteColor];
    self.layer.cornerRadius = 4;
    
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
            iconName = @"fl_sdk_ren.png";
            lableName = @"帳號";
            placeholderText = SDKConReaderGetLocalizedString(@"text_enter_account");
            addMoreAccountBtn = YES;
            break;
            
        case SDKTextFiledView_Type_Password:
            
            iconName = @"fl_sdk_suo.png";
            lableName = @"密碼";
            placeholderText = SDKConReaderGetLocalizedString(@"text_enter_pwd");
            showEye = YES;
            break;
            
            case SDKTextFiledView_Type_Password_Again:
            
            iconName = @"fl_sdk_suo.png";
            lableName = @"密碼";
            placeholderText = @"請再次輸入密碼";
            showEye = YES;
            break;
            
        case SDKTextFiledView_Type_Password_New:
            iconName = @"fl_sdk_suo.png";
            lableName = @"新密碼";
            placeholderText = SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_INPUT_PWD_NEW");
            showEye = YES;
            break;
        case SDKTextFiledView_Type_Password_Old:
            iconName = @"fl_sdk_suo.png";
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
        make.leading.equalTo(self.mas_leading).mas_offset(10);
        make.centerY.mas_equalTo(self);
        make.height.mas_equalTo(VH(30));
        make.width.mas_equalTo(VH(30));
    }];

    mUITextField = [[UITextField alloc] init];
    self.inputUITextField = mUITextField;
    if (mUIKeyboardType) {
        [mUITextField setKeyboardType:mUIKeyboardType];
    }
    mUITextField.textColor = [UIColor blackColor];
    
    mUITextField.font = [UIFont systemFontOfSize:VH(14)];
    mUITextField.adjustsFontSizeToFitWidth = YES;//文字大小适配宽度大小
    
    // 设置placeholder文字大小和居中显示
//    NSMutableParagraphStyle *style = [mUITextField.defaultTextAttributes[NSParagraphStyleAttributeName] mutableCopy];
//    style.minimumLineHeight = mUITextField.font.lineHeight - (mUITextField.font.lineHeight - [UIFont systemFontOfSize:14.0].lineHeight) / 2.0;
    
//    int placeHolderTextSize = 8;
//    if (Device_Is_Landscape || device_is_iPhoneX) {
//        placeHolderTextSize = 10;
//    }
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:placeholderText
                                                                  attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:VH(14)],
                                                                               NSForegroundColorAttributeName: [UIColor colorWithHexString:@"#999999"]}];
    mUITextField.attributedPlaceholder = attrStr;
    //mUITextField.placeholder = placeholderText;
    
    [self addSubview:mUITextField];
    [mUITextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(lableIconImageView.mas_trailing).mas_offset(VW(10));
        make.top.mas_equalTo(self).offset(2);
        make.bottom.mas_equalTo(self).offset(-2);
        make.trailing.mas_equalTo(self.mas_trailing).mas_offset(-VW(30));
        
    }];

    
    if (showEye) {
        mUITextField.secureTextEntry = NO;
        UIButton *eyeBtn = [UIUtil initBtnWithNormalImage:@"fl_sdk_ky.png" highlightedImage:nil tag:22 selector:@selector(eyeViewBtnAction:) target:self];
        eyeBtn.selected = NO;//设置为没有选择
        
        //        UIImageView *eyeImageView = [[UIImageView alloc] initWithImage:[UIImage gama_imageNamed:@"fl_sdk_by.png"]];
        //        eyeImageView.contentMode = UIViewContentModeScaleAspectFit;
        eyeBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:eyeBtn];
        [eyeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.trailing.mas_equalTo(self.mas_trailing);
            make.centerY.mas_equalTo(self);
            make.height.mas_equalTo(VH(30));
            make.width.mas_equalTo(VH(30));
            
        }];
    }
    
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
