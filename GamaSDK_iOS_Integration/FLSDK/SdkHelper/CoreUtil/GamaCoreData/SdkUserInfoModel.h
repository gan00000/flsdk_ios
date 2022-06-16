

#import <Foundation/Foundation.h>

//typedef NS_ENUM(NSInteger, GamaLoginType) {
//    GAMA_LOGIN = 0,
//    RES_LOGIN,
//    ALIAS_LOGIN,
//    FB_LOGIN,
//    BAHA_LOGIN,
//    GOOGLEPLUS_LOGIN,
//    EVATAR_LOGIN,
//    TWITTER_LOGIN,
//    BAND_LOGIN,
//    YAHOO_LOGIN,
//    LINE_LOGIN,
//    KAKAO_LOGIN,
//    NAVER_LOGIN,
//    GAMECENTER_LOGIN,
//    VKONTAKTE_LOGIN,
//    APPLE_LOGIN,
//};

@interface SdkUserInfoModel : NSObject

@property (copy, nonatomic) NSString *userId;
/**
 *  登录方式的枚举值
 */
//@property (assign, nonatomic) GamaLoginType loginType;
/**
 *  登录方式的字符串值，与登录时候的字符串一致（如：fb,gama等）
 */
@property (copy, nonatomic) NSString *thirdId;
@property (copy, nonatomic) NSString *loginTypeStr;
@property (copy, nonatomic) NSString *roleID;     //角色ID
@property (copy, nonatomic) NSString *roleLevel;  //角色等级
@property (copy, nonatomic) NSString *roleName;   //角色名
@property (copy, nonatomic) NSString *serverCode; //服务器id
@property (copy, nonatomic) NSString *serverName; //服务器名
@property (copy, nonatomic) NSString *vipLevel; //vip等级

/**
 *  登录成功返回的timestamp
 */
@property (copy, nonatomic) NSString *timestamp;
/**
 *  登录成功后需要返回服务端的token
 */
@property (copy, nonatomic) NSString *accessToken;

/**
 *  打开第三方应用后的回调 URL 的 description
 */
@property (copy, nonatomic) NSString *openUrlDesription;

/**
 *  model的单例
 *
 *  @return 单例的对象
 */
+ (SdkUserInfoModel *)shareInfoModel;

/**
 *  设置登录方式
 *
 *  @param typeStr 登录方式的字符串
 */
- (void)setLoginTypeWithStr:(NSString *)typeStr;

- (void)setUserInfoWithRoleID:(NSString *)roleID
                    roleLevel:(NSString *)roleLevel
                     roleName:(NSString *)roleName
                   serverCode:(NSString *)serverCode
                   serverName:(NSString *)serverName
                     vipLevel:(NSString *)vipLevel;

- (void)cleanModel;

@end
