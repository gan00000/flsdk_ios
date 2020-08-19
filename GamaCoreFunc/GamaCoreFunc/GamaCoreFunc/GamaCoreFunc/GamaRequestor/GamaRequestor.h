//


#import <Foundation/Foundation.h>

#import "GamaCentreInfo.h"
#import "GamaFunction.h"
#import "GamaURLConnect.h"

@interface GamaRequestor : NSObject


+ (NSDictionary * _Nonnull)commDic;

+ (void)requestByParams:(NSDictionary * _Null_unspecified)dic
          requestDomain:(NSString * _Nonnull)domain
         isReqestByPost:(BOOL)isReqByPost
      ComplitionHandler:(GamaServerResponsedHandler _Nullable)requestHandler;

+ (void)requestByParams:(NSDictionary * _Null_unspecified)dic
          requestDomain:(NSString * _Nonnull)domain
    requestSecondDomain:(NSString * _Nonnull)secoundDomain
             retryTimes:(NSInteger)retryTimes
         isReqestByPost:(BOOL)isReqByPost
      ComplitionHandler:(GamaServerResponsedHandler _Nullable)requestHandler;

+ (void)requestByParams:(NSDictionary * _Null_unspecified)dic
          requestDomain:(NSString * _Nonnull)domain
    requestSecondDomain:(NSString * _Nonnull)secoundDomain
expectResponseDicKeysArray:(NSArray * _Nullable)expectKeysArray
             retryTimes:(NSInteger)retryTimes
         isReqestByPost:(BOOL)isReqByPost
      ComplitionHandler:(GamaServerResponsedHandler _Nullable)requestHandler;

+ (void)requestByParams:(NSDictionary * _Null_unspecified)dic
       additionalParams:(NSDictionary * _Nullable)addDic
          requestDomain:(NSString * _Nonnull)domain
    requestSecondDomain:(NSString * _Nonnull)secoundDomain
expectResponseDicKeysArray:(NSArray * _Nullable)expectKeysArray
             retryTimes:(NSInteger)retryTimes
         isReqestByPost:(BOOL)isReqByPost
      ComplitionHandler:(GamaServerResponsedHandler _Nullable)requestHandler;

#pragma mark Addtional NSURLRequest

+ (void)requestByNSURLRequest:(NSURLRequest * _Nullable)request
            ComplitionHandler:(GamaServerResponsedHandler _Nullable)requestHandler;

#pragma mark Normal Post
+ (void)requestPostWithRequestDomain:(NSString * _Nonnull)domain
                         andHTTPBody:(NSData * _Nonnull)data
                  andConverTypeValue:(NSString * _Nonnull)converTypeVal
                   ComplitionHandler:(GamaServerResponsedHandler _Nullable)requestHandler;

#pragma mark Normal Get
+ (void)requestGetWithRequestDomain:(NSString * _Nonnull)doamin
                          andParams:(NSDictionary * _Nullable)parDic
                     isAddCommonDic:(BOOL)isAddCommonDic
                  ComplitionHandler:(GamaServerResponsedHandler _Nullable)requestHandler;

@end

#pragma mark - IAP

typedef NS_ENUM(NSInteger, GamaConnectState)
{
    NEW_INTERFACE = 0,            //新接口
    OLD_INTERFACE,                //旧接口
    ERROR,                        //网络错误
};

@interface GamaRequestor (IAP_NewInterfaceAvailableOrNot)
+ (NSInteger)isNewInterfaceAvailable;
@end

typedef void (^IAP_CreateOrder)(NSString * _Nullable code, NSString * _Nullable orderID, NSDictionary * _Nullable dic, NSError * _Nullable error);
@interface GamaRequestor (IAP_CreateOrder)
+ (void)createOrderIDWithUserID:(NSString * _Nonnull)userID
                         serverCode:(NSString * _Nonnull)serverCode
                             roleID:(NSString * _Nonnull)roleID
                              level:(NSString * _Nonnull)level
                           creditID:(NSString * _Nullable)creditID
                          productID:(NSString * _Nonnull)productID
                             remark:(NSString * _Nullable)remark
                         serverName:(NSString * _Nullable)serverName
                           roleName:(NSString * _Nullable)roleName
                          cpOrderId:(NSString * _Nullable)cpOrderId
                              extra:(NSString * _Nullable)extra
               andComplitionHandler:(IAP_CreateOrder _Nullable) completionHandler;

@end

// 验证订单

typedef void (^IAP_AppstoreCallBack)(NSString * _Nullable code, NSString * _Nullable orderID, NSDictionary * _Nullable dic, NSError * _Nullable error);

@interface GamaRequestor (IAP_AppstoreCallback)

+ (void)newMethodToPostDataToValiteWithOrderID:(NSString * _Nonnull)orderID
                                  currencyCode:(NSString * _Nonnull)currencyCode
                                    localPrice:(NSString * _Nonnull)localPrice
                                 transactionId:(NSString * _Nonnull)transactionId
                                   receiptData:(NSData * _Nonnull)receiptData
                                        userId:(NSString * _Nonnull)userId
                                    serverCode:(NSString * _Nonnull)serverCode
                                    newOrderId:(NSString * _Nonnull)newOrderId
                          andComplitionHandler:(IAP_AppstoreCallBack _Nullable)handler;


@end


