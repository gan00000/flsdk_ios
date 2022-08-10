//
#import "BindPhoneViewV2.h"
#import "SdkUtil.h"
#import "UIColor+HexStringToColorTW.h"
#import "SdkHeader.h"
#import "LoginButton.h"
#import "LoginTitleView.h"
#import "MyTextFiled.h"
#import "CountTimerDelegate.h"
#import "PhoneInfoModel.h"


@interface BindPhoneViewV2 () <CountTimerDelegate,PhoneInfoModelDelegate>

@end

@implementation BindPhoneViewV2
{
    UIButton *getVfCodeBtn;
    
    UIButton *okBtn;
    
    UILabel *hasBindPhoneTips;
    UIView *phoneContentView;
    UILabel *areaCodeLabel;
    
    PhoneInfoModel *mPhoneInfoModel;
    
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        //        UIColor *color = [UIColor whiteColor];
        //        self.backgroundColor = color;//UIColor.lightGrayColor;// 底图透明，控件不透明
        //        self.layer.cornerRadius = 10; //设置圆角
        //        self.layer.masksToBounds = YES;
        self.backgroundColor = [UIColor colorWithHexString:@"#000000" andAlpha:0.15];
        
        mPhoneInfoModel = [[PhoneInfoModel alloc] init];
        mPhoneInfoModel.delegate = self;
        
        [self addView];
        
        
    }
    return self;
}


- (void)addView {
    
    
    UIView *contentView = [[UIView alloc] init];
    
    UIColor *color = [UIColor whiteColor];
    contentView.backgroundColor = color;//UIColor.lightGrayColor;// 底图透明，控件不透明
    contentView.layer.cornerRadius = 10; //设置圆角
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
        //        make.width.mas_equalTo(self);
        //        make.height.mas_equalTo(VH(40));
    }];
    
    UIView *tagView = [[UIView alloc] init];
    tagView.backgroundColor = [UIColor colorWithHexString:BaseColor];
    [titleView addSubview:tagView];
    [tagView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(titleView);
        make.leading.mas_equalTo(titleView);
        make.width.mas_equalTo(VW(4));
        make.height.mas_equalTo(VH(14));
        //        make.top.mas_equalTo(titleView);
        make.bottom.mas_equalTo(titleView);
    }];
    
    
    UILabel *titleLabel = [UIUtil initLabelWithText:@"text_phone_bind".localx fontSize:FS(15) textColor:[UIColor colorWithHexString:@"#2A2A2A"]];
    titleLabel.font = [UIFont boldSystemFontOfSize:FS(15)];
    
    [titleView addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //        make.center.mas_equalTo(titleView);
        make.leading.mas_equalTo(titleView).mas_offset(6);
        make.trailing.mas_equalTo(titleView);
        make.top.mas_equalTo(titleView);
        make.bottom.mas_equalTo(titleView);
    }];
    
    UIButton *closeBtn = [UIUtil initBtnWithNormalImage:@"icon_close_3" highlightedImage:@"icon_close_3" tag:TAG_CLOSE selector:@selector(action:) target:self];
    
    [titleView addSubview:closeBtn];
    [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        //        make.center.mas_equalTo(titleView);
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
    phoneAreaCodeView.layer.borderColor = [UIColor colorWithHexString:@"#606060"].CGColor;
    phoneAreaCodeView.layer.borderWidth = 0.5;
    phoneAreaCodeView.layer.cornerRadius = VH(20);
    [phoneContentView addSubview:phoneAreaCodeView];
    [phoneAreaCodeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(phoneContentView);
        make.top.bottom.mas_equalTo(phoneContentView);
        make.width.mas_equalTo(VW(85));
        make.height.mas_equalTo(VH(40));
    }];
    
    areaCodeLabel = [UIUtil initLabelWithText:@"text_area_code".localx fontSize:FS(14) textColor:UIColor.blackColor];
    
    [phoneAreaCodeView addSubview:areaCodeLabel];
    [areaCodeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(phoneAreaCodeView);
        make.leading.mas_equalTo(phoneAreaCodeView).mas_offset(VW(15));
        
    }];
    
    UIButton *areaMoreBtn = [UIUtil initBtnWithNormalImage:@"icon_down_list2" highlightedImage:@"icon_down_list2" tag:kMoreAccountListActTag selector:@selector(action:) target:self];
    
    [phoneAreaCodeView addSubview:areaMoreBtn];
    [areaMoreBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(areaCodeLabel.mas_trailing).mas_offset(VW(10));
        make.centerY.mas_equalTo(phoneAreaCodeView);
        make.width.height.mas_equalTo(VH(16));
        
    }];
    
    
    
    MyTextFiled *phoneNumFiled = [[MyTextFiled alloc] initWithTextColor:UIColor.blackColor fontOfSize:FS(14) placeholder:@"text_please_input_phone".localx placeColor:[UIColor colorWithHexString:@"#B8B8B8"]];
    
    phoneNumFiled.layer.borderColor = [UIColor colorWithHexString:@"#606060"].CGColor;
    phoneNumFiled.layer.borderWidth = 0.5;
    phoneNumFiled.layer.cornerRadius = VH(20);
    phoneNumFiled.inputTextField.keyboardType = UIKeyboardTypePhonePad;
    
    [phoneContentView addSubview:phoneNumFiled];
    [phoneNumFiled mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(phoneAreaCodeView);
        make.leading.mas_equalTo(phoneAreaCodeView.mas_trailing).mas_offset(VW(15));
        make.trailing.mas_equalTo(phoneContentView);
        
    }];
    
    
    
    //==============
    
    
    UIView *vfInfoView = [[UIView alloc] init];
    //    vfInfoView.layer.borderColor = [UIColor colorWithHexString:@"#606060"].CGColor;
    //    vfInfoView.layer.borderWidth = 0.5;
    //    vfInfoView.layer.cornerRadius = VH(20);
    [contentView addSubview:vfInfoView];
    [vfInfoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(titleView);
        make.top.mas_equalTo(phoneContentView.mas_bottom).mas_offset(VH(15));
    }];
    
    MyTextFiled *vfCodeFiled = [[MyTextFiled alloc] initWithTextColor:UIColor.blackColor fontOfSize:FS(14) placeholder:@"py_msg_vfcode_hint".localx placeColor:[UIColor colorWithHexString:@"#B8B8B8"]];
    
    vfCodeFiled.layer.borderColor = [UIColor colorWithHexString:@"#606060"].CGColor;
    vfCodeFiled.layer.borderWidth = 0.5;
    vfCodeFiled.layer.cornerRadius = VH(20);
    vfCodeFiled.inputTextField.keyboardType = UIKeyboardTypeNumberPad;
    vfCodeFiled.inputTextField.textAlignment = NSTextAlignmentCenter;
    
    [vfInfoView addSubview:vfCodeFiled];
    [vfCodeFiled mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(vfInfoView);
        make.leading.mas_equalTo(phoneAreaCodeView);
        make.height.mas_equalTo(VH(40));
        make.width.mas_equalTo(VW(187));
        
    }];
    
    //獲取驗證碼
    getVfCodeBtn = [UIUtil initBtnWithTitleText:GetString(@"text_get_vfcode") fontSize:FS(14) textColor:[UIColor colorWithHexString:BaseColor] tag:kGetVfCodeActTag selector:@selector(action:) target:self];
    
    
    getVfCodeBtn.layer.borderColor = [UIColor colorWithHexString:@"#606060"].CGColor;
    getVfCodeBtn.layer.borderWidth = 0.5;
    getVfCodeBtn.layer.cornerRadius = VH(20);
    //        getVfCodeBtn.titleLabel.font = [UIFont systemFontOfSize:FS(14)];
    //        [getVfCodeBtn setTitleColor:UIColor.whiteColor forState:0];
    [vfInfoView addSubview:getVfCodeBtn];
    [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(vfInfoView);
        make.trailing.mas_equalTo(vfInfoView);
        make.width.mas_equalTo(VW(100));
        
    }];
    [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    
    
    okBtn = [UIUtil initBtnWithTitleText:@"py_confire".localx fontSize:FS(17) textColor:[UIColor whiteColor] tag:kOkActTag selector:@selector(action:) target:self];
    
    [okBtn.layer setCornerRadius:VH(20)];
    okBtn.backgroundColor = [UIColor colorWithHexString:BaseColor];
    [contentView addSubview:okBtn];
    
    [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(titleView);
        make.bottom.mas_equalTo(contentView.mas_bottom).mas_offset(-VH(28));
        make.height.mas_equalTo(VH(40));
    }];
    
    
    hasBindPhoneTips = [UIUtil initLabelWithText:@"text_has_phone_bind_tips".localx fontSize:FS(12) textColor:ColorHex(@"#4B4B4B")];
    [contentView addSubview:hasBindPhoneTips];
    
    [hasBindPhoneTips mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(phoneContentView);
        make.top.mas_equalTo(phoneContentView.mas_bottom).mas_offset(VH(8));
    }];
    
    self.countTimerDelegate = self;
}


- (void)action:(UIButton *)sender
{
    
    switch (sender.tag) {
            
        case TAG_CLOSE:
            [self removeFromSuperview];
            if (self.mMWBlock) {
                self.mMWBlock(NO, nil);
            }
            break;
        case kGetVfCodeActTag:
            
            [self startCountTimer];
            
            break;
            
        case kMoreAccountListActTag:
            
            [mPhoneInfoModel showAreaCodesActionSheetFromView:sender];
            
            break;
            
            
        default:
            break;
    }
    
}

- (void)beforeStartTimer {
    self.totalCount = 60;
    getVfCodeBtn.userInteractionEnabled = NO;
    [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%ld", self.totalCount] forState:UIControlStateNormal];
    
}

- (void)finishTimer {
    
    getVfCodeBtn.userInteractionEnabled = YES;
    [getVfCodeBtn setTitle:GetString(@"text_get_vfcode") forState:UIControlStateNormal];
}

- (void)timing:(NSString *)count{
    
    [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%@", count] forState:UIControlStateNormal];
    
}

- (void)showSelectedAreaCodeValue:(NSString *)selectedAreaCodeValue
{
    areaCodeLabel.text = selectedAreaCodeValue;
}

@end
