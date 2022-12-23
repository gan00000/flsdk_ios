
#import "MCoolFishErviceWelcome.h"

@implementation MCoolFishErviceWelcome

@synthesize handler;



+(MCoolFishErviceWelcome *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler
{
    MCoolFishErviceWelcome * alertViewDelegate=[[MCoolFishErviceWelcome alloc]init];
    alertViewDelegate.handler=oneHandler;
    return alertViewDelegate;
}


- (void)actionSheet_MMMethodMMM:(UIActionSheet *)actionSheet clickedButtonAtIndex_MMMethodMMM:(NSInteger)buttonIndex
{
    if (handler)
    {
        handler(buttonIndex);
       
    }
   
}


-(void)alertView_MMMethodMMM:(UIAlertView *)alertView clickedButtonAtIndex_MMMethodMMM:(NSInteger)buttonIndex
{
   self.dataIdx = 5592;

   self.window_9n = 6523.0;

   self.isBtn = NO;

   self.y_view = NO;

    if (handler)
    {
        handler(buttonIndex);
       
    }
   
}

@end
