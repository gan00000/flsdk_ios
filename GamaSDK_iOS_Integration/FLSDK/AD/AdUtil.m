//
//  AdUtil.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/28.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "AdUtil.h"

#import <AdSupport/AdSupport.h>
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AdSupport/ASIdentifierManager.h>

@implementation AdUtil


+ (void)requestIDFA {
    
    if (@available(iOS 14, *)) {
        // iOS14及以上版本需要先请求权限
        [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
            // 获取到权限后，依然使用老方法获取idfa
            if (status == ATTrackingManagerAuthorizationStatusAuthorized) {
                NSString *idfa = [[ASIdentifierManager sharedManager].advertisingIdentifier UUIDString];
                NSLog(@"%@",idfa);
            } else {
                NSLog(@"请在设置-隐私-跟踪中允许App请求跟踪");
            }
        }];
    } else {
        // iOS14以下版本依然使用老方法
        // 判断在设置-隐私里用户是否打开了广告跟踪
        if ([[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled]) {
            NSString *idfa = [[ASIdentifierManager sharedManager].advertisingIdentifier UUIDString];
            NSLog(@"%@",idfa);
        } else {
            NSLog(@"请在设置-隐私-广告中打开广告跟踪功能");
        }
    }
}

//+(void)saveIdfa:(NSString *)idfa{
//    
//    [[NSUserDefaults standardUserDefaults] setValue:idfa forKey:@"sdk_local_idfa"];
//    [[NSUserDefaults standardUserDefaults]synchronize];
//}
//
//- (NSString *)getLocalIdfa
//{
//    return [[NSUserDefaults standardUserDefaults] valueForKey:@"sdk_local_idfa"];
//}

@end
