//
//  GamaPlatformRequestor.h
//  GamaSDK_iOS
//
//  Created by sunn on 2017/8/10.
//  Copyright © 2017年 gama. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GamaPlatformRequestor : NSObject

+ (NSString *_Nullable)commonParmsStr;

//获取悬浮按钮
+ (void)fetchFloatItemsDatasource:(void (^_Nullable)(NSArray *_Nullable items))handler;

//资讯接口
+ (void)fetchItemInfoWithPageNum:(int)pageNum completion:(void (^_Nullable)(NSArray *_Nullable items))handler;

//获取玩家是否已经领取手机绑定的礼包
+ (void)isUserCanReceivePhoneBindGift:(void (^_Nullable)(NSDictionary * _Nullable resultDic))handler;

//领取绑定手机礼包
+ (void)receivePhoneBindGiftWithUid:(NSString *_Nonnull)uid serverCode:(NSString *_Nullable)serverCode roleId:(NSString *_Nonnull)roleId completion:(void (^_Nullable)(NSDictionary * _Nullable resultDic))handler;

//获取信箱
+ (void)fetchItemEmailWithPageNum:(int)pageNum completion:(void (^_Nullable)(NSDictionary * _Nullable resultDic))handler;


//删除邮件
+ (void)removeEmailMsgWithUid:(NSString *_Nonnull)uid messageId:(NSString *_Nonnull)msgId completion:(void (^_Nullable)(NSDictionary * _Nullable resultDic))handler;

//礼包中心
+ (void)fetchItemRewardCenter:(void (^_Nullable)(NSDictionary *_Nullable resultDic))handler;

//礼包中心领取礼包
+ (void)receiveGiftWithUid:(NSString *_Nonnull)uid
              activityCode:(NSString *_Nonnull)activityCode
                serverCode:(NSString *_Nullable)serverCode
                    roleId:(NSString *_Nonnull)roleId
           giftBagGameCode:(NSString *_Nullable)giftBagGameCode
                completion:(void (^_Nullable)(NSDictionary *_Nullable resultDic))handler;

//礼包记录
+ (void)giftRecordsWithUid:(NSString *_Nonnull)uid pageNum:(int)pageNum completion:(void (^_Nullable)(NSDictionary *_Nullable resultDic))handler;

#pragma mark - User Info

//获取手机验证码
+ (void)fetchPhoneVertifyCodeWithPhoneNum:(NSString *_Nonnull)phoneNum
                                 areaCode:(NSString *_Nonnull)areaCode
                               completion:(void (^_Nullable)(NSDictionary * _Nullable resultDic))handler;

//绑定手机
+ (void)bindAccountWithPhoneNumber:(NSString *_Nonnull)phoneNum
                       vertifyCode:(NSString *_Nonnull)vertifyCode
                          areaCode:(NSString *_Nonnull)areaCode
                        completion:(void (^_Nullable)(NSDictionary * _Nullable resultDic))handler;

//获取用户绑定信息的接口
+ (void)fetchUserBindInfo:(void (^_Nullable)(NSDictionary *_Nullable resultDic))handler;

#pragma mark - 获取地区区号及正则信息
//获取地区区号及正则
+ (void)fetchRegionNumAndRegularRule:(void (^_Nullable)(NSDictionary *_Nullable resultDic))handler;

@end
