

#import <Foundation/Foundation.h>
#import "GamaIapFunction.h"
#import "GamaIapInfo.h"
#import "GamaIapData.h"
#import "GamaIapServerAccess.h"
#import "GamaIapRecodeAndLog.h"
#import "GamaIapAlertView.h"
#import "GamaIapTransactionRecorder.h"
#import "GamaIapMemoryAndLocalDataAdmin.h"
#import "GamaFunction.h"
#import "GamaAlertView.h"
#import "GamaCentreInfo.h"
#import "GamaSecurity.h"
#import "GamaRequestor.h"
#import "GamaSecurityFunction.h"

#define GAMA_ALL_TRANSACTIONS @"GAMA_ALL_TRANSACTIONS"
#define GAMA_USER_POST_PAY_REPORT_TO_SP_SERVER_FINISHED @"GAMA_USER_POST_PAY_REPORT_TO_GAMA_SERVER_FINISHED"

#define GAMA_IAP_RECORD_KEY_USERID                  @"S38LgS3ncL5A/+d0QTOZJQ=="
#define GAMA_IAP_RECORD_KEY_PLAYERID                @"Xw6p1PhkNlNZqLG+2i+vuA=="
#define GAMA_IAP_RECORD_KEY_SERVERCODE              @"9ewVaOc0fSQej9J/+20xnQ=="
#define GAMA_IAP_RECORD_KEY_PRODUCTID               @"+p0OnhFALTkaN829APmGbA=="
#define GAMA_IAP_RECORD_KEY_REMARK                  @"syYXQKMr8aj3pIWNMPMKOg=="
#define GAMA_IAP_RECORD_KEY_SPLEVEL               @"6ZflunSyYhUukWMaYDJjNQ=="
#define GAMA_IAP_RECORD_KEY_SPROLE                @"StbkeW7NZfDIpPwIS61wjA=="
#define GAMA_IAP_RECORD_KEY_SPORDERID             @"eid9rlTSgFKIqtn3Ne2QKA=="
#define GAMA_IAP_RECORD_KEY_BUYDATE                 @"ZmVpGz+dB9QMKJOBSLQdgQ=="
#define GAMA_IAP_RECORD_KEY_BUYSTATE                @"jZkCeJ+jPjDHuGBhD4gyOg=="
#define GAMA_IAP_RECORD_KEY_TRANSACTIONID           @"nxGtQl+x22lNrNGMWelh/w=="
#define GAMA_IAP_RECORD_KEY_TRANSACTIONRECEIPTDATA  @"ixGf0CWEfVEuqLKyxrPrmxsqZ65Nf7qlxI08hM4V/hY="
#define GAMA_IAP_RECORD_KEY_REPORT_TIMES            @"gjMlAShN2zhPb/wJZDLmyjLuUIQWuGhcB6m4v0C1jLKQ8tdFOg6YMgbWXA7jdawn"


#define GAMA_IAP_RECORD_STATE_GET_ORDERID_SUCCESS_WAIT_PAY_RESULT   @"YYBhGMtu9hAlXoa7rHaUojlGbQSm4CMrLK5p6DIsmZ/wdJPG0dA/ww2Zqnezy7nx"
#define GAMA_IAP_RECORD_STATE_PAY_SUCCESS_WAIT_SERVER_CHERCK_RESULT @"ry60FvOox9/dYqteezbCfO8PlyBqh18QusGjeAxLETY="
#define GAMA_IAP_RECORD_STATE_PAY_FAIL_OVER                         @"smjiIHt/RyRyDF+gYEOttwcU/8E5QJez75PyG0WZWY0=" //payFailInAppStore_Over
#define GAMA_IAP_RECORD_STATE_GAMA_SERVER_CHECK_SUCCESS_OVER        @"DmMI8dyOjiPICh2q4oWPEiwvUL+79XvoB9LN9j+2j/0z4nRotdm/8FnB+PsHvMwA"//GamaServerCheckSuccessAndSendGameColf_Over
#define GAMA_IAP_RECORD_STATE_USER_CANCEL_PAY_OVER                  @"SCxAm/EvZ77IIDU12t6nzkCbXwu1EwkjD0NmbX3iO7E=" //userCancelPay_Over
#define GAMA_IAP_RECORD_STATE_SERVER_CHECK_FAIL_OVER                @"rIW2OfnjG+D4B+js0F0zbnUsiioygjIQj3RKCY0XSHo=" //serverCheckFail_Over


#define GAMA_ONE_PURCHASE_PROCESS_LOG_KEY                           @"GAMA_ONE_PURCHASE_PROCESS_LOG_KEY" //一笔购买的过程日志KEY

@interface GamaIapTransactionRecorder : NSObject

//iap字符串加密
+(NSString *)iapEncryptFromString:(NSString *)aString;

//iap字符串解密
+(NSString *)iapDecodeFromString:(NSString *)aString;

/*
 格式：yyyy-MM-dd_HH:mm
 */
//+(NSString *)getTimeDate;

@end

@interface GamaIapTransactionRecorder (CheckSuccess)

/**
 *	@brief	服务器对交易验证成功，并且发送了游戏币
 
 这时候，做两步：
 1 更新Info中的状态
 2 更新日志
 */
+(void)gamaServerCheckSuccessAndSendGameGolf;


@end

@interface GamaIapTransactionRecorder (CreatRecord)

/**
 *	@brief	获取到 OrderID以后，纪录交易的基本信息
 
 
 *********************
 基本信息包括：
 用户点击储值按钮时候传递过来的用户信息
 1 userID
 2 playerID
 3 serverCode
 4 productID
 5 remark
 6 roleLevel
 7 roleName
 从服务器获取的订单号
 8 orderId
 从客户端获取的时间
 9 buyDate（自定义参数）
 10 buyState （自定义，购买状态）
 *********************
 
 
 这个方法会做三步：
 1 userdefault中 GAMA_ALL_TRANSACTIONS 中添加交易的 orderid；并查看有没有超过上限。
 2 纪录基本信息到 orderid＋"info"  为key的字典中，存放在NSUserDefault
 3 纪录购买日至 Orderid+"log"  为key的字符串，存放在NSUserDefault中
 */
+(void)creatOneTransactionRecordAfterGetOrderid;


@end

@interface GamaIapTransactionRecorder (PayFail)

/**
 *	@brief	苹果支付失败，
 这时候需要做两步：
 1 更改状态
 2 更改日志
 */
+(void)payFailInAppStore;


@end

@interface GamaIapTransactionRecorder (PaySuccess)

/**
 *	@brief	支付成功以后，更新交易的数据：
 多了参数：
 11 transactionReceiptData；
 12 transactionID；
 购买的状态也变化了
 buyState
 Log日志也更新了
 
 
 所以方法分了两步走：
 1 更新orderid＋“Info”  key的数据：添加 transactionReceiptData transactionID 参数纪录，更新状态buyState
 2 更新Log
 */
+(void)updataTransactionInfoAndLogAfterPaySuccess;

@end

@interface GamaIapTransactionRecorder (ServerCheckFail)

/**
 *	@brief	服务器验证失败
 这时候需要做两步：
 1 更改状态
 2 更改日志
 */
+(void)gamaServerCheckFail;

@end

@interface GamaIapTransactionRecorder (UserCancelPay)


/**
 *	@brief	用户取消支付
 这时候需要做两步：
 1 更改状态
 2 更改日志
 */
+(void)userCancelPay;

@end
