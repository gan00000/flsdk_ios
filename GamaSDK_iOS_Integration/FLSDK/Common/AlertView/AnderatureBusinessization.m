

#import "AnderatureBusinessization.h"

@implementation AnderatureBusinessization

@synthesize handler;


+(AnderatureBusinessization *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler
{
    AnderatureBusinessization * alertViewDelegate=[[AnderatureBusinessization alloc]init];
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
