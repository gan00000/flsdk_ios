

#import "OrganizationOptim.h"


#import "CComHeader.h"

@interface OrganizationOptim() 

@property (nonatomic) LineCallBack successCallBack;
@property (nonatomic) LineCallBack failCallBack;

@end
@implementation OrganizationOptim

+ (instancetype)share{
    
    static OrganizationOptim *mLineDelegate = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mLineDelegate = [[OrganizationOptim alloc] init];
    });
    
    return mLineDelegate;
}




+(BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary *)options
{
    
    return NO;
}

-(void)startLoginWithCallBack_MMMethodMMM:(LineCallBack)successCallBack fail_MMMethodMMM:(LineCallBack)failCallBack
{
    self.successCallBack = successCallBack;
    self.failCallBack = failCallBack;
    
    
}



@end
