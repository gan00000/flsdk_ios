//
//  LoginData.h
//  GamaSDK_iOS
//
//  Created by ganyuanrong on 2020/7/24.
//  Copyright © 2020 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginData : NSObject

@property (nonatomic, copy) NSString *beLinked;
@property (nonatomic, copy) NSString *gmbPlayerIp;
@property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *timestamp;
@property (nonatomic, copy) NSString *accessToken;
@property (nonatomic, copy) NSString *thirdPlate;

@end

NS_ASSUME_NONNULL_END
