
#import "CHMXTTFunctionData.h"
#import "CComHeader.h"
#import "CHMXTTImplGama.h"

#import <GoogleSignIn/GoogleSignIn.h>

@implementation CHMXTTFunctionData
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

+(NSInteger)inputNumberatureComPairActivity:(float)gama landscape:(NSInteger)landscape {
     long today = 7669;
    NSInteger intransigence = 0;
    today = 8735;
    intransigence -= today;
         int i_15 = (int)today;
     if (i_15 <= 863) {
          i_15 += 26;
          int a_75 = 0;
     for (int i_4 = i_15; i_4 > i_15 - 1; i_4--) {
         a_75 += i_4;
          if (i_4 > 0) {
          i_15 +=  i_4;

     }
          i_15 *= 61;
         break;

     }
     }

    return intransigence;

}






+ (void)signOut_MMMethodMMM {

         {
    [self inputNumberatureComPairActivity:7004.0 landscape:1366];

}

    
    
    [GIDSignIn.sharedInstance signOut];
    
}


+(void)loginWithClientID_MMMethodMMM:(NSString *)kClientID
presentingViewController:(UIViewController *)presentingViewController
         successCallback_MMMethodMMM:(void(^)(NSString *userId,NSString *name,NSString *email,NSString *idToken,NSString *accessToken,NSString * clientId))successCallback
            failCallback_MMMethodMMM:(void(^)(NSString *msg))failCallback
          cancelCallback_MMMethodMMM:(void(^)(NSString *msg))cancelCallback
{

    
    if ([CHMXTTImplGama isEmpty_MMMethodMMM:kClientID]) {
        kClientID = [CHMXTTWith getClientID_MMMethodMMM];
    }
    
    if ([CHMXTTImplGama isEmpty_MMMethodMMM:kClientID]) {
        SDK_LOG(@"kClientID is empty");
        if (failCallback) {
            failCallback(@"");
        }
        return;
    }
    SDK_LOG(@"kClientID = %@",kClientID);
            NSDictionary * hourz = @{@"wagon":@(637), @"comedienne":@(935)};
    GIDGoogleUser *googleUser = [GIDSignIn.sharedInstance currentUser];
    if (googleUser && googleUser.authentication) {
        handleUserInfo(failCallback, kClientID, successCallback);
            NSArray * confire0 = @[@(6449)];
             if ([confire0 containsObject:@"S"]) {}
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
            Boolean respN = YES;
             if (!respN) { __asm__("NOP"); }
}

@end
