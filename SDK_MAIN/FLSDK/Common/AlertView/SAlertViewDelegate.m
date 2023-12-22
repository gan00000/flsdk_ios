//
//
//
//
//
//
//

#import "SAlertViewDelegate.h"

@implementation SAlertViewDelegate

@synthesize alertHandler_MMMPRO;


//创建一个代理对象，设置回调方法
+(SAlertViewDelegate *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler
{
    SAlertViewDelegate * alertViewDelegate=[[SAlertViewDelegate alloc]init];
    alertViewDelegate.alertHandler_MMMPRO=oneHandler;
    return alertViewDelegate;
}

//用户点击了按钮以后
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
