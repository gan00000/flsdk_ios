/*
 内购的对外接口的类
 */

#import <Foundation/Foundation.h>

@class GamaIapData;

@interface GamaIapFunctionPort : NSObject

/*初始化购买功能。游戏进入服务器的时候，调用 */
+(void)startSDK;

/*通过 商品ID 执行购买商品操作，需要传递用户购买的商品的ID，和用户的相关信息。用户点击某个商品的“购买”按钮的时候调用。 */
+ (void)userBuyProductWithProductId:(NSString * _Nonnull)productId
                             userId:(NSString * _Nonnull)userId
                             roleId:(NSString * _Nonnull)roleId
                           creditId:(NSString * _Nullable)creditId
                         serverCode:(NSString * _Nonnull)servercode
                             remark:(NSString * _Nullable)remark
                          roleLevel:(NSString * _Nonnull)roleLevel
                           roleName:(NSString * _Nonnull)roleName
                         serverName:(NSString * _Nonnull)serverName
                          cpOrderId:(NSString * _Nullable)cpOrderId
                              extra:(NSString * _Nullable)extra;

/*获取储值数据中心对象*/
+(GamaIapData *)iapDataObject;

/*应用进入后台*/
+(void)applicationDidEnterBackground;

/*应用从后台到前端*/
+(void)applicationDidBecomeActive;

/*处理URL*/
+(BOOL)handleOpenIAPHistoryWithURL:(NSURL * _Nullable)url;

@end
