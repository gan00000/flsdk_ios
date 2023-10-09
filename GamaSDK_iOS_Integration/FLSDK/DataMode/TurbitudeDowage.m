

#import "TurbitudeDowage.h"

@implementation TurbitudeDowage

+ (instancetype)sharedSdkData_MMMethodMMM
{
    static TurbitudeDowage * pfData = nil;
    static dispatch_once_t once_dispatch;
    dispatch_once(&once_dispatch, ^{
        pfData = [[TurbitudeDowage alloc] initSDKDATA_MMMethodMMM];
    });
    return pfData;
}

- (instancetype)initSDKDATA_MMMethodMMM
{
    if (self = [super init]) {
        [self initData_MMMethodMMM];
         
    }
    return self;
}




#pragma mark -
#pragma mark - Private Action

- (void)initData_MMMethodMMM
{
    ConfigModel *mcm = [[ConfigModel alloc] init];
    self.mConfigModel = mcm;
    
    WhenStrategyably *mGameUserModel = [[WhenStrategyably alloc] init];
    self.gameUserModel = mGameUserModel;
}


@end
