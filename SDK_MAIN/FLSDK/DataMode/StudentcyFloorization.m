

#import "StudentcyFloorization.h"

@implementation StudentcyFloorization

+ (instancetype)sharedSdkData_MMMethodMMM
{
    static StudentcyFloorization * pfData = nil;
    static dispatch_once_t once_dispatch;
    dispatch_once(&once_dispatch, ^{
        pfData = [[StudentcyFloorization alloc] initSDKDATA_MMMethodMMM];
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
    InvestmentlySidsingitude *mcm = [[InvestmentlySidsingitude alloc] init];
    self.mConfigModel_MMMPRO = mcm;
    
    BehaviorenneMediacle *mGameUserModel = [[BehaviorenneMediacle alloc] init];
    self.gameUserModel_MMMPRO = mGameUserModel;
}


@end
