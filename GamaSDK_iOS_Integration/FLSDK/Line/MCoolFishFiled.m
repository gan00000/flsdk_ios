
#import "MCoolFishFiled.h"
#import "LineSDK/LineSDK.h"


#import "CComHeader.h"

@interface MCoolFishFiled() <LineSDKLoginDelegate>
@property(nonatomic, assign)NSInteger  web_tag;
@property(nonatomic, copy)NSArray *  tableList;




@property (nonatomic) LineCallBack successCallBack;
@property (nonatomic) LineCallBack failCallBack;

@end
@implementation MCoolFishFiled


+(BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary *)options
{
    
    return [[LineSDKLogin sharedInstance] handleOpenURL:url];
}



- (void)didLogin:(LineSDKLogin *)login credential:(nullable LineSDKCredential *)credential profile:(nullable LineSDKProfile *)profile error:(nullable NSError *)error {
   self.web_tag = 5138;

   self.tableList = @[@(680), @(384)];

   self.querySum = 258;

   self.serviceStatusAreaString = @"stab";

   self.elegate_index = 6431;

   self.messageGesture_str = @"plausible";



    if (error) {
        
        NSLog(@"Error: %@", error.localizedDescription);
        if (self.failCallBack) {
            self.failCallBack(@"",@"",@"");
        }
    }else {

        
        NSString * accessToken = credential.accessToken.accessToken;
        NSString * userID = profile.userID;
        NSString * displayName = profile.displayName;
        NSString * statusMessage = profile.statusMessage;
        NSURL * pictureURL = profile.pictureURL;

        NSString * pictureUrlString;

        
        if (pictureURL) {
            pictureUrlString = profile.pictureURL.absoluteString;
        }
        SDK_LOG(@"accessToken=%@,userID=%@,displayName=%@",accessToken,userID,displayName);
        if (self.successCallBack) {
            self.successCallBack(accessToken, userID, displayName);
        }

    }

}


+ (instancetype)share{
    
    static MCoolFishFiled *mLineDelegate = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mLineDelegate = [[MCoolFishFiled alloc] init];
    });
    
    return mLineDelegate;
}



+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return YES;
}


-(void)startLoginWithCallBack_MMMethodMMM:(LineCallBack)successCallBack fail_MMMethodMMM:(LineCallBack)failCallBack
{
    self.successCallBack = successCallBack;
    self.failCallBack = failCallBack;
    
    [LineSDKLogin sharedInstance].delegate = self;
    [[LineSDKLogin sharedInstance] startLoginWithPermissions:@[wwwww_tag_wwwww_profile]];
    
    
}




+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    return [[LineSDKLogin sharedInstance] handleOpenURL:url];

}

@end
