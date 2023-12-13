

#import "DominotAlternhometic.h"
#import "CComHeader.h"
#import "PharmacatoryExperience.h"

#import <GoogleSignIn/GoogleSignIn.h>

@implementation DominotAlternhometic
{
    
}


+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    SDK_LOG(@"DominotAlternhometic application openURL options");
    return [GIDSignIn.sharedInstance handleURL:url];
}

+(void)loginWithClientID_MMMethodMMM:(NSString *)kClientID
presentingViewController:(UIViewController *)presentingViewController
         successCallback_MMMethodMMM:(void(^)(NSString *userId,NSString *name,NSString *email,NSString *idToken,NSString *accessToken,NSString * clientId))successCallback
            failCallback_MMMethodMMM:(void(^)(NSString *msg))failCallback
          cancelCallback_MMMethodMMM:(void(^)(NSString *msg))cancelCallback
{
    
    if ([PharmacatoryExperience isEmpty_MMMethodMMM:kClientID]) {
        kClientID = [UndencoverwardNeedesque getClientID_MMMethodMMM];
    }
    
    if ([PharmacatoryExperience isEmpty_MMMethodMMM:kClientID]) {
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

        NSString *idToken = user.idToken.tokenString;
        NSString *accessToken = user.accessToken.tokenString;
        
        
        SDK_LOG( @"Status: Authenticated:userID=%@,name=%@,email=%@,,idToken=%@,,accessToken=%@", userID,name,email,idToken,accessToken);
        if (successCallback) {
            successCallback(userID,name,email,idToken,accessToken,kClientID);
        }
        
    }];
    
}

+ (void)signOut_MMMethodMMM {
    
    
    [GIDSignIn.sharedInstance signOut];
    
}

@end
