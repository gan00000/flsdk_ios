//
//  MainLoginView.m
//  FLSDK
//
//  Created by ganyuanrong on 2020/10/21.
//  Copyright © 2020 Gama. All rights reserved.
//

#import "MainHomeView.h"
#import "UIUtil.H"
#import "LoginTypeButton.h"
#import "UIView+BlockGesture.h"

#import <AuthenticationServices/AuthenticationServices.h>

@interface MainHomeView()

@end

@implementation MainHomeView
{
    UIButton *guestLoginBtn;
    UIButton *regTabBtn;
    
    NSUInteger currentClickTab;
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initView
{
    self = [super init];
    if (self) {
        currentClickTab = 1;
        [self addView];
    }
    return self;
}

-(void)addView
{
    
    guestLoginBtn = [UIUtil initBtnWithTitleText:@"繼續遊戲" fontSize:FS(17) textColor:[UIColor whiteColor] tag:kAccountLoginActTag selector:@selector(registerViewBtnAction:) target:self];
    [guestLoginBtn.layer setCornerRadius:VH(25)];
//    guestLoginBtn.titleLabel.font = [UIFont systemFontOfSize:FS(17)];
    guestLoginBtn.backgroundColor = [UIColor colorWithHexString:@"#F94925"];
    [self addSubview:guestLoginBtn];
    
    [guestLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
        make.leading.mas_equalTo(self).mas_offset(VH(38));
        make.trailing.mas_equalTo(self).mas_offset(VH(-38));;
        make.height.mas_equalTo(VH(50));
    }];
   
    UIView *topView = guestLoginBtn;
    
    if (@available(iOS 13.0, *)) {
        ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                    authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
        [appleLoginBtn addTarget:self action:@selector(registerViewBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
        appleLoginBtn.tag = appleLoginActTag;
        appleLoginBtn.cornerRadius = VH(25);
        [self addSubview:appleLoginBtn];
        
        [appleLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.height.mas_equalTo(guestLoginBtn);
            make.top.mas_equalTo(guestLoginBtn.mas_bottom).mas_offset(VH(15));
        }];
        
        topView = appleLoginBtn;
        
    }
    
    UIView *hasAccountContent = [[UIView alloc] init];
    [self addSubview:hasAccountContent];
    [hasAccountContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(topView.mas_bottom).mas_offset(VH(27));
    }];
    
    UILabel *hasAccountLabel = [UIUtil initLabelWithText:@"已有帳號？ " fontSize:FS(12) textColor:[UIColor whiteColor]];
    [hasAccountContent addSubview:hasAccountLabel];
    [hasAccountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.top.mas_equalTo(hasAccountContent);
//        make.top.mas_equalTo(guestLoginBtn.mas_bottom).mas_offset(VH(15));
    }];
    
    UILabel *loginLabel = [UIUtil initLabelWithText:@"登入" fontSize:FS(12) textColor:[UIColor colorWithHexString:@"#EB2E2B"]];
    [hasAccountContent addSubview:loginLabel];
    [loginLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.bottom.top.mas_equalTo(hasAccountContent);
        make.leading.mas_equalTo(hasAccountLabel.mas_trailing);
    }];
    
    
    UILabel *otherLoginLabel = [UIUtil initLabelWithText:@"其他登入" fontSize:FS(11) textColor:[UIColor colorWithHexString:@"#C0C0C0"]];
    [self addSubview:otherLoginLabel];
    [otherLoginLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(hasAccountLabel.mas_bottom).mas_offset(VH(22));
        make.centerX.mas_equalTo(self);
    }];
    
    UIView *lineView1 = [[UIView alloc] init];
    lineView1.backgroundColor = [UIColor colorWithHexString:@"#C0C0C0"];
    [self addSubview:lineView1];
    [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        //make.width.mas_equalTo(0.5);
        make.trailing.mas_equalTo(otherLoginLabel.mas_leading).mas_offset(VW(-22));
        make.centerY.mas_equalTo(otherLoginLabel);
        make.height.mas_equalTo(1);
        make.width.mas_equalTo(VW(26));
        
    }];
    
    UIView *lineView2 = [[UIView alloc] init];
    lineView2.backgroundColor = [UIColor colorWithHexString:@"#C0C0C0"];
    [self addSubview:lineView2];
    [lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        //make.width.mas_equalTo(0.5);
        make.leading.mas_equalTo(otherLoginLabel.mas_trailing).mas_offset(VW(22));
        make.centerY.mas_equalTo(otherLoginLabel);
        make.height.mas_equalTo(1);
        make.width.mas_equalTo(VW(26));
        
    }];
    
    
    //登录方式
    
    UIView *loginTypeView = [[UIView alloc] init];
    [self addSubview:loginTypeView];
    [loginTypeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.top.mas_equalTo(otherLoginLabel.mas_bottom).mas_offset(VH(24));
    }];
    
    
    CGFloat btn_w = VW(28);
    CGFloat btn_h = btn_w;
    CGFloat margin_leading = VW(27);
    
    LoginTypeButton *fbBtn = [[LoginTypeButton alloc] initWithType:fbLoginActTag title:@"FB登入" image:@"mw_fb_icon" selector:@selector(registerViewBtnAction:) target:self];
    [loginTypeView addSubview:fbBtn];
    [fbBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(btn_w);
        make.height.mas_equalTo(btn_h);
        make.top.mas_equalTo(loginTypeView);
        make.leading.bottom.mas_equalTo(loginTypeView);
    }];
   UIView *leadingView = fbBtn;
    
    LoginTypeButton *googleBtn = [[LoginTypeButton alloc] initWithType:googleLoginActTag title:@"" image:@"mw_gp_icon" selector:@selector(registerViewBtnAction:) target:self];
    [loginTypeView addSubview:googleBtn];
    [googleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(btn_w);
        make.height.mas_equalTo(btn_h);
        make.top.mas_equalTo(loginTypeView);
        make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(margin_leading);
    }];
    leadingView = googleBtn;
    
    
    LoginTypeButton *lineBtn = [[LoginTypeButton alloc] initWithType:lineLoginActTag title:@"" image:@"mw_line_icon" selector:@selector(registerViewBtnAction:) target:self];
    [loginTypeView addSubview:lineBtn];
    [lineBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(btn_w);
        make.height.mas_equalTo(btn_h);
        make.top.mas_equalTo(loginTypeView);
        make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(margin_leading);
        make.trailing.mas_equalTo(loginTypeView);
    }];
    leadingView = lineBtn;
    
    
    [hasAccountContent addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {
        if (self.delegate) {
            [self.delegate goPageView:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG)];
        }
    }];
}

- (void)drawRect:(CGRect)rect
{
    self.mAccountLoginView.delegate = self.delegate;
    self.mAccountLoginView.theViewUIViewController = self.theViewUIViewController;
    self.mAccountLoginView.mUITextFieldDelegate = self.mUITextFieldDelegate;
    
    self.mRegisterAccountView.delegate = self.delegate;
    self.mRegisterAccountView.theViewUIViewController = self.theViewUIViewController;
    self.mRegisterAccountView.mUITextFieldDelegate = self.mUITextFieldDelegate;
}

- (void)registerViewBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
       
        case kLoginTabActTag:
            SDK_LOG(@"kLoginTabActTag");
            if (currentClickTab == 1) {
                return;
            }
            currentClickTab = 1;
            
//            [self makeTabStatus:YES];
            if (self.delegate) {
                //[self.delegate goBackBtn:backBtn backCount:1];
            }
            break;
            
        case kRegTabActTag:
            
            
            SDK_LOG(@"kRegTabActTag");
            if (currentClickTab == 2) {
                return;
            }
            currentClickTab = 2;
            
           // [self requestAccountLogin];
//            [self makeTabStatus:NO];
            break;
            
            
        default:
            break;
    }
    
}


@end
