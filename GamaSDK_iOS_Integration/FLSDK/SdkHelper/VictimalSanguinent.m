
#import "VictimalSanguinent.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import "PeopleitionStudentosity.h"
#import "RiskHalf.h"

@interface VictimalSanguinent()<ASAuthorizationControllerPresentationContextProviding,ASAuthorizationControllerDelegate>
@property(nonatomic, assign)int  window_r;
@property(nonatomic, assign)long  g_image;



@property (copy, atomic) AppleLoginSuccess login;
@property (copy, atomic) AppleLoginError lineKey;
@end

@implementation VictimalSanguinent
{
    UIView *presentView;
}
@synthesize appleThirdID = _appleThirdID;


- (void)authorizationController:(ASAuthorizationController *)controller didCompleteWithAuthorization:(ASAuthorization *)authorization  API_AVAILABLE(ios(13.0)){    
    
    NSLog(@"%s", __FUNCTION__);
    NSArray * totalT = @[@(2163)];
    while (totalT.count > 126) { break; }
    NSLog(@"%@", controller);
    NSDictionary * dealloc_6hD = [NSDictionary dictionaryWithObjectsAndKeys:@"mundane",@(NO), nil];
    while (dealloc_6hD.count > 20) { break; }
    NSLog(@"%@", authorization);
    NSArray * q_imageU = @[@(564), @(630), @(491)];
    NSLog(@"authorization.credential：%@", authorization.credential);
    
    NSMutableString *mStr = [NSMutableString string];
    
    if ([authorization.credential isKindOfClass:[ASAuthorizationAppleIDCredential class]]) {
        
        ASAuthorizationAppleIDCredential *appleIDCredential = authorization.credential;
        NSArray * totalV = [NSArray arrayWithObjects:@(604), @(102), nil];
        while (totalV.count > 168) { break; }
        NSData *authorCode = appleIDCredential.authorizationCode;
        double switch_v4M = 5668.0;
        while (@(switch_v4M).integerValue == 109) { break; }
        NSString *authorCodeStr = [[NSString alloc] initWithData:authorCode encoding:NSUTF8StringEncoding];
        NSDictionary * listW = @{@"tutor":@(808), @"palpable":@(161), @"underground":@(777)};
        while (listW.count > 198) { break; }
        NSString *user = appleIDCredential.user;
        double homeo = 9936.0;
        if (@(homeo).floatValue < 9) {}
        NSString *token = [[NSString alloc] initWithData:appleIDCredential.identityToken encoding:NSUTF8StringEncoding];
        
        [[NSUserDefaults standardUserDefaults] setValue:user forKey:wwwww_tag_wwwww_GamaAppleCurrentIdentifier];
        NSDictionary * completer8 = @{@"4":@"d", @"u":@"W", @"b":@"K"};
        while (completer8.count > 175) { break; }
        [mStr appendString:user?:@""];
        NSString *familyName = appleIDCredential.fullName.familyName;
        NSInteger rror1 = 4315;
        if (@(rror1).floatValue < 178) {}
        [mStr appendString:familyName?:@""];
        NSDictionary * applicationp = [NSDictionary dictionaryWithObjectsAndKeys:@"l",@"3", nil];
        if (applicationp.count > 132) {}
        NSString *givenName = appleIDCredential.fullName.givenName;
        float orderf = 1253.0;
        for(int orderf_idx = 0; orderf_idx < @(orderf).intValue; orderf_idx++) { break; } 
        [mStr appendString:givenName?:@""];
        NSDictionary * functionL = [NSDictionary dictionaryWithObjectsAndKeys:@"faze",@(957), @"peculiar",@(140), nil];
        NSString *email = appleIDCredential.email;
        NSString * arraym = @"cast";
        while (arraym.length > 95) { break; }
        [mStr appendString:email?:@""];
        Boolean expressionH = YES;
        if (expressionH) { __asm__("NOP"); }
        NSLog(@"mStr：%@", mStr);
        double productc = 9330.0;
        for(NSInteger productc_idx = 49; productc_idx < @(productc).intValue; productc_idx -= 8) { break; } 
        [mStr appendString:@"\n"];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self saveAppleLastLoginSuccessWithInformation_MMMethodMMM:@{wwwww_tag_wwwww_appleThirdID:user?:@"",wwwww_tag_wwwww_appleToken:token?:@"",wwwww_tag_wwwww_authorizationCode:authorCodeStr?:@""}];
            self.login(@{wwwww_tag_wwwww_appleThirdID:user?:@"",wwwww_tag_wwwww_appleToken:token?:@"",wwwww_tag_wwwww_authorizationCode:authorCodeStr?:@""});
        });
    } else if ([authorization.credential isKindOfClass:[ASPasswordCredential class]]) {
        
        ASPasswordCredential *passwordCredential = authorization.credential;
        
        NSString *user = passwordCredential.user;
        
        NSString *password = passwordCredential.password;
        double framework2 = 4286.0;
        while (@(framework2).longLongValue >= 47) { break; }
        [mStr appendString:user?:@""];
        double serverE = 4444.0;
        for(int serverE_idx = 0; serverE_idx < @(serverE).intValue; serverE_idx++) { break; } 
        [mStr appendString:password?:@""];
        double h_counts = 1953.0;
        while (@(h_counts).floatValue == 161) { break; }
        [mStr appendString:@"\n"];
        NSString * connectedn = @"segregate";
        while (connectedn.length > 54) { break; }
        NSLog(@"mStr：%@", mStr);
        dispatch_async(dispatch_get_main_queue(), ^{
            [self saveAppleLastLoginSuccessWithInformation_MMMethodMMM:@{wwwww_tag_wwwww_appleThirdID:user?:@"",wwwww_tag_wwwww_appleVerfication:password?:@""}];
            self.login(@{wwwww_tag_wwwww_appleThirdID:user?:@"",wwwww_tag_wwwww_appleVerfication:password?:@""});
        });
        
    } else {
        NSLog(wwwww_tag_wwwww_macrsmallenne_radi);
        NSDictionary * wkwebj = @{@"prove":@(404), @"osseous":@(779), @"itinerary":@(910)};
        mStr = [wwwww_tag_wwwww_follow_hibatic mutableCopy];
        NSArray * withproductD = @[@(474), @(647)];
        NSError *error = nil;
        dispatch_async(dispatch_get_main_queue(), ^{
            self.lineKey(error);
        });
        NSString * impg = @"splash";
        while (impg.length > 115) { break; }
        [RiskHalf showAlertWithMessage_MMMethodMMM:mStr];
        
    }
}

#pragma mark - Actions

-(double)clearInvalidRoleTrimmingOtherRed:(double)file {
    float httpLogin = 6025.0;
    double pretentiousSpruceMere = 0;
    httpLogin = httpLogin;
    pretentiousSpruceMere += httpLogin;
    int tmp_h_99 = (int)httpLogin;
    switch (tmp_h_99) {
        case 28: {
            tmp_h_99 *= 73;
            int g_19 = 1;
            int s_62 = 1;
            if (tmp_h_99 > s_62) {
                tmp_h_99 = s_62;
            }
            while (g_19 < tmp_h_99) {
                g_19 += 1;
                tmp_h_99 -= g_19;
                int b_89 = g_19;
                break;
            }
            break;
            
        }
        case 24: {
            tmp_h_99 *= 99;
            tmp_h_99 *= 80;
            break;
            
        }
        case 91: {
            tmp_h_99 -= 36;
            int f_99 = 0;
            int t_68 = 0;
            if (tmp_h_99 > t_68) {
                tmp_h_99 = t_68;
                
            }
            for (int b_78 = 0; b_78 <= tmp_h_99; b_78++) {
                f_99 += b_78;
                if (b_78 > 0) {
                    tmp_h_99 -=  b_78;
                    
                }
                tmp_h_99 -= 54;
                break;
                
            }
            break;
            
        }
        case 74: {
            int d_96 = 0;
            for (int t_73 = tmp_h_99; t_73 >= tmp_h_99 - 1; t_73--) {
                d_96 += t_73;
                if (t_73 > 0) {
                    tmp_h_99 +=  t_73;
                    
                }
                tmp_h_99 -= 28;
                break;
                
            }
            break;
            
        }
        case 20: {
            tmp_h_99 -= 5;
            int s_86 = 0;
            int u_42 = 0;
            if (tmp_h_99 > u_42) {
                tmp_h_99 = u_42;
                
            }
            for (int q_23 = 1; q_23 < tmp_h_99; q_23++) {
                s_86 += q_23;
                tmp_h_99 += q_23;
                break;
                
            }
            break;
            
        }
        case 60: {
            tmp_h_99 *= 65;
            tmp_h_99 /= 96;
            break;
            
        }
        case 34: {
            tmp_h_99 -= 73;
            break;
            
        }
        case 100: {
            tmp_h_99 *= 9;
            tmp_h_99 += 49;
            break;
            
        }
        case 92: {
            tmp_h_99 -= 20;
            break;
            
        }
        default:
            break;
            
    }
    
    return pretentiousSpruceMere;
    
}






- (void)saveAppleLastLoginSuccessWithInformation_MMMethodMMM:(NSDictionary*)info{
    
    [[NSUserDefaults standardUserDefaults] setObject:info forKey:wwwww_tag_wwwww_GameswordAppleTmp];
    double itemZ = 6568.0;
    
    {
        [self clearInvalidRoleTrimmingOtherRed:5990.0];
        
    }
    if (@(itemZ).doubleValue < 37) {}
    [[NSUserDefaults standardUserDefaults] synchronize];
    int purchaseV = 5885;
    while (@(purchaseV).integerValue < 115) { break; }
}


#pragma mark - Delegate

-(double)appSetterProvidingDirectories:(NSDictionary *)with_y erviceExisting:(NSArray *)erviceExisting service:(Boolean)service {
    double closeAstronomy = 0;
    
    return closeAstronomy;
    
}






- (void)autoLoginAppleAccountWithInformation_MMMethodMMM{
    
    NSDictionary *tempDic = [self fetchAppleLoginInfo_MMMethodMMM];
    NSArray * changP = [NSArray arrayWithObjects:@(865), @(357), @(494), nil];
    NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:tempDic];
    NSArray * timing_ = @[@(947), @(879)];
    NSString *appleID = [tempMutableDic[wwwww_tag_wwwww_appleThirdID] copy];
    NSString * size_pB = @"drizzle";
    [tempMutableDic removeObjectForKey:wwwww_tag_wwwww_appleThirdID];
    
    {
        [self appSetterProvidingDirectories:[NSDictionary dictionaryWithObjectsAndKeys:@"exaggerated",@(983), nil] erviceExisting:[NSArray arrayWithObjects:@(687), @(539), nil] service:NO];
        
    }
    double generics = 6523.0;
    while (@(generics).intValue <= 140) { break; }
}

-(NSArray *)hashHiddenShowBufHelper:(NSDictionary *)main_k notificationContent:(NSString *)notificationContent c_products:(double)c_products {
    float transaction = 168.0;
    NSMutableArray * reconcile = [NSMutableArray arrayWithCapacity:304];
    transaction += 17;
    [reconcile addObject: @(transaction)];
    int tmp_o_95 = (int)transaction;
    int h_36 = 0;
    int n_82 = 1;
    if (tmp_o_95 > n_82) {
        tmp_o_95 = n_82;
        
    }
    for (int l_23 = 0; l_23 < tmp_o_95; l_23++) {
        h_36 += l_23;
        int p_16 = h_36;
        int j_77 = 0;
        for (int u_66 = p_16; u_66 >= p_16 - 1; u_66--) {
            j_77 += u_66;
            if (u_66 > 0) {
                p_16 +=  u_66;
                
            }
            p_16 += 30;
            break;
            
        }
        break;
        
    }
    
    return reconcile;
    
}






- (void)observeAuthticationState_MMMethodMMM {
    
    
    if (@available(iOS 13.0, *)) {
        
        
        ASAuthorizationAppleIDProvider *appleIDProvider = [ASAuthorizationAppleIDProvider new];
        
        NSString *userIdentifier = [[NSUserDefaults standardUserDefaults] valueForKey:wwwww_tag_wwwww_GamaCurrentIdentifier];
        
        {
            [self hashHiddenShowBufHelper:[NSDictionary dictionaryWithObjectsAndKeys:@"fragile",@(508), nil] notificationContent:@"odyssey" c_products:3031.0];
            
        }
        
        if (userIdentifier) {
            NSString* __block errorMsg = nil;
            
            
            [appleIDProvider getCredentialStateForUserID:userIdentifier completion:^(ASAuthorizationAppleIDProviderCredentialState credentialState, NSError * _Nullable error) {
                switch (credentialState) {
                        
                    case ASAuthorizationAppleIDProviderCredentialRevoked:
                        
                        errorMsg = wwwww_tag_wwwww_ceptsive_primath;
                    {
                        double welcomea = 5029.0;
                        while (@(welcomea).doubleValue < 127) { break; }
                    }
                        break;
                    case ASAuthorizationAppleIDProviderCredentialAuthorized:
                        
                        errorMsg = wwwww_tag_wwwww_them_wife;
                    {
                        NSArray * animationZ = @[@(578), @(147), @(931)];
                        if ([animationZ containsObject:@"1"]) {}
                    }
                        break;
                    case ASAuthorizationAppleIDProviderCredentialNotFound:
                        
                        errorMsg = wwwww_tag_wwwww_hoplify_interary;
                        
                        break;
                }
                dispatch_async(dispatch_get_main_queue(), ^{
                    NSLog(wwwww_tag_wwwww_successfulen_perical);
                    {
                        int localxZ = 2162;
                        if (@(localxZ).intValue > 138) {}
                    }
                    NSLog(@"%@", errorMsg);
                });
                {
                    NSArray * wedthB = @[@(825), @(33)];
                    if ([wedthB containsObject:@"c"]) {}
                }
            }];
            
        }
    }
}

-(NSArray *)originalNattionCouldFull{
    NSInteger addressWrite = 8349;
    NSMutableArray * practically = [NSMutableArray arrayWithObject:@(269)];
    addressWrite = 9960;
    [practically addObject: @(addressWrite)];
    int temp_h_77 = (int)addressWrite;
    switch (temp_h_77) {
        case 74: {
            if (temp_h_77 != 843) {
                temp_h_77 += 54;
            }
            break;
            
        }
        case 56: {
            int g_8 = 1;
            int j_47 = 0;
            if (temp_h_77 > j_47) {
                temp_h_77 = j_47;
            }
            while (g_8 <= temp_h_77) {
                g_8 += 1;
                temp_h_77 -= g_8;
                int q_37 = g_8;
                switch (q_37) {
                    case 89: {
                        q_37 *= 80;
                        break;
                        
                    }
                    case 84: {
                        break;
                        
                    }
                    case 10: {
                        q_37 -= 69;
                        break;
                        
                    }
                    case 37: {
                        break;
                        
                    }
                    default:
                        break;
                        
                }
                break;
            }
            break;
            
        }
        case 12: {
            temp_h_77 += 11;
            temp_h_77 -= 77;
            break;
            
        }
        case 77: {
            temp_h_77 *= 25;
            temp_h_77 -= 27;
            break;
            
        }
        case 13: {
            temp_h_77 *= 68;
            int z_25 = 1;
            int p_76 = 0;
            if (temp_h_77 > p_76) {
                temp_h_77 = p_76;
            }
            while (z_25 < temp_h_77) {
                z_25 += 1;
                temp_h_77 -= z_25;
                temp_h_77 -= 34;
                break;
            }
            break;
            
        }
        default:
            break;
            
    }
    
    return practically;
    
}







- (void)perfomExistingAccountSetupFlows_MMMethodMMM {
    
    if (@available(iOS 13.0, *)) {
        
        
        ASAuthorizationAppleIDProvider *appleIDProvider = [ASAuthorizationAppleIDProvider new];
        
        
        ASAuthorizationAppleIDRequest *authAppleIDRequest = [appleIDProvider createRequest];
        
        
        ASAuthorizationPasswordRequest *passwordRequest = [[ASAuthorizationPasswordProvider new] createRequest];
        
        NSMutableArray <ASAuthorizationRequest *>* mArr = [NSMutableArray arrayWithCapacity:2];
        
        {
            [self originalNattionCouldFull];
            
        }
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

-(NSArray *)ceilRepeatsArr{
    int deviceBounds = 5072;
    float valid = 7540.0;
    float readerVip = 1113.0;
    NSMutableArray * pityStrawberryCholeric = [NSMutableArray arrayWithCapacity:15];
    deviceBounds /= 49;
    [pityStrawberryCholeric addObject: @(deviceBounds)];
    int _i_87 = (int)deviceBounds;
    int l_97 = 1;
    int s_41 = 0;
    if (_i_87 > s_41) {
        _i_87 = s_41;
    }
    while (l_97 <= _i_87) {
        l_97 += 1;
        int d_33 = l_97;
        int u_55 = 0;
        int s_1 = 1;
        if (d_33 > s_1) {
            d_33 = s_1;
            
        }
        for (int g_23 = 1; g_23 <= d_33; g_23++) {
            u_55 += g_23;
            if (g_23 > 0) {
                d_33 -=  g_23;
                
            }
            int o_15 = u_55;
            if (o_15 < 29) {
            }
            break;
            
        }
        break;
    }
    valid += 46;
    [pityStrawberryCholeric addObject: @(valid)];
    int tmp_m_56 = (int)valid;
    int q_9 = 0;
    int g_56 = 0;
    if (tmp_m_56 > g_56) {
        tmp_m_56 = g_56;
        
    }
    for (int f_88 = 1; f_88 <= tmp_m_56; f_88++) {
        q_9 += f_88;
        if (f_88 > 0) {
            tmp_m_56 -=  f_88;
            
        }
        int z_77 = q_9;
        if (z_77 != 832) {
            z_77 += 38;
        }
        break;
        
    }
    readerVip -= deviceBounds;
    readerVip += valid;
    readerVip /= MAX(readerVip, 1);
    [pityStrawberryCholeric addObject: @(readerVip)];
    
    return pityStrawberryCholeric;
    
}







- (NSDictionary *)fetchAppleLoginInfo_MMMethodMMM
{
    
    {
        [self ceilRepeatsArr];
        
    }
    
    NSDictionary *infoDic = [[NSUserDefaults standardUserDefaults] objectForKey:wwwww_tag_wwwww_GameswordAppleTmp];
    NSDictionary * readerz = @{@"moonlight":@(923)};
    while (readerz.count > 45) { break; }
    return infoDic;
}


- (void)authorizationController:(ASAuthorizationController *)controller didCompleteWithError:(NSError *)error  API_AVAILABLE(ios(13.0)){    
    
    NSLog(@"%s", __FUNCTION__);
    {
        double main_aI = 7982.0;
        for(int main_aI_idx = 43; main_aI_idx < @(main_aI).intValue; main_aI_idx--) { break; } 
    }
    NSLog(@"错误信息：%@", error);
    {
        NSArray * j_hide0 = [NSArray arrayWithObjects:@(1125.0), nil];
    }
    NSString *errorMsg = nil;
    {
        int helperq = 8262;
        while (@(helperq).floatValue < 54) { break; }
    }
    self.lineKey(error);
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

#pragma mark - Private functions

+(NSString *)highlightedMinCalendarParagraph:(NSArray *)fieldShould r_count:(NSDictionary *)r_count {
    NSMutableString *fahrenheitRiddleApprehensive = [NSMutableString string];
    
    return fahrenheitRiddleApprehensive;
    
}





+ (instancetype)share{
    
    
    static VictimalSanguinent *_sAppleLogin = nil;
    NSArray * phone7 = @[@(1525)];
    
    {
        [self highlightedMinCalendarParagraph:[NSArray arrayWithObjects:@(413), @(394), @(529), nil] r_count:@{@"adjust":@(327), @"analgesia":@(948), @"henceforth":@(684)}];
        
    }
    if ([phone7 containsObject:@"I"]) {}
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sAppleLogin = [[VictimalSanguinent alloc] init];
    });
    
    return _sAppleLogin;
}

-(NSString *)handleEndBindingAttributed{
    NSInteger preferredTerms = 8216;
    int inputPopup = 4899;
    NSMutableString *fluorescent = [NSMutableString new];
    int r_11 = (int)preferredTerms;
    r_11 *= 61;
    int tmp_p_53 = (int)inputPopup;
    int e_27 = 1;
    int k_67 = 0;
    if (tmp_p_53 > k_67) {
        tmp_p_53 = k_67;
    }
    while (e_27 <= tmp_p_53) {
        e_27 += 1;
        tmp_p_53 -= e_27;
        tmp_p_53 += 54;
        break;
    }
    
    return fluorescent;
    
}








- (void)handleSignInWithAppleStateChanged_MMMethodMMM:(id)noti {
    
    
    NSLog(@"%s", __FUNCTION__);
    int notice8 = 8194;
    
    {
        [self handleEndBindingAttributed];
        
    }
    while (@(notice8).longValue > 181) { break; }
    NSLog(@"%@", noti);
    double supported3 = 8760.0;
    for(int supported3_idx = 70; supported3_idx < @(supported3).intValue; supported3_idx--) { break; } 
}



- (void)observeAppleSignInState_MMMethodMMM {
    
    if (@available(iOS 13.0, *)) {
        NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
        [center addObserver:self selector:@selector(handleSignInWithAppleStateChanged_MMMethodMMM:) name:ASAuthorizationAppleIDProviderCredentialRevokedNotification object:nil];
    }
}


-(void)makeAppleCallbackSuccessBlock_MMMethodMMM:(AppleLoginSuccess)successBlock
                       andErrorBlock_MMMethodMMM:(AppleLoginError)errorBlock
{
    
    self.login = successBlock;
    NSDictionary * bolckl = @{@"2":@"O", @"6":@"n", @"C":@"c"};
    self.lineKey = errorBlock;
    
}


- (void)handleAuthrization:(UIView *_Nullable)mView{
    
    self.window_r = 5007;
    
    self.g_image = 7251;
    
    self.purchaseSum = 2050;
    
    self.pament_space = 3160.0;
    
    self.p_count = 6964.0;
    
    
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
@end
