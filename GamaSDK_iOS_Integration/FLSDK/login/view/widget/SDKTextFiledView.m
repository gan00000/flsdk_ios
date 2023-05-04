







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
        self.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_passowrd_icon];
        mUITextField.secureTextEntry = YES;
        mUITextField.text = @"";
        eyeBtn.selected = YES;
        mUITextField.textColor = [UIColor whiteColor];
        
    }else{
        self.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_passowrd_disable_icon];
        mUITextField.secureTextEntry = NO;
        mUITextField.text = GetString(wwwww_tag_wwwww_text_free_register);
        mUITextField.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_848484];

        eyeBtn.selected = NO;
    }
    
}


- (void) addContentView_MMMethodMMM:(SDKTextFiledView_Type) type
{
    
    
    
    
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
            placeholderText = @"請輸入6-20字元";
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
            placeholderText = wwwww_tag_wwwww_scientist_misceair;
            showEye = YES;
            break;
        case SDKTextFiledView_Type_Password_Old:
            iconName = mw_passowrd_icon;
            lableName = wwwww_tag_wwwww_fontmentionry_labor;
            placeholderText = wwwww_tag_wwwww_fontmentionry_labor;
            showEye = YES;
            break;
            
        default:
            break;
    }
    
    self.lableIconImageView = [[UIImageView alloc] initWithImage:[UIImage res_imageNamed_MMMethodMMM:iconName]];
    self.lableIconImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:self.lableIconImageView];
    [self.lableIconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.mas_leading);
        make.centerY.mas_equalTo(self);
        make.height.mas_equalTo(VH(21));
        make.width.mas_equalTo(self.lableIconImageView.mas_height);
    }];
    
    
    UIView *lineView1 = [[UIView alloc] init];
    lineView1.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
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
    
    if (SDK_DATA.mUITextFieldDelegate) {
        mUITextField.delegate = SDK_DATA.mUITextFieldDelegate;
    }
    

    
    
    
    
    
    int placeHolderTextSize = FS(14);
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:placeholderText
                                                                  attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:placeHolderTextSize],NSForegroundColorAttributeName: [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_848484]}];
    mUITextField.attributedPlaceholder = attrStr;
    
    
    [self addSubview:mUITextField];
    [mUITextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(lineView1.mas_trailing).mas_offset(VW(8));
        make.top.mas_equalTo(self).offset(2);
        make.bottom.mas_equalTo(self).offset(-2);
        make.trailing.mas_equalTo(self.mas_trailing).mas_offset(trailing_offset);
        
    }];
    
    if (addMoreAccountBtn) {
        
        self.moreAccountBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:sdk_list_down highlightedImage_MMMethodMMM:sdk_list_down selectedImageName_MMMethodMMM:sdk_list_up tag_MMMethodMMM:kMoreAccountListActTag selector:@selector(clickItemBtn_MMMethodMMM:) target_MMMethodMMM:self];
        
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
        eyeBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:fl_sdk_ky highlightedImage_MMMethodMMM:fl_sdk_ky selectedImageName_MMMethodMMM:fl_sdk_by tag_MMMethodMMM:22 selector:@selector(eyeViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        eyeBtn.selected = YES;
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
        [self.inputUITextField addTarget:self action:@selector(textChanged_MMMethodMMM:) forControlEvents:(UIControlEventEditingChanged)];
    }
    
}

- (void) addContentView_v2_MMMethodMMM:(SDKTextFiledView_Type) type
{
    
    
    self.layer.cornerRadius = VH(20);
    self.layer.borderWidth = 0.5;
    self.layer.borderColor = [UIColor whiteColor].CGColor;
    
    NSString *iconName;

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
            
            placeholderText = wwwww_tag_wwwww_text_input_new_pwd.localx;
            showEye = YES;
            break;
        case SDKTextFiledView_Type_Password_Old:
            iconName = mw_passowrd_icon;
            
            placeholderText = wwwww_tag_wwwww_py_input_old_password.localx;
            showEye = YES;
            break;
            
        default:
            break;
    }
    
    self.lableIconImageView = [[UIImageView alloc] initWithImage:[UIImage res_imageNamed_MMMethodMMM:iconName]];
    self.lableIconImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:self.lableIconImageView];
    [self.lableIconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.mas_leading).mas_offset(VW(18));
        make.centerY.mas_equalTo(self);
        make.height.mas_equalTo(VH(21));
        make.width.mas_equalTo(self.lableIconImageView.mas_height);
    }];
    
    
    UIView *lineView1 = [[UIView alloc] init];
    lineView1.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
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
    
    if (SDK_DATA.mUITextFieldDelegate) {
        mUITextField.delegate = SDK_DATA.mUITextFieldDelegate;
    }
    

    
    
    
    
    
    int placeHolderTextSize = FS(14);
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:placeholderText
                                                                  attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:placeHolderTextSize],NSForegroundColorAttributeName: [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_848484]}];
    mUITextField.attributedPlaceholder = attrStr;
    
    
    [self addSubview:mUITextField];
    [mUITextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(lineView1.mas_trailing).mas_offset(VW(8));
        make.top.mas_equalTo(self).offset(2);
        make.bottom.mas_equalTo(self).offset(-2);
        make.trailing.mas_equalTo(self.mas_trailing).mas_offset(trailing_offset);
        
    }];
    
    if (addMoreAccountBtn) {
        
        self.moreAccountBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:sdk_list_down highlightedImage_MMMethodMMM:sdk_list_down selectedImageName_MMMethodMMM:sdk_list_up tag_MMMethodMMM:kMoreAccountListActTag selector:@selector(clickItemBtn_MMMethodMMM:) target_MMMethodMMM:self];
        
        self.moreAccountBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:self.moreAccountBtn];
        [self.moreAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.trailing.mas_equalTo(self).mas_offset(VW(-15));;
            make.centerY.mas_equalTo(self);
            
            make.height.mas_equalTo(self.mas_height);
            make.width.mas_equalTo(VW(17));
        }];
        
    }
    
    
    
    if (showEye) {
        mUITextField.secureTextEntry = NO;
        eyeBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:fl_sdk_ky highlightedImage_MMMethodMMM:fl_sdk_ky selectedImageName_MMMethodMMM:fl_sdk_by tag_MMMethodMMM:22 selector:@selector(eyeViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        eyeBtn.selected = YES;
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
        [self.inputUITextField addTarget:self action:@selector(textChanged_MMMethodMMM:) forControlEvents:(UIControlEventEditingChanged)];
    }
    
}

- (void)eyeViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    
    if (sender.selected) { 
        
        NSString *tempPwdStr = mUITextField.text;
        mUITextField.text = @""; 
        mUITextField.secureTextEntry = NO;
        mUITextField.text = tempPwdStr;
        
    } else { 
        
        NSString *tempPwdStr = mUITextField.text;
        mUITextField.text = @"";
        mUITextField.secureTextEntry = YES;
        mUITextField.text = tempPwdStr;
    }
    
    sender.selected = !sender.selected;
}


- (void)clickItemBtn_MMMethodMMM:(UIButton *)sender
{
    if (self.clickAccountListItem) {
        self.clickAccountListItem(sender.tag);
    }
}



- (void)textChanged_MMMethodMMM:(UITextField *)sender
{
    SDK_LOG(@"textChanged=>%@",sender.text);
    
    if (sender.text && [sender.text containsString:@" "]) {
        NSString *tempStr = [sender.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        self.inputUITextField.text = tempStr;
    }
    
    if (self.inputTextFieldChange) {
        self.inputTextFieldChange(self.inputUITextField.text,0,nil);
    }
    
}
@end
