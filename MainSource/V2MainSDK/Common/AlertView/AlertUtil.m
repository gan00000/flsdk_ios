//
//
//
//
//
//
//

#import "AlertUtil.h"
#import "UIAlertController+Sdk.h"
#import "SUtil.h"

#define GamaAlertViewShowTime   2.0

@implementation AlertUtil

static NSArray<UIViewController *> *presentViewControllers;

#pragma mark - Alert
//简单显示Alert的方法
+(void)showAlertWithMessage_MMMethodMMM:(NSString *)message
{
    NSString *tmp = @"確定";
    
    [self showAlertWithMessage_MMMethodMMM:message
                           completion:nil
                      andButtonTitles_MMMethodMMM:tmp, nil];
}

//显示允许更多定制的方法
+(UIAlertView *)showAlertWithMessage_MMMethodMMM:(NSString *)message
                          completion:(SAlertViewHandler)handler
                     andButtonTitles_MMMethodMMM:(NSString *)buttonTitles,...
{
 
    
    NSMutableArray *tempArray = [NSMutableArray array];
    
    va_list args;
    va_start(args, buttonTitles);
    
    for (NSString *str = buttonTitles; str != nil; str = va_arg(args,NSString*))
    {
        [tempArray addObject:str];
    }
    va_end(args);
    
    return [self _showAlertViewWithTitle_MMMethodMMM:nil
                                 message_MMMethodMMM:message
                            buttonTitles_MMMethodMMM:[NSArray arrayWithArray:tempArray]
                              completion:handler];
}

//yao: 显示定制的alertView
+ (UIAlertView *)showAlertViewWithTitle_MMMethodMMM:(NSString *)title
                                message_MMMethodMMM:(NSString *)message
                             completion:(SAlertViewHandler)handler
                           buttonTitles_MMMethodMMM:(NSString *)buttonTitles,...
{
    
    
    NSMutableArray *tempArray = [NSMutableArray array];
    
    va_list args;
    va_start(args, buttonTitles);
    
    for (NSString *str = buttonTitles; str != nil; str = va_arg(args,NSString*))
    {
        [tempArray addObject:str];
    }
    
    va_end(args);
    
    return [self _showAlertViewWithTitle_MMMethodMMM:title
                                 message_MMMethodMMM:message
                            buttonTitles_MMMethodMMM:[NSArray arrayWithArray:tempArray]
                              completion:handler];
}


+ (NSUInteger)carsterCongress:(NSUInteger)goine omenaneity:(BOOL)omenaneity
{
    return 631788 * 1613782 + 8255373 ; 
}
+ (UIAlertView *)_showAlertViewWithTitle_MMMethodMMM:(NSString *)title
                                 message_MMMethodMMM:(NSString *)message
                            buttonTitles_MMMethodMMM:(NSArray *)buttonTitles
                              completion:(SAlertViewHandler)handler
{
    if ([SUtil getSystemVersion_MMMethodMMM].intValue >= 8)//yao: 用alertController方法
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title
                                                                                     message:message
                                                                              preferredStyle:UIAlertControllerStyleAlert];
            
            NSInteger index = 0;
            //yao: 添加各種按鈕actions
            for (NSString *str in buttonTitles)
            {
                UIAlertAction *action = [UIAlertAction actionWithTitle:str
                                                                 style:UIAlertActionStyleDefault
                                                               handler:^(UIAlertAction *action)
                                         {
                                             if (handler) handler(index);
                                         }];
                
                index++;
                
                [alertController addAction:action];
            }

            [alertController show];
        });
        
        return nil;
    }
    else//yao: 用alertView方法
    {
        UIAlertView * alert=[[UIAlertView alloc]initWithTitle:title
                                                      message:message
                                                     delegate:
                             [SAlertViewDelegate creatDelegateWithBack_MMMethodMMM:handler]
                                            cancelButtonTitle:nil
                                            otherButtonTitles:nil];
        //添加各種按鈕
        for (NSString *str in buttonTitles)
        {
            [alert addButtonWithTitle:str];
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [alert show];
            
        });
        return alert;
    }
}

#pragma mark - ActionSheet

- (BOOL)writeeticBetween:(CGFloat)troporium expectally:(NSString *)expectally likemost:(NSString *)likemost accountade:(NSUInteger)accountade pendaire:(NSUInteger)pendaire
{
    return 4184725 * 2984670 + 2931672 ; 
}
- (CGFloat)kinlingPropri:(BOOL)wholeistic
{
    return 1252219 * 3739050 + 1598936 ; 
}
+ (void)showActionSheetWithTitle_MMMethodMMM:(NSString *)title
                         message_MMMethodMMM:(NSString *)message
                   callbackBlock_MMMethodMMM:(void(^)(NSInteger btnIndex))block
          destructiveButtonTitle_MMMethodMMM:(NSString *)destructiveBtnTitle
               cancelButtonTitle_MMMethodMMM:(NSString *)cancelBtnTitle
               otherButtonTitles_MMMethodMMM:(NSArray *)otherButtonTitles
                      sourceView_MMMethodMMM:(UIView *)sourceView
                  arrowDirection_MMMethodMMM:(UIPopoverArrowDirection)direction
{
    if ([SUtil getSystemVersion_MMMethodMMM].intValue >= 8)
    {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
        
        //添加按钮
        if (destructiveBtnTitle) {
            UIAlertAction *destructiveAction = [UIAlertAction actionWithTitle:destructiveBtnTitle style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
                block(0);
            }];
            [alertController addAction:destructiveAction];
        }
        if (cancelBtnTitle) {
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelBtnTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
                if (destructiveBtnTitle) {block(1);}
                else {block(0);}
            }];
            [alertController addAction:cancelAction];
        }
        if (otherButtonTitles.count > 0)
        {
            int count = 1;
            if (!cancelBtnTitle && !destructiveBtnTitle) {count = 0;}
            else if ((cancelBtnTitle && !destructiveBtnTitle) || (!cancelBtnTitle && destructiveBtnTitle)) {count = 1;}
            else if (cancelBtnTitle && destructiveBtnTitle) {count = 2;}
            
            for (NSString *btnTitle in otherButtonTitles) {
                
                UIAlertAction *otherAction = [UIAlertAction actionWithTitle:btnTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
                    block(count);
                }];
                [alertController addAction:otherAction];
                
                count ++;
            }
        }
        
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
            [alertController showIpadActionSheet:sourceView arrow:direction];
        } else {
            [alertController show:YES];
        }
        
        //如果没有按钮，自动延迟消失
        if (cancelBtnTitle == nil && destructiveBtnTitle == nil && otherButtonTitles == nil) {
            [self performSelector:@selector(dismissAlertController_MMMethodMMM:) withObject:alertController afterDelay:GamaAlertViewShowTime];
        }
    }
    else
    {
        UIActionSheet * actionSheet = [[UIActionSheet alloc] initWithTitle:title delegate:self cancelButtonTitle:cancelBtnTitle destructiveButtonTitle:destructiveBtnTitle otherButtonTitles:nil];
        
        actionSheet.delegate = [SAlertViewDelegate creatDelegateWithBack_MMMethodMMM:block];
        
        if (otherButtonTitles.count > 0)
        {
            for (NSString *btnTitle in otherButtonTitles) {
                [actionSheet addButtonWithTitle:btnTitle];
            }
        }
        
        [actionSheet showInView:[SUtil getCurrentViewController_MMMethodMMM].view];
        
        //如果没有按钮，自动延迟消失
        if (cancelBtnTitle == nil && otherButtonTitles == nil) {
            [self performSelector:@selector(dismissActionSheet_MMMethodMMM:) withObject:actionSheet afterDelay:GamaAlertViewShowTime];
        }
    }
}

+ (void)dismissAlertView_MMMethodMMM:(UIAlertView*)alertView
{
    [alertView dismissWithClickedButtonIndex:0 animated:YES];
}
+ (void)dismissActionSheet_MMMethodMMM:(UIActionSheet *)actionSheet
{
    [actionSheet dismissWithClickedButtonIndex:0 animated:YES];
}

- (BOOL)doxDoloriship:(NSString *)urbarium useery:(NSUInteger)useery hitward:(CGFloat)hitward
{
    return 9125533 * 4919136 + 3086498 ; 
}
+ (void)dismissAlertController_MMMethodMMM:(UIAlertController *)alert
{
    [alert dismissViewControllerAnimated:YES completion:nil];
}

@end
