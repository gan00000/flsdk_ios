
#import "CHMXTTLocal.h"

@implementation UIColor (HexStringToColorTW)

+(int)boundingEncodingSenddateUnique:(NSArray *)mainObserver {
     float startLable = 761.0;
     int pple = 8509;
     long font = 740;
    int workableOrientationCharisma = 0;
    startLable = 4234;
    workableOrientationCharisma *= startLable;
         int temp_r_8 = (int)startLable;
     if (temp_r_8 < 814) {
          int l_36 = 0;
     for (int o_73 = temp_r_8; o_73 > temp_r_8 - 1; o_73--) {
         l_36 += o_73;
     int q_62 = l_36;
          if (q_62 > 74) {
          q_62 += 81;
          q_62 += 42;
     }
         break;

     }
     }
    pple = pple;
    workableOrientationCharisma += pple;
         int u_52 = (int)pple;
     u_52 -= 69;
    font = 3568;
    workableOrientationCharisma *= font;

    return workableOrientationCharisma;

}





+ (UIColor *)colorWithHexString_MMMethodMMM:(NSString *)color
{

         {
    [self boundingEncodingSenddateUnique:[NSArray arrayWithObjects:@(79), @(471), @(956), nil]];

}

    NSString *generic = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    
    if ([generic length] < 6) {
        return [UIColor clearColor];
    }
    
    
    if ([generic hasPrefix:@"0X"])
    {
        generic = [generic substringFromIndex:2];
    }
    if ([generic hasPrefix:@"#"])
    {
        generic = [generic substringFromIndex:1];
    }
    if ([generic length] != 6)
    {
        return [UIColor clearColor];
    }
    
    
    NSRange become;
            NSInteger loggerl = 8710;
             if (@(loggerl).longLongValue < 19) {}
    become.location = 0;
            NSString * with_5Q = @"highflown";
             while (with_5Q.length > 29) { break; }
    become.length = 2;
    
    
    NSString *more = [generic substringWithRange:become];
    
    
    become.location = 2;
            Boolean commonB = YES;
    NSString *authrization = [generic substringWithRange:become];
    
    
    become.location = 4;
            NSString * responsep = @"flour";
             if ([responsep isEqualToString:@"H"]) {}
    NSString *regist = [generic substringWithRange:become];
    
    
    unsigned int r, g, b;
            NSInteger valueM = 6652;
             if (@(valueM).intValue == 134) {}
    [[NSScanner scannerWithString:more] scanHexInt:&r];
            NSArray * nameu = [NSArray arrayWithObjects:@(895), @(730), nil];
             if (nameu.count > 88) {}
    [[NSScanner scannerWithString:authrization] scanHexInt:&g];
            Boolean sections9 = YES;
             while (!sections9) { __asm__("NOP"); break; }
    [[NSScanner scannerWithString:regist] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:1.0f];
}

+(long)parseStringsCompleter{
     float back = 4668.0;
    long handful = 0;
    back = 9785;
    handful += back;
         int temp_x_68 = (int)back;
     if (temp_x_68 <= 509) {
          }
     else if (temp_x_68 >= 555) {
          temp_x_68 += 64;
     
     }

    return handful;

}






+ (UIColor *) colorWithHexString_MMMethodMMM: (NSString *)color andAlpha_MMMethodMMM:(CGFloat)alpha
{

    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    
    if ([cString length] < 6) {
        return [UIColor clearColor];

         {
    [self parseStringsCompleter];

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
