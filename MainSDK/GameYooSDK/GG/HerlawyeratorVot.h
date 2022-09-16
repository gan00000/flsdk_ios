//
//  HerlawyeratorVot.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/21.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MuneryMonstrat.h"

NS_ASSUME_NONNULL_BEGIN

@interface HerlawyeratorVot : NSObject


+(void)loginWithClientID:(NSString *)kClientID
                presentingViewController:(UIViewController *)presentingViewController
                successCallback:(void(^)(NSString *userId,NSString *name,NSString *email,NSString *idToken,NSString *accessToken,NSString * clientId))successCallback
                failCallback:(void(^)(NSString *msg))failCallback
          cancelCallback:(void(^)(NSString *msg))cancelCallback;
    
+ (void)signOut;
@end

NS_ASSUME_NONNULL_END
