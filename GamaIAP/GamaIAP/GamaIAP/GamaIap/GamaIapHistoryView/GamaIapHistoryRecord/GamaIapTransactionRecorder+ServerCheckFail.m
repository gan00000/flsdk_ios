//


#import "GamaIapTransactionRecorder.h"

@implementation GamaIapTransactionRecorder (ServerCheckFail)

+(void)gamaServerCheckFail
{

    //获取key
    NSString * decryptOrderID=[GamaIapData defaultData].orderId;
    
    //orderIDInfo加密
    NSString * decryptOrderInfoKey=[NSString stringWithFormat:@"%@Info",decryptOrderID];
    NSString * encryptOrderInfoKey=[self iapEncryptFromString:decryptOrderInfoKey];
    
    //orderIDLog加密
    NSString * decryptOrderLogKey=[NSString stringWithFormat:@"%@Log",decryptOrderID];
    NSString * encryptOrderLogKey=[self iapEncryptFromString:decryptOrderLogKey];
    
    NSUserDefaults * userDefault=[NSUserDefaults standardUserDefaults];
    /*第一步，更改购买状态*/
    NSDictionary * oldInfoDic=[userDefault objectForKey:encryptOrderInfoKey];
    NSMutableDictionary * shouldInfoDic=[NSMutableDictionary dictionaryWithDictionary:oldInfoDic];
    [shouldInfoDic setObject:GAMA_IAP_RECORD_STATE_SERVER_CHECK_FAIL_OVER
                      forKey:GAMA_IAP_RECORD_KEY_BUYSTATE];
    [userDefault setObject:shouldInfoDic forKey:encryptOrderInfoKey];
    
    /*第二步，获取日志，写进NSUserDefault*/
    NSString * logStr=[userDefault objectForKey:GAMA_ONE_PURCHASE_PROCESS_LOG_KEY];
    [userDefault setObject:logStr forKey:encryptOrderLogKey];
    
    [userDefault synchronize];
}

@end
