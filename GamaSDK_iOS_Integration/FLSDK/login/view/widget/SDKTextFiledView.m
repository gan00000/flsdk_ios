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

@implementation SDKTextFiledView
{
    UITextField *mUITextField;
    UIButton *eyeBtn;
}


- (instancetype)initViewWithType:(SDKTextFiledView_Type) type
{
    self = [super init];
    if (self) {
        [self addContentView:type];
    }
    return self;
}

-(void)setPwdFiledView:(BOOL)enable{
    
    eyeBtn.hidden = !enable;
    mUITextField.enabled = enable;
    if (enable) {
        self.lableIconImageView.image = [UIImage gama_imageNamed:@"mw_passowrd_icon"];
        mUITextField.secureTextEntry = YES;
        mUITextField.text = @"";
        eyeBtn.selected = YES;
        mUITextField.textColor = [UIColor whiteColor];
        
    }else{
        self.lableIconImageView.image = [UIImage gama_imageNamed:@"mw_passowrd_disable_icon"];
        mUITextField.secureTextEntry = NO;
        mUITextField.text = GetString(@"text_free_register");
        mUITextField.textColor = [UIColor colorWithHexString:@"#848484"];

        eyeBtn.selected = NO;
    }
    
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
    BOOL showLableIcon = YES;
    
    switch (type) {
        case SDKTextFiledView_Type_VfCode:
            iconName = @"fl_sdk_dx.png";
            lableName = @"驗證碼";
            mUIKeyboardType = UIKeyboardTypeNumberPad;
            placeholderText = @"請輸入驗證碼";
            showLableIcon = NO;
            break;
            
        case SDKTextFiledView_Type_Account:
            iconName = @"mw_account_icon.png";
            lableName = @"帳號";
            placeholderText = @"請輸入您的常用信箱";
            addMoreAccountBtn = YES;
            break;
            
        case SDKTextFiledView_Type_Password:
            
            iconName = @"mw_passowrd_icon.png";
            lableName = @"密碼";
            placeholderText = @"請輸入6-20字元";
            showEye = YES;
            break;
            
        case SDKTextFiledView_Type_Password_Again:
            
            iconName = @"mw_passowrd_icon.png";
            lableName = @"密碼";
            placeholderText = @"確認新密碼";
            showEye = YES;
            break;
            
        case SDKTextFiledView_Type_Password_New:
            iconName = @"mw_passowrd_icon.png";
            lableName = @"請輸入新密碼";
            placeholderText = @"請輸入新密碼";//GetString(@"TXT_PH_ACCOUNT_INPUT_PWD_NEW");
            showEye = YES;
            break;
        case SDKTextFiledView_Type_Password_Old:
            iconName = @"mw_passowrd_icon.png";
            lableName = @"輸入舊密碼";
            placeholderText = @"輸入舊密碼";//GetString(@"TXT_PH_ACCOUNT_INPUT_PWD_OLD");
            showEye = YES;
            break;
            
        default:
            break;
    }
    
    self.lableIconImageView = [[UIImageView alloc] initWithImage:[UIImage gama_imageNamed:iconName]];
    self.lableIconImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:self.lableIconImageView];
    [self.lableIconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.mas_leading);
        make.centerY.mas_equalTo(self);
        make.height.mas_equalTo(VH(21));//icon,字体需要使用高度比
        make.width.mas_equalTo(self.lableIconImageView.mas_height);
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
        make.leading.mas_equalTo(self.lableIconImageView.mas_trailing).mas_offset(VW(8));
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
//    mUITextField.adjustsFontSizeToFitWidth = YES;//文字大小适配宽度大小n
    
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
        
        self.moreAccountBtn = [UIUtil initBtnWithNormalImage:@"sdk_list_down.png" highlightedImage:@"sdk_list_down.png" selectedImageName:@"sdk_list_up.png" tag:kMoreAccountListActTag selector:@selector(clickItemBtn:) target:self];
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
        eyeBtn = [UIUtil initBtnWithNormalImage:@"fl_sdk_ky.png" highlightedImage:@"fl_sdk_ky.png" selectedImageName:@"fl_sdk_by.png" tag:22 selector:@selector(eyeViewBtnAction:) target:self];
        eyeBtn.selected = YES;//设置为选择
        mUITextField.secureTextEntry = YES;
        
        eyeBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:eyeBtn];
        [eyeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.trailing.mas_equalTo(self).mas_offset(VW(-8));
            make.centerY.mas_equalTo(self);
            
            make.height.mas_equalTo(self.mas_height);
            make.width.mas_equalTo(VW(17));
           
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
    
    if (!showLableIcon) {
        self.lableIconImageView.hidden = YES;
        lineView1.hidden = YES;
        lineView2.hidden = YES;
    }
    
    if (self.inputUITextField) {
        [self.inputUITextField addTarget:self action:@selector(textChanged:) forControlEvents:(UIControlEventEditingChanged)];
    }
    
}

- (void)eyeViewBtnAction:(UIButton *)sender
{
    
    if (sender.selected) { // 按下去了就是明文
        
        NSString *tempPwdStr = mUITextField.text;
        mUITextField.text = @""; // 这句代码可以防止切换的时候光标偏移
        mUITextField.secureTextEntry = NO;
        mUITextField.text = tempPwdStr;
        
    } else { // 暗文
        
        NSString *tempPwdStr = mUITextField.text;
        mUITextField.text = @"";
        mUITextField.secureTextEntry = YES;
        mUITextField.text = tempPwdStr;
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

////监听输入框文字变化  手动设置UITextField.text=nil或者@""或者@"任何字符串"都不会触发这个通知，在输入框输入/删除文字、剪切/粘贴输入框文字、输入中文拼音、
///点击自带的clearButton清空文字时会触发（点击输入键盘上方的待选文字时会触发两次）
- (void)textChanged:(UITextField *)sender
{
    SDK_LOG(@"textChanged=>%@",sender.text);
    
    if (sender.text && [sender.text containsString:@" "]) {
        NSString *tempStr = [sender.text stringByReplacingOccurrencesOfString:@" " withString:@""];//不允许输入空格
        self.inputUITextField.text = tempStr;
    }
    
    if (self.inputTextFieldChange) {
        self.inputTextFieldChange(self.inputUITextField.text,0,nil);
    }
    
}
@end
