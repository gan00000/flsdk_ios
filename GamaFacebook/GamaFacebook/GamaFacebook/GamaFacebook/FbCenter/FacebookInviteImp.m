//
//

#import "FacebookInviteImp.h"
#import "GamaCentreInfo.h"
#import "GamaFacebookCenter.h"
//#import "EFUNBaseView.h"

//#import "EFUNSocialUser.h"
#import "GamaSocialFunction.h"
#import "GamaThirdFunctionPort.h"

@interface FacebookInviteImp()

@property (copy, nonatomic) void(^inviteSuccess)(NSDictionary *);
@property (copy, nonatomic) void(^inviteFail)(NSError *);
@property (copy, nonatomic) void(^inviteCancel)();

@end


@implementation FacebookInviteImp


- (void)fetchFacebookFriendsWithGraphPath:(NSString *)graphPath
                           excludedTokens:(NSString *)tokens
                                    limit:(NSInteger)limit
                                   paging:(NSString *)page
                                  success:(void(^)(NSArray *invitableArr, NSString *next, NSString *previous))success
                                     fail:(void(^)(NSError *error))fail
{
    GAMA_SHOW_CURRENT_FUNC_NAME
    [GamaFacebookCenter fetchFacebookFriendsWithGraphPath:graphPath
                                           excludedTokens:tokens
                                                    limit:limit
                                                   paging:page
                                     andCompletionHandler:^(NSURLResponse * response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                                         if (!jsonParseErr) {
                                             NSArray *tempArr = [resultJsonDic objectForKey:@"data"];
                                             NSMutableArray *resultArr = [NSMutableArray array];
                                             [tempArr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                                                 EFUNSocialUser *fbUser = [[EFUNSocialUser alloc] init];
                                                 fbUser.userName = [obj objectForKey:@"name"];//好友名字
                                                 fbUser.userId = [obj objectForKey:@"id"];//好友Facebookid
                                                 fbUser.userGender = [obj objectForKey:@"gender"];//好友性别
                                                 // 获取已邀请好友时，没有picture这个字段
                                                 if ([graphPath rangeOfString:@"invitable_friends"].length > 0) {
                                                     fbUser.thumbnail = [[[obj objectForKey:@"picture"] objectForKey:@"data"] objectForKey:@"url"];
                                                     [resultArr addObject:fbUser];
                                                 } else { // 获取已成功邀请好友时只需加入Facebook User ID
                                                     //                            [resultArr addObject:[obj objectForKey:@"id"]];
                                                     [resultArr addObject:fbUser];
                                                 }
                                                 [fbUser release];
                                             }];
                                             
                                             //上下页的索引
                                             NSString *next = [[resultJsonDic objectForKey:@"paging"] objectForKey:@"next"];
                                             NSString *previous = [[resultJsonDic objectForKey:@"paging"] objectForKey:@"previous"];
                                             !success ? : success(resultArr,next,previous);
                                         } else if(jsonParseErr){ // 解析Json出现错误
                                             fail(jsonParseErr);
                                         } else {
                                             fail(error);
                                         }
                                     }];
}

- (void)getFacebookInvitedFriendsWithLimit:(NSInteger)limit
                                    paging:(NSString *)page
                                   success:(void(^)(NSArray *invitedArr, NSString *next, NSString *previous))success
                                      fail:(void(^)(NSError *error))fail
{
    GAMA_SHOW_CURRENT_FUNC_NAME
    // 基本graphPath
    NSMutableString *graphPath = [NSMutableString stringWithString:@"/me/friends"];
    if (limit != 0) {
        [graphPath appendFormat:@"?limit=%lu",(unsigned long)limit];
    }
    
    NSString *mark = (limit == 0 ? @"?":@"&");
    [graphPath appendFormat:@"%@fields=id,gender,name",mark];
    
    [self fetchFacebookFriendsWithGraphPath:graphPath excludedTokens:nil limit:limit paging:page success:success fail:fail];
}


- (void)getFacebookInvitableFriendsWithExcludedTokens:(NSString *)tokens
                                                limit:(NSInteger)limit
                                               paging:(NSString *)page
                                              success:(void(^)(NSArray *invitableArr, NSString *next, NSString *previous))success
                                                 fail:(void(^)(NSError *error))fail
{
    GAMA_SHOW_CURRENT_FUNC_NAME
    // 基本graphPath
    NSMutableString *graphPath = [NSMutableString stringWithString:@"/me/invitable_friends"];
    if (limit != 0) {
        [graphPath appendFormat:@"?limit=%lu",(unsigned long)limit];
    }
    // ['AVlzYTkXshfBqLe58zR9tY5dZ7L0wltTUkWKT0Z5V87zkwv-39','AVmT0LpyfvRMStEo2BW5seybtX1KbySRJtTb0wv0PqHVhT4sr7Le3']"
    NSString *mark = (limit == 0 ? @"?":@"&");
    if (!([tokens isEqualToString:@""] || tokens == nil)) {
        [graphPath appendFormat:@"%@excluded_ids=[%@]",mark,tokens];
    }
    if ([mark isEqualToString:@"?"]) {
        mark = @"&";
    }
    [graphPath appendFormat:@"%@fields=name,gender,picture",mark];
    
    [self fetchFacebookFriendsWithGraphPath:graphPath excludedTokens:tokens limit:limit paging:page success:success fail:fail];
}

- (void)inviteFacebookFriendsWithFriendsId:(NSArray *)friendsId
                                     title:(NSString *)title
                                   message:(NSString *)message
                                   success:(InviteSuccessBlock)success
                                      fail:(InviteFailBlock)fail
{
    static NSMutableArray *invitedArr = nil;     // 累计已邀请的好友Facebook ID
    static NSInteger inviteGroups = 0;
    invitedArr = [[NSMutableArray alloc] init];
    inviteGroups = ceil(friendsId.count / 50.f);
    
    __block NSInteger invitingIndex = 1;              // 所要邀请的好友数超50人时，进行分组（50一组），遍历递归进行邀请
    self.inviteFail = ^(NSError *error) {
        //Error launching the dialog or sending the request.
        NSString *errorInfo = [NSString stringWithFormat:@"facebook invite occur error: %@",error];
        NSLog(@"%@",errorInfo);
        
        NSString *errorMessage = @"Facebook invitation failed!";
        switch (error.code) {
            case 4021:
                errorMessage = GAMA_GET_LOCALIZED(GAMA_FB_INVITE_TEXT_USER_CANCEL_INVITE);
                break;
            case 105:
                errorMessage = GAMA_GET_LOCALIZED(@"textFbSocialWantedInviteFriendsCountOverflow");
                break;
            default:
                break;
        }
        [GamaAlertView showAlertWithMessage:errorMessage];
        !fail? : fail();
    };
    
    self.inviteCancel = ^() {
        //用戶在fb邀請界面，點擊了“x”按鈕
        if (invitedArr && invitedArr.count > 0) {
            NSString *recipientsIdStr = [invitedArr componentsJoinedByString:@","]; // 将邀请后返回的好友ID拼成字符串
            !success ? : success(recipientsIdStr);
            [invitedArr release];
            return ;
        }
        [GamaAlertView showAlertWithMessage:GAMA_GET_LOCALIZED(GAMA_FB_INVITE_TEXT_USER_BREAK_INVITE)];
        !fail? : fail();
    };
    
    self.inviteSuccess = ^(NSDictionary *result) {
        NSString *requestID = result[@"request"];
        NSLog(@"Facebook Invite success! Request ID: %@, index: %ld", requestID, (long)invitingIndex);
        invitingIndex++; // 次序递增
        NSArray *recipientIDs = result[@"to"];
        if ([recipientIDs count]  > 0) {
            [invitedArr addObjectsFromArray:recipientIDs];
        }
        
        if (invitingIndex > inviteGroups) {
            NSString *recipientsIdStr = [invitedArr componentsJoinedByString:@","]; // 将邀请后返回的好友ID拼成字符串
            !success ? : success(recipientsIdStr);
            [invitedArr release];
            return ;
        }

        // 继续邀请
        [GamaFacebookCenter impSendInviteFacebookFriendsWithFriendsId:[[self _getFriendsToInvite:friendsId index:invitingIndex] componentsJoinedByString:@","]
                                                                title:title
                                                              message:message
                                                              success:_inviteSuccess
                                                                 fail:_inviteFail
                                                              cancled:_inviteCancel];
    };
    // 开始邀请
    [GamaFacebookCenter impSendInviteFacebookFriendsWithFriendsId:[[self _getFriendsToInvite:friendsId index:invitingIndex] componentsJoinedByString:@","]
                                                            title:title
                                                          message:message
                                                          success:self.inviteSuccess
                                                             fail:self.inviteFail
                                                          cancled:self.inviteCancel];
}

#pragma mark - 反序取数组中的内容（50一组）
- (NSArray *)_getFriendsToInvite:(NSArray *)friends index:(NSInteger)index
{
    NSArray *toInvite = nil;
    NSInteger length = 50;
    NSInteger invitingGroups = ceil(friends.count / 50.f);
    if (index == invitingGroups) { // 只有一组或最后一组
        length = friends.count - (invitingGroups-1) * 50;
    }
    toInvite = [friends subarrayWithRange:NSMakeRange((index-1)*50, length)];
    return toInvite;
}

#pragma mark - EFUNSocialViewDelegate
- (void)socialView:(EFUNSocialView *)socialView
getInvitableFriendsLimit:(NSUInteger)limit
            offset:(NSNumber *)offset
            orPage:(NSString *)page
           invited:(NSString *)invited
           success:(void(^)(NSMutableArray *friends,NSString *next,NSString *previous,NSUInteger offset,NSUInteger total))success
              fail:(void(^)())fail
{
    [[FacebookInviteImp sharedInterface] getFacebookInvitableFriendsWithExcludedTokens:@""
                                                                                     limit:limit
                                                                                    paging:page
                                                                                   success:^(NSArray *invitableArr, NSString *next, NSString *previous) {
                                                                                       !success ? : success([NSMutableArray arrayWithArray:invitableArr],next,previous,invitableArr.count,0);
                                                                                   }
                                                                                      fail:^(NSError *error) {
        NSString * errorInfo = [NSString stringWithFormat:@"请求可邀请好友时出错：%@",error];
        GAMA_FB_INVITE_LOG(errorInfo);
        !fail ? : fail();
    }];
}

- (void)socialView:(EFUNSocialView *)socialView
  shareWithAppName:appName
           message:(NSString *)message
        pictureURL:(NSString *)picUrl
    appDownloadURL:(NSString *)downloadUrl
{
    [GamaFacebookCenter postFacebookFeedShareAndShowDialogWithAppName:appName
                                                           andMessage:message
                                                        andPictureURL:picUrl
                                                    andAppDownloadURL:downloadUrl];
}

- (void)socialView:(EFUNSocialView *)socialView
 inviteWithFriends:(NSString *)friends
             title:(NSString *)title
           message:(NSString *)message
           success:(InviteSuccessBlock)success
              fail:(void(^)())fail
{
    GAMA_SHOW_CURRENT_FUNC_NAME
//    if ([friends isEqualToString:@""] || friends == nil) {
//        [SPAlertView showAlertWithMessage:SP_GET_LOCALIZED(@"textFbSocialNonullSelectedFriends")];
//        !fail ? : fail();
//        return;
//    }
//    WS(ws);
    [[FacebookInviteImp sharedInterface] inviteFacebookFriendsWithFriendsId:[friends componentsSeparatedByString:@","] title:title message:message success:^(NSString *friendsId) {
        // 发送FB邀请成功，将好友的token保存下来，做剔除
//        [ws efn_filterInvitedFriends:friends];
        !success ? : success(friendsId);
    } fail:^{
        // 发送FB邀请时失败
//        [[NSNotificationCenter defaultCenter] postNotificationName:NOTIFICATION_INVITE_WRITE_FRIENDS_FAILED object:nil];
        !fail ? : fail();
    }];
}

- (void)efn_filterInvitedFriends:(NSString *)friends
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *tmpSavedToken = [userDefaults objectForKey:GAMA_HAVE_INVITED_FRIENDS_KEY([GamaUserInfoModel shareInfoModel].thirdId)];
    NSMutableString *savedToken = nil;
    NSArray *friendsTokenArr = [friends componentsSeparatedByString:@","];
    if (tmpSavedToken == nil || [tmpSavedToken isEqualToString:@""]) {
        savedToken = [NSMutableString string];
        
        for (int i = 0; i < friendsTokenArr.count; i++) {
            if (i==0) {
                [savedToken appendFormat:@"'%@'",friendsTokenArr[i]];
            } else {
                [savedToken appendFormat:@",'%@'",friendsTokenArr[i]];
            }
        }
    } else {
        savedToken = [NSMutableString stringWithString:tmpSavedToken];
        for (int i = 0; i < friendsTokenArr.count; i++) {
            [savedToken appendFormat:@",'%@'",friendsTokenArr[i]];
        }
    }
    [userDefaults setObject:savedToken forKey:GAMA_HAVE_INVITED_FRIENDS_KEY([GamaUserInfoModel shareInfoModel].thirdId)];
    [userDefaults synchronize];
}

- (void)socialView:(EFUNSocialView *)socialView like:(NSString *)fansPage
{
    GAMA_SHOW_CURRENT_FUNC_NAME
    if (fansPage && ![fansPage isEqualToString:@""]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:fansPage]];
    }
}

- (NSString *)socialView:(EFUNSocialView *)socialView friendThumbnailWithThirdId:(NSString *)thirdId
{
    return (IS_IPAD||IS_IPHONE_6p||IS_IPHONE_6) ?
    [NSString stringWithFormat:@"https://graph.facebook.com/%@/picture?width=96&height=96",thirdId] :
    [NSString stringWithFormat:@"https://graph.facebook.com/%@/picture",thirdId];
}

-       (void)socialView:(EFUNSocialView *)socialView
  getInvitedFriendsLimit:(NSUInteger)limit
                  offset:(NSNumber *)offset
            orPage:(NSString *)page
                 success:(void(^)(NSMutableArray *friends,NSString *next,NSString *previous,NSUInteger total))success
                    fail:(void(^)())fail
{
    GAMA_SHOW_CURRENT_FUNC_NAME
    // 此处limit暂传0，获取所有好友信息
    [[FacebookInviteImp sharedInterface] getFacebookInvitedFriendsWithLimit:limit paging:page success:^(NSArray *invitedArr, NSString *next, NSString *previous) {
        !success ? : success([NSMutableArray arrayWithArray:invitedArr],next,previous,0);
        dispatch_async(dispatch_get_main_queue(), ^{
            NSString *nextStr = next, *previousStr = previous;
            NSArray *tmpInvitedArr = invitedArr;
            if (next == nil) {
                nextStr = @"";
            }
            if (previous == nil) {
                previousStr = @"";
            }
            if (invitedArr == nil) {
                tmpInvitedArr = @[];
            }
            [[NSNotificationCenter defaultCenter] postNotificationName:@"kGetInvitedFriendsSuccess" object:nil userInfo:@{@"invited":tmpInvitedArr,@"next":nextStr,@"previous":previousStr,@"total":@(0)}];
        });
    } fail:^(NSError *error) {
        NSString * errorInfo = [NSString stringWithFormat:@"请求可邀请好友时出错：%@",error];
        GAMA_FB_INVITE_LOG(errorInfo);
        !fail ? : fail();
    }];
}

+ (instancetype)sharedInterface
{
    static FacebookInviteImp *interface = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        interface = [[FacebookInviteImp alloc] init];
    });
    return interface;
}


#pragma mark - EfunThirdFunctionProvideSocialDataDelegate

- (void)authorizeWithCompletedHandler:(void(^)(NSError *error, NSString *thirdNickName, NSString *thirdId, NSString *appsId))handler
{
    [GamaFacebookCenter facebookLoginWithForceInApp:NO
                              andIsForceReAuthorize:NO
                                   andCallbackBlock:^(NSError *loginError, NSString *facebookID, NSString *facebookTokenStr) {
                                       if (!loginError && facebookID && ![facebookID isEqualToString:@""]) {
                                           [GamaFacebookCenter requestAppsIdWithCompletionHaldler:^(NSString *appsId, NSString *businessToken) {
                                               !handler ? : handler(loginError, [GamaFacebookCenter getFacebookName], facebookID, appsId);
                                           }];
                                       } else {
                                           !handler ? : handler(loginError, nil, nil, nil);
                                       }
                                   }];
}
- (void)fetchPlayingFriendsWithCompletedHandler:(void(^)(NSArray *socialUsers, BOOL isSuccess))handler
{
    [[FacebookInviteImp sharedInterface] getFacebookInvitedFriendsWithLimit:3000
                                                                         paging:0
                                                                        success:^(NSArray *invitedArr, NSString *next, NSString *previous){
                                                                            !handler?:handler(invitedArr,YES);
                                                                        } fail:^(NSError *error){
                                                                            !handler?:handler(nil,NO);
                                                                        }];
}
- (void)fetchInvitableFriendsWithCompletedHandler:(void(^)(NSArray *invitableArr, BOOL isSuccess))handler
{
    [self getFacebookInvitableFriendsWithExcludedTokens:nil
                                                  limit:3000
                                                 paging:0
                                                success:^(NSArray *invitableArr, NSString *next, NSString *previous){
                                                    !handler?:handler(invitableArr,YES);
                                                }fail:^(NSError *error){
                                                    !handler?:handler(nil,NO);
                                                }];
}
- (void)inviteFriendsWithIds:friendIds title:inviteTitle message:inviteMessage completedHandler:(void(^)(NSString *friendsId, BOOL isSuccess))handler
{
    [self inviteFacebookFriendsWithFriendsId:friendIds
                                       title:inviteTitle
                                     message:inviteMessage
                                     success:^(NSString *friendsId) {
                                         !handler?:handler(friendsId,YES);
                                     }fail:^{
                                         !handler?:handler(nil,NO);
                                     }];
}
- (void)getUserProfileWithCompletedHandler:(void(^)(NSString *thirdId, NSString *thirdNickName, NSString *headUrl, NSString *gender))handler
{
    [GamaFacebookCenter requestProfileWithCompletionHandler:^(NSDictionary *profileDict) {
        NSString *facebookId = [profileDict objectForKey:@"id"];
        NSString *facebookGender = [profileDict objectForKey:@"gender"];
        NSString *facebookName = [profileDict objectForKey:@"name"];
        
        NSString *originalHeadUrl = profileDict[@"picture"][@"data"][@"url"];//fb用户更改头像后该返回的链接会变更
        NSString *headUrlHash = [GamaFunction getMD5StrFromString:originalHeadUrl?originalHeadUrl:@""];//为了让加载头像的控件能更新图片，链接后需拼上该md5更新头像地址
        NSString *headUrlString = nil;
        
        if (facebookId) {
            headUrlString = [NSString stringWithFormat:@"https://graph.facebook.com/%@/picture?width=144&height=144&hashcode=%@",facebookId,headUrlHash];
        }
        !handler?:handler(facebookId,facebookName,headUrlString,facebookGender);
    }];
}
- (void)thirdLogout
{
    [GamaFacebookCenter facebookLogout];
}

@end
