

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^LineCallBack)(NSString* _Nullable accessToken, NSString* _Nullable userID, NSString* _Nullable displayName);

NS_ASSUME_NONNULL_BEGIN

@interface AnyantHospitform : NSObject

+ (instancetype)share;


+(BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary *)options;

-(void)startLoginWithCallBack_MMMethodMMM:(LineCallBack)successCallBack fail_MMMethodMMM:(LineCallBack)failCallBack;

+ (NSDictionary *)juriivity13086Passerdom13087;//insert method def
@end

NS_ASSUME_NONNULL_END
