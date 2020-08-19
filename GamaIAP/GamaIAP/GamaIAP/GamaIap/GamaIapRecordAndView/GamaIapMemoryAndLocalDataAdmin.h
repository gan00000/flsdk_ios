
/*
 从“GamaIapFunction”。分离出来的功能类，主要是对 内存，购买参数本地保存，和购买日志的更新的系列函数.
 这里面的方法，负责购买日志，本地纪录，内存数据更新等一系列方法.
 */

#import <Foundation/Foundation.h>

#import <StoreKit/StoreKit.h>

@interface GamaIapMemoryAndLocalDataAdmin : NSObject

//从厂商拿到所有参数以后，保存在memory 和本地
+(void)setUserID:(NSString *)aUserID
     andPlayerID:(NSString *)aPlayerID
   andServerCode:(NSString *)aServerCode
    andProductID:(NSString *)aProductID
       andRemark:(NSString *)aRemark
    andRoleLevel:(NSString *)aRoleLevel
     andRoleName:(NSString *)aRoleName;

//从服务器拿到orderid以后，更新到memory和本地
+(void)updataLocalDataWithOrderID:(NSString *)aOrderID;

//购买成功以后，把获取的交易的信息，更新到memory和本地
+(void)paySuccessUpdataLocalDataWithTrasaction:(SKPaymentTransaction *)transaction
                                andReceiptData:(NSData *)receiptData;

//购买成功，发现跟［GamaIapData defaultData］里面的订单号不是同一笔，需要单独记录
+(void)paySuccessButNotSameOrderIdWithParameterDic:(NSDictionary *)parameterDic;

//获取订单货币单位成功
+(void)paySuccessUpdateLocalDataWithCurrencyCode:(NSString *)currencyCode andLocalPrice:(NSString *)localPrice;

//购买失败以后，更新信息到memory和本地
+(void)payFailUpdataLocalDataWithTrasaction:(SKPaymentTransaction *)transaction;

//清空memory和本地纪录
+(void)clearMemoryDataAndLocalData;

@end
