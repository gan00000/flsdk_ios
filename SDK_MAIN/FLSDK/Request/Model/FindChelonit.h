

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FindChelonit : NSObject

@property (nonatomic, copy) NSString *orderId;
@property (nonatomic, copy) NSString *paymentId;
@property (nonatomic, assign) CGFloat amount;
@property (nonatomic, copy) NSString *timestamp;

@property (nonatomic, copy) NSString *productId;

@property (nonatomic, assign) BOOL isTogglePay;
@property (nonatomic, assign) BOOL hideSelectChannel;

@end

NS_ASSUME_NONNULL_END
