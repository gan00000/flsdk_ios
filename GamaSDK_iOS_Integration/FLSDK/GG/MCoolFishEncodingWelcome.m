
#import "MCoolFishEncodingWelcome.h"
#import <FirebaseCore/FirebaseCore.h>
#import <FirebaseAuth/FirebaseAuth.h>
#import <FirebaseMessaging/FIRMessaging.h>

@implementation MCoolFishEncodingWelcome
    

+(NSString *)getClientID_MMMethodMMM
{
    return [FIRApp defaultApp].options.clientID;
}


+ (BOOL)application:(id)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    
    
    return YES;
}


@end
