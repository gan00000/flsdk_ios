

#import "SAlertViewDelegate.h"

@implementation SAlertViewDelegate

@synthesize alertHandler_MMMPRO;


+(SAlertViewDelegate *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler
{
    SAlertViewDelegate * alertViewDelegate=[[SAlertViewDelegate alloc]init];
    alertViewDelegate.alertHandler_MMMPRO=oneHandler;
    return alertViewDelegate;
}

-(void)alertView_MMMethodMMM:(UIAlertView *)alertView clickedButtonAtIndex_MMMethodMMM:(NSInteger)buttonIndex
{
    if (alertHandler_MMMPRO)
    {
        alertHandler_MMMPRO(buttonIndex);
       
    }
   
}

- (void)actionSheet_MMMethodMMM:(UIActionSheet *)actionSheet clickedButtonAtIndex_MMMethodMMM:(NSInteger)buttonIndex
{
    if (alertHandler_MMMPRO)
    {
        alertHandler_MMMPRO(buttonIndex);
       
    }
   
}

@end
