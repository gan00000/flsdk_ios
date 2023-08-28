

#import "BucciteActivity.h"


#import "CComHeader.h"

@interface BucciteActivity() 

@property (nonatomic) LineCallBack successCallBack;
@property (nonatomic) LineCallBack failCallBack;

@end
@implementation BucciteActivity

+ (instancetype)share{
    
    static BucciteActivity *mLineDelegate = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mLineDelegate = [[BucciteActivity alloc] init];
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
