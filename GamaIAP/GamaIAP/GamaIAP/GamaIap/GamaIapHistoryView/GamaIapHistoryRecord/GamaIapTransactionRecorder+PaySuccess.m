//
//  GamaIapTransactionRecorder+PaySuccess.m
//  IAP反馈
//
//
//
//

#import "GamaIapTransactionRecorder.h"

@implementation GamaIapTransactionRecorder (PaySuccess)

+(void)updataTransactionInfoAndLogAfterPaySuccess
{
    //transactionID加密
    NSString * decryptTransactionID=[GamaIapData defaultData].transactionID;
    NSString * encryptTransactionID=[self iapEncryptFromString:decryptTransactionID];
    //交易base64位转吗加密
    NSData * transactionReceiptData=[GamaIapData defaultData].transactionReciptData;
    NSString * decryptTransactionReceiptBase64Str=
    [self encode:(uint8_t *)transactionReceiptData.bytes
          length:transactionReceiptData.length];
    NSString * encryptTransactionReceiptBase64Str=
    [self iapEncryptFromString:decryptTransactionReceiptBase64Str];
    
    
    //获取key
    NSString * decryptSPOrderID=[GamaIapData defaultData].orderId;
        //orderIDInfo加密
    NSString * decryptSPOrderInfoKey=[NSString stringWithFormat:@"%@Info",decryptSPOrderID];
    NSString * encryptSPOrderInfoKey=[self iapEncryptFromString:decryptSPOrderInfoKey];
        //orderIDLog加密
    NSString * decryptSPOrderLogKey=[NSString stringWithFormat:@"%@Log",decryptSPOrderID];
    NSString * encryptSPOrderLogKey=[self iapEncryptFromString:decryptSPOrderLogKey];
    
    
    NSUserDefaults * userDefault=[NSUserDefaults standardUserDefaults];
    /*第一步，更新Info*/
    NSDictionary * oldInfoDic=[userDefault objectForKey:encryptSPOrderInfoKey];
    NSMutableDictionary * shouldInfoDic=[NSMutableDictionary dictionaryWithDictionary:oldInfoDic];
        //添加transaction ID键值对,先看原来有没有，有的话继续追写，没有，就加进入
    NSString * oldTransactionID=nil;
    oldTransactionID=[shouldInfoDic objectForKey:GAMA_IAP_RECORD_KEY_TRANSACTIONID];
    NSString * nowTransactionID=nil;
            /*如果原来纪录有，把原来的解密，加上 “，” 和 新的transactionid，然后加密，添加到InfoDic中 */
    if (oldTransactionID&&oldTransactionID.length>5) {
        NSString * oldDecodeTransactionID=[self iapDecodeFromString:oldTransactionID];
        NSString * nowDecodeTransactionID=
        [NSString stringWithFormat:@"%@,%@",oldDecodeTransactionID,decryptTransactionID];
        nowTransactionID=[self iapEncryptFromString:nowDecodeTransactionID];
    }
    else
    {
        nowTransactionID=encryptTransactionID;
    }
    NSDictionary * transactionIDDic=[NSDictionary dictionaryWithObjectsAndKeys:
                                     nowTransactionID,GAMA_IAP_RECORD_KEY_TRANSACTIONID,
                                     nil];
    [shouldInfoDic addEntriesFromDictionary:transactionIDDic];
        //添加receiptData键值对
    NSString * oldTransactionReceptBase64Str=nil;
    oldTransactionReceptBase64Str=[shouldInfoDic objectForKey:GAMA_IAP_RECORD_KEY_TRANSACTIONRECEIPTDATA];
    NSString * nowEncryptReceiptBase64Str=nil;
            /*如果窜在，就拼接到后面*/
    if (oldTransactionReceptBase64Str&&oldTransactionReceptBase64Str.length>5) {
        NSString * oldDecodeReceiptBase64Str=[self iapDecodeFromString:oldTransactionReceptBase64Str];
        NSString * nowDecodeReceiptBase64Str=[NSString stringWithFormat:@"%@------------分割--------------%@",
                                              oldDecodeReceiptBase64Str,decryptTransactionReceiptBase64Str];
        nowEncryptReceiptBase64Str=[self iapEncryptFromString:nowDecodeReceiptBase64Str];
    }
    else
    {
        nowEncryptReceiptBase64Str=encryptTransactionReceiptBase64Str;
    }
    NSDictionary * transactionReceiptBase64StrDic=
    [NSDictionary dictionaryWithObjectsAndKeys:
                                     nowEncryptReceiptBase64Str,GAMA_IAP_RECORD_KEY_TRANSACTIONRECEIPTDATA,
                                     nil];
    [shouldInfoDic addEntriesFromDictionary:transactionReceiptBase64StrDic];
        //状态
    [shouldInfoDic setObject:GAMA_IAP_RECORD_STATE_PAY_SUCCESS_WAIT_SERVER_CHERCK_RESULT forKey:GAMA_IAP_RECORD_KEY_BUYSTATE];
        //同步
    [userDefault setObject:shouldInfoDic forKey:encryptSPOrderInfoKey];
    
    
    /*第二步，获取日志，写进NSUserDefault*/
    NSString * encryptLogStr=[userDefault objectForKey:GAMA_ONE_PURCHASE_PROCESS_LOG_KEY];
    [userDefault setObject:encryptLogStr forKey:encryptSPOrderLogKey];
    
    [userDefault synchronize];
    
}

+(NSString *)encode:(const uint8_t *)input length:(NSInteger)length
{
    static char table[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
    NSMutableData *data = [NSMutableData dataWithLength:((length + 2) / 3) * 4];
    uint8_t *output = (uint8_t *)data.mutableBytes;
    for (NSInteger i = 0; i < length; i += 3)
    {
        NSInteger value = 0;
        for (NSInteger j = i; j < (i + 3); j++)
        {
            value <<= 8;
            if (j < length)
            {
                value |= (0xFF & input[j]);
            }
        }
        NSInteger index = (i / 3) * 4;
        output[index + 0] =                    table[(value >> 18) & 0x3F];
        output[index + 1] =                    table[(value >> 12) & 0x3F];
        output[index + 2] = (i + 1) < length ? table[(value >> 6)  & 0x3F] : '=';
        output[index + 3] = (i + 2) < length ? table[(value >> 0)  & 0x3F] : '=';
    }
    return [[[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding] autorelease];
}

@end
