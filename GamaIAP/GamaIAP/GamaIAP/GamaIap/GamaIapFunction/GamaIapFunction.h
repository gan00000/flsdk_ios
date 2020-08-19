

#import <Foundation/Foundation.h>

#import <StoreKit/StoreKit.h>

@interface GamaIapFunction : NSObject

//检查没有完成的交易
+(void)checkTransactionUnfinished;

//用户点击了购买按钮
+(void)userDidClickBuyBtnWithProductID:(NSString *)aWantBuyProductID
                             andUserID:(NSString *)aUserID
                             andRoleID:(NSString *)roleID
                           andCreditID:(NSString *)creditID
                         andServerCode:(NSString *)aServerCode
                             andRemark:(NSString *)aRemark
                          andRoleLevel:(NSString *)aRoleLevel
                           andRoleName:(NSString *)aRoleName
                            ServerName:(NSString *)serverName
                             cpOrderId:(NSString *)cpOrderId
                                 extra:(NSString *)extra;


//交易成功以后
+(void)completeTransaction:(SKPaymentTransaction *)transaction;

//交易失败以后
+(void)failedTransaction:(SKPaymentTransaction *)transaction;

//开启游戏，初始化paymentQueue代理以后，自动补单了，就开始初始化数据0
+(BOOL)setDataFromLocal;

#pragma mark - 其他接口
//给其他类用的发送购买日志的接口
+(void)postBuyLogToServerWithDomainName:(NSString *)domainName
                            andRoleName:(NSString *)roleName
                       andTransactionId:(NSString *)transactionId
                                andDate:(NSString *)date;

@end
