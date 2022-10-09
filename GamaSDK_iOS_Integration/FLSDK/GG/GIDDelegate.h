//
//  GIDDelegate.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/21.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FirebaseDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface GIDDelegate : NSObject


+(void)loginWithClientID_MMMethodMMM:(NSString *)kClientID
                presentingViewController:(UIViewController *)presentingViewController
                successCallback_MMMethodMMM:(void(^)(NSString *userId,NSString *name,NSString *email,NSString *idToken,NSString *accessToken,NSString * clientId))successCallback
                failCallback_MMMethodMMM:(void(^)(NSString *msg))failCallback
          cancelCallback_MMMethodMMM:(void(^)(NSString *msg))cancelCallback;
    
+ (void)signOut_MMMethodMMM;
@end

NS_ASSUME_NONNULL_END
