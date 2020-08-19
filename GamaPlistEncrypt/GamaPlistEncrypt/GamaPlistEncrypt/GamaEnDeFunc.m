//
//
#import <AppKit/AppKit.h>
#import "GamaEnDeFunc.h"
#import "GamaBase64Encoding.h"
#import "NSData+AES128.h"
#import "GamaSecurity.h"

@implementation GamaEnDeFunc

+ (void)creatEncryptedPlistWithFilePath:(NSString *)filepath
{
    NSString *tmpGameShortName;
    
    //获取配置内容字典
    NSDictionary * infoDic=[NSDictionary dictionaryWithContentsOfFile:filepath];
    NSMutableDictionary * writeInfoDic=[[NSMutableDictionary alloc]init];
    for (NSString * key in infoDic.allKeys)
    {
        NSMutableDictionary * tempDic=[[NSMutableDictionary alloc]init];
        NSDictionary * aDic=[infoDic objectForKey:key];
        // 忽略非字典类型键值对
        if (![aDic isKindOfClass:[NSDictionary class]]) {
            [writeInfoDic setObject:aDic forKey:key];
            continue;
        }
        for (NSString * akey in aDic.allKeys)
        {
            NSString * content=[aDic objectForKey:akey];
            if ([akey isEqualToString:@"gameShortName"]) {
                tmpGameShortName = content;
            }
            
            //            NSLog(@"%@",content);
            NSString * enContent=[self getEncryptStringFromString:content];
            NSString * aenKey=[self getEncryptStringFromString:akey];
            NSDictionary * diccc=[NSDictionary dictionaryWithObjectsAndKeys:enContent,aenKey, nil];
            [tempDic addEntriesFromDictionary:diccc];
        }
        NSString * enKey=[self getEncryptStringFromString:key];
        NSDictionary * addDic=[NSDictionary dictionaryWithObjectsAndKeys:tempDic,enKey, nil];
        [writeInfoDic addEntriesFromDictionary:addDic];
    }
    
    //add date
    NSDate * nowDate=[NSDate date];
    NSDateFormatter * dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
    NSString * locationString=[dateFormatter stringFromDate:nowDate];
    NSString * sdkConfigCreateDate = locationString;
    [writeInfoDic setValue:sdkConfigCreateDate forKey:@"SDK_DATE"];
    
    //add gameName
    [writeInfoDic setValue:tmpGameShortName forKey:@"_GAME_NAME_AT_ENCRYPT_"];
    NSString *basePath = [filepath stringByDeletingLastPathComponent];
    BOOL isSuccess = [writeInfoDic writeToFile:[basePath stringByAppendingFormat:@"/%@.plist",GAMA_ENCRYPT_INFO_PLIST_NAME]
                                    atomically:NO];
    NSAlert *alert = [[NSAlert alloc] init];
    if (isSuccess) {
        [alert setMessageText:@"Success to encrypt the file!"];
    } else {
        [alert setMessageText:@"Failed to encrypt!"];
    }
    [alert runModal];
}

+ (void)creatDecryptedPlistWithFilePath:(NSString *)filepath
{
    //
    NSDictionary * infoDic=[NSDictionary dictionaryWithContentsOfFile:filepath];
    
    NSMutableDictionary *_coreConfDic = [NSMutableDictionary dictionary];
    //给单例字典添加键值对
    //先添加配置的所有键值对
    for (NSString * key in infoDic.allKeys)
    {
        NSDictionary * tempDic=[infoDic objectForKey:key];
        if ([tempDic isKindOfClass:[NSDictionary class]]) {
            NSMutableDictionary *decodeDic = [[NSMutableDictionary alloc] init];
            for (NSString *tempKey in tempDic.allKeys) {
                NSString * content=[tempDic objectForKey:tempKey];
                NSString * decodeKey=[GamaSecurity getDecryptStringFromString:tempKey
                                                                      withKey:GAMA_CONF_DEFAULT_KEY
                                                                           iv:GAMA_CONF_DEFAULT_IV];
                NSString * decodeContent=[GamaSecurity getDecryptStringFromString:content
                                                                          withKey:GAMA_CONF_DEFAULT_KEY
                                                                               iv:GAMA_CONF_DEFAULT_IV];
                //還原“\”转译字符
                NSString * trueDecodeContent=[decodeContent stringByReplacingOccurrencesOfString:@"\\n"
                                                                                      withString:@"\n"];
                [decodeDic setObject:trueDecodeContent forKey:decodeKey];
            }
            NSString * decodeOutKey=[GamaSecurity getDecryptStringFromString:key
                                                                     withKey:GAMA_CONF_DEFAULT_KEY
                                                                          iv:GAMA_CONF_DEFAULT_IV];
            [_coreConfDic setObject:decodeDic forKey:decodeOutKey];
        }
    }
    
    NSString *basePath = [filepath stringByDeletingLastPathComponent];
    BOOL isSuccess = [_coreConfDic writeToFile:[basePath stringByAppendingFormat:@"/%@.plist",GAMA_DECRYPT_INFO_PLIST_NAME]
                                    atomically:NO];
    NSAlert *alert = [[NSAlert alloc] init];
    if (isSuccess) {
        [alert setMessageText:@"Success to decrypt the file!"];
    } else {
        [alert setMessageText:@"Failed to decrypt!"];
    }
    [alert runModal];
}

+ (NSString *)getEncryptStringFromString:(NSString *)string
{
    NSData * data=[string dataUsingEncoding:NSUTF8StringEncoding];
    NSData * midata=[data AES128EncryptWithKey:GAMA_CONF_DEFAULT_KEY iv:GAMA_CONF_DEFAULT_IV];
    return [GamaBase64Encoding encode:midata];
}

@end
