//
//
//
//
//
//
//

#import "IdeaitiveEdgeety.h"

@implementation IdeaitiveEdgeety

@synthesize handler;


//创建一个代理对象，设置回调方法
+(IdeaitiveEdgeety *)creatDelegateWithBack:(SAlertViewHandler)oneHandler
{
    IdeaitiveEdgeety * alertViewDelegate=[[IdeaitiveEdgeety alloc]init];
    alertViewDelegate.handler=oneHandler;
    return alertViewDelegate;
}

//用户点击了按钮以后
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (handler)
    {
        handler(buttonIndex);
       
    }
   
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (handler)
    {
        handler(buttonIndex);
       
    }
   
}

@end
