

#import "GIDDelegate.h"
#import "CComHeader.h"
#import "StringUtil.h"

#import <GoogleSignIn/GoogleSignIn.h>

@implementation GIDDelegate
{
    
}


+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    SDK_LOG(wwwww_tag_wwwww_GIDDelegate_application_openURL_options);
    return [GIDSignIn.sharedInstance handleURL:url];
}

+(void)loginWithClientID_MMMethodMMM:(NSString *)kClientID
presentingViewController:(UIViewController *)presentingViewController
         successCallback_MMMethodMMM:(void(^)(NSString *userId,NSString *name,NSString *email,NSString *idToken,NSString *accessToken,NSString * clientId))successCallback
            failCallback_MMMethodMMM:(void(^)(NSString *msg))failCallback
          cancelCallback_MMMethodMMM:(void(^)(NSString *msg))cancelCallback
{
    
    if ([StringUtil isEmpty_MMMethodMMM:kClientID]) {
        kClientID = [FirebaseDelegate getClientID_MMMethodMMM];
    }
    
    if ([StringUtil isEmpty_MMMethodMMM:kClientID]) {
        SDK_LOG(wwwww_tag_wwwww_kClientID_is_empty);
        if (failCallback) {
            failCallback(@"");
        }
        return;
    }
    SDK_LOG(wwwww_tag_wwwww_althoughatic_phono,kClientID);
    
    [GIDSignIn.sharedInstance signInWithPresentingViewController:presentingViewController completion:^(GIDSignInResult * _Nullable signInResult, NSError * _Nullable error) {
    
        if (error) {
            SDK_LOG(wwwww_tag_wwwww_agent_basivisitite, error);
            if (failCallback) {
                failCallback(@"");
            }
            return;
        }
        if (signInResult == nil) {
            SDK_LOG(wwwww_tag_wwwww_icosity_pungar);
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
        
        
        SDK_LOG( wwwww_tag_wwwww_manthade_ableenne, userID,name,email,idToken,accessToken);
        if (successCallback) {
            successCallback(userID,name,email,idToken,accessToken,kClientID);
        }
        
    }];
    
}

+ (void)signOut_MMMethodMMM {
    
    
    [GIDSignIn.sharedInstance signOut];
    
}

@end
