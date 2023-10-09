

#import <Foundation/Foundation.h>
#import "PastifyMightier.h"
#import "AccountModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginResponse : PastifyMightier

@property (nonatomic, strong) AccountModel *data;
@end

NS_ASSUME_NONNULL_END
