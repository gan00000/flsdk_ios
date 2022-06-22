//
//  FirebaseDelegate.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/22.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "FirebaseDelegate.h"
@import FirebaseCore;
@import FirebaseAuth;

@implementation FirebaseDelegate
    
+ (BOOL)application:(id)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Use Firebase library to configure APIs
    [FIRApp configure];
    
    return YES;
}

@end
