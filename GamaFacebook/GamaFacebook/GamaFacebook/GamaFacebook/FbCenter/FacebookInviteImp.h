//
//

#import <Foundation/Foundation.h>
//#import "EFUNSocialView.h"
//#import "GamaThirdFunctionPort.h"


typedef void (^InviteSuccessBlock)(NSString *friendsId);
typedef void (^InviteFailBlock)();

//@interface FacebookInviteImp : NSObject <EFUNSocialViewDelegate,SPThirdFunctionProvideSocialDataDelegate>
@interface FacebookInviteImp : NSObject 

- (void)getFacebookInvitedFriendsWithLimit:(NSInteger)limit
                                    paging:(NSString *)page
                                   success:(void(^)(NSArray *invitedArr, NSString *next, NSString *previous))success
                                      fail:(void(^)(NSError *error))fail;
/*
 *@tokens    tokens是以单引号括起来，逗号分隔的字符串，用来剔除已邀请过的好友
 *@limit       为0，使用Facebook默认返回条数
 *@page     上次获取好友时保存的用于获取上下也好友列表的cursor
 *@success
 *@fail
 */
- (void)getFacebookInvitableFriendsWithExcludedTokens:(NSString *)tokens
                                                limit:(NSInteger)limit
                                               paging:(NSString *)page
                                              success:(void(^)(NSArray *invitableArr, NSString *next, NSString *previous))success
                                                 fail:(void(^)(NSError *error))fail;
/*
 *@uids
 Either a user id,username or invite token, or a comma-separated list of user ids,usernames or invite tokens.
 These may or may not be a friend of the sender. If this is specified by the app, the sender will not have a choice of recipients. If not, the sender will see a multi-friend selector
 *@message  邀请好友问候语
 */
- (void)inviteFacebookFriendsWithFriendsId:(NSArray *)friendsId
                                     title:(NSString *)title
                                   message:(NSString *)message
                                   success:(InviteSuccessBlock)success
                                      fail:(InviteFailBlock)fail;

+ (instancetype)sharedInterface;


+ (void)showFBSocialView:(UIView *)baseView
                  userId:(NSString *)userId
                  roleId:(NSString *)roleId
                roleName:(NSString *)roleName
              serverCode:(NSString *)serverCode
                iconName:(NSString *)iconName
         isFacebookLogin:(BOOL)isLogin;
@end
