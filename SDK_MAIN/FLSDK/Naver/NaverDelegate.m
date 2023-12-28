

#import "NaverDelegate.h"
#import "SdkHeader.h"

@implementation NaverDelegate
{
    NaverCallBack mNaverCallBack;
}

+ (instancetype)share{
    
    static NaverDelegate *mDelegate = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mDelegate = [[NaverDelegate alloc] init];
    });
    
    return mDelegate;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    return YES;
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options{
    SDK_LOG(wwwww_tag_wwwww_application_openURL_options);
    return YES;
}

-(void)startLoginWithKey_MMMethodMMM:(NSString *)consumerKey consumerSecret_MMMethodMMM:(NSString *)consumerSecret appName_MMMethodMMM:(NSString *)appName callback_MMMethodMMM:(NaverCallBack)callback{
    
    
}

- (void)requestThirdpartyLogin:(NSString *)consumerKey consumerSecret:(NSString *)consumerSecret appName:(NSString *)appName
{
    
    
}

- (void)getUserProfile{
}

- (void)sendRequestWithUrlString:(NSString *)urlString {
}

- (void)dealloc
{
}



@end
