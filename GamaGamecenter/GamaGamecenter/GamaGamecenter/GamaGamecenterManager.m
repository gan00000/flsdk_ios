//
//  GamecenterFunctions.m
//  gameCenterLogin
//
//  Created by 谢 京文 on 14/12/24.
//  Copyright (c) 2014年 谢 京文. All rights reserved.
//

#import "GamaGamecenterManager.h"
#import "GamaCentreInfo.h"

@interface GamaGamecenterManager ()
@property (copy, nonatomic) voidHandler gkLeaderboardhandler;
@end

@implementation GamaGamecenterManager

@synthesize friends = _friends;
@synthesize friendsData = _friendsData;
@synthesize leaderboards = _leaderboards;
@synthesize localPlayerID = _localPlayerID;
@synthesize achievements = _achievements;
@synthesize achievementsDES = _achievementsDES;
@synthesize gkLeaderboardhandler = _gkLeaderboardhandler;
//@synthesize isFirstLogin = _isFirstLogin;
@synthesize publicKeyUrl = _publicKeyUrl;
@synthesize signature = _signature;
@synthesize salt = _salt;
@synthesize timestamp = _timestamp;

- (void)dealloc
{
    [_friends release];_friends = nil;
    [_friendsData release];_friendsData = nil;
    [_leaderboards release];_leaderboards = nil;
    [_localPlayerID release];_localPlayerID = nil;
    [_achievements release];_achievements = nil;
    [_achievementsDES release];_achievementsDES = nil;
    [_publicKeyUrl release];_publicKeyUrl = nil;
    [_signature release];_signature = nil;
    [_salt release];_salt = nil;
    [_timestamp release];_timestamp = nil;
    Block_release(_gkLeaderboardhandler);_gkLeaderboardhandler = nil;
    [super dealloc];
}

+ (GamaGamecenterManager *)shareGamecenterManager
{
    static dispatch_once_t onceToken;
    static GamaGamecenterManager *gamecenterManager;
    dispatch_once(&onceToken, ^{
        gamecenterManager = [[GamaGamecenterManager alloc] init];
    });
    
    return gamecenterManager;
}

- (void)gamecenterlog:(NSString *)logStr
{
    NSLog(@"[gamecenter log]:%@",logStr);
}

- (void)authenticateLocalPlayer:(resultHandler)authHandler
{
    GKLocalPlayer *localPlayer = [GKLocalPlayer localPlayer];

    localPlayer.authenticateHandler = ^(UIViewController *viewController, NSError
                                        *error){
        
        __block BOOL result = NO;
        
        if (error) {
            [self gamecenterlog:[NSString stringWithFormat:@"%s.error = %@",__FUNCTION__,error]];
        }
        
        if (viewController != nil)
        {
            [self showAuthenticationDialogWhenReasonable:viewController];
        }
        else if (localPlayer.isAuthenticated)
        {
            [localPlayer generateIdentityVerificationSignatureWithCompletionHandler:^(NSURL * _Nullable publicKeyUrl, NSData * _Nullable signature, NSData * _Nullable salt, uint64_t timestamp, NSError * _Nullable error) {

                if (!error) {
                    NSString *base64StrSign = [GamaFunction encode:(uint8_t *)signature.bytes length:signature.length];
                    NSString *base64StrSalt = [GamaFunction encode:(uint8_t *)salt.bytes length:salt.length];
                    NSString *strTimeStamp = [NSString stringWithFormat:@"%llu",timestamp];

                    [_publicKeyUrl release];
                    [_signature release];
                    [_salt release];
                    [_timestamp release];
                    _publicKeyUrl = publicKeyUrl.absoluteString.copy;
                    _timestamp = strTimeStamp.copy;
                    _signature = base64StrSign.copy;
                    _salt = base64StrSalt.copy;

                    result = YES;

                    if (!_localPlayerID || ![localPlayer.playerID isEqualToString:_localPlayerID]) {

                        [_localPlayerID release];
                        _localPlayerID = localPlayer.playerID.copy;
                        //                _isFirstLogin = YES;
                    }
                }

                authHandler(result);
            }];       
        } else{
            authHandler(result);
        }
        
        
        
    };
}


- (void)showAuthenticationDialogWhenReasonable:(UIViewController *)viewC
{
    UIViewController *rootViewC = [UIApplication sharedApplication].keyWindow.rootViewController;
    [rootViewC presentViewController:viewC animated:YES completion:^{
        
    }];
}


- (void)retrieveFriends:(resultHandler)friendsHandler
{
    GKLocalPlayer *lp = [GKLocalPlayer localPlayer];
    
    if (lp.authenticated)
    {
        if ([[GamaFunction getSystemVersion] integerValue] >= 8) {
            [lp loadFriendPlayersWithCompletionHandler:^(NSArray *friendPlayers, NSError *error) {
                BOOL result = NO;
                
                if (error) {
                    [self gamecenterlog:[NSString stringWithFormat:@"%s.error = %@",__FUNCTION__,error]];
                }
                
                if (friendPlayers) {
                    result = YES;
                    [_friends release];
                    _friends = friendPlayers.copy;
                }
                
                friendsHandler(result);
            }];
        }
        else
        {
            //IOS4-7
            [lp loadFriendsWithCompletionHandler:^(NSArray *friendIDs, NSError *error)
             {
                 BOOL result = NO;
                 if (error) {
                     [self gamecenterlog:[NSString stringWithFormat:@"%s.error = %@",__FUNCTION__,error]];
                 }
                 if (!friendIDs) {
                     result = YES;
                     [_friends release];
                     _friends = friendIDs.copy;
                 }
                 friendsHandler(result);
             }];
        }
    }
    else
    {
        friendsHandler(NO);
    }
}

- (void)loadPlayerData:(NSArray *)friendIDs playerDataHandler:(resultHandler)playerHandler
{
    [GKPlayer loadPlayersForIdentifiers:friendIDs withCompletionHandler:^(NSArray *players, NSError *error) {
  
        BOOL result = NO;
        if (error) {
            [self gamecenterlog:[NSString stringWithFormat:@"%s.error = %@",__FUNCTION__,error]];
        }
        if (players) {
            result = YES;
            [_friendsData release];
            _friendsData = players.copy;
        }
        
        playerHandler(result);
            // Process the array of GKPlayer objects.
        
    }];
}

- (void)loadPlayerPhoto:(GKPlayer *)player photoHandler:(photoHandler)handler
{
     
    [player loadPhotoForSize:GKPhotoSizeSmall withCompletionHandler:^(UIImage *photo, NSError *error) {
        
        handler(photo, error);
    }];
}


- (void)addFriends:(NSArray *)identifiers andViewController:(UIViewController *)vc
{
     
    GKFriendRequestComposeViewController *friendRequestViewController =
    [[GKFriendRequestComposeViewController alloc] init];
    friendRequestViewController.composeViewDelegate = self;
    if (identifiers)
    {
        [friendRequestViewController addRecipientsWithPlayerIDs: identifiers];
    }
    [vc presentViewController: friendRequestViewController animated: YES
                          completion:nil];
    [friendRequestViewController release];
}




//邀请结束或者取消
- (void)friendRequestComposeViewControllerDidFinish:(GKFriendRequestComposeViewController
                                                     *)viewController
{
     
}

#pragma mark - leaderboard function

//检索游戏包含的排行榜
- (void)retrieveLeaderboardsWithCompletionHandler:(resultHandler)handler
{
     
    if (_leaderboards) {
        handler(YES);
        return;
    }
    
    [GKLeaderboard loadLeaderboardsWithCompletionHandler:^(NSArray *leaderboards, NSError *error) {
        BOOL result = NO;
        if (error) {
            [self gamecenterlog:[NSString stringWithFormat:@"%s.error = %@",__FUNCTION__,error]];
        }
        if (leaderboards) {
            result = YES;
            [_leaderboards release];
            _leaderboards = leaderboards.copy;
        }
        
        handler(result);
        
    }];
}

//对某个排行榜上报分数
- (void)reportScore:(int64_t)score
         andContext:(int64_t)context
   forLeaderboardID:(NSString *)identifier
            handler:(resultHandler)handler
{
     
    GKScore *scoreReporter = [[[GKScore alloc] initWithLeaderboardIdentifier:identifier] autorelease];
    
    scoreReporter.value = score;
    scoreReporter.context = context; //一个额外的参数，用于标识这个分数的特点，如：我使用法拉利创造了这个分数(score,1),1表示法拉利
    
    NSArray *scores = @[scoreReporter];
    [GKScore reportScores:scores withCompletionHandler:^(NSError *error){
        //Do something interesting here.
        BOOL result = NO;
        if (error) {
            [self gamecenterlog:[NSString stringWithFormat:@"%s.error = %@",__FUNCTION__,error]];
        }
        else
        {
            result = YES;
        }
        handler(result);
    }];
}

//载入默认的排行榜
- (void)loadDefaultLeaderloardIdentifier:(void (^) (NSString *leaderboardID, NSError *error))handler
{
     
    [[GKLocalPlayer localPlayer] loadDefaultLeaderboardIdentifierWithCompletionHandler:^(NSString *leaderboardIdentifier, NSError *error) {
        handler(leaderboardIdentifier, error);
    }];
    
}


//设置默认排行榜
- (void)setDefaultLeaderboardIdentifier:(NSString *)leaderboardID handler:(resultHandler)handler
{
     
    [[GKLocalPlayer localPlayer] setDefaultLeaderboardIdentifier:leaderboardID completionHandler:^(NSError *error) {
        
        
        if (error) {
            handler(NO);
            [self gamecenterlog:[NSString stringWithFormat:@"%s.error = %@",__FUNCTION__,error]];
        }
        else
            handler(YES);
    }];
    
}

//使用gameKit自带界面展示排行榜
- (void)showLeaderboard:(NSString *)leaderboardID handler:(void(^)(void))handler
{
     
    //IOS6以上
    GKGameCenterViewController *gameCenterController = [[[GKGameCenterViewController alloc] init] autorelease];
    if (gameCenterController != nil) {
        gameCenterController.gameCenterDelegate = self;
        gameCenterController.viewState = GKGameCenterViewControllerStateDefault;
        
        
        if ([[GamaFunction getSystemVersion] integerValue] < 8) {
            gameCenterController.leaderboardTimeScope = GKLeaderboardTimeScopeToday;//IOS8之后失效
        }
        
        UIViewController *rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
        
        [rootVC presentViewController: gameCenterController animated: YES
                         completion:nil];
    }
}

//检索某个排行榜的所有分数
- (void)retrieveScoresWithLeaderboard:(GKLeaderboard *)leaderboard handler:(void (^)(NSArray *scores, NSError *error))result
{
     
    [leaderboard loadScoresWithCompletionHandler:^(NSArray *scores, NSError *error) {
        result(scores, error);
    }];
}

//载入排行榜sets
- (void)loadLeaderboardSetInfoWitnHandler:(void (^)(NSArray *leaderboardSets, NSError *error))handler
{
     
    [GKLeaderboardSet loadLeaderboardSetsWithCompletionHandler:^(NSArray *leaderboardSets, NSError *error) {
        handler(leaderboardSets,error);
    }];
}


#pragma mark - achievement function

- (void)loadAchievements:(void (^)(NSArray *achievements, NSError *error))handler
{
     
    [GKAchievement loadAchievementsWithCompletionHandler:^(NSArray *achievements, NSError *error) {
        if (error) {
            [self gamecenterlog:[NSString stringWithFormat:@"%s.error = %@",__FUNCTION__,error]];
        }
        
        if (achievements) {
            [_achievements release];
            _achievements = achievements.copy;
        }
        
        handler(achievements, error);
        
    }];
}

- (void)reportAchievementIdentifier:(NSString *)identifier percentComplete:(double)percent
{
    GKAchievement *achievement = [[GKAchievement alloc] initWithIdentifier:identifier];
    if (achievement) {
        achievement.percentComplete = percent;
        
        [GKAchievement reportAchievements:@[achievement]
                    withCompletionHandler:^(NSError * _Nullable error) {
                        if (error != nil) {
                            NSLog(@"error : %@",error);
                        }
                    }];

    }
}

//检索游戏所有成就的具体信息(id,title等等)
- (void)retrieveAchievementMetadata:(void (^)(NSArray *descriptions, NSError *error))handle
{
     
    [GKAchievementDescription loadAchievementDescriptionsWithCompletionHandler:^(NSArray *descriptions, NSError *error) {
        
        
        
        if (error != nil)
        {
            [self gamecenterlog:[NSString stringWithFormat:@"%s.error = %@",__FUNCTION__,error]];
            // Process the error.
        }
        if (descriptions != nil)
        {
            [_achievementsDES release];
            _achievementsDES = descriptions.copy;
            NSLog(@"%@",descriptions);
            for (GKAchievementDescription *description in descriptions) {
                NSLog(@"\nid = %@\n\ntitle = %@\n\nachievementD = %@\n\nunachievement = %@\n\nvisible = %hhd",description.identifier,description.title,description.achievedDescription,description.unachievedDescription,description.hidden);

            }
            // use the achievement descriptions.
        }
        handle(descriptions, error);
    }];
}

//下载某个成就的图标
- (void)loadImageWithAchievementDescription:(GKAchievementDescription *)description andCompletionHandler:(void (^)(UIImage *image, NSError *error))handler
{
    [description loadImageWithCompletionHandler:^(UIImage *image, NSError *error) {
        handler(image, error);
    }];
}

//展示成就
- (void)showAchievementsWithDefaultState
{
     
    GKGameCenterViewController *gameCenterController = [[[GKGameCenterViewController alloc] init] autorelease];
    if (gameCenterController != nil)
    {

        gameCenterController.gameCenterDelegate = self;
        gameCenterController.viewState = GKGameCenterViewControllerStateDefault;
        
        UIViewController *rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
        
        [rootVC presentViewController: gameCenterController animated: YES
                           completion:nil];
        
    }
}

#pragma mark - GKGameCenterController delegate
- (void)gameCenterViewControllerDidFinish:(GKGameCenterViewController *)gameCenterViewController
{     
    [gameCenterViewController dismissViewControllerAnimated:YES completion:nil];
    if(_gkLeaderboardhandler) {
        _gkLeaderboardhandler();
    }
}

@end
