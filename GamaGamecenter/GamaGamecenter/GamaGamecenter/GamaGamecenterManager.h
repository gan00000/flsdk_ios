//
//  GamaGamecenterFunctions.h
//  gameCenterLogin
//


#import <Foundation/Foundation.h>
#import "GamaGamecenterPort.h"

typedef void (^ resultHandler) (BOOL isSuccessed);

typedef void (^ photoHandler) (UIImage *photo, NSError *error);

typedef void (^ voidHandler) (void);

@interface GamaGamecenterManager : NSObject<GKFriendRequestComposeViewControllerDelegate,GKGameCenterControllerDelegate>

@property (copy, nonatomic, readonly) NSString *localPlayerID;
@property (copy, nonatomic, readonly) NSArray *friends;
@property (copy, nonatomic, readonly) NSArray *friendsData;
@property (copy, nonatomic, readonly) NSArray *leaderboards;
@property (copy, nonatomic, readonly) NSArray *achievementsDES; //所有成就的详细信息
@property (copy, nonatomic, readonly) NSArray *achievements; //已经有进度的成就

@property (copy, nonatomic, readonly) NSString *publicKeyUrl;
@property (copy, nonatomic, readonly) NSString *signature;
@property (copy, nonatomic, readonly) NSString *salt;
@property (copy, nonatomic, readonly) NSString *timestamp;

+ (GamaGamecenterManager *)shareGamecenterManager;

/**
 *  gamecenter获取playid的方法，只有成功的时候才有回调，而且每次从后台进入前台都会自动调用这个方法。
 Like other multitasking apps, your game should archive its state before moving into the background.
 As soon as your game moves to the background, the value of the local player object’s authenticated property becomes and remains invalid until your game moves back to the foreground. You cannot read the value to determine if the player is still authenticated until Game Kit reauthenticates the player and calls your authentication handler. Your game must act as though there is not an authenticated player until your completion handler is called. Once your handler is called, value stored in the authenticated property is valid again.
 If the value of the authenticated property changed to NO, then there is no longer a local player authorized to access Game Center content. Your game must dispose of any Game Kit objects that were created using the previous local player.
 If the value of the authenticated property is YES, then there is a local player authenticated on the device. However, a new player may have logged in. Your game should store the player identifier for the local player after it authenticates the player. Then, on future calls to your completion handler, compare the value of the local player object’s playerID property to the identifier stored by your game. If the identifier changed, then a new player has signed in. Your game should dispose of any objects associated with the previous player and then create or load the appropriate state for the new local player.
 *
 *  @param authHandler GKLocalPlayer对象，有playerID等属性
 */
- (void)authenticateLocalPlayer:(resultHandler)authHandler;

/**
 *  获取gameCenter的好友
 *
 *  @param friendsHandler 返回成功或者失败，成功的话数据会存到friends属性上面
 */
- (void)retrieveFriends:(resultHandler)friendsHandler;

/**
 *  获取其他玩家的数据
 *
 *  @param friendIDs     需要获取数据的玩家对应gamecenter ID
 *  @param playerHandler GKPlayer的数组，对应friendIDs的玩家数据。
 */
- (void)loadPlayerData:(NSArray *)friendIDs playerDataHandler:(resultHandler)playerHandler;

/**
 *  获取某个玩家的photo
 *
 *  @param player  GKPlayer对象
 *  @param handler player对应的photo
 */
- (void)loadPlayerPhoto:(GKPlayer *)player photoHandler:(photoHandler)handler;

/**
 *  添加好友
 *
 *  @param identifiers 需要添加的好友id，不能知道成功或者失败
 */
- (void)addFriends:(NSArray *)identifiers andViewController:(UIViewController *)vc;


#pragma mark - leaderboard
/**
 *  获取游戏的排行榜列表，IOS6以上可用
 *
 *  @param handler leaderboard数组，以及error
 */
- (void)retrieveLeaderboardsWithCompletionHandler:(resultHandler)handler;

/**
 *  向排行榜上报分数
 *
 *  @param score      分数值
 *  @param context    一个额外的参数，用于标识这个分数的特点，如：我使用法拉利标识了这个分数(score,1),1表示法拉利 optional additional context that allows a game to store and retrieve additional data associated with the store.  Default value of zero is returned if no value is set.
 *  @param identifier 排行榜ID
 *  @param handler    错误回调，如果上传失败，gamekit会自动重新传上去。
 */
- (void)reportScore:(int64_t)score
         andContext:(int64_t)context
   forLeaderboardID:(NSString *)identifier
            handler:(resultHandler)handler;

/**
 *  使用gamekit自带界面战士排行榜
 *
 *  @param leaderboardID 排行榜id
 *  @param delegate      执行关闭排行榜关闭消息的代理
 */
- (void)showLeaderboard:(NSString *)leaderboardID handler:(void(^)(void))handler;

/**
 *  检索某个排行榜的分数
 *
 *  @param leaderboard 排行榜ID
 *  @param result      返回分数数组
 */
- (void)retrieveScoresWithLeaderboard:(GKLeaderboard *)leaderboard handler:(void (^)(NSArray *scores, NSError *error))result;

/**
 *  获取所有的排行榜束
 *
 *  @param handler 返回排行榜束的数组，以及错误原因
 */
- (void)loadLeaderboardSetInfoWitnHandler:(void (^)(NSArray *leaderboardSets, NSError *error))handler;

#pragma mark - achievement

/**
 *  获取该游戏所有的成就
 *
 *  @param handler block返回成就数组以及错误原因
 */
- (void)loadAchievements:(void (^)(NSArray *achievements, NSError *error))handler;

/**
 *  对某个成就上报进度
 *
 *  @param identifier 成就ID
 *  @param percent    成就进度（double）
 */
- (void)reportAchievementIdentifier:(NSString *)identifier percentComplete:(double)percent;

/**
 *  检索游戏所有成就的具体信息(id,title等等)
 *
 *  @param handle 返回成就详细信息列表
 */
- (void)retrieveAchievementMetadata:(void (^)(NSArray *descriptions, NSError *error))handle;

/**
 *  下载某个成就的图标
 *
 *  @param description 成就详细信息的对象
 *  @param handler     返回成就对应的图标以及获取的错误信息
 */
- (void)loadImageWithAchievementDescription:(GKAchievementDescription *)description andCompletionHandler:(void (^)(UIImage *image, NSError *error))handler;

/**
 *  展示成就列表
 *
 *
 */
- (void)showAchievementsWithDefaultState;

@end
