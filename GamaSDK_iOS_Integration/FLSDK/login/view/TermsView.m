//
//  TermsView.m
//  GamaSDK_iOS
//
//  Created by ganyuanrong on 2020/8/1.
//  Copyright © 2020 Gama. All rights reserved.
//

#import "TermsView.h"
#import "GamaUtils.h"
#import "UIColor+HexStringToColorTW.h"
#import "SdkHeader.h"
#import "LoginButton.h"
#import "LoginTitleView.h"

#define SDK_PROVISIONS_FIRST_ENBLE @"sdk_provisions_first_enble"
@interface TermsView ()
@property (copy,nonatomic) void (^completer)(void);
@end

@implementation TermsView
{
    UIButton *serverTermsBtn;
    UIButton *privacyPolicyBtn;
    UIButton *agreeBtn;
    
    UIButton *agreeBtn2;
    
    WKWebView *provisionWebView;
    BOOL isAgree;
    
    LoginTitleView *mLoginTitleView;
}

- (instancetype)initWithCompleter:(void (^)(void))completer
{
    self = [self init];
    if (self) {
        self.completer = completer;
    }
    return self;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        UIColor *color = [UIColor colorWithHexString:ContentViewBgColor];
        self.backgroundColor = color;//UIColor.lightGrayColor;// 底图透明，控件不透明
        self.layer.cornerRadius = 10; //设置圆角
        self.layer.masksToBounds = YES;
        
//        if (Device_Is_Landscape) {
//
//        }else{
//            [self poritView];
//        }
        
        [self landspaceView];
        
        if ([TermsView isAgreenProvision]) {
            isAgree = YES;
        }
        
        if (isAgree) {
            [agreeBtn setImage:GetImage(@"btn_checkbox_checked.png") forState:(UIControlStateNormal)];
        }else{
            [agreeBtn setImage:GetImage(@"btn_checkbox_uncheck.png") forState:(UIControlStateNormal)];
        }
        
    }
    return self;
}

//- (void)poritView {
//    int offset = 10;
//
//    serverTermsBtn = [UIUtil initBtnWithTitle:@"服務條款" tag:11 selector:@selector(action:) target:self];
//    [serverTermsBtn setTitleColor:[UIColor whiteColor] forState:0];
//    [serverTermsBtn.layer setBorderWidth:1];
//    [serverTermsBtn.layer setBorderColor:[UIColor colorWithHexString:@"ff3e37"].CGColor];
//    [serverTermsBtn.layer setCornerRadius:1];
//    serverTermsBtn.backgroundColor = [UIColor colorWithHexString:@"ff3e37"];
//
//    serverTermsBtn.hidden = YES;//后来需要UI不一样，所以直接隐藏
//
//    privacyPolicyBtn = [UIUtil initBtnWithTitle:@"隱私政策" tag:12 selector:@selector(action:) target:self];
//    [privacyPolicyBtn setTitleColor:[UIColor colorWithHexString:@"ff3e37"] forState:0];
//    [privacyPolicyBtn.layer setBorderWidth:1];
//    [privacyPolicyBtn.layer setBorderColor:[UIColor colorWithHexString:@"ff3e37"].CGColor];
//    [privacyPolicyBtn.layer setCornerRadius:1];
//    privacyPolicyBtn.backgroundColor = [UIColor whiteColor];
//
//    privacyPolicyBtn.hidden = YES;//后来需要UI不一样，所以直接隐藏
//
//    [self addSubview:serverTermsBtn];
//    [serverTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(self).mas_offset(10);
//        make.leading.mas_equalTo(self).mas_offset(5);
//        make.trailing.mas_equalTo(self.mas_centerX).mas_offset(-5);
//        make.height.mas_equalTo(30);
//    }];
//
//
//    [self addSubview:privacyPolicyBtn];
//    [privacyPolicyBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(serverTermsBtn);
//        make.leading.mas_equalTo(self.mas_centerX).mas_offset(offset);
//        make.trailing.mas_equalTo(self).mas_offset(-offset);
//        make.height.mas_equalTo(serverTermsBtn);
//    }];
//
//
//    //確認登入遊戲
//    UIButton *okButton = [LoginButton initBtnWithType:(BUTTON_TYPE_ACCOUNT_LOGIN) tag:kAccountLoginActTag selector:@selector(action:)  target:self];
//    [self addSubview:okButton];
//
//    [okButton mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.bottom.equalTo(self.mas_bottom).mas_offset(-12);
//        make.leading.mas_equalTo(self).mas_offset(20);
//        make.trailing.mas_equalTo(self).mas_offset(-20);
//        make.height.mas_equalTo(40);
//    }];
//
//
//
//    //同意按鈕
//    agreeBtn = [UIUtil initBtnWithNormalImage:@"btn_checkbox_uncheck.png" highlightedImage:nil tag:13 selector:@selector(action:) target:self];
//    agreeBtn.layer.borderColor = [UIColor blackColor].CGColor;
//    agreeBtn.layer.borderWidth = 0.5;
//    [self addSubview:agreeBtn];
//    [agreeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.bottom.mas_equalTo(okButton.mas_top).mas_offset(-offset);
//        make.leading.mas_equalTo(self).mas_offset(20);
//        make.width.mas_equalTo(16);
//        make.height.mas_equalTo(16);
//
//    }];
//
//    //記住密碼
//    UILabel *rememberLable = [[UILabel alloc] init];
//    [self addSubview:rememberLable];
//    rememberLable.text = SDKConReaderGetLocalizedString(@"GAMA_PROVISIONS_PROTRAIT_TEXT");
//    rememberLable.font = [UIFont systemFontOfSize:14];
//    rememberLable.textAlignment = NSTextAlignmentLeft;
//    rememberLable.backgroundColor = [UIColor clearColor];
//    rememberLable.numberOfLines = 1;
//    rememberLable.textColor = [UIColor blackColor];
//
//    [rememberLable mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.height.mas_equalTo(agreeBtn);
//        make.top.equalTo(agreeBtn);
//        make.trailing.mas_equalTo(self).mas_offset(-offset);
//        make.leading.mas_equalTo(agreeBtn.mas_trailing).mas_offset(offset);
//    }];
//
//
//    UIView *contentView = [[UIView alloc] init];
//    contentView.backgroundColor = [UIColor whiteColor];
//    contentView.layer.borderColor = [UIColor colorWithHexString:@"#545454"].CGColor;
//    contentView.layer.borderWidth = 0.8;
//    [self addSubview:contentView];
//    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(self).mas_offset(18);
//        make.leading.mas_equalTo(self).mas_offset(20);
//        make.trailing.mas_equalTo(self).mas_offset(-20);
//        make.bottom.mas_equalTo(agreeBtn.mas_top).mas_offset(-10);
//
//    }];
//
//    //        https://member.flyfungame.com/sdk/archive.html   服務條款
//    //        https://member.flyfungame.com/sdk/privacy.html   隱私政策
//    NSString * url = [NSString stringWithFormat:@"%@sdk/archive.html",SDKConReaderGetString(@"gama_Member_URL")];
//    provisionWebView = [[WKWebView alloc] init];
//    [provisionWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: url]]];
//    [provisionWebView.scrollView setBounces:YES];
//    [provisionWebView.scrollView setScrollEnabled:YES];
//    [provisionWebView setUserInteractionEnabled:YES];
//    [contentView addSubview:provisionWebView];
//    [provisionWebView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.width.mas_equalTo(contentView);
//        make.height.mas_equalTo(contentView.mas_height);
//        make.top.mas_equalTo(contentView);
//        make.left.mas_equalTo(contentView);
//    }];
//
//
//    isAgree = NO;
//
//}

- (void)drawRect:(CGRect)rect
{
    mLoginTitleView.delegate = self.delegate;//此处不起作用
}

- (void)landspaceView {
    int offset = 10;
    
    //title
    mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle:@"網路連線遊戲服務定型化契約"];
    mLoginTitleView.titleLable.font = [UIFont systemFontOfSize:VH(30)];
    
     [self addSubview:mLoginTitleView];
    [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.mas_top).mas_offset(VH(29));
        make.centerX.mas_equalTo(self);
        make.width.mas_equalTo(self).mas_offset(-VW(55));
        make.height.mas_equalTo(VH(56));
    }];
    
    UIView *xView = [[UIView alloc] init];
    //xView.backgroundColor = [UIColor colorWithHexString:@"#E4E4E4"];
    [self addSubview:xView];
    [xView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(10));
        make.leading.mas_equalTo(self).mas_offset(VW(offset));
        make.trailing.mas_equalTo(self).mas_offset(-VW(offset));
        make.bottom.mas_equalTo(self).mas_offset(-VH(96));
    }];
    
    UIView *contentView = [[UIView alloc] init];
    contentView.backgroundColor = [UIColor whiteColor];
    contentView.layer.borderColor = [UIColor colorWithHexString:@"#545454"].CGColor;
    contentView.layer.borderWidth = 0.8;
    [xView addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(xView).mas_offset(VH(2));
        make.leading.mas_equalTo(xView).mas_offset(VW(offset));
        make.trailing.mas_equalTo(xView).mas_offset(-VW(offset));
        make.bottom.mas_equalTo(xView).mas_offset(-VH(48));
        
    }];
    
    //        https://member.flyfungame.com/sdk/archive.html   服務條款
    //        https://member.flyfungame.com/sdk/privacy.html   隱私政策
    NSString * url = [NSString stringWithFormat:@"%@sdk/archive.html",SDKConReaderGetString(@"gama_Member_URL")];
    provisionWebView = [[WKWebView alloc] init];
    [provisionWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: url]]];
    [provisionWebView.scrollView setBounces:YES];
    [provisionWebView.scrollView setScrollEnabled:YES];
    [provisionWebView setUserInteractionEnabled:YES];
    [contentView addSubview:provisionWebView];
    [provisionWebView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(contentView);
        make.height.mas_equalTo(contentView.mas_height);
        make.top.mas_equalTo(contentView);
        make.left.mas_equalTo(contentView);
    }];
    
    UILabel *rememberLable = [[UILabel alloc] init];
    [xView addSubview:rememberLable];
    rememberLable.text = SDKConReaderGetLocalizedString(@"GAMA_PROVISIONS_PROTRAIT_TEXT");
    rememberLable.font = [UIFont systemFontOfSize:VH(20)];
    rememberLable.textAlignment = NSTextAlignmentLeft;
    rememberLable.backgroundColor = [UIColor clearColor];
    rememberLable.numberOfLines = 1;
    rememberLable.textColor = [UIColor blackColor];
    
    [xView addSubview:rememberLable];
    [rememberLable mas_makeConstraints:^(MASConstraintMaker *make) {
       make.bottom.mas_equalTo(xView.mas_bottom).mas_offset(-4);
        make.centerX.mas_equalTo(xView.mas_centerX).mas_offset(VW(20));
        //make.leading.mas_equalTo(xView.mas_centerX).mas_offset(-VW(20));
        //make.trailing.mas_equalTo(xView.mas_trailing).mas_offset(-VW(20));
        make.width.mas_equalTo(contentView).multipliedBy(0.5);
        make.height.mas_equalTo(VH(40));
    }];
    
        //同意按鈕
        agreeBtn = [UIUtil initBtnWithNormalImage:@"btn_checkbox_uncheck.png" highlightedImage:nil tag:13 selector:@selector(action:) target:self];
        agreeBtn.layer.borderColor = [UIColor blackColor].CGColor;
        agreeBtn.layer.borderWidth = 0.5;
        [xView addSubview:agreeBtn];
        [agreeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(rememberLable);
            make.trailing.mas_equalTo(rememberLable.mas_leading).mas_offset(-VH(10));
            make.width.mas_equalTo(VH(20));
            make.height.mas_equalTo(VH(20));
        }];
    
    //確認登入遊戲
    UIButton *okButton = [LoginButton initBtnWithType:(BUTTON_TYPE_OK) tag:kAccountLoginActTag selector:@selector(action:)  target:self];
    [self addSubview:okButton];
    
    [okButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.mas_bottom).mas_offset(-VH(29));
        make.height.mas_equalTo(VH(64));
        make.centerX.mas_offset(@(0));
        make.width.mas_equalTo(self.mas_width).mas_offset(-VW(80));
    }];
    
    isAgree = NO;
}

- (void)action:(UIButton *)sender
{
    //        https://member.flyfungame.com/sdk/archive.html   服務條款
    //        https://member.flyfungame.com/sdk/privacy.html   隱私政策
    
    switch (sender.tag) {
        case 11://點擊服務條款
        {
            NSString * url = [NSString stringWithFormat:@"%@sdk/archive.html",SDKConReaderGetString(@"gama_Member_URL")];
            [provisionWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: url]]];
            [serverTermsBtn setTitleColor:[UIColor whiteColor] forState:0];
            serverTermsBtn.backgroundColor = [UIColor colorWithHexString:@"ff3e37"];
            
            [privacyPolicyBtn setTitleColor:[UIColor colorWithHexString:@"ff3e37"] forState:0];
            privacyPolicyBtn.backgroundColor = [UIColor whiteColor];
            
        }
            
            break;
            
        case 12://點擊隱私政策
        {
            NSString * url = [NSString stringWithFormat:@"%@sdk/privacy.html",SDKConReaderGetString(@"gama_Member_URL")];
            [provisionWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: url]]];
            
            [privacyPolicyBtn setTitleColor:[UIColor whiteColor] forState:0];
            privacyPolicyBtn.backgroundColor = [UIColor colorWithHexString:@"ff3e37"];
            
            [serverTermsBtn setTitleColor:[UIColor colorWithHexString:@"ff3e37"] forState:0];
            serverTermsBtn.backgroundColor = [UIColor whiteColor];
            
            
        }
            
            break;
            
            // 同意按鈕
        case 13://同意按鈕
        {
            isAgree = !isAgree;
            if (isAgree) {
                [agreeBtn setImage:GetImage(@"btn_checkbox_checked.png") forState:(UIControlStateNormal)];
            }else{
                [agreeBtn setImage:GetImage(@"btn_checkbox_uncheck.png") forState:(UIControlStateNormal)];
            }
            
        }
            
            break;
            
        case 14://同意按鈕2 橫屏時用到
        {
//            isAgree2 = !isAgree2;
//            if (isAgree2) {
//                [agreeBtn2 setImage:GetImage(@"btn_checkbox_checked.png") forState:(UIControlStateNormal)];
//            }else{
//                [agreeBtn2 setImage:GetImage(@"btn_checkbox_uncheck.png") forState:(UIControlStateNormal)];
//            }
            
        }
            
            break;
            
        case kAccountLoginActTag://進入遊戲
        {
            if (!isAgree) {//先同意
                [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"GAMA_PROVISIONS_AGREENT_TERM")];
                return;
            }
            if (Device_Is_Landscape) {
//                if (!isAgree2) {//先同意
//                    [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"GAMA_PROVISIONS_AGREENT_TERM")];
//                    return;
//                }
            }
            [TermsView saveAgreenProvisionState:isAgree];
            self.completer();
            [self removeFromSuperview];//移除自己
            
        }
            
            break;
            
            
        default:
            break;
    }
    
}

+ (void)saveAgreenProvisionState:(BOOL)agreen
{
    NSUserDefaults *saveDefault = [NSUserDefaults standardUserDefaults];
    [saveDefault setBool:agreen forKey:SDK_PROVISIONS_FIRST_ENBLE];
    [saveDefault synchronize];
}

+ (BOOL)openProvision{
    
    return ![TermsView isAgreenProvision];
}

+(BOOL)isAgreenProvision
{
    NSUserDefaults *saveDefault = [NSUserDefaults standardUserDefaults];
    return [saveDefault boolForKey:SDK_PROVISIONS_FIRST_ENBLE];
}

@end
