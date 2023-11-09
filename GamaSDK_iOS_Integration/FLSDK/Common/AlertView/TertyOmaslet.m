

#import "TertyOmaslet.h"

@implementation TertyOmaslet

@synthesize handler;


+(TertyOmaslet *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler
{
    TertyOmaslet * alertViewDelegate=[[TertyOmaslet alloc]init];
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
