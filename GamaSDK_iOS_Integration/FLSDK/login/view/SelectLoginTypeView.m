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

#define fbLoginActTag       2000
#define googleLoginActTag   2001
#define guestLoginActTag    2002
#define accountLoginActTag    2003
#define appleLoginActTag    2004

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
    
    UIColor *color = [UIColor colorWithHexString:ContentViewBgColor];
    self.backgroundColor = color;//UIColor.lightGrayColor;// 底图透明，控件不透明
    self.layer.cornerRadius = 10; //设置圆角
    self.layer.masksToBounds = YES;
    
    
//    UILabel *titleView = [[UILabel alloc]init];
//    titleView.backgroundColor = UIColor.clearColor;
//    titleView.textColor = [UIColor colorWithHexString:@"ff3e37"];
//    titleView.font = [UIFont fontWithName:LABEL_FONT_NAME_BOLD size:30];
//    titleView.textAlignment = NSTextAlignmentCenter;
//    titleView.text = @"選擇登入方式";
//    [self addSubview:titleView];
//    [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(self).mas_offset(16);
//        //           make.bottom.mas_equalTo(self);
//        make.left.mas_equalTo(self);
//        make.right.mas_equalTo(self);
//
//        //            make.width.equalTo(@(kBgWidth));
//        make.height.mas_equalTo(@(kPageTitleHeight * 1.2));
//    }];
    
    
    //登入頁logo
    UIImageView *logoImageView = [[UIImageView alloc] initWithImage:[UIImage gama_imageNamed:@"fl_sdk_logo"]];
    logoImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:logoImageView];
    [logoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.mas_top).mas_offset(12);
        make.centerX.mas_equalTo(self);
        make.width.mas_equalTo(self).mas_offset(-30);
        make.height.mas_equalTo(kPageTitleHeight * 1.2);
    }];
    
    logoImageView.hidden = YES;
    
    int leftOffset = -30;
    int topOffset = kInputTextFiledTopMargin * 4;
//    int topOffset = VH(16);//kInputTextFiledTopMargin * 1.8;
    
//    int swidth = VW(418.0/66.0, VH(66));
    
    bgView = [[UIView alloc] init];
    //    contentView.backgroundColor = [UIColor redColor];
    [self addSubview:bgView];
    [bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(logoImageView.mas_bottom).mas_offset(-20);
        make.left.bottom.right.mas_equalTo(self);
        
    }];
    
    //账号
   // UIButton *accountLoginBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_ACCOUNT) tag:accountLoginActTag selector:@selector(loginBtnsAction:)  target:self];
    UIView *accountLoginBtn = [[SDKIconTitleButton alloc] initBtnViewWithType:(SDK_ICON_TITLE_BUTTON_TYPE_ACCOUNT) tag:accountLoginActTag selector:@selector(loginBtnsAction:) target:self];
    
    [bgView addSubview:accountLoginBtn];
    
    [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(bgView);
        make.top.equalTo(bgView).mas_offset(topOffset);
        
        if (Device_Is_Landscape) {
            make.width.mas_equalTo(bgView).multipliedBy(0.75);
        }else{
            make.width.mas_equalTo(bgView).offset(leftOffset);
        }
        make.height.mas_equalTo(kInputTextFiledHeight * 1.2);
    }];
    

    //游客
   // UIButton *guestLoginBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_GEUST) tag:guestLoginActTag selector:@selector(loginBtnsAction:)  target:self];
    UIView *guestLoginBtn = [[SDKIconTitleButton alloc] initBtnViewWithType:(SDK_ICON_TITLE_BUTTON_TYPE_GEUST) tag:guestLoginActTag selector:@selector(loginBtnsAction:) target:self];
    
    [bgView addSubview:guestLoginBtn];
    
    [guestLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.height.equalTo(accountLoginBtn);
        make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(topOffset);
    }];
    
    
    //fb
    //UIButton *fbLoginBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_FB) tag:fbLoginActTag selector:@selector(loginBtnsAction:)  target:self];
    UIView *fbLoginBtn = [[SDKIconTitleButton alloc] initBtnViewWithType:(SDK_ICON_TITLE_BUTTON_TYPE_FB) tag:fbLoginActTag selector:@selector(loginBtnsAction:) target:self];
    [bgView addSubview:fbLoginBtn];
    
    [fbLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.height.equalTo(accountLoginBtn);
        make.top.equalTo(guestLoginBtn.mas_bottom).mas_offset(topOffset);
    }];
    
    //apple
   // UIButton *appleLoginBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_APPLE) tag:appleLoginActTag selector:@selector(loginBtnsAction:)  target:self];
//    UIView *appleLoginBtn = [[SDKIconTitleButton alloc] initBtnViewWithType:(SDK_ICON_TITLE_BUTTON_TYPE_APPLE) tag:appleLoginActTag selector:@selector(loginBtnsAction:) target:self];
//    [bgView addSubview:appleLoginBtn];
//
//    [appleLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(fbLoginBtn.mas_bottom).mas_offset(topOffset);
//        make.leading.trailing.height.equalTo(accountLoginBtn);
//    }];
    
    
    if (@available(iOS 13.0, *)) {
        ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                  authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleBlack];
        [appleLoginBtn addTarget:self action:@selector(loginBtnsAction:) forControlEvents:(UIControlEventTouchUpInside)];
        appleLoginBtn.tag = appleLoginActTag;
        [bgView addSubview:appleLoginBtn];
        
        [appleLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(fbLoginBtn.mas_bottom).mas_offset(topOffset);
            make.leading.trailing.height.equalTo(accountLoginBtn);
        }];
    } else {
        // Fallback on earlier versions
    }
    
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

@end
