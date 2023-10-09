

#import <Foundation/Foundation.h>
#import "PastifyMightier.h"
#import "ConfigModel.h"
#import "UrlMode.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConfigResponse : PastifyMightier

@property (nonatomic, strong) NSArray<ConfigModel *> *allVersion;
@property (nonatomic, strong) NSArray<ConfigModel *> *subVersion;

@property (nonatomic,strong) UrlMode *url;
@end

NS_ASSUME_NONNULL_END
