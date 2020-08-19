//
//  GamaPlatformRequestor.m
//  GamaSDK_iOS
//
//  Created by sunn on 2017/8/10.
//  Copyright © 2017年 gama. All rights reserved.
//

#import "GamaPlatformRequestor.h"
#import "GamaRequestor.h"
#import "GamaCommonHeader.h"

#define domainUrl SDKConReaderGetString(@"platformDomainName")

@implementation GamaPlatformRequestor

+ (NSDictionary *)commDic
{
    NSDictionary * _commDic =
    @{
      @"userId"     :   [SdkUserInfoModel shareInfoModel].userId,
      
      // 角色信息
      @"roleId"     :   [SdkUserInfoModel shareInfoModel].roleID    ,
      @"roleName"   :   [SdkUserInfoModel shareInfoModel].roleName  ,
      @"roleLevel"  :   [SdkUserInfoModel shareInfoModel].roleLevel  ,
      @"vipLevel"   :   [SdkUserInfoModel shareInfoModel].vipLevel   ,
      @"serverCode" :   [SdkUserInfoModel shareInfoModel].serverCode ,
      @"serverName" :   [SdkUserInfoModel shareInfoModel].serverName ,
      
      // 公共的参数拼接
      @"gameCode"         :     [NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
      @"packageName"      :     [GamaFunction getBundleIdentifier],
      @"idfa"             :     [[GamaFunction getIdfa]       lowercaseString],
      @"uuid"             :     [[GamaFunction getGamaUUID]     lowercaseString],
      @"versionName"      :     [GamaFunction getBundleShortVersionString],
      @"versionCode"      :     [GamaFunction getBundleVersion],
      @"systemVersion"    :     [GamaFunction getSystemVersion],
      @"deviceType"       :     [GamaFunction getDeviceType],
      @"operatingSystem"  :     @"ios",
      @"gameLanguage"     :     [GamaFunction getServerLocaleStrWithGameLanguage:SDKConReaderGetString(GAMA_GAME_LANGUAGE)],
      @"osLanguage"       :     [GamaFunction getPreferredLanguage],
      
      @"loginTimestamp"   :     [SdkUserInfoModel shareInfoModel].timestamp ?
      [SdkUserInfoModel shareInfoModel].timestamp : @"",
      @"accessToken"      :     [SdkUserInfoModel shareInfoModel].accessToken ?
      [SdkUserInfoModel shareInfoModel].accessToken : @"",
      @"uniqueId"         :     [[GamaFunction getGamaUUID] lowercaseString],
      
      };
    
    return _commDic;
}

+ (NSString *)commonParmsStr
{
    NSString *resultStr = [[[NSString alloc] init] autorelease];
    NSDictionary *tmpMutableDic = [GamaPlatformRequestor commDic];
    for (NSString* key in tmpMutableDic.allKeys) {
        
        NSString *tmpVal = tmpMutableDic[key];
        
        tmpVal = [tmpVal gamaUrlDecodeString];
        
        resultStr = [resultStr stringByAppendingString:[NSString stringWithFormat:
                                                                @"%@=%@&",
                                                                key,
                                                                [GamaFunction urlEcodingFromString:tmpVal]
                                                                ]
                         ];
        
    }
    resultStr = [resultStr substringToIndex:resultStr.length - 1];
    
    return resultStr;
}

#pragma mark - 平台数据源请求

//获取悬浮按钮
+ (void)fetchFloatItemsDatasource:(void (^)(NSArray * _Nullable))handler
{
    NSString *projName = [NSString stringWithFormat:SDKConReaderGetString(@"fetchFloatItemsProj"),SDKConReaderGetString(SDK_GAME_CODE)];
    NSString *url = [NSString stringWithFormat:@"%@%@",SDKConReaderGetString(@"tongbuDomainName"),projName];
    [self _requestWithUrl:url
               completion:^(NSDictionary * _Nullable resultDict) {
                   NSArray *dataArr = resultDict[@"data"];
                   handler(dataArr);
               }];    
}
// request
+ (void)_requestWithUrl:(NSString *)url completion:(void (^)(NSDictionary * _Nullable resultDict))completion
{
    NSURLRequest *req = [NSURLRequest requestWithURL:[NSURL URLWithString:url]
                                         cachePolicy:NSURLRequestReloadIgnoringLocalCacheData
                                     timeoutInterval:30.0f];
    [GamaRequestor requestByNSURLRequest:req
                     ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                         if (!error) {
                             completion(resultJsonDic);
                         } else {
                             completion(nil);
                         }
                     }];
}

//资讯接口
+ (void)fetchItemInfoWithPageNum:(int)pageNum completion:(void (^)(NSArray * _Nullable))handler
{
    NSDictionary *dic = @{
                          @"amount" : [NSString stringWithFormat:@"%d",pageNum],
                          @"gameCode": [NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                          };
    NSString *url = [NSString stringWithFormat:@"%@%@",domainUrl,SDKConReaderGetString(@"informationItemProj")];
    
    NSMutableDictionary *mDic = [NSMutableDictionary dictionaryWithDictionary:dic];
    [mDic addEntriesFromDictionary:[GamaPlatformRequestor commDic]];
    
    [GamaRequestor requestByParams:mDic
                   requestDomain:url
             requestSecondDomain:url
                      retryTimes:1
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                   if (resultJsonDic) {
                       NSArray *dataArr = resultJsonDic[@"data"];
                       handler(dataArr);
                   } else {
                       handler(nil);
                   }
               }];
}

//获取玩家是否已经领取手机绑定的礼包
+ (void)isUserCanReceivePhoneBindGift:(void (^_Nullable)(NSDictionary * _Nullable resultDic))handler
{
    NSDictionary *dic = @{
                          @"userId" : [SdkUserInfoModel shareInfoModel].userId,
                          @"gameCode": [NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                          };
    NSString *url = [NSString stringWithFormat:@"%@%@",domainUrl,SDKConReaderGetString(@"isUserReceivePhoneBindGiftProj")];
    NSMutableDictionary *mDic = [NSMutableDictionary dictionaryWithDictionary:dic];
    [mDic addEntriesFromDictionary:[GamaPlatformRequestor commDic]];
    
    [GamaRequestor requestByParams:mDic
                   requestDomain:url
             requestSecondDomain:url
                      retryTimes:1
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                    handler(resultJsonDic);
               }];
}

//领取绑定手机礼包
+ (void)receivePhoneBindGiftWithUid:(NSString *_Nonnull)uid
                         serverCode:(NSString *_Nullable)serverCode
                             roleId:(NSString *_Nonnull)roleId
                         completion:(void (^_Nullable)(NSDictionary * _Nullable resultDic))handler
{
    NSDictionary *dic = @{
                          @"userId" : uid,
                          @"serverCode":serverCode,
                          @"roleId":roleId,
                          @"gameCode": [NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                          };
    NSString *url = [NSString stringWithFormat:@"%@%@",domainUrl,SDKConReaderGetString(@"getPhoneBindGiftProj")];
    NSMutableDictionary *mDic = [NSMutableDictionary dictionaryWithDictionary:dic];
    [mDic addEntriesFromDictionary:[GamaPlatformRequestor commDic]];
    
    [GamaRequestor requestByParams:mDic
                   requestDomain:url
             requestSecondDomain:url
                      retryTimes:1
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                   handler(resultJsonDic);
               }];
}

//获取信箱
+ (void)fetchItemEmailWithPageNum:(int)pageNum completion:(void (^)(NSDictionary * _Nullable))handler
{
    NSDictionary *dic = @{
                          @"amount" : [NSString stringWithFormat:@"%d",pageNum],
                          @"userId" : [SdkUserInfoModel shareInfoModel].userId,
                          @"gameCode": [NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                          };
    NSString *url = [NSString stringWithFormat:@"%@%@",domainUrl,SDKConReaderGetString(@"emailItemProj")];
    NSMutableDictionary *mDic = [NSMutableDictionary dictionaryWithDictionary:dic];
    [mDic addEntriesFromDictionary:[GamaPlatformRequestor commDic]];
    
    [GamaRequestor requestByParams:mDic
                   requestDomain:url
             requestSecondDomain:url
                      retryTimes:1
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                   handler(resultJsonDic);
               }];
}

//删除邮件
+ (void)removeEmailMsgWithUid:(NSString *_Nonnull)uid
                    messageId:(NSString *_Nonnull)msgId
                   completion:(void (^_Nullable)(NSDictionary * _Nullable resultDic))handler
{
    NSDictionary *dic = @{
                          @"userId" : uid,
                          @"gameCode": [NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                          @"messageId":msgId,
                          };
    NSString *url = [NSString stringWithFormat:@"%@%@",domainUrl,SDKConReaderGetString(@"removeSingleEmailMsgProj")];
    NSMutableDictionary *mDic = [NSMutableDictionary dictionaryWithDictionary:dic];
    [mDic addEntriesFromDictionary:[GamaPlatformRequestor commDic]];
    
    [GamaRequestor requestByParams:mDic
                   requestDomain:url
             requestSecondDomain:url
                      retryTimes:1
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                   handler(resultJsonDic);
               }];
}

//礼包中心：http://testwww.starb168.com/app/giftbag/api/giftbagCentreGameList?gameLanguage=zh-TW&userId=1
+ (void)fetchItemRewardCenter:(void (^)(NSDictionary * _Nullable))handler
{
    NSDictionary *dic = @{
                          @"userId" : [SdkUserInfoModel shareInfoModel].userId,
                          @"gameCode": [NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                          };
    NSString *url = [NSString stringWithFormat:@"%@%@",domainUrl,SDKConReaderGetString(@"rewardCenterItemProj")];
    NSMutableDictionary *mDic = [NSMutableDictionary dictionaryWithDictionary:dic];
    [mDic addEntriesFromDictionary:[GamaPlatformRequestor commDic]];
    
    [GamaRequestor requestByParams:mDic
                   requestDomain:url
             requestSecondDomain:url
                      retryTimes:1
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                   handler(resultJsonDic);
               }];
}

//礼包中心领取礼包
+ (void)receiveGiftWithUid:(NSString *_Nonnull)uid
              activityCode:(NSString *_Nonnull)activityCode
                serverCode:(NSString *_Nullable)serverCode
                    roleId:(NSString *_Nonnull)roleId
           giftBagGameCode:(NSString *_Nullable)giftBagGameCode
                completion:(void (^_Nullable)(NSDictionary *_Nullable resultDic))handler
{
    NSDictionary *dic = @{
                          @"userId" : uid,
                          @"gameCode": [NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                          @"activityCode":activityCode,
                          @"serverCode":serverCode,
                          @"roleId":roleId,
                          @"giftbagGameCode":giftBagGameCode,
                          };
    NSString *url = [NSString stringWithFormat:@"%@%@",domainUrl,SDKConReaderGetString(@"receiveSingleGiftProj")];
    NSMutableDictionary *mDic = [NSMutableDictionary dictionaryWithDictionary:dic];
    [mDic addEntriesFromDictionary:[GamaPlatformRequestor commDic]];
    
    [GamaRequestor requestByParams:mDic
                   requestDomain:url
             requestSecondDomain:url
                      retryTimes:1
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                   handler(resultJsonDic);
               }];
}

//礼包记录
+ (void)giftRecordsWithUid:(NSString *_Nonnull)uid
                   pageNum:(int)pageNum
                completion:(void (^_Nullable)(NSDictionary *_Nullable resultDic))handler
{
    NSDictionary *dic = @{
                          @"amount" : [NSString stringWithFormat:@"%d",pageNum],
                          @"userId" : [SdkUserInfoModel shareInfoModel].userId,
                          @"gameCode": [NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                          };
    NSString *url = [NSString stringWithFormat:@"%@%@",domainUrl,SDKConReaderGetString(@"giftReceiveRecordProj")];
    NSMutableDictionary *mDic = [NSMutableDictionary dictionaryWithDictionary:dic];
    [mDic addEntriesFromDictionary:[GamaPlatformRequestor commDic]];
    
    [GamaRequestor requestByParams:mDic
                   requestDomain:url
             requestSecondDomain:url
                      retryTimes:1
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                   handler(resultJsonDic);
               }];
}


#pragma mark - 绑定相关 Login 域名下

+ (void)fetchPhoneVertifyCodeWithPhoneNum:(NSString *_Nonnull)phoneNum
                                 areaCode:(NSString *_Nonnull)areaCode
                               completion:(void (^_Nullable)(NSDictionary * _Nullable resultDic))handler
{
    NSString *gamekey = SDKConReaderGetString(GAMA_GAME_KEY);
    NSString *timestamp = [GamaFunction getTimeStamp];
    NSString *gameCode = [NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)];
    NSString *phone = phoneNum;
    
    NSString *signature = [NSString stringWithFormat:@"%@%@%@%@",gamekey,timestamp,gameCode,phone];
    NSString *md5 = [[GamaFunction getMD5StrFromString:signature] lowercaseString];
    
    NSDictionary *reqDic = @{
                             @"timestamp"   :timestamp,
                             @"gameCode"    :gameCode,
                             @"phone"       :phone,
                             @"phoneAreaCode":areaCode,
                             @"signature"   :md5,
                             };

    NSString *domainName = [NSString stringWithFormat:@"%@%@?",SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME),SDKConReaderGetString(@"loginAcquirePhoneVertifyCodeProName")];
    
    [GamaRequestor requestByParams:reqDic
                additionalParams:nil
                   requestDomain:domainName
             requestSecondDomain:domainName
      expectResponseDicKeysArray:nil
                      retryTimes:1
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                   if (!error) {
                       NSLog(@"result = %@",resultJsonDic);
                       handler(resultJsonDic);
                   } else {
                       handler(nil);
                   }
               }];
}

+ (void)bindAccountWithPhoneNumber:(NSString *_Nonnull)phoneNum
                       vertifyCode:(NSString *_Nonnull)vertifyCode
                          areaCode:(NSString *_Nonnull)areaCode
                        completion:(void (^_Nullable)(NSDictionary * _Nullable resultDic))handler
{
    NSString *gamekey = SDKConReaderGetString(GAMA_GAME_KEY);
    NSString *timestamp = [GamaFunction getTimeStamp];
    NSString *gameCode = [NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)];
    NSString *phone = phoneNum;
    NSString *vfCode = vertifyCode;
    NSString *userId = [SdkUserInfoModel shareInfoModel].userId;
    
    NSString *signature = [NSString stringWithFormat:@"%@%@%@%@",gamekey,timestamp,gameCode,phone];
    NSString *md5 = [[GamaFunction getMD5StrFromString:signature] lowercaseString];
    
    NSDictionary *reqDic = @{
                             @"timestamp"   :timestamp,
                             @"gameCode"    :gameCode,
                             @"phone"       :phone,
                             @"vfCode"      :vfCode,
                             @"phoneAreaCode":areaCode,
                             @"signature"   :md5,
                             @"userId"      :userId,
                             };

    NSString *domainName = [NSString stringWithFormat:@"%@%@?",SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME),SDKConReaderGetString(@"loginBindPhoneOrEmailProName")];
    
    [GamaRequestor requestByParams:reqDic
                additionalParams:nil
                   requestDomain:domainName
             requestSecondDomain:domainName
      expectResponseDicKeysArray:nil
                      retryTimes:1
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {

                   if (!error) {
                       NSLog(@"result = %@",resultJsonDic);
                       handler(resultJsonDic);
                   } else {
                       handler(nil);
                   }
               }];
}

+ (void)fetchUserBindInfo:(void (^_Nullable)(NSDictionary *_Nullable resultDic))handler
{
    NSString *gamekey = SDKConReaderGetString(GAMA_GAME_KEY);
    NSString *timestamp = [GamaFunction getTimeStamp];
    NSString *gameCode = [NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)];
    NSString *userId = [SdkUserInfoModel shareInfoModel].userId;
    
    NSString *signature = [NSString stringWithFormat:@"%@%@%@%@",gamekey,gameCode,userId,timestamp];
    NSString *md5 = [[GamaFunction getMD5StrFromString:signature] lowercaseString];
    
    NSDictionary *reqDic = @{
                             @"userId"   :userId,
                             @"gameCode"    :gameCode,
                             @"signature"   :md5,
                             @"timestamp"   :timestamp,
                             };

    NSString *domainName = [NSString stringWithFormat:@"%@%@?",SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME),SDKConReaderGetString(@"loginUserBindInfoProName")];
    
    [GamaRequestor requestByParams:reqDic
                additionalParams:nil
                   requestDomain:domainName
             requestSecondDomain:domainName
      expectResponseDicKeysArray:nil
                      retryTimes:1
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                   if (!error) {
                       NSLog(@"result = %@",resultJsonDic);
                       handler(resultJsonDic);
                   } else {
                       handler(nil);
                   }
               }];
}


#pragma mark - 获取地区区号及正则信息

+ (void)fetchRegionNumAndRegularRule:(void (^_Nullable)(NSDictionary *_Nullable resultDic))handler
{
    NSString *projName = SDKConReaderGetString(@"fetchRegionNumAndRegularRuleProj");
    NSString *domainName = [NSString stringWithFormat:@"%@%@",SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME),projName];
    NSDictionary *dic = @{
                          @"gameLanguage"     :     [GamaFunction getServerLocaleStrWithGameLanguage:SDKConReaderGetString(GAMA_GAME_LANGUAGE)],
                              };
    [GamaRequestor requestByParams:dic
                additionalParams:nil
                   requestDomain:domainName
             requestSecondDomain:domainName
      expectResponseDicKeysArray:nil
                      retryTimes:1
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                   if (!error) {
                       NSLog(@"result = %@",resultJsonDic);
                       handler(resultJsonDic);
                   } else {
                       handler(nil);
                   }
               }];
}



@end
