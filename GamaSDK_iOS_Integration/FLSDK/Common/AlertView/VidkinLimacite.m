

#import "VidkinLimacite.h"

@implementation VidkinLimacite

@synthesize handler;


+(VidkinLimacite *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler
{
    VidkinLimacite * alertViewDelegate=[[VidkinLimacite alloc]init];
    alertViewDelegate.handler=oneHandler;
    return alertViewDelegate;
}

-(void)alertView_MMMethodMMM:(UIAlertView *)alertView clickedButtonAtIndex_MMMethodMMM:(NSInteger)buttonIndex
{
    if (handler)
    {
        handler(buttonIndex);
       
    }
   
}

- (void)actionSheet_MMMethodMMM:(UIActionSheet *)actionSheet clickedButtonAtIndex_MMMethodMMM:(NSInteger)buttonIndex
{
    if (handler)
    {
        handler(buttonIndex);
       
    }
   
}

@end
