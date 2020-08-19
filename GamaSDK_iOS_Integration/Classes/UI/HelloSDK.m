//
//  HelloSDK.m
//  GamaSDK_iOS_KR
//
//  Created by Sunny on 17/2/6.
//  Copyright © 2017年 Gama. All rights reserved.
//

#import "HelloSDK.h"
#import "HelloHeader.h"
//#import "KRLoginViewController.h"
#import "GamaLoginViewModel.h"

@implementation HelloSDK

+ (instancetype)shareSDK
{
    static HelloSDK *_helloSDK;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _helloSDK = [[HelloSDK alloc] init];
    });
    
    return _helloSDK;
}

- (instancetype)init
{
    if (self = [super init]) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(_noteListener:)
                                                     name:NOTE_hello_agreement_done
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteListener:) name:HELLO_NOTI_LOGIN_BACK object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteListener:) name:GAMA_THIRD_LOGIN_SUCCESS object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteListener:) name:GAMA_THIRD_LOGIN_FAIL object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteListener:) name:_GAMA_NOTIFICATION_SUCCESS object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:[HelloLoginView alloc] selector:@selector(_loginNoteLisetner:) name:GAMA_THIRD_BINDING_SUCCESS object:nil];

    }
    return self;
}

- (void)h_login
{
    UIViewController *presentedVC = nil;
    NSString *loginType = nil;
    NSString *userNameID = nil;
    [GamaUtils getStateLoginWithType:&loginType andUserName:&userNameID];
    if (loginType && ![loginType isEqualToString:@""] && ![loginType isEqualToString:_SDK_PLAT_APPLE]) {
        // auto login
        AutoLoginType mType = AutoLogin_Gama;
        if ([loginType isEqualToString:@"fb"]) {
            mType = AutoLogin_FB;
        }
        if ([loginType isEqualToString:_SDK_PLAT_GC]) {
            mType = AutoLogin_GC;
        }
        if ([loginType isEqualToString:_SDK_PLAT_TWITTER]) {
            mType = AutoLogin_Twitter;
        }
        if ([loginType isEqualToString:_SDK_PLAT_APPLE]) {
            mType = AutoLogin_Apple;
        }
        
        AutoLoginView *autoView = [[AutoLoginView alloc] initwithType:mType];
        [appTopViewController.view addSubview:autoView];
        return;
    }
    //dbTest:为什么这里要vfConfig==NO
    if (([loginType isEqualToString:_SDK_PLAT_SELF] && GamaLoginViewModel.model.vfConfig == NO)|| [loginType isEqualToString:@"mac"]) {
        // 多次调用 login 接口时，避免页面重复生成与添加
        if (![appTopViewController.view viewWithTag:kFirstLoginViewTag]) {
            HelloLoginView *aview = [[HelloLoginView alloc] initWithMode:HelloLogin_HadLogin];
            [aview setTag:kFirstLoginViewTag];
            [appTopViewController.view addSubview:aview];
        } else {
            [[appTopViewController.view viewWithTag:kFirstLoginViewTag] removeFromSuperview];
        }
    } else if([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"ja-JP"]){
        if (![appTopViewController.view viewWithTag:kMainLoginViewTag]) {
//            presentedVC = [[KRLoginViewController alloc] initWithMode:HelloMain_MySpace];
//            [presentedVC.view setTag:kMainLoginViewTag];
//            [appTopViewController.view addSubview:presentedVC.view];
        } else {
            [[appTopViewController.view viewWithTag:kMainLoginViewTag] removeFromSuperview];
        }
    }  else {
        // 多次调用 login 接口时，避免页面重复生成与添加
        if (![appTopViewController.view viewWithTag:kMainLoginViewTag]) {
            presentedVC = [[HelloMain alloc] initWithMode:HelloMain_MySpace];
            [presentedVC.view setTag:kMainLoginViewTag];
            [appTopViewController.view addSubview:presentedVC.view];
        } else {
            [[appTopViewController.view viewWithTag:kMainLoginViewTag] removeFromSuperview];
        }
    }
}


#pragma mark - Note

- (void)_noteListener:(NSNotification *)note
{
//    [HelloUtils removeLogoutSign];
}

@end
