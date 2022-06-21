 //
//

#import "GamaFacebookPort.h"

#import "GamaFbLogin+fbLogin.h"
#import "GamaFacebookImp_V4.h"
#import "GamaCentreInfo.h"
#import "FacebookShareDelegateWarper.h"
#import <FBSDKShareKit/FBSDKShareKit.h>

NSString *const FACEBOOK_PRM_SOCIAL_SHARE_LINK          = @"gama_prm_social_share_link";
NSString *const FACEBOOK_PRM_SOCIAL_SHARE_LOCAL_IMAGE   = @"gama_prm_social_local_image";
NSString *const FACEBOOK_PRM_SOCIAL_INVITE_USERID       = @"gama_prm_social_invite_userId";
NSString *const FACEBOOK_PRM_SOCIAL_INVITE_MSG          = @"gama_prm_social_invite_msg";
NSString *const FACEBOOK_PRM_SOCIAL_INVITE_TITLE        = @"gama_prm_social_invite_title";
NSString *const FACEBOOK_PRM_SOCIAL_FIELDS_CONTENT      = @"gama_prm_social_fields_content";


@implementation GamaFacebookPort

+(void)facebookBindingWithUserName:(NSString *)userName
                       andPassword:(NSString *)password
                          otherDic:(NSDictionary *)otherDic
{
//    [GamaFacebookCenter facebookLogout];
//    [GamaFbLogin doFacebookBindingWithUserName:userName andPassword:password otherDic:otherDic];
//    [GamaFbLogin doFacebookBindingWithUserName:userName andPassword:password andEmail:email];
}

#pragma mark - 登录入口方法
+(void)loginWithFacebook:(FacebookLoginBlock)callBackBlock
{
//    [GamaFbLogin doLoginWithFacebook];
    
      //判断登陆中设置的facebook登陆方式，应用内弹出登陆，还是跳转应用外登陆
    //    BOOL isFbLoginInApp = SDKConReaderGetBool(@"isFbLoginInApp");
        
        [GamaFacebookCenter facebookLoginWithForceInApp:NO
                                  andIsForceReAuthorize:NO
                                       andCallbackBlock:callBackBlock];
}

+(void)setAppID:(NSString *)appId
{
    [GamaFacebookCenter setAppID:appId];
}

+ (void)postFacebookShareDialogWithContentUrl:(NSString *)contentUrl
{
    [GamaFacebookCenter postFacebookShareDialogWithContentUrl:contentUrl];
}

+(BOOL)application:(UIApplication *)application
           openURL:(NSURL *)url
 sourceApplication:(NSString *)sourceApplication
        annotation:(id)annotation
{
    BOOL result;
    if (SDKConReaderGetBool(GAMA_GAME_IS_INITIALIZE_AD) || SDKConReaderGetString(GAMA_GAME_IS_INITIALIZE_AD).length == 0) {
        result = [GamaFacebookCenter application:application
                                         openURL:url
                               sourceApplication:sourceApplication
                                      annotation:annotation];
    }else{
        result = NO;
        GAMA_SHOW_CURRENT_FUNC_NAME;
        GAMA_FUNCTION_LOG(@"未启用Facebook:openURL");
    }
    return result;
}

+(void)applicationWillTerminate:(UIApplication *)application
{
    [GamaFacebookCenter applicationWillTerminate:application];
}

+(void)applicationDidBecomeActive:(UIApplication *)application
{
    if (SDKConReaderGetBool(GAMA_GAME_IS_INITIALIZE_AD) || SDKConReaderGetString(GAMA_GAME_IS_INITIALIZE_AD).length == 0) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            
            dispatch_async(dispatch_get_main_queue(), ^{
                // for the didFinishLaunchingWithOptions
                [GamaFacebookCenter application:application
                  didFinishLaunchingWithOptions:nil];
            });
        });
        
        [GamaFacebookCenter applicationDidBecomeActive:application];

    }else{
        GAMA_SHOW_CURRENT_FUNC_NAME;
        GAMA_FUNCTION_LOG(@"未启用Facebook:BecomeActive");
    }
}


+ (void)facebookEventLogWithCustomAppEvents:(NSString *)customAppEventName
{
    [GamaFacebookCenter facebookEventLogWithCustomAppEvents:customAppEventName];
}

+ (void)facebookEventLogWithCustomAppEvents:(NSString *)customAppEventName parameters:(NSDictionary *)parameters
{
    [GamaFacebookCenter facebookEventLogWithCustomAppEvents:customAppEventName parameters:parameters];
}

+ (void)authorize:(void (^)(NSError *error,NSString *facebookName,NSString *facebookId))callBackBlock
{
    [GamaFacebookCenter facebookLoginWithForceInApp:NO
                              andIsForceReAuthorize:NO
                                   andCallbackBlock:^(NSError *loginError, NSString *facebookID, NSString *facebookTokenStr) {
                                       !callBackBlock ? : callBackBlock(loginError, [GamaFacebookCenter getFacebookName], facebookID);
                                   }];
}

+ (void)logout
{
    [GamaFacebookCenter facebookLogout];
}


+ (BOOL)isFacebookLogined
{
    return [GamaFacebookCenter isFacebookLogined];
}
#pragma mark -social 社群功能
+(void)social_getUserProfileWithCompletedHandler:(void (^)(NSDictionary * _Nullable, NSError * _Nullable))handler
{
//    NSString *userId = [GamaFacebookCenter getFacebookId];
    FBSDKGraphRequest *request = [[[FBSDKGraphRequest alloc]
                                   initWithGraphPath:@"me/"
                                   parameters:@{@"fields":@"id,name,gender,picture,birthday"}
                                   HTTPMethod:@"GET"] autorelease];
    [request startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection,
                                           id result,
                                           NSError *error) {
        NSDictionary *lastDic = nil;
        if (!error && result) {
            NSString *acces_token = [GamaFacebookCenter getFacebookTokenStr];
            NSMutableDictionary *mutableDic = [NSMutableDictionary dictionary];
            NSString *thirdId = [result objectForKey:@"id"];
            [mutableDic addEntriesFromDictionary:@{@"thirdId":thirdId.length>0?thirdId:@""}];
            NSString *iconUrl = [result objectForKey:@"picture"][@"data"][@"url"];
            [mutableDic addEntriesFromDictionary:@{@"iconUrl":iconUrl.length>0?iconUrl:@""}];
            [mutableDic addEntriesFromDictionary:result];
            [mutableDic addEntriesFromDictionary:@{@"access_token":acces_token?:@""}];
            [mutableDic removeObjectForKey:@"id"];
            [mutableDic removeObjectForKey:@"picture"];
            lastDic = [[[NSDictionary dictionaryWithDictionary:mutableDic] copy] autorelease];
            [self saveFbUserProfileWithDic:lastDic];
        }
        handler(lastDic,error);
    }];
}

static NSString *nextPageUrl;
static NSString *previousPageUrl;
+ (void)social_fetchFriendsWithParam:(nullable NSDictionary *)param
                              Paging:(NSUInteger)paging
                               limit:(NSUInteger)limit
                    completedHandler:(nullable void(^)(NSDictionary *_Nullable initialData,
                                                       NSArray *_Nullable invitableArr,
                                                       NSString *_Nullable nextPage,
                                                       NSString *_Nullable previous,
                                                       NSString *_Nullable total_count,
                                                       NSError *_Nullable error))handler;
{
    NSString *fieldsStr = nil;
    if (![param[FACEBOOK_PRM_SOCIAL_FIELDS_CONTENT] isKindOfClass:[NSString class]]) {
        GAMA_FUNCTION_LOG(@"Facebook:分享参数异常，非NSString类型");
    }
    fieldsStr = param[FACEBOOK_PRM_SOCIAL_FIELDS_CONTENT];
    if (fieldsStr.length < 1) {
        fieldsStr = @"id,name,gender,picture,birthday";
    }
    
    NSString *limitStr = limit > 0 ?[NSString stringWithFormat:@"%lu",(unsigned long)limit]:@"8";
    NSMutableDictionary *graphPar = [NSMutableDictionary dictionary];
    [graphPar addEntriesFromDictionary:@{@"fields":[NSString stringWithFormat:@"friends{%@}",fieldsStr],@"limit":limitStr}];
    switch (paging) {
        case 0:{
        }break;
        case 1:{
            if (nextPageUrl.length > 0) {
                [graphPar addEntriesFromDictionary:@{@"after":nextPageUrl}];
            }
        }break;
        case 2:{
            if (previousPageUrl.length > 0) {
                [graphPar addEntriesFromDictionary:@{@"before":previousPageUrl}];
            }
        }break;
    }
    FBSDKGraphRequest *request = [[[FBSDKGraphRequest alloc]
                                   initWithGraphPath:@"/me"
                                   parameters:graphPar
                                   HTTPMethod:@"GET"] autorelease];
    [request startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection,
                                           NSDictionary *result,
                                           NSError *error) {
        NSString *nextPage = result[@"friends"][@"paging"][@"cursors"][@"after"];
        NSString *previousPage = result[@"friends"][@"paging"][@"cursors"][@"before"];
        NSArray *friends = result[@"friends"][@"data"];
        nextPageUrl = [result[@"friends"][@"paging"][@"cursors"][@"after"] copy];
        previousPageUrl = [result[@"friends"][@"paging"][@"cursors"][@"before"] copy];

        NSString *payingFriendsCount = result[@"friends"][@"summary"][@"total_count"];
        handler(result,friends,nextPage,previousPage,payingFriendsCount,error);
    }];

}

+ (void)social_shareWithParam:(NSDictionary *)par
                      success:(void (^)(NSDictionary * _Nullable))success
                      failure:(void (^)(NSError * _Nullable))failure
{
    NSString *link = [par objectForKey:FACEBOOK_PRM_SOCIAL_SHARE_LINK];
    
    UIImage *localImage = nil;
    if ([[par objectForKey:FACEBOOK_PRM_SOCIAL_SHARE_LOCAL_IMAGE] isKindOfClass:[UIImage class]]) {
        localImage = [par objectForKey:FACEBOOK_PRM_SOCIAL_SHARE_LOCAL_IMAGE];
    }else if([[par objectForKey:FACEBOOK_PRM_SOCIAL_SHARE_LOCAL_IMAGE] isKindOfClass:[NSString class]]) {
        localImage = [UIImage imageNamed:[par objectForKey:FACEBOOK_PRM_SOCIAL_SHARE_LOCAL_IMAGE]];
    }
    
    id<FBSDKSharingContent> shareContent = nil;
    if (link.length > 1){
        FBSDKShareLinkContent *linkContent = [[[FBSDKShareLinkContent alloc] init] autorelease];
        [linkContent setContentURL:[NSURL URLWithString:link]];
        shareContent = linkContent;
    }else if (localImage) {
        FBSDKSharePhoto *photo = [[FBSDKSharePhoto alloc]init];
        [photo setImage:localImage];
        FBSDKSharePhotoContent *photoContent = [[[FBSDKSharePhotoContent alloc] init] autorelease];
        [photoContent setPhotos:@[photo]];
        [photo release];
        shareContent = photoContent;
    }
    
    id shareDalegateCls = [FacebookShareDelegateWarper makeFacebookSharingDelegateResolverAndCallbackSuccessBlock:^(NSDictionary *result) {
        !success ? :success(result);
    } andErrorBlock:^(NSError *error) {
        !failure ? : failure(error);
    } andCancleBlock:^{
        !failure ? : failure(nil);
    }];
    
    [FBSDKShareDialog showFromViewController:[SUtil getCurrentViewController] withContent:shareContent delegate:shareDalegateCls];//viewController有值才能接受回调；

//    FBSDKShareDialog *shareDialog = [[[FBSDKShareDialog alloc] init] autorelease];
//    [shareDialog setMode:FBSDKShareDialogModeNative];
//    [shareDialog setDelegate:shareDalegateCls];
//    [shareDialog setFromViewController:[GamaFunction getCurrentViewController]];
//    [shareDialog setShareContent:shareContent];
//    if([shareDialog canShow]){
//        [shareDialog show];
//    }
}

///Messenger发送消息功能
+ (void)social_sentMessageToSpecifiedFriendsWithParam:(NSDictionary *)par
                                             success:(void (^)(NSDictionary * _Nullable))success
                                             failure:(void (^)(NSError * _Nullable))failure
{
    NSString *link = [par objectForKey:FACEBOOK_PRM_SOCIAL_SHARE_LINK];
    UIImage *localImage = nil;
    if ([[par objectForKey:FACEBOOK_PRM_SOCIAL_SHARE_LOCAL_IMAGE] isKindOfClass:[UIImage class]]) {
        localImage = [par objectForKey:FACEBOOK_PRM_SOCIAL_SHARE_LOCAL_IMAGE];
    }else if([[par objectForKey:FACEBOOK_PRM_SOCIAL_SHARE_LOCAL_IMAGE] isKindOfClass:[NSString class]]) {
        localImage = [UIImage imageNamed:[par objectForKey:FACEBOOK_PRM_SOCIAL_SHARE_LOCAL_IMAGE]];
    }
    
    id<FBSDKSharingContent> messagerContent = nil;
    if (link.length > 1) {
        FBSDKShareLinkContent *linkContent = [[[FBSDKShareLinkContent alloc] init] autorelease];
        [linkContent setContentURL:[NSURL URLWithString:link]];
        messagerContent = linkContent;
    }else if (localImage) {
        FBSDKSharePhoto *photo = [[FBSDKSharePhoto alloc]init];
        [photo setImage:localImage];
        [photo setUserGenerated:YES];
        FBSDKSharePhotoContent *photoContent = [[[FBSDKSharePhotoContent alloc] init] autorelease];
        [photoContent setPhotos:@[photo]];
        messagerContent = photoContent;
        [photo release];
    }
    
    id shareDalegateCls = [FacebookShareDelegateWarper makeFacebookSharingDelegateResolverAndCallbackSuccessBlock:^(NSDictionary *result) {
        !success ? :success(result);
    } andErrorBlock:^(NSError *error) {
        !failure ? : failure(error);
    } andCancleBlock:^{
        !failure ? : failure(nil);
    }];
    [FBSDKMessageDialog showWithContent:messagerContent delegate:shareDalegateCls];
}

///邀请在玩好友/未玩好友
+ (void)social_inviteFriendsWithParam:(NSDictionary *)par
                              success:(void (^)(NSDictionary * _Nullable))success
                              failure:(void (^)(NSError * _Nullable))failure
{
    NSArray *uidAry = [par objectForKey:FACEBOOK_PRM_SOCIAL_INVITE_USERID];
    NSString *inviteMessage = [par objectForKey:FACEBOOK_PRM_SOCIAL_INVITE_MSG];
    NSString *inviteTitle = [par objectForKey:FACEBOOK_PRM_SOCIAL_INVITE_TITLE];
    
    FBSDKGameRequestContent *fbGameRequest = [[[FBSDKGameRequestContent alloc] init] autorelease];
    if (uidAry.count > 0) {
        [fbGameRequest setFilters:FBSDKGameRequestFilterNone];
    }else {
        [fbGameRequest setFilters:FBSDKGameRequestFilterAppNonUsers];
    }
    [fbGameRequest setMessage:inviteMessage];
    [fbGameRequest setTitle:inviteTitle];
    [fbGameRequest setRecipients:uidAry];
    
    id shareDalegateCls = [FacebookShareDelegateWarper makeFacebookSharingDelegateResolverAndCallbackSuccessBlock:^(NSDictionary *result) {
        !success ? : success(result);
    } andErrorBlock:^(NSError *error) {
        !failure ? : failure(error);
    } andCancleBlock:^{
        !failure ? : failure(nil);
    }];

    [FBSDKGameRequestDialog showWithContent:fbGameRequest delegate:shareDalegateCls];
}

+ (void)saveFbUserProfileWithDic:(NSDictionary *)dic
{
    NSUserDefaults *profileDefault = [NSUserDefaults standardUserDefaults];
    [profileDefault setObject:dic forKey:@"fb_profile"];
    [profileDefault synchronize];
}

+ (NSDictionary *)fetchFbProfile{
    NSUserDefaults *profileDefault = [NSUserDefaults standardUserDefaults];
    NSDictionary *lastResult = [profileDefault objectForKey:@"fb_profile"];
    return lastResult;
}
@end
