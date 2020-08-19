

#import "GamaAdInfo.h"

typedef NS_ENUM(NSUInteger, GamaParameterType) {
    GamaParameterTypeNull = 0,
    GamaParameterTypeBroken,
    GamaParameterTypeComplete
};

typedef NS_ENUM(NSUInteger, ADTrackType) {
    ADTrackTypeInit = 0,
    ADTrackTypeLanch,
    ADTrackTypeRegister,
    ADTrackTypeNextDayLogin,
    ADTrackTypeCreatedRole,
    ADTrackTypeCreatedCharacter,
    ADTrackTypeFinishGuide,
    ADTrackTypeFinishIAP,
    ADTrackTypeUserDefine,
};

@interface GamaAdFunction : NSObject<NSURLConnectionDataDelegate>
@property (nonatomic, strong) NSDictionary *adjustDic;

+(BOOL)startAd;

+(BOOL)startThirdAd;

+(BOOL)handleURL:(NSURL *)url;

+ (NSString *)getURLScheme:(NSString *)urlScheme isPrefix:(BOOL)isPrefix;

+ (GamaParameterType)isEmptyStrings:(NSString *)strings, ...;

@end

#pragma makr -AD AppFlyer

@interface GamaAdFunction (AppFlyerAD)

+ (void)appFlayerTrackWith:(ADTrackType)trackType;
+ (void)appFlayerTrackWith:(ADTrackType)trackType userDefineEvent:(NSString *)userDefineEventString;

+ (void)appFlayerTrackWithEventName:(NSString *)eventName eventValues:(NSDictionary *)values;

@end

#pragma makr -AD Firebase

@interface GamaAdFunction (Firebase)

+ (void)firebaseLogEventWithName:(NSString *)name parameters:(NSDictionary *)par;

+ (void)firebaseTrackWith:(ADTrackType)trackType userDefineEvent:(NSString *)userDefineEventString;

+ (void)firebaseTrackWithEventName:(NSString *)eventName eventValues:(NSDictionary *)values;

@end

#pragma makr -AD Adjust

@interface GamaAdFunction (Adjust)

+ (void)adjustInitlized;

+ (void)adjustTrackEvent:(NSString *)eventName Parameter:(NSDictionary *)dic;

+ (void)adjust_application:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSDate *)deviceToken;

+ (NSString *)checkEventToken:(NSString *)eventName;

+ (void)writeAdjustEventFile;

@end
