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
#import "SDKRequest.h"
#import "FBDelegate.h"
#import "SdkHeader.h"
#import "LoginHelper.h"
#import "SAppleLogin.h"

#import <AuthenticationServices/AuthenticationServices.h>

@interface MainHomeView()

@end

@implementation MainHomeView
{
    UIButton *guestLoginBtn;
    UIButton *checkBoxTermsBtn;
    
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
       
        [self addView];
    }
    return self;
}

-(void)addView
{
    //游客登录
    guestLoginBtn = [UIUtil initBtnWithTitleText:@"" fontSize:FS(17) textColor:[UIColor whiteColor] tag:guestLoginActTag selector:@selector(registerViewBtnAction:) target:self];
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
    
    UIView *guestLoginBtnContent = [[UIView alloc] init];
    [guestLoginBtn addSubview:guestLoginBtnContent];
    [guestLoginBtnContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(guestLoginBtn);
//        make.top.mas_equalTo(otherLoginLabel.mas_bottom).mas_offset(VH(24));
    }];
    
    UIButton *guestIconBtn = [UIUtil initBtnWithNormalImage:@"guse_login_bg" highlightedImage:nil tag:guestLoginActTag selector:@selector(registerViewBtnAction:) target:self];
    [guestLoginBtnContent addSubview:guestIconBtn];
    [guestIconBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.mas_equalTo(guestLoginBtnContent);
        make.width.height.mas_equalTo(VW(30));
    }];
    
    UIButton *guestTextBtn = [UIUtil initBtnWithTitleText:@"遊客登入" fontSize:FS(17) textColor:[UIColor whiteColor] tag:guestLoginActTag selector:@selector(registerViewBtnAction:) target:self];
    [guestLoginBtnContent addSubview:guestTextBtn];
    [guestTextBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.trailing.mas_equalTo(guestLoginBtnContent);
        make.leading.mas_equalTo(guestIconBtn.mas_trailing).mas_offset(VW(12));
    }];
    
    
    UIView *topView = guestLoginBtn;
    //游客登录 end
    
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
    
  
    UIView *termAgreeView = [[UIView alloc] init];
    [self addSubview:termAgreeView];
    [termAgreeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.bottom.mas_equalTo(self.mas_bottom).mas_offset(VH(-15));
    }];
    
    checkBoxTermsBtn = [UIUtil initBtnWithNormalImage:@"mw_cb_uncheck" highlightedImage:nil selectedImageName:@"mw_cb_check" tag:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction:) target:self];
    checkBoxTermsBtn.selected = YES;
    [termAgreeView addSubview:checkBoxTermsBtn];
    [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(termAgreeView);
        make.centerY.mas_equalTo(termAgreeView);
        make.width.height.mas_equalTo(VH(10));
       
    }];
    
//    [TermsView saveAgreenProvisionState:YES];
//    isAgree = [TermsView isAgreenProvision];
//    if (isAgree) {
//        [checkBoxTermsBtn setImage:GetImage(@"mw_cb_check.png") forState:(UIControlStateNormal)];
//    }else{
//        [checkBoxTermsBtn setImage:GetImage(@"mw_cb_uncheck.png") forState:(UIControlStateNormal)];
//    }
    
        NSString *xtext = GetString(@"gama_ui_term_port_read2");
        UILabel *rememberTermsLable = [UIUtil initLabelWithText:xtext fontSize:FS(10) textColor:[UIColor colorWithHexString:@"#C0C0C0"]];
        rememberTermsLable.textAlignment = NSTextAlignmentLeft;
        rememberTermsLable.backgroundColor = [UIColor clearColor];
        rememberTermsLable.numberOfLines = 1;
        
    
         NSDictionary *attribtDic = @{NSForegroundColorAttributeName: [UIColor whiteColor], NSFontAttributeName: [UIFont systemFontOfSize:FS(10)]
         };
         NSMutableAttributedString *attribtStr = [[NSMutableAttributedString alloc]initWithString:xtext];
        [attribtStr addAttributes:attribtDic range: NSMakeRange(xtext.length-5, 5)];
         //赋值
        rememberTermsLable.attributedText = attribtStr;
        
        [termAgreeView addSubview:rememberTermsLable];
        [rememberTermsLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(termAgreeView);
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);
            make.trailing.mas_equalTo(termAgreeView.mas_trailing);
        }];
        rememberTermsLable.userInteractionEnabled=YES;
        [rememberTermsLable addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {
            SDK_LOG(@"rememberTermsLableTapped");
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_TEARMS from:(CURRENT_PAGE_TYPE_MAIN_HOME) param:0];
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
       
        case appleLoginActTag:
            SDK_LOG(@"appleLoginActTag");
            [LoginHelper appleLoginAndThirdRequest:self.delegate];
            break;
            
        case kAgreeTermsCheckBoxBtnTag:
            
            SDK_LOG(@"kAgreeTermsCheckBoxBtnTag");
            if (checkBoxTermsBtn.selected) {
                checkBoxTermsBtn.selected = NO;
            }else{
                checkBoxTermsBtn.selected = YES;
            }
            break;
        case guestLoginActTag:
        {
            SDK_LOG(@"guestLoginActTag");
            if (![self checkAgreeTerm]) {
                return;
            }
            [SDKRequest freeLoginOrRegisterWithSuccessBlock:^(id responseData) {
                
                if (self.delegate) {
                    [self.delegate handleLoginOrRegSuccess:responseData thirdPlate:LOGIN_TYPE_GUEST];
                }
                
            } errorBlock:^(BJError *error) {
                if (error && error.message) {
                    [AlertUtil showAlertWithMessage:error.message];
                }
                
            }];
            break;
        }
            
            
        case fbLoginActTag:
            SDK_LOG(@"fbLoginActTag");
            [LoginHelper fbLoginAndThirdRequest:self.delegate];
            
            break;
        case googleLoginActTag:
            SDK_LOG(@"googleLoginActTag");
            break;
        case lineLoginActTag:
            SDK_LOG(@"lineLoginActTag");
            break;
        default:
            break;
    }
    
}


-(BOOL)checkAgreeTerm
{
    if (checkBoxTermsBtn.selected) {
        return YES;
    }
    [SdkUtil toastMsg:GetString(@"text_term_not_read")];
//    [AlertUtil showAlertWithMessage:];
    return NO;
}

@end
