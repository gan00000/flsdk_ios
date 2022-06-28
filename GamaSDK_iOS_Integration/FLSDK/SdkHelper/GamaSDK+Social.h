//
//  GamaSDK+Social.h
//  GamaSDK_iOS
//
//  Created by dongbin on 2018/11/25.
//  Copyright © 2018年 starpy. All rights reserved.
//
#import "SdkHeader.h"
#import "FLSDK.h"

extern NSString *const GAMA_PRM_SOCIAL_SHARE_LINK;
extern NSString *const GAMA_PRM_SOCIAL_SHARE_LOCAL_IMAGE;
extern NSString *const GAMA_PRM_SOCIAL_SHARE_MSG;
extern NSString *const GAMA_PRM_SOCIAL_INVITE_USERID;
extern NSString *const GAMA_PRM_SOCIAL_INVITE_MSG;
extern NSString *const GAMA_PRM_SOCIAL_INVITE_TITLE;
extern NSString *const GAMA_PRM_SOCIAL_FIELDS_CONTENT;
extern NSString *const GAMA_PRM_SOCIAL_SHARE_MSG;


/**
 获取第三方社交平台好友数据源的方式类型。
 
 - EfunSocialPagingHome: 获取第一页的好友
 - EfunSocialPagingNext: 获取上一次请求的第一页或下一页的下一页好友
 - EfunSocialPagingPrevious: 获取上一次请求的下一页的上一页好友
 */
typedef NS_ENUM(NSUInteger,GamaSocialPaging){
    GamaSocialPagingHome,
    GamaSocialPagingNext,
    GamaSocialPagingPrevious,
};

/**
 第三方社交平台类型。需要区分第三方社交平台类型的接口均会要求传入一个此枚举类型的参数作分别操作。
 - GamaThirdPartyTypeNone: 无
 - GamaThirdPartyTypeFacebook: Facebook
 - GamaThirdPartyTypeLine: Line
 - GamaThirdPartyTypeWhatsApp: WhatsApp
 - GamaThirdPartyTypeMessenger: Messenger
 */
typedef NS_ENUM(NSUInteger,GamaThirdPartyType){
    GamaThirdPartyTypeNone = 0,
    GamaThirdPartyTypeFacebook,
    GamaThirdPartyTypeLine,
    GamaThirdPartyTypeWhatsApp,
//    GamaThirdPartyTypeMessenger,//由于Facebook表明2018/08/01之后，不在支持Messenger分享；故弃用该渠道分享
    GamaThirdPartyTypeTwitter,
};

@interface FLSDK (Social)
/**
 获取第三方社交平台用户资料
 */
+ (void)gama_getUserProfileWithPartyKind:(GamaThirdPartyType)kind
                        completedHandler:(nullable void(^)(NSDictionary *_Nullable result,
                                                           NSError *_Nullable error))handler;

/**
 获取在玩好友
 * @kind      第三方社交平台类型
 * @par
 GAMA_PRM_SOCIAL_FIELDS_CONTENT        过滤获取在玩好友信息（如：@"id,name,gender,picture,birthday"）
 * @paging    分页控制
 * @limit     获取好友数量（不传则默认8个好友为一页）
 * @completedHandler    回调信息
 */
+ (void)gama_fetchFriendsWithKind:(GamaThirdPartyType)kind
                            param:(nullable NSDictionary *)par
                           paging:(GamaSocialPaging)paging
                            limit:(NSUInteger)limit
                 completedHandler:(nullable void(^)(NSDictionary *_Nullable initialData,
                                                    NSArray *_Nullable invitableArr,
                                                     NSString *_Nullable nextPage,
                                                     NSString *_Nullable previous,
                                                     NSString *_Nullable total_count,
                                                     NSError *_Nullable error))handler;


/**
 分享(链接、图片)
 * @param par 分享参数集合
 GAMA_PRM_SOCIAL_SHARE_LINK             链接
 GAMA_PRM_SOCIAL_SHARE_LOCAL_IMAGE      本地图片 (UIImage或NSString对象)
 GAMA_PRM_SOCIAL_SHARE_LINK             文本 (目前只支持whatsapp、line)
 * @param success 分享成功
 * @param failure 分享失败
 */
+ (void)gama_shareWithKind:(GamaThirdPartyType)kind
                     param:(nullable NSDictionary *)par
                   success:(nullable void(^)(NSDictionary * _Nullable result))success
                   failure:(nullable void (^)(NSError * _Nullable error))failure;


/**
 邀请在玩好友
 * @param par 邀请参数集合
 GAMA_PRM_SOCIAL_INVITE_USERID          邀请好友的ID(数组类型如：@[@"12",@"32",......])
 GAMA_PRM_SOCIAL_INVITE_MSG             邀请信息
 GAMA_PRM_SOCIAL_INVITE_TITLE           邀请标题
 
 * @param success 邀请成功
 * @param failure 邀请失败
 */
+ (void)gama_inviteFriendsWithKind:(GamaThirdPartyType)kind
                             param:(nullable NSDictionary *)par
                           success:(nullable void(^)(NSDictionary * _Nullable result))success
                           failure:(nullable void (^)(NSError * _Nullable error))failure;

/**
***********************************************************
                        韩国专用
***********************************************************
打开Naver Cafe社区功能
 */
+ (void)gama_openCafeHome;

@end
