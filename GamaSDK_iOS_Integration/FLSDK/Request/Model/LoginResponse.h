







#import <Foundation/Foundation.h>
#import "BJBaseResponceModel.h"
#import "AccountModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginResponse : BJBaseResponceModel












@property (nonatomic, strong) AccountModel *data;
@end

NS_ASSUME_NONNULL_END
