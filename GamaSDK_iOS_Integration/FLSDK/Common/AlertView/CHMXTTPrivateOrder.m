
#import "CHMXTTPrivateOrder.h"
#import "CHMXTTGesture.h"
#import "CHMXTTBlock.h"

#define GamaAlertViewShowTime   2.0

@implementation CHMXTTPrivateOrder

static NSArray<UIViewController *> *presentViewControllers;

#pragma mark - Alert

+(NSInteger)setInstancetypeLogoEncodingDebug{
     float keychain = 6782.0;
    NSInteger terrorismInstill = 0;
    keychain = keychain;
    terrorismInstill *= keychain;
         int w_79 = (int)keychain;
     int o_50 = 1;
     int w_17 = 0;
     if (w_79 > w_17) {
         w_79 = w_17;
     }
     while (o_50 < w_79) {
         o_50 += 1;
     int c_10 = o_50;
          int u_36 = 1;
     int t_7 = 1;
     if (c_10 > t_7) {
         c_10 = t_7;
     }
     while (u_36 < c_10) {
         u_36 += 1;
          c_10 += u_36;
         break;
     }
         break;
     }

    return terrorismInstill;

}




+(void)showAlertWithMessage_MMMethodMMM:(NSString *)message
{

    NSString *empty = @"OK";
    
    [self showAlertWithMessage_MMMethodMMM:message
                           completion:nil
                      andButtonTitles_MMMethodMMM:empty, nil];
            NSArray * instanceq = [NSArray arrayWithObjects:@(3881.0), nil];

         {
    [self setInstancetypeLogoEncodingDebug];

}
             while (instanceq.count > 11) { break; }
}

+(UIAlertView *)showAlertWithMessage_MMMethodMMM:(NSString *)message
                          completion:(SAlertViewHandler)handler
                     andButtonTitles_MMMethodMMM:(NSString *)buttonTitles,...
{
 
    
    NSMutableArray *tempArray = [NSMutableArray array];
    
    va_list args;
            NSString * handerf = @"researcher";
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

+ (UIAlertView *)showAlertViewWithTitle_MMMethodMMM:(NSString *)title
                                message_MMMethodMMM:(NSString *)message
                             completion:(SAlertViewHandler)handler
                           buttonTitles_MMMethodMMM:(NSString *)buttonTitles,...
{
    
    
    NSMutableArray *tempArray = [NSMutableArray array];
    
    va_list args;
            NSInteger switch_41A = 8509;
             while (@(switch_41A).integerValue == 175) { break; }
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
            double t_imageQ = 5613.0;
             while (@(t_imageQ).floatValue < 129) { break; }
}

+ (UIAlertView *)_showAlertViewWithTitle_MMMethodMMM:(NSString *)title
                                 message_MMMethodMMM:(NSString *)message
                            buttonTitles_MMMethodMMM:(NSArray *)buttonTitles
                              completion:(SAlertViewHandler)handler
{

    if ([CHMXTTBlock getSystemVersion_MMMethodMMM].intValue >= 8)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            
            UIAlertController *erviceController = [UIAlertController alertControllerWithTitle:title
                                                                                     message:message
                                                                              preferredStyle:UIAlertControllerStyleAlert];
            
            NSInteger stop = 0;
            
            for (NSString *str in buttonTitles)
            {
                UIAlertAction *reset = [UIAlertAction actionWithTitle:str
                                                                 style:UIAlertActionStyleDefault
                                                               handler:^(UIAlertAction *reset)
                                         {
                                             if (handler) handler(stop);
            int editv = 7260;
             while (@(editv).doubleValue == 76) { break; }
                                         }];
                
                stop++;
                
                [erviceController addAction:reset];
            }

            [erviceController show];
        });
        
        return nil;
    }
    else
    {
        UIAlertView * foot=[[UIAlertView alloc]initWithTitle:title
                                                      message:message
                                                     delegate:
                             [CHMXTTBindRegister creatDelegateWithBack_MMMethodMMM:handler]
                                            cancelButtonTitle:nil
                                            otherButtonTitles:nil];
        
        for (NSString *str in buttonTitles)
        {
            [foot addButtonWithTitle:str];
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [foot show];
            
        });
            NSInteger beforeS = 3134;
             while (@(beforeS).longValue > 23) { break; }
        return foot;
    }
}

#pragma mark - ActionSheet

+(double)hasBoldRestoredMisceair:(NSString *)web rateInformation:(NSString *)rateInformation touchOrientation:(long)touchOrientation {
     double confire = 6427.0;
    double paradisePawn = 0;
    confire = 6099;
    paradisePawn /= MAX(confire, 1);
         int tmp_u_41 = (int)confire;
     if (tmp_u_41 < 165) {
          tmp_u_41 *= 10;
     }

    return paradisePawn;

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

    if ([CHMXTTBlock getSystemVersion_MMMethodMMM].intValue >= 8)
    {
        UIAlertController *erviceControllerE = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
        
        
        if (destructiveBtnTitle) {
            UIAlertAction *item = [UIAlertAction actionWithTitle:destructiveBtnTitle style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
                block(0);
            double imph = 4671.0;

         {
    [self hasBoldRestoredMisceair:@"fastidiousness" rateInformation:@"vocalist" touchOrientation:7309];

}
             for(int imph_idx = 31; imph_idx < @(imph).intValue; imph_idx--) { break; } 
            }];
            NSArray * ramework4 = @[@(958), @(863)];
             if ([ramework4 containsObject:@"i"]) {}
            [erviceControllerE addAction:item];
        }
        if (cancelBtnTitle) {
            UIAlertAction *encode = [UIAlertAction actionWithTitle:cancelBtnTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
                if (destructiveBtnTitle) {block(1);}
                else {block(0);}
            }];
            int become9 = 3588;
             while (@(become9).intValue < 59) { break; }
            [erviceControllerE addAction:encode];
        }
        if (otherButtonTitles.count > 0)
        {
            int share = 1;
            if (!cancelBtnTitle && !destructiveBtnTitle) {share = 0;}
            else if ((cancelBtnTitle && !destructiveBtnTitle) || (!cancelBtnTitle && destructiveBtnTitle)) {share = 1;}
            else if (cancelBtnTitle && destructiveBtnTitle) {share = 2;}
            
            for (NSString *btnTitle in otherButtonTitles) {
                
                UIAlertAction *session = [UIAlertAction actionWithTitle:btnTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
                    block(share);
            NSArray * openw = @[@(394), @(840)];
             if ([openw containsObject:@"Y"]) {}
                }];
            NSDictionary * engineT = [NSDictionary dictionaryWithObjectsAndKeys:@"I",@"3", nil];
             while (engineT.count > 41) { break; }
                [erviceControllerE addAction:session];
                
                share ++;
            }
        }
        
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
            [erviceControllerE showIpadActionSheet:sourceView arrow:direction];
        } else {
            [erviceControllerE show:YES];
        }
        
        
        if (cancelBtnTitle == nil && destructiveBtnTitle == nil && otherButtonTitles == nil) {
            [self performSelector:@selector(dismissAlertController_MMMethodMMM:) withObject:erviceControllerE afterDelay:GamaAlertViewShowTime];
        }
    }
    else
    {
        UIActionSheet * third = [[UIActionSheet alloc] initWithTitle:title delegate:self cancelButtonTitle:cancelBtnTitle destructiveButtonTitle:destructiveBtnTitle otherButtonTitles:nil];
        
        third.delegate = [CHMXTTBindRegister creatDelegateWithBack_MMMethodMMM:block];
        
        if (otherButtonTitles.count > 0)
        {
            for (NSString *btnTitle in otherButtonTitles) {
                [third addButtonWithTitle:btnTitle];
            }
        }
        
        [third showInView:[CHMXTTBlock getCurrentViewController_MMMethodMMM].view];
        
        
        if (cancelBtnTitle == nil && otherButtonTitles == nil) {
            [self performSelector:@selector(dismissActionSheet_MMMethodMMM:) withObject:third afterDelay:GamaAlertViewShowTime];
        }
    }
}

+(NSString *)delXtextRadiLithtoo:(int)selectReport wrapperRegister_8_:(float)wrapperRegister_8_ {
     double i_view = 4285.0;
    NSString *knowCarnivorousFavorable = [NSString new];
         int temp_b_12 = (int)i_view;
     int q_20 = 1;
     int t_74 = 1;
     if (temp_b_12 > t_74) {
         temp_b_12 = t_74;
     }
     while (q_20 <= temp_b_12) {
         q_20 += 1;
          temp_b_12 += q_20;
         break;
     }

    return knowCarnivorousFavorable;

}





+ (void)dismissAlertView_MMMethodMMM:(UIAlertView*)alertView
{

         {
    [self delXtextRadiLithtoo:3629 wrapperRegister_8_:1081.0];

}

    [alertView dismissWithClickedButtonIndex:0 animated:YES];
            double servicej = 5713.0;
             if (@(servicej).longLongValue == 88) {}
}
+ (void)dismissActionSheet_MMMethodMMM:(UIActionSheet *)actionSheet
{

    [actionSheet dismissWithClickedButtonIndex:0 animated:YES];
            NSArray * cancelv = @[@(112), @(445), @(445)];
}
+ (void)dismissAlertController_MMMethodMMM:(UIAlertController *)alert
{

    [alert dismissViewControllerAnimated:YES completion:nil];
}

@end
