//
//  FirebaseDelegate.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/22.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//@import FirebaseCore;
//@import FirebaseAuth;
#import <FirebaseCore/FirebaseCore.h>
#import <FirebaseAuth/FirebaseAuth.h>
#import <FirebaseMessaging/FIRMessaging.h>

NS_ASSUME_NONNULL_BEGIN

@interface FirebaseDelegate : NSObject

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;

+(NSString *)getClientID_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
