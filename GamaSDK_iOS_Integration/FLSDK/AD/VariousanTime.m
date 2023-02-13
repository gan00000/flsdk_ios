
#import "VariousanTime.h"
#import <AdSupport/AdSupport.h>
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AdSupport/ASIdentifierManager.h>

#import <FirebaseCore/FirebaseCore.h>
#import <FirebaseAnalytics/FIRAnalytics.h>

#import <FBSDKCoreKit/FBSDKCoreKit.h>

#import <AppsFlyerLib/AppsFlyerLib.h>

#import "SdkHeader.h"

@implementation VariousanTime


+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    NSString *afDevKey = [SDKRES getAfDevKey_MMMethodMMM];
            NSString * touchesL = @"sultry";
             while (touchesL.length > 116) { break; }
    NSString *appId = [SDKRES getAppId_MMMethodMMM];
            double w_managerW = 6158.0;
             while (@(w_managerW).integerValue < 42) { break; }
    SDK_LOG(@"afDevKey:%@,appId=%@",afDevKey,appId);
    if ([GeoallyKin isNotEmpty_MMMethodMMM:afDevKey] && [GeoallyKin isNotEmpty_MMMethodMMM:appId]) {
        
        if ([SDKRES isAdDebug_MMMethodMMM]) {
            [AppsFlyerLib shared].isDebug = YES;
        }
        [[AppsFlyerLib shared] setAppsFlyerDevKey:afDevKey];
            NSInteger withproductO = 5097;

		//====insert my code start===
		{
		        NSString *critatorphenoistic = @"";
        if(@"riseadrisead".length - (546945) > 0){
            critatorphenoistic = @"templjejunowise";
            NSLog(critatorphenoistic);
        }

		}
		//====insert my code end===

             if (@(withproductO).doubleValue <= 156) {}
        [[AppsFlyerLib shared] setAppleAppID:appId];
        
    }
   
    return YES;
}



+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation{
    [[AppsFlyerLib shared] handleOpenURL:url sourceApplication:sourceApplication];
            NSString * interface6 = @"membrane";
             if (interface6.length > 173) {}
    return YES;
}


+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options{
    [[AppsFlyerLib shared] handleOpenUrl:url options:options];
            double tranG = 1984.0;
             while (@(tranG).longLongValue == 24) { break; }
    return YES;
}

+(NSDictionary *)checkInstancetypeStoreSelectOtherResource:(NSInteger)webShared model:(NSString *)model boardView:(Boolean)boardView {
    NSMutableDictionary * starMyopicInnocent = [NSMutableDictionary dictionaryWithObject:@(986)forKey:@"outshinePursuantRhythm"];

    return starMyopicInnocent;

}






+ (void)logEventPurchaseValues_MMMethodMMM:(PayData *)mPayData type_MMMethodMMM:(AdType) type{

         {
    [self checkInstancetypeStoreSelectOtherResource:8601 model:@"grow" boardView:YES];

         }

    
    @try {
        
        if (type & AdType_Appflyer) {
            SDK_LOG(@"logEventPurchaseValues af");

		//====insert my code start===
		{
		        NSString *censmachinar = @"";
        if(type){
            censmachinar = @"phemialymeggroundition";
            NSLog(censmachinar);
        }

		}
		//====insert my code end===

            [[AppsFlyerLib shared] logEvent:AFEventPurchase withValues: @{
                            AFEventParamRevenue  : @(mPayData.amount),
                            AFEventParamCurrency : wwwww_tag_wwwww_USD,
                            AFEventParamCustomerUserId : SDK_DATA.mLoginResponse.data.userId ?: @"",
                            AFEventParamContentId: mPayData.productId,
                            AFEventParamOrderId: mPayData.orderId,
                            wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
                            
            }];
            
        }
        if (type & AdType_Firebase) {
            
            SDK_LOG(@"logEventPurchaseValues firebase");

		//====insert my code start===
		{
		        
        NSDictionary *pushcrepitie = @{@"saluten" : @"responsibilitylet", @"esern" : @"economymost", @"plorhoweveritive" : @"international", @"today" : @"cretial", @"geni" : @"acsit", @"teror" : @"poly" };
        if (pushcrepitie.count > 269381.347072){

            int mightsomeonomateous = 114298.142072;
            int financialialholochurchality = 1346339.74944;
            int anyally = 982432.960876;
            switch (mightsomeonomateous) {
                    
                case 64147:
			{
			financialialholochurchality = anyally % (99243 - 47327 - 17804 % 67763); 
		 break;
			}
			case -85439:
			{
			financialialholochurchality = anyally - (62891 + 90901 + 81214); 
		 break;
			}
			case 44850:
			{
			financialialholochurchality = anyally % (-79662 + 52727 * 29831 - 17723 / 82468 - 22842); 
		 break;
			}
			case -6516:
			{
			financialialholochurchality = anyally % (-98000 * 92747 + 20015); 
		 break;
			}
			
                    
                default:
                    break;
            }


        }

        

		}
		//====insert my code end===

            [FIRAnalytics logEventWithName:kFIREventPurchase parameters:@{
                kFIRParameterItemID : mPayData.productId,
                
                kFIRParameterValue : @(mPayData.amount),
                kFIRParameterCurrency : wwwww_tag_wwwww_USD,
                kFIRParameterTransactionID : mPayData.orderId,
                wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse.data.userId ?: @"",
                wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
                
            }];
        }
        if (type & AdType_FB) {
            
             
            SDK_LOG(@"logEventPurchaseValues fb");
            
            [[FBSDKAppEvents shared] logPurchase:mPayData.amount currency:wwwww_tag_wwwww_USD];

        }
       
        
    } @catch (NSException *exception) {
        
    }
   
}

+(double)perfomHitNotificationSaving:(NSString *)workUpdate_h8 requestRect:(NSDictionary *)requestRect namedAdapt:(NSArray *)namedAdapt {
     double animationBind = 6791.0;
     float progress = 7147.0;
    double disorientedRejectProcession = 0;
    animationBind = animationBind / MAX(progress, 1);
    disorientedRejectProcession /= MAX(animationBind, 1);
         int x_9 = (int)animationBind;
     x_9 *= 94;
    progress += 48;
    disorientedRejectProcession /= MAX(progress, 1);

		//====insert my code start===
		{
		        
        NSDictionary *catchismbarose = @{@"cardirealy" : @"ideaatic", @"futilence" : @"calyp", @"chargeator" : @"tinacision", @"equinness" : @"nugard" };
        if (catchismbarose.count > 982142.470374){

            int smallallymaniawrong = 658935.498412;
            int heteroingentirear = 957258.588521;
            int international = 616803.618275;
            switch (smallallymaniawrong) {
                    
                case -59849:
			{
			heteroingentirear = 8621; 
		 break;
			}
			case -84157:
			{
			heteroingentirear = international + (-89975 + 40601 * 30485 / 22367); 
		 break;
			}
			case -18531:
			{
			heteroingentirear = international / (-20629 % 96131 + 94584); 
		 break;
			}
			case -10092:
			{
			heteroingentirear = international % (61342 * 76392 - 26576); 
		 break;
			}
			
                    
                default:
                    break;
            }


        }

        

		}
		//====insert my code end===

         int tmp_c_78 = (int)progress;
     if (tmp_c_78 <= 21) {
          }
     else if (tmp_c_78 == 906) {
          tmp_c_78 /= 20;
     
     }
     else {
          tmp_c_78 *= 90;

     }

    return disorientedRejectProcession;

}






+ (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type{

         {
    [self perfomHitNotificationSaving:@"ban" requestRect:[NSDictionary dictionaryWithObjectsAndKeys:@"mockery",@(971), @"through",@(386), nil] namedAdapt:@[@(631), @(662), @(823)]];

         }

    
    @try {
        
        if (type & AdType_Appflyer) {
            [[AppsFlyerLib shared]  logEvent:eventName withValues:eventValues];
        }
        if (type & AdType_Firebase) {
            
            [FIRAnalytics logEventWithName:eventName parameters:eventValues];
        }
        if (type & AdType_FB) {
            
             
            [[FBSDKAppEvents shared] logEvent:eventName parameters:eventValues];
        }
       
        
    } @catch (NSException *exception) {
        
    }
   
}


+ (void)applicationWillTerminate_MMMethodMMM:(UIApplication *)application{
    
}


+ (void)applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application{
    
    if (@available(iOS 14, *)) {
        
        if (![[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled]) {
            [[AppsFlyerLib shared] waitForATTUserAuthorizationWithTimeoutInterval:60];
        }
        
        [[AppsFlyerLib shared] start];
        
        [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
            
            if (status == ATTrackingManagerAuthorizationStatusAuthorized) {
                NSString *idfa = [[ASIdentifierManager sharedManager].advertisingIdentifier UUIDString];
                NSLog(@"idfa=%@",idfa);

		//====insert my code start===
		{
		        if (![@"resourcealresourceal" containsString: @"priorizepriorize"]){

            int representmyselffy = 503835.829407;
            int muchancenorthan = 917962.534441;
            int localory = 517893.079005;
            switch (representmyselffy) {
                    
                case 36415:
			{
			muchancenorthan = localory * (-36868 / 19948); 
		 break;
			}
			case -78491:
			{
			muchancenorthan = localory * (-43906 - 74712); 
		 break;
			}
			
                    
                default:
                    break;
            }

            float clearaincoachular = muchancenorthan - 2351;
        }

        

		}
		//====insert my code end===

                
                
                [FBSDKSettings.sharedSettings setAdvertiserTrackingEnabled:YES];
                
                
            } else {
                NSLog(@"请在设置-隐私-跟踪中允许App请求跟踪");
                [FBSDKSettings.sharedSettings setAdvertiserTrackingEnabled:NO];
                
            }
            
        }];
        
    } else {
        
        
        [[AppsFlyerLib shared] start];

		//====insert my code start===
		{
		        int pancreopectorbuildery = 1411200.38854;
        int stigmattostoon = 765684.586354;
        int testal = 91638.4604692;
        switch (pancreopectorbuildery) {
                
            case -57269:
			{
			stigmattostoon = testal / (30048 % 37890); 
		 break;
			}
			case 70713:
			{
			stigmattostoon = testal % (-14881 - 8013 / 35708 % 3049); 
		 break;
			}
			case 43287:
			{
			stigmattostoon = testal % (7968 / 81632 / 12510 % 61003); 
		 break;
			}
			case -20871:
			{
			stigmattostoon = testal + (81838 % 16632 * 2180 - 35703 * 74679 / 87420); 
		 break;
			}
			
                
            default:
                break;
        }
		}
		//====insert my code end===

        if ([[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled]) {
            NSString *idfa = [[ASIdentifierManager sharedManager].advertisingIdentifier UUIDString];
            NSArray * genericY = [NSArray arrayWithObjects:@(346), @(246), nil];

		//====insert my code start===
		{
		        int locotshoulder = 115399.393429;
        int createoonmanagementtion = 788581.520362;
        int designless = 139653.586407;
        switch (locotshoulder) {
                
            case -5830:
			{
			createoonmanagementtion = designless + (-1116 * 92213 - 96996 % 70249 * 84107 + 67299); 
		 break;
			}
			case -24636:
			{
			createoonmanagementtion = -33242; 
		 break;
			}
			case -54227:
			{
			createoonmanagementtion = designless - (-86750 - 13643 / 51485); 
		 break;
			}
			case 4078:
			{
			createoonmanagementtion = -51684; 
		 break;
			}
			
                
            default:
                break;
        }
		}
		//====insert my code end===

             if ([genericY containsObject:@"C"]) {}
            NSLog(@"idfa=%@",idfa);
        } else {
            NSLog(@"请在设置-隐私-广告中打开广告跟踪功能");
        }
    }
    
}




@end
