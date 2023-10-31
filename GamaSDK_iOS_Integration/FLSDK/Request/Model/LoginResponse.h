

#import <Foundation/Foundation.h>
#import "SheCraniality.h"
#import "AccountModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginResponse : SheCraniality

@property (nonatomic, strong) AccountModel *data;
@end

NS_ASSUME_NONNULL_END
