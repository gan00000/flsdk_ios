//
//  GIDDelegate.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/21.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "GIDDelegate.h"
#import "CComHeader.h"
//@import GoogleSignIn;

@implementation GIDDelegate
{
//    GIDConfiguration *_configuration;
}

-(void)loginWithClientID:(NSString *)kClientID callback:(void(^)(NSString *userId,NSString *name,NSString *email))callback
{
//    NSString *kClientID = @"";
//    _configuration = [[GIDConfiguration alloc] initWithClientID:kClientID];
//
//    [GIDSignIn.sharedInstance signInWithConfiguration:_configuration presentingViewController:self callback:^(GIDGoogleUser * _Nullable user,
//                                 NSError * _Nullable error) {
//         if (error) {
//             SDK_LOG(@"Status: Authentication error: %@", error);
//             return;
//
//         }
//         if (user == nil) {
//
//             return;
//         }
//
//        GIDGoogleUser *googleUser = [GIDSignIn.sharedInstance currentUser];
//        if (googleUser.authentication) {
//
//            NSString *userID = googleUser.userID;
//            NSString *name = googleUser.profile.name;
//            NSString *email = googleUser.profile.email;
//            SDK_LOG( @"Status: Authenticated:userID=%@,name=%@,email=%@", userID,name,email);
//        } else {
//          // To authenticate, use Google Sign-In button.
//            SDK_LOG(@"Status: Not authenticated");
//        }
//
//       // Your user is signed in!
//   }];
}

@end
