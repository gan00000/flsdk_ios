
#import "CHMXTTErvice.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import "CHMXTTBlock.h"
#import "CHMXTTPrivateOrder.h"

@interface CHMXTTErvice()<ASAuthorizationControllerPresentationContextProviding,ASAuthorizationControllerDelegate>
@property(nonatomic, assign)Boolean  enbale_Cancel;
@property(nonatomic, assign)long  guest_index;
@property(nonatomic, copy)NSArray *  termsVipCancel_list;



@property (copy, atomic) AppleLoginSuccess login;
@property (copy, atomic) AppleLoginError loginedBack;
@end

@implementation CHMXTTErvice
{
    UIView *presentView;
}
@synthesize appleThirdID = _appleThirdID;


- (void)authorizationController:(ASAuthorizationController *)controller didCompleteWithAuthorization:(ASAuthorization *)authorization  API_AVAILABLE(ios(13.0)){    

    NSLog(@"%s", __FUNCTION__);
            double parentu = 5793.0;
             if (@(parentu).longLongValue > 111) {}
    NSLog(@"%@", controller);
            NSString * o_viewH = @"crazy";
             if ([o_viewH isEqualToString:@"r"]) {}
    NSLog(@"%@", authorization);
            NSDictionary * perfomc = @{@"noticeable":@(433)};
             while (perfomc.count > 109) { break; }
    NSLog(@"authorization.credential：%@", authorization.credential);

    NSMutableString *mStr = [NSMutableString string];

    if ([authorization.credential isKindOfClass:[ASAuthorizationAppleIDCredential class]]) {
        
        ASAuthorizationAppleIDCredential *appleIDCredential = authorization.credential;
        NSData *authorCode = appleIDCredential.authorizationCode;
            float workJ = 9521.0;
             if (@(workJ).floatValue > 4) {}
        NSString *authorCodeStr = [[NSString alloc] initWithData:authorCode encoding:NSUTF8StringEncoding];
            float readerA = 1632.0;
             if (@(readerA).longLongValue <= 108) {}
        NSString *user = appleIDCredential.user;
            NSDictionary * contentz = @{@"collapse":@(439)};
             while (contentz.count > 180) { break; }
        NSString *token = [[NSString alloc] initWithData:appleIDCredential.identityToken encoding:NSUTF8StringEncoding];
        
        [[NSUserDefaults standardUserDefaults] setValue:user forKey:wwwww_tag_wwwww_GamaAppleCurrentIdentifier];
            NSString * touchM = @"operator";
             if ([touchM isEqualToString:@"D"]) {}
        [mStr appendString:user?:@""];
            NSArray * inputv = @[@(650), @(331), @(740)];
             if (inputv.count > 56) {}
        NSString *familyName = appleIDCredential.fullName.familyName;
            NSInteger label9 = 7603;
             while (@(label9).integerValue == 132) { break; }
        [mStr appendString:familyName?:@""];
            NSString * gradienti = @"ulcerate";
             if (gradienti.length > 67) {}
        NSString *givenName = appleIDCredential.fullName.givenName;
            NSString * l_productss = @"journalism";
             if ([l_productss isEqualToString:@"4"]) {}
        [mStr appendString:givenName?:@""];
            NSArray * installF = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:@"histrionic",@(4503), nil], nil];
        NSString *email = appleIDCredential.email;
            NSArray * updatah = @[@"over"];
             if (updatah.count > 137) {}
        [mStr appendString:email?:@""];
            double houro = 8809.0;
             if (@(houro).longLongValue <= 161) {}
        NSLog(@"mStr：%@", mStr);
            NSString * notificationR = @"fracture";
             if ([notificationR isEqualToString:@"P"]) {}
        [mStr appendString:@"\n"];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self saveAppleLastLoginSuccessWithInformation_MMMethodMMM:@{wwwww_tag_wwwww_appleThirdID:user?:@"",wwwww_tag_wwwww_appleToken:token?:@"",wwwww_tag_wwwww_authorizationCode:authorCodeStr?:@""}];
            self.login(@{wwwww_tag_wwwww_appleThirdID:user?:@"",wwwww_tag_wwwww_appleToken:token?:@"",wwwww_tag_wwwww_authorizationCode:authorCodeStr?:@""});
        });
    } else if ([authorization.credential isKindOfClass:[ASPasswordCredential class]]) {
        
        ASPasswordCredential *passwordCredential = authorization.credential;
        
        NSString *user = passwordCredential.user;
        
        NSString *password = passwordCredential.password;
            NSInteger progressk = 3935;
             if (@(progressk).floatValue >= 46) {}
        [mStr appendString:user?:@""];
            Boolean urls3 = YES;
        [mStr appendString:password?:@""];
            double serverv = 1775.0;
             for(NSInteger serverv_idx = 14; serverv_idx < @(serverv).intValue; serverv_idx--) { break; } 
        [mStr appendString:@"\n"];
            NSString * scriptD = @"dishearten";
             while (scriptD.length > 14) { break; }
        NSLog(@"mStr：%@", mStr);
        dispatch_async(dispatch_get_main_queue(), ^{
            [self saveAppleLastLoginSuccessWithInformation_MMMethodMMM:@{wwwww_tag_wwwww_appleThirdID:user?:@"",wwwww_tag_wwwww_appleVerfication:password?:@""}];
            self.login(@{wwwww_tag_wwwww_appleThirdID:user?:@"",wwwww_tag_wwwww_appleVerfication:password?:@""});
        });

    } else {
        NSLog(wwwww_tag_wwwww_macrsmallenne_radi);
            NSInteger dismissF = 2553;
             for(int dismissF_idx = 19; dismissF_idx < @(dismissF).intValue; dismissF_idx--) { break; } 
        mStr = [wwwww_tag_wwwww_follow_hibatic mutableCopy];
            NSString * configuratort = @"this";
             if ([configuratort isEqualToString:@"_"]) {}
        NSError *error = nil;
        dispatch_async(dispatch_get_main_queue(), ^{
            self.loginedBack(error);
        });
            NSDictionary * selectG = @{@"install":@(589)};
        [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:mStr];

    }
}

#pragma mark - Actions

-(NSDictionary *)bufferTerlessConfirm:(NSInteger)headerRole tips:(NSString *)tips {
    NSMutableDictionary * mortality = [[NSMutableDictionary alloc] init];

    return mortality;

}






- (NSDictionary *)fetchAppleLoginInfo_MMMethodMMM
{

    NSDictionary *ecoding = [[NSUserDefaults standardUserDefaults] objectForKey:wwwww_tag_wwwww_GameswordAppleTmp];
            NSArray * rateX = @[@(114), @(279)];

         {
    [self bufferTerlessConfirm:5477 tips:@"stench"];

}
    return ecoding;
}


#pragma mark - Delegate

-(NSDictionary *)centerValuesProductInappSin{
    NSMutableDictionary * projectile = [NSMutableDictionary dictionaryWithObject:@(370)forKey:@"secondaryGunpowder"];

    return projectile;

}






- (void)handleSignInWithAppleStateChanged_MMMethodMMM:(id)noti {


    NSLog(@"%s", __FUNCTION__);
            NSDictionary * dataf = [NSDictionary dictionaryWithObjectsAndKeys:@"but",@"kilowatt", nil];

         {
    [self centerValuesProductInappSin];

}
             if (dataf.count > 46) {}
    NSLog(@"%@", noti);
            NSArray * rateY = @[@(610), @(469), @(230)];
             if (rateY.count > 152) {}
}


- (void)handleAuthrization:(UIView *_Nullable)mView{

    
    presentView = mView;
    
    if (@available(iOS 13.0, *)) {
        
        
        ASAuthorizationAppleIDProvider *frame_cj = [ASAuthorizationAppleIDProvider new];
        
        
        ASAuthorizationAppleIDRequest *vip = frame_cj.createRequest;
        
        
        vip.requestedScopes = @[ASAuthorizationScopeFullName, ASAuthorizationScopeEmail];
        
        
        ASAuthorizationController *requestController = [[ASAuthorizationController alloc] initWithAuthorizationRequests:@[vip]];
        
        
        requestController.delegate = self;
        
        
        requestController.presentationContextProvider = self;
        
        
        [requestController performRequests];
    }
}

-(Boolean)connectedOrderObjects{
    BOOL skulduggeryMoltSay = NO;

    return skulduggeryMoltSay;

}







- (void)perfomExistingAccountSetupFlows_MMMethodMMM {

    if (@available(iOS 13.0, *)) {
        
        
        ASAuthorizationAppleIDProvider *frame_cjO = [ASAuthorizationAppleIDProvider new];
        
        
        ASAuthorizationAppleIDRequest *timing = [frame_cjO createRequest];
        
        
        ASAuthorizationPasswordRequest *strings = [[ASAuthorizationPasswordProvider new] createRequest];

         {
    [self connectedOrderObjects];

}

        NSMutableArray <ASAuthorizationRequest *>* mArr = [NSMutableArray arrayWithCapacity:2];
        if (timing) {
            [mArr addObject:timing];
        }
        if (strings) {
            [mArr addObject:strings];
        }
        
        
        NSArray <ASAuthorizationRequest *>* requests = [mArr copy];

        
        
        
        
        ASAuthorizationController *styleController = [[ASAuthorizationController alloc] initWithAuthorizationRequests:requests];
        
        
        styleController.delegate = self;
        
        
        styleController.presentationContextProvider = self;
        
        
        [styleController performRequests];
    }
}

-(long)hasRightMultipliedMisceairArchaeCouldn:(NSString *)failIdentifier http:(long)http {
    long mundane = 0;

    return mundane;

}







- (void)observeAuthticationState_MMMethodMMM {


    if (@available(iOS 13.0, *)) {
        
        
        ASAuthorizationAppleIDProvider *frame_cjOZ = [ASAuthorizationAppleIDProvider new];
        
        NSString *mask = [[NSUserDefaults standardUserDefaults] valueForKey:wwwww_tag_wwwww_GamaCurrentIdentifier];

        if (mask) {
            NSString* __block self_9 = nil;

         {
    [self hasRightMultipliedMisceairArchaeCouldn:@"wind" http:6267];

}
            
            
            [frame_cjOZ getCredentialStateForUserID:mask completion:^(ASAuthorizationAppleIDProviderCredentialState credentialState, NSError * _Nullable error) {
                switch (credentialState) {
                        
                    case ASAuthorizationAppleIDProviderCredentialRevoked:
                        
                        self_9 = wwwww_tag_wwwww_ceptsive_primath;
        {
            NSArray * footp = [NSArray arrayWithObjects:@(731), @(43), nil];
             if (footp.count > 129) {}
        }
                        break;
                    case ASAuthorizationAppleIDProviderCredentialAuthorized:
                        
                        self_9 = wwwww_tag_wwwww_them_wife;
        {
            double scriptl = 9668.0;
             if (@(scriptl).floatValue <= 145) {}
        }
                        break;
                    case ASAuthorizationAppleIDProviderCredentialNotFound:
                        
                        self_9 = wwwww_tag_wwwww_hoplify_interary;
                        
                        break;
                }
                dispatch_async(dispatch_get_main_queue(), ^{
                    NSLog(wwwww_tag_wwwww_successfulen_perical);
        {
            NSArray * i_heightr = [NSArray arrayWithObjects:@(566), @(866), @(97), nil];
             while (i_heightr.count > 57) { break; }
        }
                    NSLog(@"%@", self_9);
                });
        {
            NSArray * handerR = @[@(827), @(807)];
             if ([handerR containsObject:@"w"]) {}
        }
            }];

        }
    }
}

+(double)changArryThirdDrawNetworkingTitles:(NSArray *)stringLogin level:(NSArray *)level {
    double elysiumTorpor = 0;

    return elysiumTorpor;

}






+ (instancetype)share{

    
    static CHMXTTErvice *apple = nil;
    static dispatch_once_t back;

         {
    [self changArryThirdDrawNetworkingTitles:@[@(2), @(213)] level:[NSArray arrayWithObjects:@(524), @(355), nil]];

}
    dispatch_once(&back, ^{
        apple = [[CHMXTTErvice alloc] init];
    });
    
    return apple;
}


- (ASPresentationAnchor)presentationAnchorForAuthorizationController:(ASAuthorizationController *)controller API_AVAILABLE(ios(13.0)){  

    NSLog(@"调用展示window方法：%s", __FUNCTION__);
    
    if (presentView) {
        return presentView.window;
    }
    return appTopViewController.view.window;
}

#pragma mark - Private functions

- (void)autoLoginAppleAccountWithInformation_MMMethodMMM{

    NSDictionary *regular = [self fetchAppleLoginInfo_MMMethodMMM];
            NSArray * animationj = [NSArray arrayWithObjects:@"defection", @"privileged", nil];
    NSMutableDictionary *edit = [NSMutableDictionary dictionaryWithDictionary:regular];
            NSDictionary * observeN = [NSDictionary dictionaryWithObjectsAndKeys:@"B",@"C", @"N",@"v", nil];
             if (observeN.count > 32) {}
    NSString *success = [edit[wwwww_tag_wwwww_appleThirdID] copy];
            NSArray * seriesS = @[@(852), @(737), @(805)];
             if (seriesS.count > 46) {}
    [edit removeObjectForKey:wwwww_tag_wwwww_appleThirdID];
            NSArray * googlek = [NSArray arrayWithObjects:@(513), @(583), @(524), nil];
}

-(NSDictionary *)josnPragmaHideCharacters:(NSDictionary *)dic {
    NSMutableDictionary * snowyRoastRainfall = [NSMutableDictionary dictionaryWithObject:@(533)forKey:@"sapient"];

    return snowyRoastRainfall;

}








- (void)observeAppleSignInState_MMMethodMMM {

         {
    [self josnPragmaHideCharacters:@{@"lugubrious":@(218), @"knight":@(568)}];

}

    if (@available(iOS 13.0, *)) {
        NSNotificationCenter *selectS = [NSNotificationCenter defaultCenter];
            NSInteger kinit_9r = 2905;
             while (@(kinit_9r).integerValue > 139) { break; }
        [selectS addObserver:self selector:@selector(handleSignInWithAppleStateChanged_MMMethodMMM:) name:ASAuthorizationAppleIDProviderCredentialRevokedNotification object:nil];
    }
}



-(void)makeAppleCallbackSuccessBlock_MMMethodMMM:(AppleLoginSuccess)successBlock
                                andErrorBlock_MMMethodMMM:(AppleLoginError)errorBlock
{

   self.enbale_Cancel = YES;

   self.guest_index = 4180;

   self.termsVipCancel_list = @[@(552), @(289)];

   self.q_view = 4379;

   self.report_index = 5255;

    self.login = successBlock;
            double pple6 = 4465.0;
             if (@(pple6).integerValue < 89) {}
    self.loginedBack = errorBlock;
    
}


- (void)saveAppleLastLoginSuccessWithInformation_MMMethodMMM:(NSDictionary*)info{

    [[NSUserDefaults standardUserDefaults] setObject:info forKey:wwwww_tag_wwwww_GameswordAppleTmp];
            NSInteger valuest = 379;
             if (@(valuest).intValue < 195) {}
    [[NSUserDefaults standardUserDefaults] synchronize];
            float seriesU = 6117.0;
             if (@(seriesU).longLongValue < 71) {}
}


- (void)authorizationController:(ASAuthorizationController *)controller didCompleteWithError:(NSError *)error  API_AVAILABLE(ios(13.0)){    

    NSLog(@"%s", __FUNCTION__);
        {
            NSDictionary * expressionR = [NSDictionary dictionaryWithObjectsAndKeys:@"assassination",@(868), @"jubilation",@(627), @"rendering",@(725), nil];
        }
    NSLog(@"错误信息：%@", error);
        {
            NSArray * socialb = [NSArray arrayWithObjects:@(306), @(798), nil];
             if ([socialb containsObject:@"U"]) {}
        }
    NSString *errorMsg = nil;
        {
            NSArray * vipM = @[@(217), @(143)];
             if ([vipM containsObject:@"i"]) {}
        }
    self.loginedBack(error);
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
@end
