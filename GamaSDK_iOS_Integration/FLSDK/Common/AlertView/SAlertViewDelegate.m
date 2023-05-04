







#import "SAlertViewDelegate.h"

@implementation SAlertViewDelegate

@synthesize handler;



+(SAlertViewDelegate *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler
{
    SAlertViewDelegate * alertViewDelegate=[[SAlertViewDelegate alloc]init];
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
