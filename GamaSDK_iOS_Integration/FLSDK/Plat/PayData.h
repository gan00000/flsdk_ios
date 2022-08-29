//
//  PayData.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/27.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PayData : NSObject

@property (nonatomic, copy) NSString *orderId;
@property (nonatomic, copy) NSString *transactionId;
@property (nonatomic, copy) NSString *productId;
@property (nonatomic, copy) NSString *cpOrderId;
@property (nonatomic, assign) CGFloat amount; //金额

@end

NS_ASSUME_NONNULL_END
