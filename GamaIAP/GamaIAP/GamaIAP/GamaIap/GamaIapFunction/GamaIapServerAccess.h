
#import <Foundation/Foundation.h>
#import <StoreKit/StoreKit.h>

@interface GamaIapServerAccess : NSObject
@property (nonatomic,assign)dispatch_queue_t _Nonnull iapPostQueue;
@property (nonatomic,assign)dispatch_queue_t _Nonnull iapGetCurrencyQueue;


+ (instancetype _Nonnull)defaultInstance;

+(void)postToServerCheckTransactionAndSentGameColdAsUsual:(SKPaymentTransaction * _Nonnull)transaction
                                               andReceiptData:(NSData * _Nonnull)receiptData;

+(void)postToServerCheckTransactionAndSentGameColdWithUserId:(NSString * _Nonnull)userId
                                               andServerCode:(NSString * _Nonnull)serverCode
                                                  andOrderId:(NSString * _Nonnull)orderId
                                             andCurrencyCode:(NSString * _Nonnull)currencyCode
                                               andLocalPrice:(NSString * _Nonnull)localPrice
                                            andTransactionId:(NSString * _Nonnull)transactionId
                                                 receiptData:(NSData * _Nonnull)receiptData;

+(void)postToAppStoreCheckTransactionAndSentGameColdWithUserId:(NSString * _Nonnull)userId
                                                 andServerCode:(NSString * _Nonnull)serverCode
                                                    andOrderId:(NSString * _Nonnull)orderId
                                               andCurrencyCode:(NSString * _Nonnull)currencyCode
                                                 andLocalPrice:(NSString * _Nonnull)localPrice
                                              andTransactionId:(NSString * _Nonnull)transactionId
                                                   receiptData:(NSData * _Nonnull)receiptData;

+(void)accessServerForOrderIDWithUserID:(NSString * _Nonnull)userId
                                 serverCode:(NSString * _Nonnull)serverCode
                                     roleID:(NSString * _Nonnull)roleId
                                      level:(NSString * _Nonnull)level
                                   creditID:(NSString * _Nonnull)creditId
                                  productID:(NSString * _Nonnull)productId
                                     remark:(NSString * _Nullable)remark
                                 serverName:(NSString * _Nullable)serverName
                                   roleName:(NSString * _Nullable)roleName
                                  cpOrderId:(NSString * _Nonnull)cpOrderId
                                      extra:(NSString * _Nonnull)extra;

@end
