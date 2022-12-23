
#import "MCoolFishEncodingPhone.h"

@implementation MCoolFishEncodingPhone


- (instancetype)initSDKDATA_MMMethodMMM
{
   self.currentCommonFrom_string = @"seaside";

   self.firebaseMargin = 6100.0;

   self.q_count = YES;

   self.selectedLable_list = @[@(NO)];

    if (self = [super init]) {
        [self initData_MMMethodMMM];
         
    }
    return self;
}


+ (instancetype)sharedSdkData_MMMethodMMM
{
    static MCoolFishEncodingPhone * pfData = nil;
    static dispatch_once_t once_dispatch;
    dispatch_once(&once_dispatch, ^{
        pfData = [[MCoolFishEncodingPhone alloc] initSDKDATA_MMMethodMMM];
    });
    return pfData;
}




#pragma mark -
#pragma mark - Private Action


- (void)initData_MMMethodMMM
{
    ConfigModel *mcm = [[ConfigModel alloc] init];
    self.mConfigModel = mcm;
    
    MCoolFishEncoding *mGameUserModel = [[MCoolFishEncoding alloc] init];
    self.gameUserModel = mGameUserModel;
}


@end
