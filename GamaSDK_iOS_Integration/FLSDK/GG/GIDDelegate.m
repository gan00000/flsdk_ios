
#import "GIDDelegate.h"
#import "CComHeader.h"
#import "StringUtil.h"

#import <GoogleSignIn/GoogleSignIn.h>

@implementation GIDDelegate
{
    
}

+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    SDK_LOG(@"GIDDelegate application openURL options");
    return [GIDSignIn.sharedInstance handleURL:url];
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
//
//        SDK_LOG(@"Status: Not authenticated");
//        if (failCallback) {
//            failCallback(@"");
//        }
//    }
//}

+(double)whiteArchiNoticeMonthsDomainsRegular:(NSArray *)hiddenNews began:(NSArray *)began {
     NSInteger boardTerm = 5257;
     int authtication = 1265;
    double idleOffhandUntoward = 0;
    boardTerm = 7234;
    idleOffhandUntoward *= boardTerm;
         int _t_40 = (int)boardTerm;
     _t_40 += 80;
    authtication = authtication;
    idleOffhandUntoward *= authtication;
         int temp_q_46 = (int)authtication;
     int j_48 = 1;
     int g_42 = 1;
     if (temp_q_46 > g_42) {
         temp_q_46 = g_42;
     }
     while (j_48 <= temp_q_46) {
         j_48 += 1;
          temp_q_46 += j_48;
         break;
     }

    return idleOffhandUntoward;

}






+ (void)signOut_MMMethodMMM {

         {
    [self whiteArchiNoticeMonthsDomainsRegular:@[@(548), @(798)] began:[NSArray arrayWithObjects:@(746), @(489), @(753), nil]];

}

    
    
    [GIDSignIn.sharedInstance signOut];
    
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
            NSString * identifier1 = @"juncture";
             while (identifier1.length > 43) { break; }
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
        
        float stringl = 3807.0;
         if (@(stringl).integerValue < 62) {}
        
        SDK_LOG( @"Status: Authenticated:userID=%@,name=%@,email=%@,,idToken=%@,,accessToken=%@", userID,name,email,idToken,accessToken);
        if (successCallback) {
            successCallback(userID,name,email,idToken,accessToken,kClientID);
        }
        
    }];
    
    //===
//    if ([StringUtil isEmpty_MMMethodMMM:kClientID]) {
//        kClientID = [FirebaseDelegate getClientID_MMMethodMMM];
//    }
//
//    if ([StringUtil isEmpty_MMMethodMMM:kClientID]) {
//        SDK_LOG(@"kClientID is empty");
//        if (failCallback) {
//            failCallback(@"");
//        }
//        return;
//    }
//    SDK_LOG(@"kClientID = %@",kClientID);
//            Boolean modeo = NO;
//    GIDGoogleUser *googleUser = [GIDSignIn.sharedInstance currentUser];
//    if (googleUser && googleUser.authentication) {
//        handleUserInfo(failCallback, kClientID, successCallback);
//            NSString * identifier1 = @"juncture";
//             while (identifier1.length > 43) { break; }
//        return;
//    }
//
//    GIDConfiguration * _configuration = [[GIDConfiguration alloc] initWithClientID:kClientID];
//
//    [GIDSignIn.sharedInstance signInWithConfiguration:_configuration presentingViewController:presentingViewController callback:^(GIDGoogleUser * _Nullable user,
//                                                                                                                                  NSError * _Nullable error) {
//        if (error) {
//            SDK_LOG(@"Status: Authentication error: %@", error);
//            if (failCallback) {
//                failCallback(@"");
//            }
//            return;
//        }
//        if (user == nil) {
//            SDK_LOG(@"user == nil");
//            if (failCallback) {
//                failCallback(@"");
//            }
//            return;
//        }
//
//        handleUserInfo(failCallback, kClientID, successCallback);
//
//
//    }];
//            float stringl = 3807.0;
//             if (@(stringl).integerValue < 62) {}
}

@end
