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
    BOOL isAgree2;
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
        
        if (Device_Is_Landscape) {
            [self landspaceView];
        }else{
            [self poritView];
        }
        
    }
    return self;
}

- (void)poritView {
    int offset = 10;
    
    serverTermsBtn = [UIUtil initBtnWithTitle:@"服務條款" tag:11 selector:@selector(action:) target:self];
    [serverTermsBtn setTitleColor:[UIColor whiteColor] forState:0];
    [serverTermsBtn.layer setBorderWidth:1];
    [serverTermsBtn.layer setBorderColor:[UIColor colorWithHexString:@"ff3e37"].CGColor];
    [serverTermsBtn.layer setCornerRadius:1];
    serverTermsBtn.backgroundColor = [UIColor colorWithHexString:@"ff3e37"];
    
    serverTermsBtn.hidden = YES;//后来需要UI不一样，所以直接隐藏
    
    privacyPolicyBtn = [UIUtil initBtnWithTitle:@"隱私政策" tag:12 selector:@selector(action:) target:self];
    [privacyPolicyBtn setTitleColor:[UIColor colorWithHexString:@"ff3e37"] forState:0];
    [privacyPolicyBtn.layer setBorderWidth:1];
    [privacyPolicyBtn.layer setBorderColor:[UIColor colorWithHexString:@"ff3e37"].CGColor];
    [privacyPolicyBtn.layer setCornerRadius:1];
    privacyPolicyBtn.backgroundColor = [UIColor whiteColor];
    
    privacyPolicyBtn.hidden = YES;//后来需要UI不一样，所以直接隐藏
    
    [self addSubview:serverTermsBtn];
    [serverTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self).mas_offset(10);
        make.leading.mas_equalTo(self).mas_offset(5);
        make.trailing.mas_equalTo(self.mas_centerX).mas_offset(-5);
        make.height.mas_equalTo(30);
    }];
    
    
    [self addSubview:privacyPolicyBtn];
    [privacyPolicyBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(serverTermsBtn);
        make.leading.mas_equalTo(self.mas_centerX).mas_offset(offset);
        make.trailing.mas_equalTo(self).mas_offset(-offset);
        make.height.mas_equalTo(serverTermsBtn);
    }];
    
    
    //確認登入遊戲
    UIButton *okButton = [LoginButton initBtnWithType:(BUTTON_TYPE_ACCOUNT_LOGIN) tag:kAccountLoginActTag selector:@selector(action:)  target:self];
    [self addSubview:okButton];
    
    [okButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.mas_bottom).mas_offset(-12);
        make.leading.mas_equalTo(self).mas_offset(20);
        make.trailing.mas_equalTo(self).mas_offset(-20);
        make.height.mas_equalTo(40);
    }];
    
    
    
    //同意按鈕
    agreeBtn = [UIUtil initBtnWithNormalImage:@"btn_checkbox_uncheck.png" highlightedImage:nil tag:13 selector:@selector(action:) target:self];
    agreeBtn.layer.borderColor = [UIColor blackColor].CGColor;
    agreeBtn.layer.borderWidth = 0.5;
    [self addSubview:agreeBtn];
    [agreeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(okButton.mas_top).mas_offset(-offset);
        make.leading.mas_equalTo(self).mas_offset(20);
        make.width.mas_equalTo(16);
        make.height.mas_equalTo(16);
        
    }];
    
    //記住密碼
    UILabel *rememberLable = [[UILabel alloc] init];
    [self addSubview:rememberLable];
    rememberLable.text = SDKConReaderGetLocalizedString(@"GAMA_PROVISIONS_PROTRAIT_TEXT");
    rememberLable.font = [UIFont systemFontOfSize:14];
    rememberLable.textAlignment = NSTextAlignmentLeft;
    rememberLable.backgroundColor = [UIColor clearColor];
    rememberLable.numberOfLines = 1;
    rememberLable.textColor = [UIColor blackColor];
    
    [rememberLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(agreeBtn);
        make.top.equalTo(agreeBtn);
        make.trailing.mas_equalTo(self).mas_offset(-offset);
        make.leading.mas_equalTo(agreeBtn.mas_trailing).mas_offset(offset);
    }];
    
    
    UIView *contentView = [[UIView alloc] init];
    contentView.backgroundColor = [UIColor whiteColor];
    contentView.layer.borderColor = [UIColor colorWithHexString:@"#545454"].CGColor;
    contentView.layer.borderWidth = 0.8;
    [self addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self).mas_offset(18);
        make.leading.mas_equalTo(self).mas_offset(20);
        make.trailing.mas_equalTo(self).mas_offset(-20);
        make.bottom.mas_equalTo(agreeBtn.mas_top).mas_offset(-10);
        
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
    
    
    isAgree = NO;
}

- (void)landspaceView {
    int offset = 10;
    
    UIView *xView = [[UIView alloc] init];
    //xView.backgroundColor = [UIColor colorWithHexString:@"#E4E4E4"];
    [self addSubview:xView];
    [xView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self).mas_offset(10);
        make.leading.mas_equalTo(self).mas_offset(offset);
        make.trailing.mas_equalTo(self).mas_offset(-offset);
        make.bottom.mas_equalTo(self).mas_offset(-45);
    }];
    
//    UILabel *titleLable = [[UILabel alloc] init];
//    [xView addSubview:titleLable];
//    titleLable.text =  @"使用者條款";
//    titleLable.font = [UIFont boldSystemFontOfSize:18];
//    titleLable.textAlignment = NSTextAlignmentCenter;
//    titleLable.backgroundColor = [UIColor clearColor];
//    titleLable.numberOfLines = 1;
//    titleLable.textColor = [UIColor colorWithHexString:@"#ff3c39"];
//
//    [titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.height.mas_equalTo(30);
//        make.top.mas_equalTo(xView);
//        make.trailing.mas_equalTo(xView).mas_offset(-20);
//        make.leading.mas_equalTo(xView).mas_offset(20);
//    }];
    //1
    UIView *contentView = [[UIView alloc] init];
    contentView.backgroundColor = [UIColor whiteColor];
    contentView.layer.borderColor = [UIColor colorWithHexString:@"#545454"].CGColor;
    contentView.layer.borderWidth = 0.8;
    [xView addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(xView).mas_offset(2);
        make.leading.mas_equalTo(xView).mas_offset(offset);
        make.trailing.mas_equalTo(xView).mas_offset(-offset);
        make.bottom.mas_equalTo(xView).mas_offset(-34);
        
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
    
 /**
    //2
    UIView *privacyContentView = [[UIView alloc] init];
    privacyContentView.backgroundColor = [UIColor whiteColor];
    privacyContentView.layer.borderColor = [UIColor colorWithHexString:@"#545454"].CGColor;
    privacyContentView.layer.borderWidth = 0.8;
    [xView addSubview:privacyContentView];
    [privacyContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(contentView);
        make.leading.mas_equalTo(xView.mas_centerX).mas_offset(offset);
        make.trailing.mas_equalTo(xView).mas_offset(-offset);
        make.bottom.mas_equalTo(contentView);
        
    }];
    
    //        https://member.flyfungame.com/sdk/archive.html   服務條款
    //        https://member.flyfungame.com/sdk/privacy.html   隱私政策
    NSString * privacyUrl = [NSString stringWithFormat:@"%@sdk/privacy.html",SDKConReaderGetString(@"gama_Member_URL")];
    WKWebView *privacyWebView = [[WKWebView alloc] init];
    [privacyWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: privacyUrl]]];
    [privacyWebView.scrollView setBounces:YES];
    [privacyWebView.scrollView setScrollEnabled:YES];
    [privacyWebView setUserInteractionEnabled:YES];
    [privacyContentView addSubview:privacyWebView];
    [privacyWebView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(privacyContentView);
        make.height.mas_equalTo(privacyContentView.mas_height);
        make.top.mas_equalTo(privacyContentView);
        make.left.mas_equalTo(privacyContentView);
    }];
    
    */
    
    
    UILabel *rememberLable = [[UILabel alloc] init];
    [xView addSubview:rememberLable];
    rememberLable.text = SDKConReaderGetLocalizedString(@"GAMA_PROVISIONS_PROTRAIT_TEXT");
    rememberLable.font = [UIFont systemFontOfSize:14];
    rememberLable.textAlignment = NSTextAlignmentLeft;
    rememberLable.backgroundColor = [UIColor clearColor];
    rememberLable.numberOfLines = 1;
    rememberLable.textColor = [UIColor blackColor];
    
    [xView addSubview:rememberLable];
    [rememberLable mas_makeConstraints:^(MASConstraintMaker *make) {
       make.bottom.mas_equalTo(xView.mas_bottom).mas_offset(-4);
        make.centerX.mas_equalTo(xView.mas_centerX).mas_offset(16);
        make.width.mas_equalTo(180);
        make.height.mas_equalTo(16);
    }];
    
        //同意按鈕
        agreeBtn = [UIUtil initBtnWithNormalImage:@"btn_checkbox_uncheck.png" highlightedImage:nil tag:13 selector:@selector(action:) target:self];
        agreeBtn.layer.borderColor = [UIColor blackColor].CGColor;
        agreeBtn.layer.borderWidth = 0.5;
        [xView addSubview:agreeBtn];
        [agreeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(rememberLable);
            make.trailing.mas_equalTo(rememberLable.mas_leading).mas_offset(-10);
            make.width.mas_equalTo(16);
            make.height.mas_equalTo(16);
        }];
    
    /**
    //同意按鈕
    agreeBtn2 = [UIUtil initBtnWithNormalImage:@"btn_checkbox_uncheck.png" highlightedImage:nil tag:14 selector:@selector(action:) target:self];
    [xView addSubview:agreeBtn2];
    [agreeBtn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(agreeBtn);
        make.leading.mas_equalTo(xView.mas_centerX).mas_offset(offset);
        make.width.mas_equalTo(agreeBtn);
        make.height.mas_equalTo(agreeBtn);
        
    }];

    UILabel *rememberLable2 = [[UILabel alloc] init];
    [xView addSubview:rememberLable2];
    rememberLable2.text =  @"我已閱讀並同意條款";
    rememberLable2.font = [UIFont systemFontOfSize:14];
    rememberLable2.textAlignment = NSTextAlignmentLeft;
    rememberLable2.backgroundColor = [UIColor clearColor];
    rememberLable2.numberOfLines = 1;
    rememberLable2.textColor = [UIColor blackColor];
    
    [xView addSubview:rememberLable2];
    [rememberLable2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(agreeBtn);
        make.top.mas_equalTo(agreeBtn);
        make.trailing.mas_equalTo(xView).mas_offset(-offset);
        make.leading.mas_equalTo(agreeBtn2.mas_trailing).mas_offset(offset);
    }];
    */
    
    //確認登入遊戲
    UIButton *okButton = [LoginButton initBtnWithType:(BUTTON_TYPE_ACCOUNT_LOGIN) tag:kAccountLoginActTag selector:@selector(action:)  target:self];
    [self addSubview:okButton];
    
    [okButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.mas_bottom).mas_offset(-6);
        make.height.mas_equalTo(30);
        make.centerX.mas_offset(@(0));
        make.width.mas_equalTo(self.mas_width).multipliedBy(0.75);
    }];
    
    isAgree = NO;
    isAgree2 = NO;
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
            isAgree2 = !isAgree2;
            if (isAgree2) {
                [agreeBtn2 setImage:GetImage(@"btn_checkbox_checked.png") forState:(UIControlStateNormal)];
            }else{
                [agreeBtn2 setImage:GetImage(@"btn_checkbox_uncheck.png") forState:(UIControlStateNormal)];
            }
            
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
            [self saveFirstAgreenProvisionState];
            self.completer();
            [self removeFromSuperview];//移除自己
            
        }
            
            break;
            
            
        default:
            break;
    }
    
}

- (void)saveFirstAgreenProvisionState
{
    NSUserDefaults *saveDefault = [NSUserDefaults standardUserDefaults];
    [saveDefault setObject:@"yes" forKey:SDK_PROVISIONS_FIRST_ENBLE];
    [saveDefault synchronize];
}

+ (BOOL)openProvision{
    NSUserDefaults *saveDefault = [NSUserDefaults standardUserDefaults];
    NSString *state = [saveDefault objectForKey:SDK_PROVISIONS_FIRST_ENBLE];
    if (state.length > 1 && [state isEqualToString:@"yes"]) {
        return NO;
    }
    return YES;
}

@end
