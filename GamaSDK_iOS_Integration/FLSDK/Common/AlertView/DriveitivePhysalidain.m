

#import "DriveitivePhysalidain.h"

@implementation DriveitivePhysalidain

@synthesize handler;


+(DriveitivePhysalidain *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler
{
    DriveitivePhysalidain * alertViewDelegate=[[DriveitivePhysalidain alloc]init];
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
