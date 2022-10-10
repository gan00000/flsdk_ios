//
//  AccountModel.h
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/14.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AccountModel : NSObject<NSCoding>  //iOS对象序列化与反序列化

@property (nonatomic, copy) NSString *lastLoginTime;

@property (nonatomic, assign) BOOL isBind;//是否绑定平台账号

@property (nonatomic, copy) NSString *userId;
@property(nonatomic, weak) id ordDecideet;
@property (nonatomic, copy) NSString *timestamp;
@property (nonatomic, copy) NSString *token; //用于内部接口访问
@property (nonatomic, assign) NSUInteger anguitiveIncludeaneous;

@property (nonatomic, copy) NSString *sign; //用于cp验证账号
@property(nonatomic, weak) id forgetGroupialPhotoic;

@property (nonatomic, copy) NSString *loginType;
@property (nonatomic, copy) NSString *thirdId;
@property (nonatomic, assign) NSUInteger fellencyMenstruion;
@property (nonatomic, copy) NSString *thirdAccount;
@property (nonatomic, copy) NSString *differenceHaurline;

//账号密码
@property (nonatomic, copy) NSString *account;
@property (nonatomic, copy) NSString *password;

@property (nonatomic, assign) BOOL isBindPhone;//是否绑定手机号码
@property (nonatomic, copy) NSString *telephone;//用户绑定的手机
@property (nonatomic, copy) NSString *loginId;//用户账号

@end

NS_ASSUME_NONNULL_END
