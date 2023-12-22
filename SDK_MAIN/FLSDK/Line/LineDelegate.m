//
//  LineDelegate.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/21.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "LineDelegate.h"
//#import "LineSDK/LineSDK.h"

//@import LineSDK;
//@import LineSDKObjC;

#import "CComHeader.h"

@interface LineDelegate() //<LineSDKLoginDelegate>

@property (nonatomic) LineCallBack successCallBack_MMMPRO;
@property (nonatomic) LineCallBack failCallBack_MMMPRO;

@end
@implementation LineDelegate

+ (instancetype)share{
    
    static LineDelegate *mLineDelegate = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mLineDelegate = [[LineDelegate alloc] init];
    });
    
    return mLineDelegate;
}


//+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
//{
//    return YES;
//}
//
//+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
//{
////    [[LineSDKLoginManager sharedManager] application:application open:url options:<#(NSDictionary<UIApplicationOpenURLOptionsKey,id> * _Nonnull)#>];
//    return NO;
////    return [[LineSDKLogin sharedInstance] handleOpenURL:url];
//
//}


+(BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary *)options
{
//    return [[LineSDKLoginManager sharedManager] application:application open:url options:options];
    
//    return [[LineSDKLogin sharedInstance] handleOpenURL:url];
    return NO;
}

-(void)startLoginWithCallBack_MMMethodMMM:(LineCallBack)successCallBack fail_MMMethodMMM:(LineCallBack)failCallBack
{
    self.successCallBack_MMMPRO = successCallBack;
    self.failCallBack_MMMPRO = failCallBack;
    
//    [LineSDKLogin sharedInstance].delegate = self;
//    [[LineSDKLogin sharedInstance] startLoginWithPermissions:@[wwwww_tag_wwwww_profile]];
    
}


/**
 
- (void)didLogin:(LineSDKLogin *)login credential:(nullable LineSDKCredential *)credential profile:(nullable LineSDKProfile *)profile error:(nullable NSError *)error {


    if (error) {
        // Login failed with an error. Use the error parameter to identify the problem.
        NSLog(@"Error: %@", error.localizedDescription);
        if (self.failCallBack) {
            self.failCallBack(@"",@"",@"");
        }
    }else {

        // Login success. Extracts the access token, user profile ID, display name, status message, and profile picture.
        NSString * accessToken = credential.accessToken.accessToken;
        NSString * userID = profile.userID;
        NSString * displayName = profile.displayName;
        NSString * statusMessage = profile.statusMessage;
        NSURL * pictureURL = profile.pictureURL;

        NSString * pictureUrlString;

        // If the user doesn't have a profile picture set, pictureURL will be nil
        if (pictureURL) {
            pictureUrlString = profile.pictureURL.absoluteString;
        }
        SDK_LOG(@"accessToken=%@,userID=%@,displayName=%@",accessToken,userID,displayName);
        if (self.successCallBack) {
            self.successCallBack(accessToken, userID, displayName);
        }

    }

}
 */
@end
