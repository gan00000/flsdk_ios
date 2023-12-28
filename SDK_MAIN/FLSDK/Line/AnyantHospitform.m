

#import "AnyantHospitform.h"


#import "CComHeader.h"

@interface AnyantHospitform() 

@property (nonatomic) LineCallBack successCallBack_MMMPRO;
@property (nonatomic) LineCallBack failCallBack_MMMPRO;

@end
@implementation AnyantHospitform

+ (instancetype)share{
    
    static AnyantHospitform *mLineDelegate = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mLineDelegate = [[AnyantHospitform alloc] init];
    });
    
    return mLineDelegate;
}




+(BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary *)options
{
    
    return NO;
}

-(void)startLoginWithCallBack_MMMethodMMM:(LineCallBack)successCallBack fail_MMMethodMMM:(LineCallBack)failCallBack
{
    self.successCallBack_MMMPRO = successCallBack;
    self.failCallBack_MMMPRO = failCallBack;
    
    
}



@end
