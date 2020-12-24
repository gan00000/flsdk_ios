//
//  LoginMainView.m
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/29.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import "SelectLoginTypeView.h"
#import "SdkHeader.h"
#import "LoginTitleView.h"
#import "GamaAlertView.h"
#import "LoginButton.h"
#import "GamaNetEngine.h"
#import "GamaUtils.h"
#import "SDKRequest.h"
#import "GamaFacebookPort.h"
#import "GamaAppleLogin.h"
#import "SDKIconTitleButton.h"
#import <AuthenticationServices/AuthenticationServices.h>

@implementation SelectLoginTypeView{
    
    UIView *bgView;
    GamaAppleLogin *gamaAppleLogin;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

- (instancetype)initView{
    
    self = [super init];
    
    self.layer.contents = (id)[UIImage gama_imageNamed:@"h_bg"].CGImage;
    
    bgView = [[UIView alloc] init];
    [self addSubview:bgView];
    [bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.right.top.mas_equalTo(self);
        
    }];
    
    
    //登入頁logo
    UIImageView *logoImageView = [[UIImageView alloc] initWithImage:[UIImage gama_imageNamed:@"h_icon_en"]];
    logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    [bgView addSubview:logoImageView];
    [logoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.mas_top).mas_offset(VH(85));
        make.centerX.mas_equalTo(self);
        make.width.mas_equalTo(VH(165));
        make.height.mas_equalTo(VH(165));
    }];
    
    
    //账号
   // UIButton *accountLoginBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_ACCOUNT) tag:accountLoginActTag selector:@selector(loginBtnsAction:)  target:self];
    UIView *accountLoginBtn = [[SDKIconTitleButton alloc] initBtnViewWithType:(SDK_ICON_TITLE_BUTTON_TYPE_ACCOUNT) tag:accountLoginActTag selector:@selector(loginBtnsAction:) target:self];
    
    [bgView addSubview:accountLoginBtn];
    
    [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(bgView);
        make.top.equalTo(bgView).mas_offset(VH(300));
        make.width.mas_equalTo(VW(264));
        make.height.mas_equalTo(VH(50));
    }];
    
    //fb
    //UIButton *fbLoginBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_FB) tag:fbLoginActTag selector:@selector(loginBtnsAction:)  target:self];
    UIView *fbLoginBtn = [[SDKIconTitleButton alloc] initBtnViewWithType:(SDK_ICON_TITLE_BUTTON_TYPE_FB) tag:fbLoginActTag selector:@selector(loginBtnsAction:) target:self];
    [bgView addSubview:fbLoginBtn];
    
    [fbLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.height.equalTo(accountLoginBtn);
        make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(20));
    }];
    
    BOOL haveAppleLogin = NO;
    UIView *appleLoginBtnView;
    
    if (@available(iOS 13.0, *)) {
        
        haveAppleLogin = YES;
        
        ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                  authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleBlack];
        [appleLoginBtn addTarget:self action:@selector(loginBtnsAction:) forControlEvents:(UIControlEventTouchUpInside)];
        appleLoginBtn.tag = appleLoginActTag;
        appleLoginBtn.cornerRadius = VH(25);
        [bgView addSubview:appleLoginBtn];
        
        [appleLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(fbLoginBtn.mas_bottom).mas_offset(VH(20));
            make.leading.trailing.height.equalTo(accountLoginBtn);
        }];
        appleLoginBtnView = appleLoginBtn;
        
    } else {
        // Fallback on earlier versions
        haveAppleLogin = NO;
    }
    
    //游客
   // UIView *guestLoginBtn = [[SDKIconTitleButton alloc] initBtnViewWithType:(SDK_ICON_TITLE_BUTTON_TYPE_GEUST) tag:guestLoginActTag selector:@selector(loginBtnsAction:) target:self];
    UIView *guestLoginBtn = [[UIView alloc] init];
    guestLoginBtn.backgroundColor = [UIColor colorWithHexString:@"c353b0"];
    guestLoginBtn.layer.cornerRadius = 10;
    
    guestLoginBtn.userInteractionEnabled = YES; // 可以理解为设置label可被点击
    UITapGestureRecognizer *tapGr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(guestTapped:)];
    [guestLoginBtn addGestureRecognizer:tapGr];
    
    [bgView addSubview:guestLoginBtn];
    
    [guestLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(VW(40));
        make.width.mas_equalTo(VH(224));
        make.centerX.equalTo(bgView);
        if (haveAppleLogin) {
            make.top.equalTo(appleLoginBtnView.mas_bottom).mas_offset(VH(20));
        }else{
            make.top.equalTo(fbLoginBtn.mas_bottom).mas_offset(VH(20));
        }
        
    }];
    
    UILabel *label = [[UILabel alloc] init];
    label.numberOfLines = 1;
    label.text = @"Start playing without Login";
    label.font = [UIFont systemFontOfSize:VH(16)];
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    [guestLoginBtn addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.top.trailing.bottom.mas_equalTo(guestLoginBtn);
    }];
   
    
    return self;
}

- (void)loginBtnsAction:(UIButton *) button
{
    SDK_LOG(@"loginBtnsAction");
    
    switch (button.tag) {
        case fbLoginActTag:
        {
            
            [GamaUtils gamaStarLoadingAtView:self];
            [GamaFacebookPort loginWithFacebook:^(NSError *loginError, NSString *facebookID, NSString *facebookTokenStr) {
                [GamaUtils gamaStopLoadingAtView:self];
                if (!loginError)
                {
                    
                    NSString *appsStr = [NSString stringWithFormat:@"%@_%@",facebookID, [SDKConReader getFacebookAppId]];
                    NSDictionary *additionDic = @{
                        @"apps":appsStr,
                        @"tokenBusiness":@"",
                        @"fb_oauthToken":facebookTokenStr,
                    };
                    
                    [SDKRequest thirdLoginOrReg:facebookID andThirdPlate:_SDK_PLAT_FB addOtherParams:additionDic successBlock:^(id responseData) {
                        
                        if (self.delegate) {
                            [self.delegate handleLoginOrRegSuccess:responseData thirdPlate:_SDK_PLAT_FB];
                        }
                        
                    } errorBlock:^(BJError *error) {
                        if (error && error.message) {
                            [GamaAlertView showAlertWithMessage:error.message];
                        }
                    }];
                    
                    
                }else{
                    //[GamaAlertView showAlertWithMessage:@"error.message"];
                }
                
            }];
            
        }
            break;
        case appleLoginActTag:
        {
            [self doAppleLogin];
        }
            break;
            
        case guestLoginActTag:
        {
            
            [SDKRequest freeLoginOrRegisterWithSuccessBlock:^(id responseData) {
                
                if (self.delegate) {
                    [self.delegate handleLoginOrRegSuccess:responseData thirdPlate:_SDK_PLAT_MAC];
                }
                
            } errorBlock:^(BJError *error) {
                if (error && error.message) {
                    [GamaAlertView showAlertWithMessage:error.message];
                }
                
            }];
        }
            break;
            
        case accountLoginActTag:
        {
            if (self.delegate) {
                [self.delegate goPageView: CURRENT_PAGE_TYPE_LOGIN_ACCOUNT];
            }
        }
            break;
            
        default:
            break;
    }
}

-(void) doAppleLogin
{
    if (@available(iOS 13, *)) {
                  
    }else{
       [GamaAlertView showAlertWithMessage:SDKConReaderGetLocalizedString(@"GAMA_APPLE_SYSTEM_OLD_WARNING")];
        return;
    }
    
    gamaAppleLogin = [GamaAppleLogin makeAppleCallbackSuccessBlock:^(NSDictionary * _Nullable result) {
        NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:result];
        NSString *appleID = [tempMutableDic[@"appleThirdID"] copy];
        [tempMutableDic removeObjectForKey:@"appleThirdID"];

        [SDKRequest thirdLoginOrReg:appleID andThirdPlate:_SDK_PLAT_APPLE addOtherParams:tempMutableDic successBlock:^(id responseData) {
            
            if (self.delegate) {
                [self.delegate handleLoginOrRegSuccess:responseData thirdPlate:_SDK_PLAT_APPLE];
            }
            
        } errorBlock:^(BJError *error) {
            if (error && error.message) {
                [GamaAlertView showAlertWithMessage:error.message];
            }
        }];
        
    } andErrorBlock:^(NSError * _Nullable error) {
        //           [GamaUtils gamaStopLoadingAtView:self.view];
        //        [GamaAlertView showAlertWithMessage:SDKConReaderGetLocalizedString(error?GAMA_TEXT_NO_NET:GAMA_TEXT_SERVER_RETURN_NULL)];
    }];
    [gamaAppleLogin handleAuthrization:nil];
}

-(void)guestTapped:(UITapGestureRecognizer*)tapGr
{
    SDK_LOG(@"guestTapped");
    [SDKRequest freeLoginOrRegisterWithSuccessBlock:^(id responseData) {
        
        if (self.delegate) {
            [self.delegate handleLoginOrRegSuccess:responseData thirdPlate:_SDK_PLAT_MAC];
        }
        
    } errorBlock:^(BJError *error) {
        if (error && error.message) {
            [GamaAlertView showAlertWithMessage:error.message];
        }
        
    }];
}

@end
