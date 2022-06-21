

#import "GamaIapTransactionRecorder.h"

@implementation GamaIapTransactionRecorder (CreatRecord)


//*********************
//*********************
+ (void)creatOneTransactionRecordAfterGetOrderid
{
    //orderID加密
    NSString * decryptOrderid=[GamaIapData defaultData].orderId;
    NSString * encryptOrderid=[self iapEncryptFromString:decryptOrderid];
    //orderIDInfo加密
    NSString * decryptOrderInfoKey=[NSString stringWithFormat:@"%@Info",decryptOrderid];
    NSString * encryptOrderInfoKey=[self iapEncryptFromString:decryptOrderInfoKey];
    //orderIDLog加密
    NSString * decryptOrderLogKey=[NSString stringWithFormat:@"%@Log",decryptOrderid];
    NSString * encryptOrderLogKey=[self iapEncryptFromString:decryptOrderLogKey];
    
    
    //各个参数加密
        //
    NSString * decryptUserid=[GamaIapData defaultData].userID;
    NSString * encryptUserid=[self iapEncryptFromString:decryptUserid];
        //
    NSString * decryptPlayerId=[GamaIapData defaultData].playerID;
    NSString * encryptPlayerID=[self iapEncryptFromString:decryptPlayerId];
        //
    NSString * decryptServerCode=[GamaIapData defaultData].serverCode;
    NSString * encryptServerCode=[self iapEncryptFromString:decryptServerCode];
        //
    NSString * decryptProductID=[GamaIapData defaultData].productID;
    NSString * encryptProductID=[self iapEncryptFromString:decryptProductID];
        //
    NSString * decryptRemark=[GamaIapData defaultData].remarkStr;
    NSString * encryptRemark=[self iapEncryptFromString:decryptRemark];
        //
    NSString * decryptRoleLevel=[GamaIapData defaultData].roleLevel;
    NSString * encryptRoleLevel=[self iapEncryptFromString:decryptRoleLevel];
        //
    NSString * decryptRoleName=[GamaIapData defaultData].roleName;
    NSString * encryptRoleName=[self iapEncryptFromString:decryptRoleName];
        //
    NSString * decryptTransactionDate=[SUtil getTimeDate];
    NSString * encryptTransactionDate=[self iapEncryptFromString:decryptTransactionDate];
    
    
    
    /*第一步，添加remark到 GAMA_ALL_TRANSACTIONS 中*/
    NSUserDefaults * userDefault=[NSUserDefaults standardUserDefaults];
    NSArray * oldTransictions=[userDefault objectForKey:GAMA_ALL_TRANSACTIONS];
    NSMutableArray * shouldTransictions=[NSMutableArray arrayWithArray:oldTransictions];
    [shouldTransictions addObject:encryptOrderid];
    //如果交易纪录超过了20条,移出最早加入的一条
    if (shouldTransictions.count>20)
    {
        NSString * encryptOrderIDIndexZero=[shouldTransictions objectAtIndex:0];
        //获得orderid
        NSString * shouldRemoveOrderID=[self iapDecodeFromString:encryptOrderIDIndexZero];
        //获得加密的orderidInfoKey
        NSString * shouldRemoveOrderIDInfoKey=[NSString stringWithFormat:@"%@Info",shouldRemoveOrderID];
        NSString * shouldRemoveEncryptOrderIDInfoKey=[self iapEncryptFromString:shouldRemoveOrderIDInfoKey];
        //获得加密的orderLogKey
        NSString * shouldRemoveOrderIDLogKey=[NSString stringWithFormat:@"%@Log",shouldRemoveOrderID];
        NSString * shouldRemoveEncryptLogInfoKey=[self iapEncryptFromString:shouldRemoveOrderIDLogKey];
        
        [userDefault removeObjectForKey:shouldRemoveEncryptOrderIDInfoKey];
        [userDefault removeObjectForKey:shouldRemoveEncryptLogInfoKey];
        [shouldTransictions removeObjectAtIndex:0];
        [userDefault synchronize];
    }
    [userDefault setObject:shouldTransictions forKey:GAMA_ALL_TRANSACTIONS];
    
    /*第二步，添加基本信息到 userdefault*/
    NSDictionary * transactionInfoDic=[NSDictionary dictionaryWithObjectsAndKeys:
                                       encryptUserid,GAMA_IAP_RECORD_KEY_USERID,
                                       encryptPlayerID,GAMA_IAP_RECORD_KEY_PLAYERID,
                                       encryptServerCode,GAMA_IAP_RECORD_KEY_SERVERCODE,
                                       encryptProductID,GAMA_IAP_RECORD_KEY_PRODUCTID,
                                       encryptRemark,GAMA_IAP_RECORD_KEY_REMARK,
                                       encryptRoleLevel,GAMA_IAP_RECORD_KEY_SPLEVEL,
                                       encryptRoleName,GAMA_IAP_RECORD_KEY_SPROLE,
                                       encryptOrderid,GAMA_IAP_RECORD_KEY_SPORDERID,
                                       encryptTransactionDate,GAMA_IAP_RECORD_KEY_BUYDATE,
                                       GAMA_IAP_RECORD_STATE_GET_ORDERID_SUCCESS_WAIT_PAY_RESULT,GAMA_IAP_RECORD_KEY_BUYSTATE,
                                       [NSString stringWithFormat:@"0"],GAMA_IAP_RECORD_KEY_REPORT_TIMES,
                                       nil];
    [userDefault setObject:transactionInfoDic forKey:encryptOrderInfoKey];
    
    /*第三步，获取日志，写进NSUserDefault*/
    NSString * logStr=[userDefault objectForKey:GAMA_ONE_PURCHASE_PROCESS_LOG_KEY];
    [userDefault setObject:logStr forKey:encryptOrderLogKey];
    
    [userDefault synchronize];
}


@end
