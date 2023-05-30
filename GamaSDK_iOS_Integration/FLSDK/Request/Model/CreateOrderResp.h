

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CreateOrderResp : NSObject

@property (nonatomic, copy) NSString *orderId;
@property (nonatomic, copy) NSString *paymentId;
@property (nonatomic, strong) NSMutableDictionary *itselfEfflooribility;//===insert my property===

@property (nonatomic, assign) CGFloat amount;

@end

NS_ASSUME_NONNULL_END
