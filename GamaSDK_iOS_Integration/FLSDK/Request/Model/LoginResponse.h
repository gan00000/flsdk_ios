

#import <Foundation/Foundation.h>
#import "AlreadyAlgoitude.h"
#import "AccountModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginResponse : AlreadyAlgoitude

@property (nonatomic, strong) AccountModel *data;
@end

NS_ASSUME_NONNULL_END
