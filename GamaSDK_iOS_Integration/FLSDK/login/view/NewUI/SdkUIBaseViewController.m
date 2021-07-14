//
//  SdkUIBaseViewController.m
//  SDK_TEST
//
//  Created by ganyuanrong on 2021/7/12.
//  Copyright © 2021 Gama. All rights reserved.
//

#import "SdkUIBaseViewController.h"
#import "CComHeader.h"
#import "UINavigationBar+Awesome.h"
#import "UIColor+HexColor.h"
#import "CCSDKResponse.h"
#import "GamaUtils.h"
#import "SdkHeader.h"
#import "FLSDK.h"

@interface SdkUIBaseViewController ()



@end

@implementation SdkUIBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //修改返回键箭头颜色和文字，不知道为何是这两个属性，并且在SdkBaseNavViewController中修改却不成功
    self.navigationController.navigationBar.topItem.title = @"";
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
}

+ (instancetype)createViewController
{
    //读取bundle
    NSURL *abundleURL = [[NSBundle mainBundle] URLForResource:@"SDKResBundle"
                                                   withExtension:@"bundle"];
    NSBundle *aBundle = nil;
    if (abundleURL) {
        aBundle = [NSBundle bundleWithURL:abundleURL];
    }
    
    return [UIStoryboard storyboardWithName:[self storyboardName] bundle:aBundle].instantiateInitialViewController;
    
//    return kLoadStoryboardWithName(resPath);
}

+(NSString *)storyboardName
{
    return NSStringFromClass([self class]);
}


-(void) handleLoginOrRegSuccess:(id)responseData thirdPlate:(NSString *)thirdPlate
{
    CCSDKResponse *cc = (CCSDKResponse *)responseData;
    cc.thirdPlate = thirdPlate;
    SDK_DATA.mCCSDKResponse = cc;
    [[ConfigCoreUtil share] saveLoginType:thirdPlate];
    [SdkUserInfoModel shareInfoModel].userId = cc.userId;
    [SdkUserInfoModel shareInfoModel].accessToken = cc.accessToken;
    //[SdkUserInfoModel shareInfoModel].loginType = thirdPlate;
    [SdkUserInfoModel shareInfoModel].loginTypeStr = thirdPlate;
    [SdkUserInfoModel shareInfoModel].timestamp = cc.timestamp;
    
    if ([_SDK_PLAT_SELF isEqualToString:thirdPlate]) {
        //是否需要保存账号密码
        if (SDK_DATA.mCCSDKResponse.account && SDK_DATA.mCCSDKResponse.password) {
            if (SDK_DATA.mCCSDKResponse.code == 1001) {//注册
//                [GamaAdInterface allEventReportWithEventName:GAMESWORD_EVENT_REGISTER parameters:@{@"userId":cc.userId}];
                [[ConfigCoreUtil share] saveAccount:SDK_DATA.mCCSDKResponse.account password:SDK_DATA.mCCSDKResponse.password updateTime:YES];
            }else if([ConfigCoreUtil share].isSaveAccountInfo){//登录并勾选记住密码
//                [GamaAdInterface allEventReportWithEventName:GAMESWORD_EVENT_LOGIN parameters:@{@"userId":cc.userId}];
                [[ConfigCoreUtil share] saveAccount:SDK_DATA.mCCSDKResponse.account password:SDK_DATA.mCCSDKResponse.password updateTime:YES];
            }
            
        }

    }
    
    if (SDK_DATA.mCCSDKResponse.code == 1001) {//注册
        [GamaAdInterface allEventReportWithEventName:GAMESWORD_EVENT_REGISTER parameters:@{@"userId":cc.userId}];
        
    }else {//登录
        [GamaAdInterface allEventReportWithEventName:GAMESWORD_EVENT_LOGIN parameters:@{@"userId":cc.userId}];
        
    }
    
    if ([FLSDK share].loginCompletionHandler) {
        LoginData *loginData = [[LoginData alloc] init];
        loginData.accessToken = SDK_DATA.mCCSDKResponse.accessToken;
        loginData.userId = SDK_DATA.mCCSDKResponse.userId;
        loginData.timestamp = SDK_DATA.mCCSDKResponse.timestamp;
        
        [FLSDK share].loginCompletionHandler(loginData);
    }
    
    [self.navigationController dismissViewControllerAnimated:NO completion:^{
        
    }];
}


@end
