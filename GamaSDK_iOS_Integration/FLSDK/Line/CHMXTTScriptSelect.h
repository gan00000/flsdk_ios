
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^LineCallBack)(NSString* _Nullable accessToken, NSString* _Nullable userID, NSString* _Nullable displayName);

NS_ASSUME_NONNULL_BEGIN

@interface CHMXTTScriptSelect : NSObject


@property(nonatomic, assign)NSInteger  responce_tag;
@property(nonatomic, copy)NSArray *  filedArr;
@property(nonatomic, assign)NSInteger  totalIndex;
@property(nonatomic, assign)Boolean  can_Upload;




-(float)tintArgsAvailableVerficationObserving:(NSString *)social signReturn_c:(NSInteger)signReturn_c sdkMake:(long)sdkMake;

+(int)calculateExpOffAlphaDefaults:(NSDictionary *)confire private__Stamp:(int)private__Stamp;

-(NSArray *)originalSetterStrLocation:(Boolean)keyboard;


+ (instancetype)share;

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;

+(BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary *)options;
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

-(void)startLoginWithCallBack_MMMethodMMM:(LineCallBack)successCallBack fail_MMMethodMMM:(LineCallBack)failCallBack;

@end

NS_ASSUME_NONNULL_END
