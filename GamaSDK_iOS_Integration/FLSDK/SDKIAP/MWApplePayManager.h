//
//  MWApplePayManager.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/27.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameUserModel.h"
#import "AccountModel.h"
#import "PayData.h"

typedef void(^PayStatusBlock)(BOOL success,PayData* _Nullable payData);


NS_ASSUME_NONNULL_BEGIN

@interface MWApplePayManager : NSObject

+ (instancetype)shareManager_MMMethodMMM;

/** 检测客户端与服务器漏单情况处理*/
- (void)checkOrderStatus_MMMethodMMM;


/**
  根据商品ID请求支付信息


 @param orderId 订单号
 @param productId 商品号
 @param statusBlock 回掉block
 */
//- (void)requestProductWithOrderId:(NSString *)orderId productId_MMMethodMMM:(NSString *)productId statusBlock:(XSProductStatusBlock)statusBlock;;

-(void)startPayWithProductId_MMMethodMMM:(NSString *)productId cpOrderId_MMMethodMMM:(NSString *)cpOrderId extra_MMMethodMMM:(NSString *)extra gameInfo_MMMethodMMM:(GameUserModel*)gameUserModel accountModel_MMMethodMMM:(AccountModel*) accountModel payStatusBlock_MMMethodMMM:(PayStatusBlock)payStatusBlock;

@end

NS_ASSUME_NONNULL_END
