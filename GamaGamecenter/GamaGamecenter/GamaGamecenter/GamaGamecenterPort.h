//
//  GamaGamecenterPort.h
//  GamaGamecenter


#import <Foundation/Foundation.h>
#import <GameKit/GameKit.h>

typedef void (^ gameCenterResultHandler) (BOOL isSuccessed);

@interface GamaGamecenterPort : NSObject

+ (void)loginWithGamecenterAutoLoginSwitch:(BOOL)autoSwitch;

+ (void)gamecenterBindWithUserName:(NSString *)userName
                       andPassword:(NSString *)password
                          otherDic:(NSDictionary *)otherDic;

+ (NSString *)getGamecenterUserID;

+ (void)getGamecenterLeaderboards:(void(^)(NSArray *leaderboards))handler;

+ (void)reportScore:(int64_t)score
         andContext:(int64_t)context
   forLeaderboardID:(NSString *)identifier
            handler:(void(^)(BOOL isSuccessed))handler;

+ (void)showLeaderboard:(NSString *)leaderboardID
                handler:(void(^)(void))handler;


+ (void)loadAchievements:(void (^)(NSArray *achievements, NSError *error))handler;

+ (void)reportAchievementIdentifier:(NSString *)identifier percentComplete:(double)percent;

+ (void)retrieveAchievementMetadata:(void (^)(NSArray *descriptions, NSError *error))handle;

+ (void)loadImageWithAchievementDescription:(GKAchievementDescription *)description andCompletionHandler:(void (^)(UIImage *image, NSError *error))handler;

+ (void)showAchievementsWithDefaultState;

@end
