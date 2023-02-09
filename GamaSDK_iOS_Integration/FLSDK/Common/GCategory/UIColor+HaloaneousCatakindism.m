
#import "UIColor+HaloaneousCatakindism.h"

@implementation UIColor (HaloaneousCatakindism)

+(NSArray *)appsAppkeyMcm{
    NSMutableArray * cohabitUnduly = [NSMutableArray array];

    return cohabitUnduly;

}





+ (UIColor *)colorWithHexString_MMMethodMMM:(NSString *)color
{

    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    
    if ([cString length] < 6) {
        return [UIColor clearColor];

         {
    [self appsAppkeyMcm];

         }
    }
    
    
    if ([cString hasPrefix:@"0X"])
    {
        cString = [cString substringFromIndex:2];
    }
    if ([cString hasPrefix:@"#"])
    {
        cString = [cString substringFromIndex:1];
    }
    if ([cString length] != 6)
    {
        return [UIColor clearColor];
    }
    
    
    NSRange range;
            NSArray * parentF = @[@(269), @(946), @(423)];
             if ([parentF containsObject:@"q"]) {}
    range.location = 0;
            NSString * file4 = @"satiate";
    range.length = 2;
    
    
    NSString *rString = [cString substringWithRange:range];
    
    
    range.location = 2;
            NSArray * paramv = @[@(654), @(985)];
             if ([paramv containsObject:@"6"]) {}
    NSString *gString = [cString substringWithRange:range];
    
    
    range.location = 4;
            int paramx = 4677;
             for(NSInteger paramx_idx = 35; paramx_idx < @(paramx).intValue; paramx_idx -= 10) { break; } 
    NSString *bString = [cString substringWithRange:range];
    
    
    unsigned int r, g, b;
            Boolean keychaino = NO;
             if (!keychaino) { __asm__("NOP"); }
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
            float aracw = 7210.0;
             while (@(aracw).integerValue < 83) { break; }
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
            Boolean info4 = NO;
             while (!info4) { __asm__("NOP"); break; }
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:1.0f];
}

+(NSString *)storeOnlyPlaceholderScanner{
     double authtication = 3701.0;
     NSInteger times = 8526;
    NSString *holocaustHustle = [[NSString alloc] init];
         int c_71 = (int)authtication;
     switch (c_71) {
          case 81: {
          int r_98 = 1;
     int u_96 = 1;
     if (c_71 > u_96) {
         c_71 = u_96;
     }
     while (r_98 <= c_71) {
         r_98 += 1;
          c_71 *= r_98;
         break;
     }
             break;

     }
          case 77: {
          c_71 += 49;
             break;

     }
          case 94: {
          c_71 += 63;
             break;

     }
     default:
         break;

     }
         int _s_100 = (int)times;
     if (_s_100 == 442) {
          _s_100 *= 18;
          }
     else {
          _s_100 += 50;
     
     }

    return holocaustHustle;

}






+ (UIColor *) colorWithHexString_MMMethodMMM: (NSString *)color andAlpha_MMMethodMMM:(CGFloat)alpha
{

    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    
    if ([cString length] < 6) {
        return [UIColor clearColor];

         {
    [self storeOnlyPlaceholderScanner];

         }
    }
    
    if ([cString hasPrefix:@"0X"])
        cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return [UIColor clearColor];
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:alpha];
}

@end
