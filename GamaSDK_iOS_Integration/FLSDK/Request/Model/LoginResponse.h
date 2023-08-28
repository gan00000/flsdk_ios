

#import <Foundation/Foundation.h>
#import "BadosityCubitly.h"
#import "AccountModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginResponse : BadosityCubitly

@property (nonatomic, strong) AccountModel *data;
@end

NS_ASSUME_NONNULL_END
