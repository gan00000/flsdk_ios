

#import <Foundation/Foundation.h>
#import "BJBaseResponceModel.h"
#import "ConfigModel.h"
#import "UrlMode.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConfigResponse : BJBaseResponceModel

@property (nonatomic, strong) NSArray<ConfigModel *> *allVersion;
@property (nonatomic, strong) NSArray *opiniaExperdom;//===insert my property===

@property (nonatomic, strong) NSArray<ConfigModel *> *subVersion;
@property (nonatomic, strong) NSString *emeticantEmeaatory;//===insert my property===


@property (nonatomic,strong) UrlMode *url;
@end

NS_ASSUME_NONNULL_END
