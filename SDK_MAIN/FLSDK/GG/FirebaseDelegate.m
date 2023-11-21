//
//  FirebaseDelegate.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/22.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "FirebaseDelegate.h"
//@import FirebaseCore;
//@import FirebaseAuth;
#import <FirebaseCore/FirebaseCore.h>
#import <FirebaseAuth/FirebaseAuth.h>
#import <FirebaseMessaging/FIRMessaging.h>

@implementation FirebaseDelegate
    
+ (BOOL)application:(id)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Use Firebase library to configure APIs
    
    
    return YES;
}

+(NSString *)getClientID_MMMethodMMM
{
    return [FIRApp defaultApp].options.clientID;
}


@end
