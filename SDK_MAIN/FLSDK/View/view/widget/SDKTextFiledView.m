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


- (instancetype)initViewWithType_MMMethodMMM:(SDKTextFiledView_Type) type
{
    self = [super init];
    if (self) {
        if (is_Version2) {
            
            [self addContentView_v2_MMMethodMMM:type];
        }else{
            [self addContentView_MMMethodMMM:type];
        }
        
    }
    return self;
}

-(void)setPwdFiledView_MMMethodMMM:(BOOL)enable{
    
    eyeBtn.hidden = !enable;
    mUITextField.enabled = enable;
    if (enable) {
        self.lableIconImageView_MMMPRO.image = [UIImage res_imageNamed_MMMethodMMM:mw_passowrd_icon];
        mUITextField.secureTextEntry = YES;
        mUITextField.text = @"";
        eyeBtn.selected = YES;
        mUITextField.textColor = [UIColor whiteColor];
        
    }else{
        self.lableIconImageView_MMMPRO.image = [UIImage res_imageNamed_MMMethodMMM:mw_passowrd_disable_icon];
        mUITextField.secureTextEntry = NO;
        mUITextField.text = GetString(wwwww_tag_wwwww_text_free_register);
        mUITextField.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_848484];

        eyeBtn.selected = NO;
    }
    
}


- (void) addContentView_MMMethodMMM:(SDKTextFiledView_Type) type
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
            iconName = wwwww_tag_wwwww_fl_sdk_dx_png;
            lableName = wwwww_tag_wwwww_soonoon_teleoator;
            mUIKeyboardType = UIKeyboardTypeNumberPad;
            placeholderText = wwwww_tag_wwwww_corticoaster_numberature;
            showLableIcon = NO;
            break;
            
        case SDKTextFiledView_Type_Account:
            iconName = mw_account_icon;
            lableName = wwwww_tag_wwwww_broncheer_whitester;
            placeholderText = wwwww_tag_wwwww_oursure_pleging;
            addMoreAccountBtn = YES;
            break;
            
        case SDKTextFiledView_Type_Password:
            
            iconName = mw_passowrd_icon;
            lableName = wwwww_tag_wwwww_almostive_penotic;
            placeholderText = wwwww_tag_wwwww_genesory_clinist;
            showEye = YES;
            break;
            
        case SDKTextFiledView_Type_Password_Again:
            
            iconName = mw_passowrd_icon;
            lableName = wwwww_tag_wwwww_almostive_penotic;
            placeholderText = wwwww_tag_wwwww_zyment_gamid;
            showEye = YES;
            break;
            
        case SDKTextFiledView_Type_Password_New:
            iconName = mw_passowrd_icon;
            lableName = wwwww_tag_wwwww_scientist_misceair;
            placeholderText = wwwww_tag_wwwww_scientist_misceair;//GetString(wwwww_tag_wwwww_TXT_PH_ACCOUNT_INPUT_PWD_NEW);
            showEye = YES;
            break;
        case SDKTextFiledView_Type_Password_Old:
            iconName = mw_passowrd_icon;
            lableName = wwwww_tag_wwwww_fontmentionry_labor;
            placeholderText = wwwww_tag_wwwww_fontmentionry_labor;//GetString(wwwww_tag_wwwww_TXT_PH_ACCOUNT_INPUT_PWD_OLD);
            showEye = YES;
            break;
            
        default:
            break;
    }
    
    self.lableIconImageView_MMMPRO = [[UIImageView alloc] initWithImage:[UIImage res_imageNamed_MMMethodMMM:iconName]];
    self.lableIconImageView_MMMPRO.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:self.lableIconImageView_MMMPRO];
    [self.lableIconImageView_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.mas_leading);
        make.centerY.mas_equalTo(self);
        make.height.mas_equalTo(VH(21));//icon,字体需要使用高度比
        make.width.mas_equalTo(self.lableIconImageView_MMMPRO.mas_height);
    }];
    
    
    UIView *lineView1 = [[UIView alloc] init];
    lineView1.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    [self addSubview:lineView1];
    [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.mas_equalTo(0.5);
        make.leading.mas_equalTo(self.lableIconImageView_MMMPRO.mas_trailing).mas_offset(VW(8));
        make.centerY.mas_equalTo(self);
        
        make.height.mas_equalTo(VH(14));
        
    }];
    
    
    int trailing_offset = -10;
    if (addMoreAccountBtn || showEye) {
        trailing_offset = -VW(30);
    }
    
    mUITextField = [[UITextField alloc] init];
    self.inputUITextField_MMMPRO = mUITextField;
    if (mUIKeyboardType) {
        [mUITextField setKeyboardType:mUIKeyboardType];
    }
    mUITextField.textColor = [UIColor whiteColor];
    
    mUITextField.font = [UIFont systemFontOfSize:FS(14)];
    
    if (SDK_DATA.mUITextFieldDelegate_MMMPRO) {
        mUITextField.delegate = SDK_DATA.mUITextFieldDelegate_MMMPRO;
    }
    
//    mUITextField.adjustsFontSizeToFitWidth = YES;//文字大小适配宽度大小n
    
    // 设置placeholder文字大小和居中显示
    //    NSMutableParagraphStyle *style = [mUITextField.defaultTextAttributes[NSParagraphStyleAttributeName] mutableCopy];
    //    style.minimumLineHeight = mUITextField.font.lineHeight - (mUITextField.font.lineHeight - [UIFont systemFontOfSize:14.0].lineHeight) / 2.0;
    
    int placeHolderTextSize = FS(14);
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:placeholderText
                                                                  attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:placeHolderTextSize],NSForegroundColorAttributeName: [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_848484]}];
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
        
        self.moreAccountBtn_MMMPRO = [UIUtil initBtnWithNormalImage_MMMethodMMM:sdk_list_down highlightedImage_MMMethodMMM:sdk_list_down selectedImageName_MMMethodMMM:sdk_list_up tag_MMMethodMMM:kMoreAccountListActTag selector:@selector(clickItemBtn_MMMethodMMM:) target_MMMethodMMM:self];
        //        self.moreAccountBtn.hidden = YES;
        self.moreAccountBtn_MMMPRO.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:self.moreAccountBtn_MMMPRO];
        [self.moreAccountBtn_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.trailing.mas_equalTo(self).mas_offset(VW(-8));;
            make.centerY.mas_equalTo(self);
            
            make.height.mas_equalTo(self.mas_height);
            make.width.mas_equalTo(VW(17));
        }];
        
    }
    
    
    
    if (showEye) {
        mUITextField.secureTextEntry = NO;
        eyeBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:fl_sdk_ky highlightedImage_MMMethodMMM:fl_sdk_ky selectedImageName_MMMethodMMM:fl_sdk_by tag_MMMethodMMM:22 selector:@selector(eyeViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
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
    lineView2.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    [self addSubview:lineView2];
    [lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        //make.width.mas_equalTo(0.5);
        make.leading.trailing.mas_equalTo(self);
        make.bottom.mas_equalTo(self);
        
        make.height.mas_equalTo(1);
        
    }];
    
    if (!showLableIcon) {
        self.lableIconImageView_MMMPRO.hidden = YES;
        lineView1.hidden = YES;
        lineView2.hidden = YES;
    }
    
    if (self.inputUITextField_MMMPRO) {
        [self.inputUITextField_MMMPRO addTarget:self action:@selector(textChanged_MMMethodMMM:) forControlEvents:(UIControlEventEditingChanged)];
    }
    
}

- (void) addContentView_v2_MMMethodMMM:(SDKTextFiledView_Type) type
{
    
    //    self.backgroundColor = [UIColor whiteColor];
    self.layer.cornerRadius = VH(20);
    self.layer.borderWidth = 0.5;
    self.layer.borderColor = [UIColor whiteColor].CGColor;
    
    NSString *iconName;
//    NSString *lableName;
    BOOL showEye = NO;
    BOOL addMoreAccountBtn = NO;
    UIKeyboardType mUIKeyboardType = UIKeyboardTypeDefault;
    NSString *placeholderText = @"";
    BOOL showLableIcon = YES;
    
    switch (type) {
        case SDKTextFiledView_Type_VfCode:
            iconName = wwwww_tag_wwwww_fl_sdk_dx_png;
            
            mUIKeyboardType = UIKeyboardTypeNumberPad;
            placeholderText = wwwww_tag_wwwww_py_msg_vfcode_hint.localx;
            showLableIcon = NO;
            break;
            
        case SDKTextFiledView_Type_Account:
            iconName = mw_account_icon;
            
            placeholderText = wwwww_tag_wwwww_py_register_account_hit.localx;
            addMoreAccountBtn = YES;
            break;
            
        case SDKTextFiledView_Type_Password:
            
            iconName = mw_passowrd_icon;
            
            placeholderText = wwwww_tag_wwwww_py_register_password_hit.localx;
            showEye = YES;
            break;
            
        case SDKTextFiledView_Type_Password_Again:
            
            iconName = mw_passowrd_icon;
            
            placeholderText = wwwww_tag_wwwww_text_input_new_pwd_confire.localx;
            showEye = YES;
            break;
            
        case SDKTextFiledView_Type_Password_New:
            iconName = mw_passowrd_icon;
            
            placeholderText = wwwww_tag_wwwww_text_input_new_pwd.localx;//GetString(wwwww_tag_wwwww_TXT_PH_ACCOUNT_INPUT_PWD_NEW);
            showEye = YES;
            break;
        case SDKTextFiledView_Type_Password_Old:
            iconName = mw_passowrd_icon;
            
            placeholderText = wwwww_tag_wwwww_py_input_old_password.localx;//GetString(wwwww_tag_wwwww_TXT_PH_ACCOUNT_INPUT_PWD_OLD);
            showEye = YES;
            break;
            
        default:
            break;
    }
    
    self.lableIconImageView_MMMPRO = [[UIImageView alloc] initWithImage:[UIImage res_imageNamed_MMMethodMMM:iconName]];
    self.lableIconImageView_MMMPRO.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:self.lableIconImageView_MMMPRO];
    [self.lableIconImageView_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.mas_leading).mas_offset(VW(18));
        make.centerY.mas_equalTo(self);
        make.height.mas_equalTo(VH(21));//icon,字体需要使用高度比
        make.width.mas_equalTo(self.lableIconImageView_MMMPRO.mas_height);
    }];
    
    
    UIView *lineView1 = [[UIView alloc] init];
    lineView1.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    [self addSubview:lineView1];
    [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.mas_equalTo(0.5);
        make.leading.mas_equalTo(self.lableIconImageView_MMMPRO.mas_trailing).mas_offset(VW(8));
        make.centerY.mas_equalTo(self);
        
        make.height.mas_equalTo(VH(14));
        
    }];
    
    
    int trailing_offset = -10;
    if (addMoreAccountBtn || showEye) {
        trailing_offset = -VW(30);
    }
    
    mUITextField = [[UITextField alloc] init];
    self.inputUITextField_MMMPRO = mUITextField;
    if (mUIKeyboardType) {
        [mUITextField setKeyboardType:mUIKeyboardType];
    }
    mUITextField.textColor = [UIColor whiteColor];
    
    mUITextField.font = [UIFont systemFontOfSize:FS(14)];
    
    if (SDK_DATA.mUITextFieldDelegate_MMMPRO) {
        mUITextField.delegate = SDK_DATA.mUITextFieldDelegate_MMMPRO;
    }
    
//    mUITextField.adjustsFontSizeToFitWidth = YES;//文字大小适配宽度大小n
    
    // 设置placeholder文字大小和居中显示
    //    NSMutableParagraphStyle *style = [mUITextField.defaultTextAttributes[NSParagraphStyleAttributeName] mutableCopy];
    //    style.minimumLineHeight = mUITextField.font.lineHeight - (mUITextField.font.lineHeight - [UIFont systemFontOfSize:14.0].lineHeight) / 2.0;
    
    int placeHolderTextSize = FS(14);
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:placeholderText
                                                                  attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:placeHolderTextSize],NSForegroundColorAttributeName: [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_848484]}];
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
        
        self.moreAccountBtn_MMMPRO = [UIUtil initBtnWithNormalImage_MMMethodMMM:sdk_list_down highlightedImage_MMMethodMMM:sdk_list_down selectedImageName_MMMethodMMM:sdk_list_up tag_MMMethodMMM:kMoreAccountListActTag selector:@selector(clickItemBtn_MMMethodMMM:) target_MMMethodMMM:self];
        //        self.moreAccountBtn.hidden = YES;
        self.moreAccountBtn_MMMPRO.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:self.moreAccountBtn_MMMPRO];
        [self.moreAccountBtn_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.trailing.mas_equalTo(self).mas_offset(VW(-15));;
            make.centerY.mas_equalTo(self);
            
            make.height.mas_equalTo(self.mas_height);
            make.width.mas_equalTo(VW(17));
        }];
        
    }
    
    
    
    if (showEye) {
        mUITextField.secureTextEntry = NO;
        eyeBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:fl_sdk_ky highlightedImage_MMMethodMMM:fl_sdk_ky selectedImageName_MMMethodMMM:fl_sdk_by tag_MMMethodMMM:22 selector:@selector(eyeViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        eyeBtn.selected = YES;//设置为选择
        mUITextField.secureTextEntry = YES;
        
        eyeBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:eyeBtn];
        [eyeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.trailing.mas_equalTo(self).mas_offset(VW(-15));
            make.centerY.mas_equalTo(self);
            
            make.height.mas_equalTo(self.mas_height);
            make.width.mas_equalTo(VW(17));
           
        }];
    }
    
    
    UIView *lineView2 = [[UIView alloc] init];
    lineView2.hidden = YES;
    lineView2.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    [self addSubview:lineView2];
    [lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        //make.width.mas_equalTo(0.5);
        make.leading.trailing.mas_equalTo(self);
        make.bottom.mas_equalTo(self);
        
        make.height.mas_equalTo(1);
        
    }];
    
    if (!showLableIcon) {
        self.lableIconImageView_MMMPRO.hidden = YES;
        lineView1.hidden = YES;
        lineView2.hidden = YES;
    }
    
    if (self.inputUITextField_MMMPRO) {
        [self.inputUITextField_MMMPRO addTarget:self action:@selector(textChanged_MMMethodMMM:) forControlEvents:(UIControlEventEditingChanged)];
    }
    
}

- (void)eyeViewBtnAction_MMMethodMMM:(UIButton *)sender
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
- (void)clickItemBtn_MMMethodMMM:(UIButton *)sender
{
    if (self.clickAccountListItem_MMMPRO) {
        self.clickAccountListItem_MMMPRO(sender.tag);
    }
}

////监听输入框文字变化  手动设置UITextField.text=nil或者@""或者wwwww_tag_wwwww_lubricite_nearaceous都不会触发这个通知，在输入框输入/删除文字、剪切/粘贴输入框文字、输入中文拼音、
///点击自带的clearButton清空文字时会触发（点击输入键盘上方的待选文字时会触发两次）
- (void)textChanged_MMMethodMMM:(UITextField *)sender
{
    SDK_LOG(wwwww_tag_wwwww_fluxization_imagelet,sender.text);
    
    if (sender.text && [sender.text containsString:@" "]) {
        NSString *tempStr = [sender.text stringByReplacingOccurrencesOfString:@" " withString:@""];//不允许输入空格
        self.inputUITextField_MMMPRO.text = tempStr;
    }
    
    if (self.inputTextFieldChange_MMMPRO) {
        self.inputTextFieldChange_MMMPRO(self.inputUITextField_MMMPRO.text,0,nil);
    }
    
}
@end
