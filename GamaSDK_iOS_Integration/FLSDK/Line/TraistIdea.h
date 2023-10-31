

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^LineCallBack)(NSString* _Nullable accessToken, NSString* _Nullable userID, NSString* _Nullable displayName);

NS_ASSUME_NONNULL_BEGIN

@interface TraistIdea : NSObject

+ (instancetype)share;


+(BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary *)options;

-(void)startLoginWithCallBack_MMMethodMMM:(LineCallBack)successCallBack fail_MMMethodMMM:(LineCallBack)failCallBack;

@end

NS_ASSUME_NONNULL_END
