

#import "HaustfierMeicoursemost.h"
#import <FirebaseCore/FirebaseCore.h>
#import <FirebaseAuth/FirebaseAuth.h>
#import <FirebaseMessaging/FIRMessaging.h>

@implementation HaustfierMeicoursemost
    
+ (BOOL)application:(id)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    
    
    return YES;
}



+(NSString *)getClientID_MMMethodMMM
{

		
    return [FIRApp defaultApp].options.clientID;
}


@end
