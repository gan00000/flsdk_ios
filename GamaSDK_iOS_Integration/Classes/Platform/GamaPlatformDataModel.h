//
//  GamaPlatformDataModel.h
//  GamaSDK_iOS
//
//  Created by sunn on 2017/8/11.
//  Copyright © 2017年 gama. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GamaPlatformDataModel : NSObject

@property (nonatomic, retain) NSString *icon;
@property (nonatomic, retain) NSString *itemId;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *url;

- (instancetype)initWithDic:(NSDictionary *)dic;

@end

@interface GamaRewardCenterModel : NSObject

@property (nonatomic, retain) NSString *activityCode;
@property (nonatomic, retain) NSString *rewardName;
@property (nonatomic, retain) NSString *icon;
@property (nonatomic, retain) NSString *giftbagGameCode;
@property (nonatomic, retain) NSString *isReceive;
@property (nonatomic, retain) NSString *time;
@property (nonatomic, retain) NSString *title;

- (instancetype)initWithDic:(NSDictionary *)dic;


@end

@interface GamaEmailModel : NSObject

@property (nonatomic, retain) NSString *readStatus;
@property (nonatomic, retain) NSString *time;
@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *url;
@property (nonatomic, retain) NSString *status;
@property (nonatomic, retain) NSString *messageId;

- (instancetype)initWithDic:(NSDictionary *)dic;


@end


@interface GamaSerialModel : NSObject

@property (nonatomic, retain) NSString *rewardName;
@property (nonatomic, retain) NSString *giftbag;
@property (nonatomic, retain) NSString *time;
@property (nonatomic, retain) NSString *title;

- (instancetype)initWithDic:(NSDictionary *)dic;


@end


@interface GamaReginRegularModel : NSObject

@property (nonatomic, retain) NSString *code;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *pattern;

- (instancetype)initWithDic:(NSDictionary *)dic;


@end

@interface GamaPlatformUserShareData : NSObject

@property (nonatomic, assign) BOOL isObtainUserInfo;// 接口是否已请求
@property (nonatomic, retain) NSString *email;
@property (nonatomic, retain) NSString *isBindPhone;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *registPlatform;
@property (nonatomic, retain) NSString *telephone;
@property (nonatomic, assign) BOOL isObtainBindPhoneInfo; // 接口是否已请求
@property (nonatomic, retain) NSString *isReceive;
@property (nonatomic, retain) NSString *serial;
@property (nonatomic, retain) NSString *rewardName;

+ (instancetype)sharePlatUser;


@end



