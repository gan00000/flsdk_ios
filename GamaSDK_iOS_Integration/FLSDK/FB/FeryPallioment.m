
#import "FeryPallioment.h"

#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKShareKit/FBSDKShareKit.h>


@interface FeryPallioment() <FBSDKSharingDelegate>
@property(nonatomic, copy)NSArray *  v_view_arr;
@property(nonatomic, assign)double  type_ch;




@property (nonatomic,strong) FBSDKLoginManager *changeKeychain;

@property (nonatomic,strong) CCallBack statusData;
@property (nonatomic,strong) CCallBack self_jResetup;

@end

@implementation FeryPallioment

#pragma mark - delegate

-(int)performErraneousCeptsive:(NSDictionary *)queueFunction private_2n:(NSArray *)private_2n {
     long perssion = 7378;
    int visitGuise = 0;
    perssion = perssion;
    visitGuise /= MAX(perssion, 1);
         int _g_28 = (int)perssion;
     _g_28 -= 77;

    return visitGuise;

}






- (void)facebookLogout_MMMethodMMM
{

         {
            [self performErraneousCeptsive:[NSDictionary dictionaryWithObjectsAndKeys:@"eastward",@(712), nil] private_2n:@[@(813), @(656), @(480)]];

        }

    [self.changeKeychain logOut];
            double appearV = 3232.0;
             while (@(appearV).floatValue < 76) { break; }
}



+ (void)applicationWillTerminate_MMMethodMMM:(UIApplication *)application
{
    
}

-(Boolean)boundingAuthorizeLandspaceHaveStarety{
     double ecoding = 9916.0;
     double core = 7528.0;
    BOOL repairmen = NO;
    ecoding += 34;
    repairmen = ecoding > 65;
         int tmp_c_0 = (int)ecoding;
     if (tmp_c_0 == 224) {
          int i_67 = 0;
     for (int u_94 = tmp_c_0; u_94 > tmp_c_0 - 1; u_94--) {
         i_67 += u_94;
          if (u_94 > 0) {
          tmp_c_0 +=  u_94;

     }
          tmp_c_0 += 97;
         break;

     }
     }
    core = 1292;
    repairmen = core > 94;
         int tmp_n_31 = (int)core;
     int k_56 = 0;
     int g_26 = 0;
     if (tmp_n_31 > g_26) {
         tmp_n_31 = g_26;

     }
     for (int q_91 = 1; q_91 <= tmp_n_31; q_91++) {
         k_56 += q_91;
          if (q_91 > 0) {
          tmp_n_31 -=  q_91;

     }
          tmp_n_31 *= 2;
         break;

     }

    return repairmen;

}






- (void)sharerDidCancel:(id<FBSDKSharing>)sharer{

                 {
            [self boundingAuthorizeLandspaceHaveStarety];

        }

    SDK_LOG(wwwww_tag_wwwww_sharerDidCancel);
    if (self.self_jResetup) {
        self.self_jResetup(wwwww_tag_wwwww_cancel, 0, nil);
    }
}

+(double)givenNonnullCancelObserverFailureCodes{
     int ppleWedth = 3280;
     int page = 3369;
     double postPublic__ = 4855.0;
    double feudalismSunburn = 0;
    ppleWedth *= ppleWedth;
    ppleWedth /= MAX(page, 1);
    feudalismSunburn *= ppleWedth;
         int _u_17 = (int)ppleWedth;
     if (_u_17 != 900) {
          int t_0 = 0;
     int z_18 = 1;
     if (_u_17 > z_18) {
         _u_17 = z_18;

     }
     for (int f_39 = 1; f_39 <= _u_17; f_39++) {
         t_0 += f_39;
          _u_17 -= f_39;
         break;

     }
     }
    page = ppleWedth;
    feudalismSunburn *= page;
         int tmp_f_52 = (int)page;
     int m_41 = 0;
     int a_42 = 0;
     if (tmp_f_52 > a_42) {
         tmp_f_52 = a_42;

     }
     for (int e_23 = 1; e_23 < tmp_f_52; e_23++) {
         m_41 += e_23;
          if (e_23 > 0) {
          tmp_f_52 -=  e_23;

     }
     int e_5 = m_41;
          int o_90 = 1;
     int s_10 = 0;
     if (e_5 > s_10) {
         e_5 = s_10;
     }
     while (o_90 < e_5) {
         o_90 += 1;
          e_5 -= o_90;
          e_5 -= 96;
         break;
     }
         break;

     }
    postPublic__ = MAX(ppleWedth, 1) - page;
    feudalismSunburn -= postPublic__;

    return feudalismSunburn;

}






+ (instancetype)share{

    
    static FeryPallioment *_FBDelegate = nil;
            double coreE = 4505.0;

                 {
            [self givenNonnullCancelObserverFailureCodes];

        }
             while (@(coreE).integerValue == 125) { break; }
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _FBDelegate = [[FeryPallioment alloc] init];
    });
    
    return _FBDelegate;
}

-(NSInteger)bufferCountdownNowKeysNetworking{
    NSInteger resultantInconvenience = 0;

    return resultantInconvenience;

}






- (FBSDKAccessToken *)currentAccessToken_MMMethodMMM
{

   self.v_view_arr = [NSArray arrayWithObjects:@(337), @(307), nil];

   self.type_ch = 4247.0;

                 {
            [self bufferCountdownNowKeysNetworking];

        }

   self.notification_idx = 8977;

   self.hasBind = NO;

    return [FBSDKAccessToken currentAccessToken];
}


+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return [[FBSDKApplicationDelegate sharedInstance] application:application
                                    didFinishLaunchingWithOptions:launchOptions];
}


+ (void)applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application
{
}


+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options
{
    
    
    
    return [[FBSDKApplicationDelegate sharedInstance] application:app openURL:url options:options];
}

-(float)centerAloneicsIpad{
    float me = 0;

    return me;

}






- (void)sharer:(id<FBSDKSharing>)sharer didFailWithError:(NSError *)error{

    SDK_LOG(@"share didFailWithError_MMMethodMMM: %@",error);
    if (self.self_jResetup) {
        self.self_jResetup(wwwww_tag_wwwww_error, 0, nil);

        {
            [self centerAloneicsIpad];
            
        }
    }
}



- (void)sharer:(id<FBSDKSharing>)sharer didCompleteWithResults:(NSDictionary<NSString *,id> *)results{

    
    SDK_LOG(@"share didCompleteWithResults");
    if (self.statusData) {
        self.statusData(@"", 1, nil);
    }
}

-(NSArray *)successReachableSavedgetTagAllocateProblem{
     int rate = 7391;
     float find = 4638.0;
     long term = 209;
    NSMutableArray * dozePast = [[NSMutableArray alloc] init];
    rate += 43;
    [dozePast addObject: @(rate)];
         int p_78 = (int)rate;
     int n_30 = 1;
     int s_95 = 1;
     if (p_78 > s_95) {
         p_78 = s_95;
     }
     while (n_30 < p_78) {
         n_30 += 1;
          p_78 -= n_30;
     int o_51 = n_30;
          switch (o_51) {
          case 19: {
          o_51 /= 61;
             break;

     }
          case 42: {
                  break;

     }
          case 48: {
          o_51 -= 37;
             break;

     }
          case 6: {
          o_51 += 53;
          o_51 += 70;
             break;

     }
          case 23: {
                  break;

     }
          case 38: {
          o_51 += 23;
             break;

     }
          case 76: {
          o_51 /= 7;
          if (o_51 < 668) {
          o_51 *= 67;
          }
             break;

     }
     default:
         break;

     }
         break;
     }
    find *= rate;
    find *= find;
    find *= term;
    [dozePast addObject: @(find)];
         int temp_f_68 = (int)find;
     switch (temp_f_68) {
          case 16: {
          temp_f_68 *= 56;
             break;

     }
          case 14: {
          temp_f_68 *= 89;
          if (temp_f_68 >= 446) {
          if (temp_f_68 >= 271) {
          temp_f_68 /= 69;
          }
     }
             break;

     }
          case 80: {
          temp_f_68 /= 40;
          int u_83 = 1;
     int p_30 = 1;
     if (temp_f_68 > p_30) {
         temp_f_68 = p_30;
     }
     while (u_83 <= temp_f_68) {
         u_83 += 1;
          temp_f_68 -= u_83;
         break;
     }
             break;

     }
          case 6: {
          temp_f_68 *= 17;
             break;

     }
          case 38: {
          temp_f_68 /= 14;
          int m_54 = 1;
     int p_16 = 0;
     if (temp_f_68 > p_16) {
         temp_f_68 = p_16;
     }
     while (m_54 < temp_f_68) {
         m_54 += 1;
          temp_f_68 -= m_54;
              break;
     }
             break;

     }
          case 81: {
          temp_f_68 -= 23;
             break;

     }
          case 41: {
          int m_70 = 1;
     int w_89 = 0;
     if (temp_f_68 > w_89) {
         temp_f_68 = w_89;
     }
     while (m_70 < temp_f_68) {
         m_70 += 1;
     int a_49 = m_70;
          if (a_49 >= 1) {
          }
         break;
     }
             break;

     }
          case 33: {
          temp_f_68 /= 71;
             break;

     }
          case 70: {
          temp_f_68 += 97;
          temp_f_68 -= 43;
             break;

     }
     default:
         break;

     }
    term -= 82;
    [dozePast addObject: @(term)];

    return dozePast;

}






-(FBSDKLoginManager *)changeKeychain
{

    {
        [self successReachableSavedgetTagAllocateProblem];
        
    }

    if (!_changeKeychain) {
        _changeKeychain = [[FBSDKLoginManager alloc] init];
    }
    return _changeKeychain;
}


+ (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
    
    [[FBSDKApplicationDelegate sharedInstance] application:application
                                                   openURL:url
                                         sourceApplication:sourceApplication
                                                annotation:annotation];
            NSInteger reloadw = 1298;
             while (@(reloadw).intValue < 148) { break; }
    return YES;
}


- (BOOL)isFacebookLogined_MMMethodMMM
{

    BOOL retResult = NO;
    
    
    return retResult;
}

-(NSDictionary *)fontSchemeAnimateDeferredWhitesterEnumerator:(NSDictionary *)infoParam contentLandspace:(int)contentLandspace macaddressCreate:(NSDictionary *)macaddressCreate {
    NSMutableDictionary * machinationRifle = [NSMutableDictionary dictionary];

    return machinationRifle;

}







-(void)shareWithTag_MMMethodMMM:(NSString *)hashTag message_MMMethodMMM:(NSString *)message url_MMMethodMMM:(NSString *)url
    presentingViewController:(UIViewController * _Nonnull)presentingViewController
    successBlock_MMMethodMMM:(CCallBack)statusData
    failBlock_MMMethodMMM:(CCallBack)self_jResetup
{

    self.statusData = statusData;
            NSArray * codesl = @[@"row", @"testimonial"];

        {
            [self fontSchemeAnimateDeferredWhitesterEnumerator:[NSDictionary dictionaryWithObjectsAndKeys:@"rapid",@(838), nil] contentLandspace:9482 macaddressCreate:@{@"whimsy":@(563), @"speaker":@(829), @"appease":@(234)}];
            
        }
             while (codesl.count > 11) { break; }
    self.self_jResetup = self_jResetup;
    
    NSURL *mUrl = [NSURL URLWithString:url];
            Boolean indicatorm = YES;
             if (!indicatorm) { __asm__("NOP"); }
    FBSDKShareLinkContent *xFBSDKShareLinkContent = [[FBSDKShareLinkContent alloc] init];
            NSDictionary * setupw = [NSDictionary dictionaryWithObjectsAndKeys:@"loudness",@(64), nil];
             if (setupw.count > 99) {}
    xFBSDKShareLinkContent.contentURL = mUrl;
            NSInteger completerb = 3612;
             if (@(completerb).doubleValue <= 135) {}
    xFBSDKShareLinkContent.quote = message;
    if (hashTag) {
        xFBSDKShareLinkContent.hashtag = [[FBSDKHashtag alloc] initWithString:hashTag];
    }
    
    FBSDKShareDialog *shareDialog = [[FBSDKShareDialog alloc] initWithViewController:presentingViewController content:xFBSDKShareLinkContent delegate:self];
    
    BOOL fbExist = [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"fbapi://"]]; 
    if (fbExist) {
        shareDialog.mode = FBSDKShareDialogModeNative;
    }else{
        shareDialog.mode = FBSDKShareDialogModeAutomatic;
    }
    
    BOOL ok = [shareDialog show];
            float pageG = 8253.0;
             if (@(pageG).floatValue < 181) {}
    SDK_LOG(@"FBSDKShareDialogModeNative not ok");
  
    
}

-(NSArray *)fractionPopoverSysctlbynameRevenueWhitester:(NSArray *)selectedName dataEfault:(NSString *)dataEfault screenInterrupt:(NSString *)screenInterrupt {
    NSMutableArray * resorCumbersomeUnable = [NSMutableArray arrayWithObject:@(606)];

    return resorCumbersomeUnable;

}





- (void)loginWithPesentingViewController_MMMethodMMM:(UIViewController *)presentingViewController
                        isForceInappLogin_MMMethodMMM:(BOOL)isForceInappLogin
            andIsForceReAuthorize_MMMethodMMM:(BOOL)isForceReAuthorize
            andSuccessBlock_MMMethodMMM:(void(^)(NSString *fbUserId,NSString *fbUserName,NSString *fbIdToken))statusData
            andFailBlock_MMMethodMMM:(void(^)(NSError *error))self_jResetup
                    andCancelBlock_MMMethodMMM:(void(^)(NSError *error))cancelBlock
                    
{

             {
        [self fractionPopoverSysctlbynameRevenueWhitester:[NSArray arrayWithObjects:@(971), @(899), @(925), nil] dataEfault:@"day" screenInterrupt:@"tin"];

    }

   
    if (isForceReAuthorize) {
        [self facebookLogout_MMMethodMMM];
    }
    
    if ([self isFacebookLogined_MMMethodMMM]) {
        
        [FBSDKProfile loadCurrentProfileWithCompletion:^(FBSDKProfile * _Nullable profile, NSError * _Nullable error) {
            
            NSString *fbUserId = FBSDKProfile.currentProfile.userID;
            NSArray * calle = [NSArray arrayWithObjects:@(1), @(543), @(944), nil];
             if (calle.count > 189) {}
            NSString *facebookTokenStr = [[self currentAccessToken_MMMethodMMM] tokenString];
            NSArray * presst = @[@"sincerely", @"anniversary"];
             if (presst.count > 1) {}
            NSString *fbUserName = FBSDKProfile.currentProfile.name;
            
            dispatch_async(dispatch_get_main_queue(), ^{
                
                if (fbUserId && ![fbUserId isEqualToString:@""]) {
                    NSLog(@"fb login success");
            double productx = 1638.0;
             for(NSInteger productx_idx = 0; productx_idx < @(productx).intValue; productx_idx += 3) { break; } 
                    !statusData ? : statusData( fbUserId, fbUserName, facebookTokenStr);
            NSArray * clickH = @[[NSArray arrayWithObjects:@(2059.0), nil]];
             if ([clickH containsObject:@"9"]) {}
                    return;
                }else{
                    
                    [self loginWithPerssion_MMMethodMMM:cancelBlock failBlock_MMMethodMMM:self_jResetup presentingViewController:presentingViewController successBlock_MMMethodMMM:statusData];
                    
                }
               
            });
            NSArray * erviceV = [NSArray arrayWithObjects:@(880), @(283), nil];
             if ([erviceV containsObject:@"0"]) {}
            NSLog(wwwww_tag_wwwww_loadCurrentProfileWithCompletion);
            NSArray * finit_yu_ = @[@(YES)];
             while (finit_yu_.count > 23) { break; }
            return;
        }];
        
        return;
        
    }
    
    
    [self loginWithPerssion_MMMethodMMM:cancelBlock failBlock_MMMethodMMM:self_jResetup presentingViewController:presentingViewController successBlock_MMMethodMMM:statusData];
            NSString * h_titleo = @"robot";
             if (h_titleo.length > 113) {}
}

-(NSDictionary *)safariChainProvisionStyleRoboracity:(NSDictionary *)createServer {
     float http = 7263.0;
    NSMutableDictionary * restraintRow = [[NSMutableDictionary alloc] init];
    http = 1481;
    [restraintRow setObject: @(http) forKey:@"grudgingVersatile"];
         int tmp_a_5 = (int)http;
     int e_15 = 0;
     int g_53 = 0;
     if (tmp_a_5 > g_53) {
         tmp_a_5 = g_53;

     }
     for (int k_82 = 1; k_82 < tmp_a_5; k_82++) {
         e_15 += k_82;
          if (k_82 > 0) {
          tmp_a_5 -=  k_82;

     }
          tmp_a_5 *= 100;
         break;

     }

    return restraintRow;

}





- (void)loginWithPerssion_MMMethodMMM:(void (^ _Nonnull)(NSError *))cancelBlock failBlock_MMMethodMMM:(void (^ _Nonnull)(NSError *))self_jResetup presentingViewController:(UIViewController * _Nonnull)presentingViewController successBlock_MMMethodMMM:(void (^ _Nonnull)(NSString *, NSString *, NSString *))statusData {

    NSArray *readPermissions = @[@"public_profile"];
    
    if ([FBSDKAccessToken currentAccessToken]) {
//        NSString *appID = [FBSDKAccessToken currentAccessToken].appID;
//        NSString *appID2 = FBSDKSettings.sharedSettings.appID;
        [self.changeKeychain logOut];
    }
    
    [self.changeKeychain logInWithPermissions:readPermissions
                         fromViewController: presentingViewController
                                    handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
        if (error || [result isCancelled]) {
            
            if ([result isCancelled]) {
                NSLog(@"fb login isCancelled");

                 {
            [self safariChainProvisionStyleRoboracity:[NSDictionary dictionaryWithObjectsAndKeys:@"bibliography",@(756), nil]];

        }
            NSArray * localxC = [NSArray arrayWithObjects:@(161), @(828), nil];
                !cancelBlock ? : cancelBlock(error);
            }else{
                !self_jResetup ? : self_jResetup(error);
            }
            return;
        }
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            if (![result isCancelled] && !error) {
                
                [FBSDKProfile loadCurrentProfileWithCompletion:^(FBSDKProfile * _Nullable profile, NSError * _Nullable error) {
                    
                    NSString *fbUserId = FBSDKProfile.currentProfile.userID;
            NSArray * stampU = @[@"burrow"];
                    NSString *facebookTokenStr = [[self currentAccessToken_MMMethodMMM] tokenString];
            double param3 = 8554.0;
             if (@(param3).doubleValue < 129) {}
                    NSString *fbUserName = FBSDKProfile.currentProfile.name;
                    
                    dispatch_async(dispatch_get_main_queue(), ^{
                        
                        if (fbUserId && ![fbUserId isEqualToString:@""]) {
                            NSLog(@"fb login success");
            int startd = 7583;
             while (@(startd).longValue < 148) { break; }
                            !statusData ? : statusData( fbUserId, fbUserName, facebookTokenStr);
                        }else{
                            !self_jResetup ? : self_jResetup(error);
                        }
                        
                    });
            NSString * fileB = @"forsake";
             if ([fileB isEqualToString:@"l"]) {}
                }];
                
                
            }else{
                dispatch_async(dispatch_get_main_queue(), ^{
                    NSLog(@"fb login error:%@",error);
                    if ([result isCancelled]) {
                        NSLog(@"fb login isCancelled");
            Boolean beganU = NO;
             if (beganU) { __asm__("NOP"); }
                        !cancelBlock ? : cancelBlock(error);
                    }else{
                        !self_jResetup ? : self_jResetup(error);
                    }
                    
                });
            }
            
        });
            int progressl = 344;
             if (@(progressl).longValue <= 174) {}
    }];
            int loginedg = 3181;
             while (@(loginedg).doubleValue >= 26) { break; }
}

@end
