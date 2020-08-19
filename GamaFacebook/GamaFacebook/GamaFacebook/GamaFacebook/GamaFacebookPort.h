//
//  GamaFacebookPort.h
//  GAMA_FUNCTION_PROJECT
//
//  Created by zhangguangyang on 5/19/14.
//  Copyright (c) 2014 zhangguangyang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "GamaFacebookCenter.h"

#define GAMA_FACEBOOK_LOGIN_SUCCESS   @"GAMA_FACEBOOK_LOGIN_SUCCESS"   //facebook登陆成功
#define GAMA_FACEBOOK_LOGIN_FAIL      @"GAMA_FACEBOOK_LOGIN_FAIL"      //facebook登陆失败
#define GAMA_FACEBOOK_BINDING_SUCCESS @"GAMA_FACEBOOK_BINDING_SUCCESS" //facebook绑定成功
#define GAMA_FACEBOOK_BINDING_FAIL    @"GAMA_FACEBOOK_BINDING_FAIL"    //facebook绑定失败
#define GAMA_FB_SHARE_SUCCESS_IN      @"GAMA_FB_SHARE_SUCCESS"         //facebook分享成功
#define GAMA_FB_SHARE_FAIL_IN         @"GAMA_FB_SHARE_FAIL"            //facebook分享失败

extern NSString *const FACEBOOK_PRM_SOCIAL_SHARE_LINK;
extern NSString *const FACEBOOK_PRM_SOCIAL_SHARE_LOCAL_IMAGE;
extern NSString *const FACEBOOK_PRM_SOCIAL_INVITE_USERID;
extern NSString *const FACEBOOK_PRM_SOCIAL_INVITE_MSG;
extern NSString *const FACEBOOK_PRM_SOCIAL_INVITE_TITLE;
extern NSString *const FACEBOOK_PRM_SOCIAL_FIELDS_CONTENT;


@interface GamaFacebookPort : NSObject

/**
 *	@brief	facebook绑定，
 */
+(void)facebookBindingWithUserName:(NSString *)userName
                       andPassword:(NSString *)password
                          otherDic:(NSDictionary *)otherDic;



/**
 *  facebook登录功能。
 */
+(void)loginWithFacebook:(FacebookLoginBlock)callBackBlock;

/**
 *  设置FacebookAppID;
 *  @param AppId FacebookAppID
 */
+(void)setAppID:(NSString *)appId;

/**
 *    @brief    分享url
 *
 *    @param     contentUrl         分享内容的连接
 */
+ (void)postFacebookShareDialogWithContentUrl:(NSString *)contentUrl;


/**
 *  获取到了跳回应用的url
 *
 *  @param application       略
 *  @param url               略
 *  @param sourceApplication 略
 *  @param annotation        略
 *
 *  @return 略
 */
+(BOOL)application:(UIApplication *)application
           openURL:(NSURL *)url
 sourceApplication:(NSString *)sourceApplication
        annotation:(id)annotation;

/**
 *  应用将会结束时候
 *
 *  @param application 略
 */
+(void)applicationWillTerminate:(UIApplication *)application;

/**
 *  应用将要活跃
 *
 *  @param application 略
 */
+(void)applicationDidBecomeActive:(UIApplication *)application;

+ (void)facebookEventLogWithCustomAppEvents:(NSString *)customAppEventName;

+ (void)facebookEventLogWithCustomAppEvents:(NSString *)customAppEventName parameters:(NSDictionary *)parameters;

+ (void)authorize:(void (^)(NSError *error,NSString *facebookName,NSString *facebookId))callBackBlock;
+ (void)logout;

+ (BOOL)isFacebookLogined;


+ (void)social_getUserProfileWithCompletedHandler:(nullable void(^)(NSDictionary *_Nullable result,NSError *_Nullable error))handler;


+ (void)social_fetchFriendsWithParam:(nullable NSDictionary *)param
                              Paging:(NSUInteger)paging
                               limit:(NSUInteger)limit
                    completedHandler:(nullable void(^)(NSDictionary *_Nullable initialData,
                                                       NSArray *_Nullable invitableArr,
                                                        NSString *_Nullable nextPage,
                                                        NSString *_Nullable previous,
                                                        NSString *_Nullable total_count,
                                                        NSError *_Nullable error))handler;

+ (void)social_shareWithParam:(nullable NSDictionary *)par
                      success:(nullable void(^)(NSDictionary * _Nullable result))success
                      failure:(nullable void (^)(NSError * _Nullable error))failure;

+ (void)social_sentMessageToSpecifiedFriendsWithParam:(nullable NSDictionary *)par
                                              success:(nullable void(^)(NSDictionary * _Nullable result))success
                                              failure:(nullable void (^)(NSError * _Nullable error))failure;

+ (void)social_inviteFriendsWithParam:(nullable NSDictionary *)par
                              success:(nullable void(^)(NSDictionary * _Nullable result))success
                              failure:(nullable void (^)(NSError * _Nullable error))failure;

+ (void)saveFbUserProfileWithDic:(nullable NSDictionary *)dic;

+ (nullable NSDictionary *)fetchFbProfile;

@end


