

#import "FewenceResponsibilityivity.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import "BreviVincy.h"
#import "ColdicalProsly.h"

@interface FewenceResponsibilityivity()<ASAuthorizationControllerPresentationContextProviding,ASAuthorizationControllerDelegate>
@property (copy, atomic) AppleLoginSuccess impSuccess;
@property (copy, atomic) AppleLoginError impError;
@end

@implementation FewenceResponsibilityivity
{
    UIView *presentView;
}
@synthesize appleThirdID = _appleThirdID;

+ (instancetype)share{
    
    static FewenceResponsibilityivity *_sAppleLogin = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sAppleLogin = [[FewenceResponsibilityivity alloc] init];
    });
    
    return _sAppleLogin;
}

#pragma mark - Actions

- (void)handleAuthrization:(UIView *_Nullable)mView{
    
    presentView = mView;
    
    if (@available(iOS 13.0, *)) {
        
        
        ASAuthorizationAppleIDProvider *appleIDProvider = [ASAuthorizationAppleIDProvider new];
        
        
        ASAuthorizationAppleIDRequest *request = appleIDProvider.createRequest;
        
        
        request.requestedScopes = @[ASAuthorizationScopeFullName, ASAuthorizationScopeEmail];
        
        
        ASAuthorizationController *controller = [[ASAuthorizationController alloc] initWithAuthorizationRequests:@[request]];
        
        
        controller.delegate = self;
        
        
        controller.presentationContextProvider = self;
        
        
        [controller performRequests];
    }
}


#pragma mark - Delegate

- (void)authorizationController:(ASAuthorizationController *)controller didCompleteWithAuthorization:(ASAuthorization *)authorization  API_AVAILABLE(ios(13.0)){    

    NSLog(@"%s", __FUNCTION__);
    NSLog(@"%@", controller);
    NSLog(@"%@", authorization);
    NSLog(@"authorization.credential：%@", authorization.credential);

    NSMutableString *mStr = [NSMutableString string];

    if ([authorization.credential isKindOfClass:[ASAuthorizationAppleIDCredential class]]) {
        
        ASAuthorizationAppleIDCredential *appleIDCredential = authorization.credential;
        NSData *authorCode = appleIDCredential.authorizationCode;
        NSString *authorCodeStr = [[NSString alloc] initWithData:authorCode encoding:NSUTF8StringEncoding];
        NSString *user = appleIDCredential.user;
        NSString *token = [[NSString alloc] initWithData:appleIDCredential.identityToken encoding:NSUTF8StringEncoding];
        
        [[NSUserDefaults standardUserDefaults] setValue:user forKey:wwwww_tag_wwwww_GamaAppleCurrentIdentifier];
        [mStr appendString:user?:@""];
        NSString *familyName = appleIDCredential.fullName.familyName;
        [mStr appendString:familyName?:@""];
        NSString *givenName = appleIDCredential.fullName.givenName;
        [mStr appendString:givenName?:@""];
        NSString *email = appleIDCredential.email;
        [mStr appendString:email?:@""];
        NSLog(@"mStr：%@", mStr);
        [mStr appendString:@"\n"];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self saveAppleLastLoginSuccessWithInformation_MMMethodMMM:@{wwwww_tag_wwwww_appleThirdID:user?:@"",wwwww_tag_wwwww_appleToken:token?:@"",wwwww_tag_wwwww_authorizationCode:authorCodeStr?:@""}];
            self.impSuccess(@{wwwww_tag_wwwww_appleThirdID:user?:@"",wwwww_tag_wwwww_appleToken:token?:@"",wwwww_tag_wwwww_authorizationCode:authorCodeStr?:@""});
        });
    } else if ([authorization.credential isKindOfClass:[ASPasswordCredential class]]) {
        
        ASPasswordCredential *passwordCredential = authorization.credential;
        
        NSString *user = passwordCredential.user;
        
        NSString *password = passwordCredential.password;
        [mStr appendString:user?:@""];
        [mStr appendString:password?:@""];
        [mStr appendString:@"\n"];
        NSLog(@"mStr：%@", mStr);
        dispatch_async(dispatch_get_main_queue(), ^{
            [self saveAppleLastLoginSuccessWithInformation_MMMethodMMM:@{wwwww_tag_wwwww_appleThirdID:user?:@"",wwwww_tag_wwwww_appleVerfication:password?:@""}];
            self.impSuccess(@{wwwww_tag_wwwww_appleThirdID:user?:@"",wwwww_tag_wwwww_appleVerfication:password?:@""});
        });

    } else {
        NSLog(wwwww_tag_wwwww_macrsmallenne_radi);
        mStr = [wwwww_tag_wwwww_follow_hibatic mutableCopy];
        NSError *error = nil;
        dispatch_async(dispatch_get_main_queue(), ^{
            self.impError(error);
        });
        [ColdicalProsly showAlertWithMessage_MMMethodMMM:mStr];

    }
}

- (void)authorizationController:(ASAuthorizationController *)controller didCompleteWithError:(NSError *)error  API_AVAILABLE(ios(13.0)){    

    NSLog(@"%s", __FUNCTION__);
    NSLog(@"错误信息：%@", error);
    NSString *errorMsg = nil;
    self.impError(error);
    switch (error.code) {
        case ASAuthorizationErrorCanceled:
            break;
        case ASAuthorizationErrorFailed:
            break;
        case ASAuthorizationErrorInvalidResponse:
            break;
        case ASAuthorizationErrorNotHandled:
            break;
        case ASAuthorizationErrorUnknown:
            break;
    }


    
}


- (ASPresentationAnchor)presentationAnchorForAuthorizationController:(ASAuthorizationController *)controller API_AVAILABLE(ios(13.0)){  

    NSLog(@"调用展示window方法：%s", __FUNCTION__);
    
    if (presentView) {
        return presentView.window;
    }
    return appTopViewController.view.window;
}


- (void)perfomExistingAccountSetupFlows_MMMethodMMM {
    if (@available(iOS 13.0, *)) {
        
        
        ASAuthorizationAppleIDProvider *appleIDProvider = [ASAuthorizationAppleIDProvider new];
        
        
        ASAuthorizationAppleIDRequest *authAppleIDRequest = [appleIDProvider createRequest];
        
        
        ASAuthorizationPasswordRequest *passwordRequest = [[ASAuthorizationPasswordProvider new] createRequest];

        NSMutableArray <ASAuthorizationRequest *>* mArr = [NSMutableArray arrayWithCapacity:2];
        if (authAppleIDRequest) {
            [mArr addObject:authAppleIDRequest];
        }
        if (passwordRequest) {
            [mArr addObject:passwordRequest];
        }
        
        
        NSArray <ASAuthorizationRequest *>* requests = [mArr copy];

        
        
        
        
        ASAuthorizationController *authorizationController = [[ASAuthorizationController alloc] initWithAuthorizationRequests:requests];
        
        
        authorizationController.delegate = self;
        
        
        authorizationController.presentationContextProvider = self;
        
        
        [authorizationController performRequests];
    }
}

- (void)observeAppleSignInState_MMMethodMMM {
    if (@available(iOS 13.0, *)) {
        NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
        [center addObserver:self selector:@selector(handleSignInWithAppleStateChanged_MMMethodMMM:) name:ASAuthorizationAppleIDProviderCredentialRevokedNotification object:nil];
    }
}

- (void)handleSignInWithAppleStateChanged_MMMethodMMM:(id)noti {

    NSLog(@"%s", __FUNCTION__);
    NSLog(@"%@", noti);
}

#pragma mark - Private functions
- (void)observeAuthticationState_MMMethodMMM {

    if (@available(iOS 13.0, *)) {
        
        
        ASAuthorizationAppleIDProvider *appleIDProvider = [ASAuthorizationAppleIDProvider new];
        
        NSString *userIdentifier = [[NSUserDefaults standardUserDefaults] valueForKey:wwwww_tag_wwwww_GamaCurrentIdentifier];

        if (userIdentifier) {
            NSString* __block errorMsg = nil;
            
            
            [appleIDProvider getCredentialStateForUserID:userIdentifier completion:^(ASAuthorizationAppleIDProviderCredentialState credentialState, NSError * _Nullable error) {
                switch (credentialState) {
                        
                    case ASAuthorizationAppleIDProviderCredentialRevoked:
                        
                        errorMsg = wwwww_tag_wwwww_ceptsive_primath;
                        break;
                    case ASAuthorizationAppleIDProviderCredentialAuthorized:
                        
                        errorMsg = wwwww_tag_wwwww_them_wife;
                        break;
                    case ASAuthorizationAppleIDProviderCredentialNotFound:
                        
                        errorMsg = wwwww_tag_wwwww_hoplify_interary;
                        
                        break;
                }
                dispatch_async(dispatch_get_main_queue(), ^{
                    NSLog(wwwww_tag_wwwww_successfulen_perical);
                    NSLog(@"%@", errorMsg);
                });
            }];

        }
    }
}



-(void)makeAppleCallbackSuccessBlock_MMMethodMMM:(AppleLoginSuccess)successBlock
                                andErrorBlock_MMMethodMMM:(AppleLoginError)errorBlock
{
    self.impSuccess = successBlock;
    self.impError = errorBlock;
    
}


- (void)autoLoginAppleAccountWithInformation_MMMethodMMM{
    NSDictionary *tempDic = [self fetchAppleLoginInfo_MMMethodMMM];
    NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:tempDic];
    NSString *appleID = [tempMutableDic[wwwww_tag_wwwww_appleThirdID] copy];
    [tempMutableDic removeObjectForKey:wwwww_tag_wwwww_appleThirdID];
}

- (void)saveAppleLastLoginSuccessWithInformation_MMMethodMMM:(NSDictionary*)info{
    [[NSUserDefaults standardUserDefaults] setObject:info forKey:wwwww_tag_wwwww_GameswordAppleTmp];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSDictionary *)fetchAppleLoginInfo_MMMethodMMM
{
    NSDictionary *infoDic = [[NSUserDefaults standardUserDefaults] objectForKey:wwwww_tag_wwwww_GameswordAppleTmp];
    return infoDic;
}
@end
