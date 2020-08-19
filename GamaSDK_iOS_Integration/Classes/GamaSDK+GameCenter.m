//
//  SPSDK+GameCenter.m
//  SPSDK_iOS
//
//  Created by sunn on 2017/9/29.
//  Copyright © 2017年 starpy. All rights reserved.
//

#import "GamaSDK+GameCenter.h"

@implementation FLSDK (GameCenter)

+ (void)gama_getGamecenterLeaderboards:(void(^)(NSArray *leaderboards))handler
{
    [NSClassFromString(@"GamaGamecenterPort") getGamecenterLeaderboards:handler];
}

+ (void)gama_reportGameCenterScore:(int64_t)score
                   andContext:(int64_t)context
             forLeaderboardID:(NSString *)identifier
                      handler:(void(^)(BOOL isSuccessed))handler
{
    [NSClassFromString(@"GamaGamecenterPort") reportScore:score andContext:context forLeaderboardID:identifier handler:handler];
}

+ (void)gama_showGameCenterLeaderboard:(NSString *)leaderboardID
                          handler:(void(^)(void))handler
{
    [NSClassFromString(@"GamaGamecenterPort") showLeaderboard:leaderboardID handler:handler];
}

+ (void)gama_loadAchievements:(void (^)(NSArray *, NSError *))handler
{
    [NSClassFromString(@"GamaGamecenterPort") loadAchievements:handler];
}

+ (void)gama_reportAchievementIdentifier:(NSString *)identifier percentComplete:(double)percent
{
    [NSClassFromString(@"GamaGamecenterPort") reportAchievementIdentifier:identifier percentComplete:percent];
}

+ (void)gama_retrieveAchievementMetadata:(void (^)(NSArray *, NSError *))handle
{
    [NSClassFromString(@"GamaGamecenterPort") retrieveAchievementMetadata:handle];
}

+ (void)gama_loadImageWithAchievementDescription:(GKAchievementDescription *)description andCompletionHandler:(void (^)(UIImage *, NSError *))handler
{
    [NSClassFromString(@"GamaGamecenterPort") loadImageWithAchievementDescription:description andCompletionHandler:handler];
}

+ (void)gama_showAchievements
{
    [NSClassFromString(@"GamaGamecenterPort") showAchievementsWithDefaultState];
}

@end
