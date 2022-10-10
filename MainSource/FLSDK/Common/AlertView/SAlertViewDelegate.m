//
//
//
//
//
//
//

#import "SAlertViewDelegate.h"

@implementation SAlertViewDelegate

@synthesize handler;


//创建一个代理对象，设置回调方法
+(SAlertViewDelegate *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler
{
    SAlertViewDelegate * alertViewDelegate=[[SAlertViewDelegate alloc]init];
    alertViewDelegate.handler=oneHandler;
    return alertViewDelegate;
}

//用户点击了按钮以后
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
