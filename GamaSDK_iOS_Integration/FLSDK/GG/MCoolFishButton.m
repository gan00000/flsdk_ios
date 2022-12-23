
#import "MCoolFishButton.h"
#import "CComHeader.h"
#import "MCoolFishSecurityHome.h"

#import <GoogleSignIn/GoogleSignIn.h>

@implementation MCoolFishButton
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
        
        SDK_LOG(@"Status: Not authenticated");
        if (failCallback) {
            failCallback(@"");
        }
    }
}


+(void)loginWithClientID_MMMethodMMM:(NSString *)kClientID
presentingViewController:(UIViewController *)presentingViewController
         successCallback_MMMethodMMM:(void(^)(NSString *userId,NSString *name,NSString *email,NSString *idToken,NSString *accessToken,NSString * clientId))successCallback
            failCallback_MMMethodMMM:(void(^)(NSString *msg))failCallback
          cancelCallback_MMMethodMMM:(void(^)(NSString *msg))cancelCallback
{
    
    if ([MCoolFishSecurityHome isEmpty_MMMethodMMM:kClientID]) {
        kClientID = [MCoolFishEncodingWelcome getClientID_MMMethodMMM];
    }
    
    if ([MCoolFishSecurityHome isEmpty_MMMethodMMM:kClientID]) {
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
        
        
    }];
}


+ (void)signOut_MMMethodMMM {
    
    
    [GIDSignIn.sharedInstance signOut];
    
}

@end
