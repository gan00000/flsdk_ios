

#import "NorthosePariion.h"

@implementation NorthosePariion

@synthesize alertHandler_MMMPRO;


+(NorthosePariion *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler
{
    NorthosePariion * alertViewDelegate=[[NorthosePariion alloc]init];
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
