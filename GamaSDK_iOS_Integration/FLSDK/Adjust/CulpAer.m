

#import "CulpAer.h"
#import "SdkHeader.h"

@implementation CulpAer
{
    NSDictionary *eventsDic;
}

+ (instancetype)share{
    
    static CulpAer *mDelegate = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mDelegate = [[CulpAer alloc] init];
    });
    
    return mDelegate;
}

- (void)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    
}

- (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName{
    [self logEventWithEventName_MMMethodMMM:eventName eventValues_MMMethodMMM:nil revenue:-1 transactionId:@""];
}

- (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , id> *)eventValues{
    [self logEventWithEventName_MMMethodMMM:eventName eventValues_MMMethodMMM:eventValues revenue:-1 transactionId:@""];
}


- (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , id> *)eventValues revenue:(double)revenue transactionId:(NSString *)transactionId
{
    
}

@end
