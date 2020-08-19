//
//  GamaSDK+GameCenter.h
//  GamaSDK_iOS
//
//  Created by sunn on 2017/9/29.
//  Copyright © 2017年 starpy. All rights reserved.
//

#import "FLSDK.h"
#import <GameKit/GameKit.h>

@interface FLSDK (GameCenter)
/**
 @abstract      GameCenter获取排行榜集合
 
 @param         handler         获取gameCenter排行榜列表后的回调代码块（leaderboards数组中的对象为GKLeaderboard）
 */
+ (void)gama_getGamecenterLeaderboards:(void(^)(NSArray *leaderboards))handler;

/**
 @abstract      GameCenter上报分数到对应排行榜
 
 @param         score           需上报的分数
 @param         context         上报分数的分类标识
 @param         identifier      gameCenter排行榜的标识ID
 @param         handler         上报分数后的回调代码块
 */
+ (void)gama_reportGameCenterScore:(int64_t)score
                   andContext:(int64_t)context
             forLeaderboardID:(NSString *)identifier
                      handler:(void(^)(BOOL isSuccessed))handler;

/**
 @abstract      GameCenter显示默认排行榜界面
 
 @param         leaderboardID   所显示的gameCenter排行榜的标识ID
 @param         handler         gameCenter排行榜界面显示消失后的回调代码块
 */
+ (void)gama_showGameCenterLeaderboard:(NSString *)leaderboardID
                             handler:(void(^)(void))handler;


/**
 @abstract      GameCenter获取正在完成的成就
 
 @param         handler         成就数组以及错误原因的回调代码块
 */
+ (void)gama_loadAchievements:(void (^)(NSArray *achievements, NSError *error))handler;

/**
 @abstract      GameCenter对某个成就上报进度
 
 @param         identifier   成就ID
 @param         percent      成就进度,double类型 0 - 100 (完全完成)
 */
+ (void)gama_reportAchievementIdentifier:(NSString *)identifier percentComplete:(double)percent;

/**
 @abstract      GameCenter检索游戏所有成就的具体信息(id,title等等)
 
 @param         handler         成就详细信息列表的回调代码块
 */
+ (void)gama_retrieveAchievementMetadata:(void (^)(NSArray *descriptions, NSError *error))handle;

/**
 @abstract      GameCenter下载某个成就的图标
 
 @param         description   成就详细信息的对象
 @param         handler       成就对应的图标以及获取的错误信息的回调代码块
 */
+ (void)gama_loadImageWithAchievementDescription:(GKAchievementDescription *)description
                       andCompletionHandler:(void (^)(UIImage *image, NSError *error))handler;

/**
 @abstract      GameCenter显示成就榜界面（默认排行榜、成就榜界面）
 */
+ (void)gama_showAchievements;

@end
