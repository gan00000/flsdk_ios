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

@implementation GIDDelegate
{
    
}

static void handleUserInfo(void (^ _Nonnull failCallback)(NSString *), NSString * _Nonnull kClientID, void (^ _Nonnull successCallback)(NSString *, NSString *, NSString *, NSString *, NSString *, NSString *)) {
    
    GIDGoogleUser *googleUser = [GIDSignIn.sharedInstance currentUser];
    if (googleUser.authentication) {
        
        NSString *userID = googleUser.userID;
        NSString *name = googleUser.profile.name;
        NSString *email = googleUser.profile.email;
        
        NSString *idToken = googleUser.authentication.idToken;
        NSString *accessToken = googleUser.authentication.accessToken;
        
        SDK_LOG( @"Status: Authenticated:userID=%@,name=%@,email=%@,,idToken=%@,,accessToken=%@", userID,name,email,idToken,accessToken);
        if (successCallback) {
            successCallback(userID,name,email,idToken,accessToken,kClientID);
        }
    } else {
        // To authenticate, use Google Sign-In button.
        SDK_LOG(@"Status: Not authenticated");
        if (failCallback) {
            failCallback(@"");
        }
    }
}

+(void)loginWithClientID:(NSString *)kClientID
presentingViewController:(UIViewController *)presentingViewController
         successCallback:(void(^)(NSString *userId,NSString *name,NSString *email,NSString *idToken,NSString *accessToken,NSString * clientId))successCallback
            failCallback:(void(^)(NSString *msg))failCallback
          cancelCallback:(void(^)(NSString *msg))cancelCallback
{
    //    NSString *kClientID = @"";
    if ([StringUtil isEmpty:kClientID]) {
        kClientID = [FirebaseDelegate getClientID];
    }
    
    if ([StringUtil isEmpty:kClientID]) {
        SDK_LOG(@"kClientID is empty");
        if (failCallback) {
            failCallback(@"");
        }
        return;
    }
    SDK_LOG(@"kClientID = %@",kClientID);
    GIDGoogleUser *googleUser = [GIDSignIn.sharedInstance currentUser];
    if (googleUser && googleUser.authentication) {
        handleUserInfo(failCallback, kClientID, successCallback);
        return;
    }
    
    GIDConfiguration * _configuration = [[GIDConfiguration alloc] initWithClientID:kClientID];
    
    [GIDSignIn.sharedInstance signInWithConfiguration:_configuration presentingViewController:presentingViewController callback:^(GIDGoogleUser * _Nullable user,
                                                                                                                                  NSError * _Nullable error) {
        if (error) {
            SDK_LOG(@"Status: Authentication error: %@", error);
            if (failCallback) {
                failCallback(@"");
            }
            return;
        }
        if (user == nil) {
            SDK_LOG(@"user == nil");
            if (failCallback) {
                failCallback(@"");
            }
            return;
        }
        
        handleUserInfo(failCallback, kClientID, successCallback);
        
        // Your user is signed in!
    }];
}

+ (void)signOut {
    
    
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
