

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^NaverCallBack)(NSString* _Nullable accessToken, NSString* _Nullable userID, NSString* _Nullable displayName);

@interface NaverDelegate : NSObject 

+ (instancetype)share;


-(void)startLoginWithKey_MMMethodMMM:(NSString *)consumerKey consumerSecret_MMMethodMMM:(NSString *)consumerSecret appName_MMMethodMMM:(NSString *)appName callback_MMMethodMMM:(NaverCallBack)callback;
@end

NS_ASSUME_NONNULL_END
