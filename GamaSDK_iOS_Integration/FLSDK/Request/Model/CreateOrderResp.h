

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CreateOrderResp : NSObject

@property (nonatomic, copy) NSString *orderId;
@property (nonatomic, copy) NSString *paymentId;
@property (nonatomic, assign) CGFloat amount;
@property (nonatomic, copy) NSString *timestamp;
@property (nonatomic, assign) BOOL cipful11668Justform11669;//===insert my property===


@property (nonatomic, copy) NSString *productId;

@end

NS_ASSUME_NONNULL_END
