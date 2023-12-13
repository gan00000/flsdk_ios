

#import "StringiaSipho.h"

@implementation StringiaSipho

+ (instancetype)sharedSdkData_MMMethodMMM
{
    static StringiaSipho * pfData = nil;
    static dispatch_once_t once_dispatch;
    dispatch_once(&once_dispatch, ^{
        pfData = [[StringiaSipho alloc] initSDKDATA_MMMethodMMM];
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
    
    GlassressTheorymost *mGameUserModel = [[GlassressTheorymost alloc] init];
    self.gameUserModel = mGameUserModel;
}


@end
