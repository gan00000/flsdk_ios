//
//  GIDDelegate.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/21.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "GIDDelegate.h"
#import "CComHeader.h"

@implementation GIDDelegate
{
    GIDConfiguration *_configuration;
}

-(void)loginWithClientID:(NSString *)kClientID
                presentingViewController:(UIViewController *)presentingViewController
                successCallback:(void(^)(NSString *userId,NSString *name,NSString *email))successCallback
                failCallback:(void(^)(NSString *msg))failCallback
                cancelCallback:(void(^)(NSString *msg))cancelCallback
{
//    NSString *kClientID = @"";
    _configuration = [[GIDConfiguration alloc] initWithClientID:kClientID];

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

        GIDGoogleUser *googleUser = [GIDSignIn.sharedInstance currentUser];
        if (googleUser.authentication) {

            NSString *userID = googleUser.userID;
            NSString *name = googleUser.profile.name;
            NSString *email = googleUser.profile.email;
            SDK_LOG( @"Status: Authenticated:userID=%@,name=%@,email=%@", userID,name,email);
            if (successCallback) {
                successCallback(userID,name,email);
            }
        } else {
          // To authenticate, use Google Sign-In button.
            SDK_LOG(@"Status: Not authenticated");
            if (failCallback) {
                failCallback(@"");
            }
        }

       // Your user is signed in!
   }];
}

@end
