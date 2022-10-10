//
//  CreateOrderResp.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/27.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CreateOrderResp : NSObject

@property (nonatomic, copy) NSString *orderId;
@property (nonatomic, copy) NSString *paymentId;
@property (nonatomic, assign) CGFloat amount;

@end

NS_ASSUME_NONNULL_END
