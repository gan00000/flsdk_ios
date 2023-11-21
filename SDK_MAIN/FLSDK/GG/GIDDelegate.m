//
//  GIDDelegate.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/21.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "GIDDelegate.h"
#import "CComHeader.h"
#import "StringUtil.h"

//@import GoogleSignIn;
#import <GoogleSignIn/GoogleSignIn.h>

@implementation GIDDelegate
{
    
}

//static void handleUserInfo(void (^ _Nonnull failCallback)(NSString *), NSString * _Nonnull kClientID, void (^ _Nonnull successCallback)(NSString *, NSString *, NSString *, NSString *, NSString *, NSString *)) {
//
//    GIDGoogleUser *googleUser = [GIDSignIn.sharedInstance currentUser];
//    if (googleUser.authentication) {
//
//        NSString *userID = googleUser.userID;
//        NSString *name = googleUser.profile.name;
//        NSString *email = googleUser.profile.email;
//
//        NSString *idToken = googleUser.authentication.idToken;
//        NSString *accessToken = googleUser.authentication.accessToken;
//
//        SDK_LOG( @"Status: Authenticated:userID=%@,name=%@,email=%@,,idToken=%@,,accessToken=%@", userID,name,email,idToken,accessToken);
//        if (successCallback) {
//            successCallback(userID,name,email,idToken,accessToken,kClientID);
//        }
//    } else {
//        // To authenticate, use Google Sign-In button.
//        SDK_LOG(@"Status: Not authenticated");
//        if (failCallback) {
//            failCallback(@"");
//        }
//    }
//}

+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    SDK_LOG(@"GIDDelegate application openURL options");
    return [GIDSignIn.sharedInstance handleURL:url];
}

+(void)loginWithClientID_MMMethodMMM:(NSString *)kClientID
presentingViewController:(UIViewController *)presentingViewController
         successCallback_MMMethodMMM:(void(^)(NSString *userId,NSString *name,NSString *email,NSString *idToken,NSString *accessToken,NSString * clientId))successCallback
            failCallback_MMMethodMMM:(void(^)(NSString *msg))failCallback
          cancelCallback_MMMethodMMM:(void(^)(NSString *msg))cancelCallback
{
    //    NSString *kClientID = @"";
    if ([StringUtil isEmpty_MMMethodMMM:kClientID]) {
        kClientID = [FirebaseDelegate getClientID_MMMethodMMM];
    }
    
    if ([StringUtil isEmpty_MMMethodMMM:kClientID]) {
        SDK_LOG(@"kClientID is empty");
        if (failCallback) {
            failCallback(@"");
        }
        return;
    }
    SDK_LOG(@"google kClientID = %@",kClientID);
    
    [GIDSignIn.sharedInstance signInWithPresentingViewController:presentingViewController completion:^(GIDSignInResult * _Nullable signInResult, NSError * _Nullable error) {
    
        if (error) {
            SDK_LOG(@"gid signInWithPresentingViewController error: %@", error);
            if (failCallback) {
                failCallback(@"");
            }
            return;
        }
        if (signInResult == nil) {
            SDK_LOG(@"signInResult == nil");
            if (failCallback) {
                failCallback(@"");
            }
            return;
        }
        

        GIDGoogleUser *user = signInResult.user;

        NSString *userID = user.userID;
        NSString *email = user.profile.email;

        NSString *name = user.profile.name;
//        NSString *givenName = user.profile.givenName;
//        NSString *familyName = user.profile.familyName;

        NSString *idToken = user.idToken.tokenString;
        NSString *accessToken = user.accessToken.tokenString;
        
//        NSURL *profilePic = [user.profile imageURLWithDimension:320];
        
        SDK_LOG( @"Status: Authenticated:userID=%@,name=%@,email=%@,,idToken=%@,,accessToken=%@", userID,name,email,idToken,accessToken);
        if (successCallback) {
            successCallback(userID,name,email,idToken,accessToken,kClientID);
        }
        
    }];
    
}

+ (void)signOut_MMMethodMMM {
    
    
    [GIDSignIn.sharedInstance signOut];//登出会重新请求认证
    
//    [GIDSignIn.sharedInstance disconnectWithCallback:^(NSError * _Nullable error) {
//        if (error) {
//
//            SDK_LOG(@"Status: Failed to disconnect: %@",error);
//        } else {
//            SDK_LOG(@"Status: Disconnected");
//        }
//
//    }];
}

@end
