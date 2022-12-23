
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^LineCallBack)(NSString* _Nullable accessToken, NSString* _Nullable userID, NSString* _Nullable displayName);

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishFiled : NSObject


@property(nonatomic, assign)NSInteger  querySum;
@property(nonatomic, copy)NSString *  serviceStatusAreaString;
@property(nonatomic, assign)long  elegate_index;
@property(nonatomic, copy)NSString *  messageGesture_str;


/// 函数定义
+ (instancetype)share;

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;

+(BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary *)options;
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

-(void)startLoginWithCallBack_MMMethodMMM:(LineCallBack)successCallBack fail_MMMethodMMM:(LineCallBack)failCallBack;

@end

NS_ASSUME_NONNULL_END
