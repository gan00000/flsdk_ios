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

@property (nonatomic, assign) BOOL *isBind;
@property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *timestamp;
@property (nonatomic, copy) NSString *token;
@property (nonatomic, copy) NSString *loginType;
@property (nonatomic, copy) NSString *thirdId;
@property (nonatomic, copy) NSString *thirdAccount;

//账号密码
@property (nonatomic, copy) NSString *account;
@property (nonatomic, copy) NSString *password;



@end

NS_ASSUME_NONNULL_END
