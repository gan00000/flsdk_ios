//
//  AutoLoginView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/13.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "SdkAutoLoginView.h"
#import "SdkHeader.h"
#import "LoginButton.h"
#import "SDKRequest.h"
#import "GamaFacebookPort.h"
#import "SdkUtil.h"
#import "AppleLogin.h"
#import "AccountModel.h"

@implementation SdkAutoLoginView
{
    UILabel *loginTipsLable;
    BOOL isSwicth;//是否已经点击切换账号按钮
    NSString *autoLoginTips;
}

- (instancetype)initView
{
    self = [super init];
    if (self) {
        isSwicth = NO;
        
        UIColor *color = [UIColor colorWithHexString:ContentViewBgColor];
        self.backgroundColor = color;// 底图透明，控件不透明
        self.layer.cornerRadius = 10; //设置圆角
        //        self.layer.backgroundColor = [UIColor blackColor].CGColor;
        //        self.layer.borderWidth = 2;
        self.layer.masksToBounds = YES; //不设置这里会不生成圆角，原因查找中
        
        
        loginTipsLable = [[UILabel alloc] init];
        loginTipsLable.font = [UIFont systemFontOfSize:20];
        loginTipsLable.textAlignment = NSTextAlignmentCenter;
        loginTipsLable.backgroundColor = [UIColor clearColor];
        loginTipsLable.numberOfLines = 0;
        loginTipsLable.textColor = [UIColor blackColor];
        
        [self addSubview:loginTipsLable];
        [loginTipsLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(self);
            make.bottom.mas_equalTo(self.mas_centerY).mas_offset(-10);
            make.height.mas_equalTo(60);
            make.width.mas_equalTo(self).mas_equalTo(-30);
            
        }];
        
        UIButton *changeAccount = [LoginButton initBtnWithType:(BUTTON_TYPE_CHANGE_ACCOUNT) tag:11 selector:@selector(changeLoginAccount:)  target:self];
        [self addSubview:changeAccount];
        
        [changeAccount mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(self.mas_centerY).mas_offset(10);
            make.width.mas_equalTo(self).offset(-kInputTextFiledMarginLeftRight);
            make.height.mas_equalTo(40);
        }];
        
    }
    
    NSString *loginType = [ConfigCoreUtil share].loginType;
    if ([loginType isEqualToString:_SDK_PLAT_MAC]) {
        autoLoginTips = @"遊客帳號登入中\n(%@)";
        
    }else if ([loginType isEqualToString:_SDK_PLAT_FB]) {
        autoLoginTips = @"Facebook帳號登入中\n(%@)";
        
    }else if ([loginType isEqualToString:_SDK_PLAT_APPLE]) {
        
        autoLoginTips = @"Apple帳號登入中\n(%@)";
        
    }else if ([loginType isEqualToString:_SDK_PLAT_SELF]) {
        NSArray *accounts = [[ConfigCoreUtil share] getAccountModels];
        if (accounts && accounts.count > 0) {
            AccountModel *mAccountModel = accounts[0];
            //        [mAccountModel.accountName]@"帳號%@登入中  %@"
            autoLoginTips = [NSString stringWithFormat:@"帳號%@登入中\n(%@)", mAccountModel.accountName, @"%@"];
        }else{
            [self switchAccount];
        }

    }
    [self initTimer];
    
    return self;
}

-(void) initTimer
{
    __block int timeOut = 3;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    //每秒执行一次
    dispatch_source_set_timer(_timer, dispatch_walltime(NULL, 0), 1.0 * NSEC_PER_SEC, 0);
    dispatch_source_set_event_handler(_timer, ^{
        //倒计时结束，关闭
        if (isSwicth) {
            dispatch_source_cancel(_timer);
            return;
        }
        if (timeOut <= 0) {
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                //倒计时到
                [self goLogin];
            });
        } else {
            
            dispatch_async(dispatch_get_main_queue(), ^{
                //                    label.backgroundColor = color;
                //                    [label setText:[NSString stringWithFormat:@"%@%@",timeStr,subTitle]];
                NSString *timeStr = [NSString stringWithFormat:@"%d", timeOut];
                NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:autoLoginTips,timeStr]
                                                                              attributes:@{NSForegroundColorAttributeName:[UIColor blackColor]}];
                [loginTipsLable setAttributedText:attrStr];
            });
            timeOut--;
        }
    });
    dispatch_resume(_timer);
    
}

-(void) goLogin
{
    if (isSwicth) {
        return;
    }
    kWeakSelf
    NSString *loginType = [ConfigCoreUtil share].loginType;
    if ([loginType isEqualToString:_SDK_PLAT_MAC]) {
        [SDKRequest freeLoginOrRegisterWithSuccessBlock:^(id responseData) {
            
            if (!isSwicth && weakSelf.delegate) {
                [weakSelf.delegate handleLoginOrRegSuccess:responseData thirdPlate:_SDK_PLAT_MAC];
            }
            
        } errorBlock:^(BJError *error) {
            if (isSwicth) {
                return;
            }
            if (error && error.message) {
                [GamaAlertView showAlertWithMessage:error.message];
            }
            [weakSelf switchAccount];
            
        }];
        
    }else if ([loginType isEqualToString:_SDK_PLAT_FB]) {
        [SdkUtil gamaStarLoadingAtView:weakSelf];
        [GamaFacebookPort loginWithFacebook:^(NSError *loginError, NSString *facebookID, NSString *facebookTokenStr) {
            [SdkUtil gamaStopLoadingAtView:weakSelf];
            
            if (isSwicth) {
                return;
            }
            if (!loginError)
            {
                
                NSString *appsStr = [NSString stringWithFormat:@"%@_%@",facebookID, [SDKConReader getFacebookAppId]];
                
                NSDictionary *additionDic = @{
                    @"apps":appsStr,
                    @"tokenBusiness":@"",
                    @"fb_oauthToken":facebookTokenStr,
                };
                [SDKRequest thirdLoginOrReg:facebookID andThirdPlate:_SDK_PLAT_FB addOtherParams:additionDic successBlock:^(id responseData) {
                    
                    if (!isSwicth && weakSelf.delegate) {
                        [weakSelf.delegate handleLoginOrRegSuccess:responseData thirdPlate:_SDK_PLAT_FB];
                    }
                    
                } errorBlock:^(BJError *error) {
                    if (isSwicth) {
                        return;
                    }
                    if (error && error.message) {
                        [GamaAlertView showAlertWithMessage:error.message];
                    }
                    [weakSelf switchAccount];
                }];
                
                
            }else{
                [weakSelf switchAccount];
            }
            
        }];
        
    }else if ([loginType isEqualToString:_SDK_PLAT_APPLE]) {
        
        [self doAutoAppleLogin];
        
    }else if ([loginType isEqualToString:_SDK_PLAT_SELF]) {
        
        NSArray<AccountModel *> *accounts = [[ConfigCoreUtil share] getAccountModels];
        if (!accounts || accounts.count == 0) {
            [self switchAccount];
            return;
        }
        kWeakSelf
        NSString *accountName = accounts[0].accountName;
        NSString *pwd = accounts[0].accountPwd;
        [SDKRequest doLoginWithAccount:accountName andPassword:pwd otherDic:nil successBlock:^(id responseData) {
            
            if (weakSelf.delegate) {
                CCSDKResponse *cc = (CCSDKResponse *)responseData;
                cc.account = accountName;
                cc.password = pwd;
                [weakSelf.delegate handleLoginOrRegSuccess:cc thirdPlate:_SDK_PLAT_SELF];
            }
            
        } errorBlock:^(BJError *error) {
            [GamaAlertView showAlertWithMessage:error.message];
        }];
        
    }
}

-(void) doAutoAppleLogin
{
    kWeakSelf
    AppleLogin *gamaAppleLogin = [[AppleLogin alloc] init];
    NSDictionary *tempDic = [gamaAppleLogin fetchAppleLoginInfo];
    NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:tempDic];
    NSString *appleID = [tempMutableDic[@"appleThirdID"] copy];
    [tempMutableDic removeObjectForKey:@"appleThirdID"];
    [SDKRequest thirdLoginOrReg:appleID andThirdPlate:_SDK_PLAT_APPLE addOtherParams:tempMutableDic successBlock:^(id responseData) {
        if (isSwicth) {
            return;
        }
        if (weakSelf.delegate) {
            [weakSelf.delegate handleLoginOrRegSuccess:responseData thirdPlate:_SDK_PLAT_APPLE];
        }
        
    } errorBlock:^(BJError *error) {
        if (isSwicth) {
            return;
        }
        if (error && error.message) {
            [GamaAlertView showAlertWithMessage:error.message];
        }
        [weakSelf switchAccount];
    }];
    
    /**
     GamaAppleLogin *gamaAppleLogin = [GamaAppleLogin makeAppleCallbackSuccessBlock:^(NSDictionary * _Nullable result) {
     
     if (isSwicth) {
     return;
     }
     NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:result];
     NSString *appleID = [tempMutableDic[@"appleThirdID"] copy];
     [tempMutableDic removeObjectForKey:@"appleThirdID"];
     
     [SDKRequest thirdLoginOrReg:appleID andThirdPlate:_SDK_PLAT_APPLE addOtherParams:tempMutableDic successBlock:^(id responseData) {
     if (isSwicth) {
     return;
     }
     if (weakSelf.delegate) {
     [weakSelf.delegate handleLoginOrRegSuccess:responseData thirdPlate:_SDK_PLAT_APPLE];
     }
     
     } errorBlock:^(BJError *error) {
     if (isSwicth) {
     return;
     }
     if (error && error.message) {
     [GamaAlertView showAlertWithMessage:error.message];
     }
     }];
     
     } andErrorBlock:^(NSError * _Nullable error) {
     //         [GamaUtils gamaStopLoadingAtView:self.view];
     //         [GamaAlertView showAlertWithMessage:SDKConReaderGetLocalizedString(error?GAMA_TEXT_NO_NET:GAMA_TEXT_SERVER_RETURN_NULL)];
     }];
     [gamaAppleLogin handleAuthrization:nil];
     */
}

- (void)changeLoginAccount:(UIButton *)sender
{
    SDK_LOG(@"changeLoginAccount");
    [self switchAccount];
}

-(void)switchAccount
{
    isSwicth = YES;
    if (self.delegate) {
        [self.delegate cancelAutoSwitchAccount];
    }
    [self removeFromSuperview];
}

@end
