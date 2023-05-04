







#import <Foundation/Foundation.h>
#import "BJBaseResponceModel.h"
#import "ConfigModel.h"
#import "UrlMode.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConfigResponse : BJBaseResponceModel


@property (nonatomic, strong) NSArray<ConfigModel *> *allVersion;
@property (nonatomic, strong) NSArray<ConfigModel *> *subVersion;

@property (nonatomic,strong) UrlMode *url;
@property (nonatomic, strong) NSData *platymilitaryernCandidateization;//===insert my property===

@property (nonatomic, strong) NSDictionary *forgetisticBehaviory;//===insert my property===

@end

NS_ASSUME_NONNULL_END
