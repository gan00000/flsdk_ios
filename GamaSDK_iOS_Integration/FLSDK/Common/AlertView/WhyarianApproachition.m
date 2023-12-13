

#import "WhyarianApproachition.h"

@implementation WhyarianApproachition

@synthesize handler;


+(WhyarianApproachition *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler
{
    WhyarianApproachition * alertViewDelegate=[[WhyarianApproachition alloc]init];
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
