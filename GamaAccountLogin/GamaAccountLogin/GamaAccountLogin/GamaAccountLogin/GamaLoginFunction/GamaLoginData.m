

#import "GamaLoginData.h"

@implementation GamaLoginData

-(void)dealloc
{
    if (self.GamaUserName)
    {
        [self.GamaUserName release];
    }
    [[NSNotificationCenter defaultCenter]removeObserver:self];
    [super dealloc];
}

-(id)init
{
    self=[super init];
    if (self)
    {
        [[NSNotificationCenter defaultCenter]addObserver:self
                                                selector:@selector(otherLoginSuccess) name:@"GAMA_FACEBOOK_LOGIN_SUCCESS"
                                                  object:nil];
        [[NSNotificationCenter defaultCenter]addObserver:self
                                                selector:@selector(otherLoginSuccess) name:@"GAMA_EVATAR_LOGIN_SUCCESS"
                                                  object:nil];
        self.GamaUserName=@"";
    }
    return self;
}

+(GamaLoginData *)defaultData
{
    static GamaLoginData * loginDataCenter;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        loginDataCenter = [[GamaLoginData alloc]init];
    });
    return loginDataCenter;
}

#pragma mark - 广播事件处理

-(void)otherLoginSuccess
{
    [GamaLoginData defaultData].GamaUserName=@"";
}

@end
