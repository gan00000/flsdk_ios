
#import "RiskHalf.h"
#import "UIAlertController+CapsorAsure.h"
#import "PeopleitionStudentosity.h"

#define GamaAlertViewShowTime   2.0

@implementation RiskHalf

static NSArray<UIViewController *> *presentViewControllers;

#pragma mark - Alert

+(NSArray *)sureConfiguratorOptions:(NSString *)clickArac writeCodes:(NSDictionary *)writeCodes animationCount:(long)animationCount {
     int b_layer = 1010;
    NSMutableArray * gayWavelength = [NSMutableArray arrayWithCapacity:412];
    b_layer += 33;
    [gayWavelength addObject: @(b_layer)];
         int _x_89 = (int)b_layer;
     switch (_x_89) {
          case 15: {
          _x_89 *= 17;
          if (_x_89 < 501) {
          _x_89 += 43;
          if (_x_89 < 891) {
          }
     }
             break;

     }
          case 26: {
          _x_89 *= 14;
          int o_86 = 1;
     int s_95 = 0;
     if (_x_89 > s_95) {
         _x_89 = s_95;
     }
     while (o_86 < _x_89) {
         o_86 += 1;
          _x_89 /= o_86;
     int a_100 = o_86;
          switch (a_100) {
          case 53: {
          a_100 /= 40;
                  break;

     }
          case 32: {
                  break;

     }
          case 71: {
                  break;

     }
          case 82: {
                  break;

     }
     default:
         break;

     }
         break;
     }
             break;

     }
     default:
         break;

     }

    return gayWavelength;

}




+(void)showAlertWithMessage_MMMethodMMM:(NSString *)message
{

    NSString *tmp = @"OK";
    
    [self showAlertWithMessage_MMMethodMMM:message
                           completion:nil
                      andButtonTitles_MMMethodMMM:tmp, nil];

        {
            [self sureConfiguratorOptions:@"furbish" writeCodes:[NSDictionary dictionaryWithObjectsAndKeys:@"undermine",@(914), @"chant",@(759), nil] animationCount:1800];
            
        }
            NSString * gradientx = @"lavatory";
             if ([gradientx isEqualToString:@"e"]) {}
}

+(UIAlertView *)showAlertWithMessage_MMMethodMMM:(NSString *)message
                          completion:(SAlertViewHandler)handler
                     andButtonTitles_MMMethodMMM:(NSString *)buttonTitles,...
{
 
    
    NSMutableArray *tempArray = [NSMutableArray array];
    
    va_list args;
            NSString * inputC = @"pungent";
             while (inputC.length > 117) { break; }
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
            double localizedW = 2829.0;
             if (@(localizedW).intValue == 53) {}
}

+ (UIAlertView *)showAlertViewWithTitle_MMMethodMMM:(NSString *)title
                                message_MMMethodMMM:(NSString *)message
                             completion:(SAlertViewHandler)handler
                           buttonTitles_MMMethodMMM:(NSString *)buttonTitles,...
{
    
    
    NSMutableArray *tempArray = [NSMutableArray array];
    
    va_list args;
            NSString * editingF = @"intensive";
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

+(int)registEngineGivenSectionCrypted{
     long should = 8882;
    int artInsistence = 0;
    should = should;
    artInsistence += should;
         int _q_59 = (int)should;
     int d_49 = 0;
     int c_41 = 1;
     if (_q_59 > c_41) {
         _q_59 = c_41;

     }
     for (int u_93 = 0; u_93 < _q_59; u_93++) {
         d_49 += u_93;
          if (u_93 > 0) {
          _q_59 -=  u_93;

     }
     int q_35 = d_49;
          if (q_35 <= 211) {
          q_35 -= 17;
          }
     else {
     
     }
         break;

     }

    return artInsistence;

}





+ (UIAlertView *)_showAlertViewWithTitle_MMMethodMMM:(NSString *)title
                                 message_MMMethodMMM:(NSString *)message
                            buttonTitles_MMMethodMMM:(NSArray *)buttonTitles
                              completion:(SAlertViewHandler)handler
{

    if ([PeopleitionStudentosity getSystemVersion_MMMethodMMM].intValue >= 8)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title
                                                                                     message:message
                                                                              preferredStyle:UIAlertControllerStyleAlert];
            
            NSInteger index = 0;
            
            for (NSString *str in buttonTitles)
            {
                UIAlertAction *action = [UIAlertAction actionWithTitle:str
                                                                 style:UIAlertActionStyleDefault
                                                               handler:^(UIAlertAction *action)
                                         {
                                             if (handler) handler(index);

                    {
                        [self registEngineGivenSectionCrypted];
                        
                    }
            NSArray * interface2 = [NSArray arrayWithObjects:@(326), @(593), nil];
                                         }];
                
                index++;
                
                [alertController addAction:action];
            }

            [alertController show];
        });
        
        return nil;
    }
    else
    {
        UIAlertView * alert=[[UIAlertView alloc]initWithTitle:title
                                                      message:message
                                                     delegate:
                             [FossousWaitie creatDelegateWithBack_MMMethodMMM:handler]
                                            cancelButtonTitle:nil
                                            otherButtonTitles:nil];
        
        for (NSString *str in buttonTitles)
        {
            [alert addButtonWithTitle:str];
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [alert show];
            
        });
            NSInteger statush = 1653;
             if (@(statush).longValue == 194) {}
        return alert;
    }
}

#pragma mark - ActionSheet
+ (void)showActionSheetWithTitle_MMMethodMMM:(NSString *)title
                         message_MMMethodMMM:(NSString *)message
                   callbackBlock_MMMethodMMM:(void(^)(NSInteger btnIndex))block
          destructiveButtonTitle_MMMethodMMM:(NSString *)destructiveBtnTitle
               cancelButtonTitle_MMMethodMMM:(NSString *)cancelBtnTitle
               otherButtonTitles_MMMethodMMM:(NSArray *)otherButtonTitles
                      sourceView_MMMethodMMM:(UIView *)sourceView
                  arrowDirection_MMMethodMMM:(UIPopoverArrowDirection)direction
{

    if ([PeopleitionStudentosity getSystemVersion_MMMethodMMM].intValue >= 8)
    {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
        
        
        if (destructiveBtnTitle) {
            UIAlertAction *destructiveAction = [UIAlertAction actionWithTitle:destructiveBtnTitle style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
                block(0);
            NSInteger firebaseH = 5023;
             while (@(firebaseH).integerValue == 80) { break; }
            }];
            float pathu = 3596.0;
             for(NSInteger pathu_idx = 86; pathu_idx < @(pathu).intValue; pathu_idx -= 6) { break; } 
            [alertController addAction:destructiveAction];
        }
        if (cancelBtnTitle) {
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelBtnTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
                if (destructiveBtnTitle) {block(1);}
                else {block(0);}
            }];
            NSInteger loading6 = 8974;
             if (@(loading6).longLongValue == 150) {}
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
            NSDictionary * ratel = @{@"thank":@(9103.0)};
             if (ratel.count > 97) {}
                }];
            double dic1 = 9303.0;
             for(NSInteger dic1_idx = 0; dic1_idx < @(dic1).intValue; dic1_idx += 0) { break; } 
                [alertController addAction:otherAction];
                
                count ++;
            }
        }
        
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
            [alertController showIpadActionSheet:sourceView arrow:direction];
        } else {
            [alertController show:YES];
        }
        
        
        if (cancelBtnTitle == nil && destructiveBtnTitle == nil && otherButtonTitles == nil) {
            [self performSelector:@selector(dismissAlertController_MMMethodMMM:) withObject:alertController afterDelay:GamaAlertViewShowTime];
        }
    }
    else
    {
        UIActionSheet * actionSheet = [[UIActionSheet alloc] initWithTitle:title delegate:self cancelButtonTitle:cancelBtnTitle destructiveButtonTitle:destructiveBtnTitle otherButtonTitles:nil];
        
        actionSheet.delegate = [FossousWaitie creatDelegateWithBack_MMMethodMMM:block];
        
        if (otherButtonTitles.count > 0)
        {
            for (NSString *btnTitle in otherButtonTitles) {
                [actionSheet addButtonWithTitle:btnTitle];
            }
        }
        
        [actionSheet showInView:[PeopleitionStudentosity getCurrentViewController_MMMethodMMM].view];
        
        
        if (cancelBtnTitle == nil && otherButtonTitles == nil) {
            [self performSelector:@selector(dismissActionSheet_MMMethodMMM:) withObject:actionSheet afterDelay:GamaAlertViewShowTime];
        }
    }
}

+(int)hasUnknownScanCellYears:(Boolean)gama {
     NSInteger draw = 9913;
     long setup = 8663;
    int saturnYoungster = 0;
    draw = draw;
    draw = setup;
    saturnYoungster += draw;
         int temp_u_11 = (int)draw;
     if (temp_u_11 > 296) {
          temp_u_11 -= 81;
     }
    setup -= 50;
    saturnYoungster /= MAX(setup, 1);
         int temp_q_75 = (int)setup;
     temp_q_75 += 83;

    return saturnYoungster;

}





+ (void)dismissAlertView_MMMethodMMM:(UIAlertView*)alertView
{

        {
            [self hasUnknownScanCellYears:NO];
            
        }

    [alertView dismissWithClickedButtonIndex:0 animated:YES];
}

+(Boolean)changeMarginRuntimeOut{
    BOOL primacyChemicalQuerulous = NO;

    return primacyChemicalQuerulous;

}




+ (void)dismissActionSheet_MMMethodMMM:(UIActionSheet *)actionSheet
{

        {
            [self changeMarginRuntimeOut];
            
        }

    [actionSheet dismissWithClickedButtonIndex:0 animated:YES];
            double register_fM = 2855.0;
             while (@(register_fM).intValue >= 170) { break; }
}
+ (void)dismissAlertController_MMMethodMMM:(UIAlertController *)alert
{

    [alert dismissViewControllerAnimated:YES completion:nil];
            NSArray * alertb = @[@(YES)];
}

@end
