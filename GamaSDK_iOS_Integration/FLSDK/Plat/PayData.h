

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PayData : NSObject

@property (nonatomic, copy) NSString *orderId;
@property (nonatomic, copy) NSString *transactionId;
@property (nonatomic, copy) NSString *productId;
@property (nonatomic, copy) NSString *cpOrderId;
@property (nonatomic, assign) CGFloat amount; 

@end

NS_ASSUME_NONNULL_END
