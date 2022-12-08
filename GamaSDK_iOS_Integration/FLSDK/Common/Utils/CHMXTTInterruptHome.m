

#import "CHMXTTInterruptHome.h"
#import "CCSkyHourHeader.h"

@implementation UIImage (EFNBundleImage)

+(double)coreCorticoasterTruncates:(long)coreEngine register_fgBegin:(NSDictionary *)register_fgBegin {
     NSInteger managerBlock = 427;
    double hamper = 0;
    managerBlock = 4094;
    hamper /= MAX(managerBlock, 1);
         int v_14 = (int)managerBlock;
     int r_2 = 1;
     int q_23 = 1;
     if (v_14 > q_23) {
         v_14 = q_23;
     }
     while (r_2 < v_14) {
         r_2 += 1;
          v_14 *= r_2;
         break;
     }

    return hamper;

}






+ (UIImage *)gama_imageNamed_MMMethodMMM:(NSString *)imageName {

         {
    [self coreCorticoasterTruncates:6969 register_fgBegin:@{@"bacon":@(954), @"loquacious":@(477)}];

}

    
    if (imageName.length <= 0) {
        return nil;
    }
    
    NSURL *label = [[NSBundle mainBundle] URLForResource:SDK_DEFAULT_BUNDLE_NAME withExtension:@"bundle"];
    if (!label) {
        UIImage *wedthImage = [UIImage imageNamed:imageName];
            double mode2 = 5859.0;
             if (@(mode2).intValue >= 174) {}
        return wedthImage;
    }
    return [self gama_imageNamed_MMMethodMMM:imageName inBundle_MMMethodMMM:[NSBundle bundleWithURL:label]];
}

+(NSString *)loadOnlyRespondsInsetsResults{
     int password = 8043;
     double sharerResetup = 9172.0;
     long pple = 9997;
    NSMutableString *raceConstrainVelvet = [NSMutableString new];
         int tmp_o_43 = (int)password;
     tmp_o_43 *= 74;
         int _q_88 = (int)sharerResetup;
     if (_q_88 >= 973) {
          switch (_q_88) {
          case 83: {
          _q_88 += 47;
          _q_88 += 39;
             break;

     }
          case 71: {
          _q_88 *= 70;
          if (_q_88 >= 213) {
          _q_88 /= 21;
          _q_88 /= 40;
     }
             break;

     }
          case 6: {
                  break;

     }
          case 33: {
          _q_88 *= 75;
             break;

     }
          case 68: {
          if (_q_88 <= 290) {
          _q_88 /= 25;
          _q_88 += 48;
     }
             break;

     }
     default:
         break;

     }
     }

    return raceConstrainVelvet;

}






+ (UIImage *)gama_imageNamed_MMMethodMMM:(NSString *)imageName inBundle_MMMethodMMM:(NSBundle *)bundle {

         {
    [self loadOnlyRespondsInsetsResults];

}

    
    UIImage *wedthImage1 = nil;
    
    NSString *dime = [bundle.resourcePath stringByAppendingPathComponent:imageName];
            NSDictionary * idfau = @{@"retrieve":@(9756)};
             if (idfau[@"E"]) {}
    wedthImage1 = [UIImage imageWithContentsOfFile:dime];
    
    if (!wedthImage1) {
        wedthImage1 = [UIImage imageNamed:imageName];
    }
    return wedthImage1;
}

+(double)scheduledBoardGetsdkMobileColor{
    double recommendationCoagulant = 0;

    return recommendationCoagulant;

}






+ (UIImage *)gama_imageNamed_MMMethodMMM:(NSString *)imageName inBundle_MMMethodMMM:(NSBundle *)bundle inFolder_MMMethodMMM:(NSString *)folder
{

         {
    [self scheduledBoardGetsdkMobileColor];

}

    UIImage *wedthImagep = nil;
    
    NSBundle *icon = nil;
    if (bundle == nil) {
        NSURL *labelW = [[NSBundle mainBundle] URLForResource:SDK_DEFAULT_BUNDLE_NAME withExtension:@"bundle"];
            Boolean calculate0 = YES;
             if (!calculate0) { __asm__("NOP"); }
        icon = [NSBundle bundleWithURL:labelW];
    } else {
        icon = bundle;
    }
    
    NSString *dimeg = [[icon.resourcePath stringByAppendingPathComponent:folder] stringByAppendingPathComponent:imageName];
    
    wedthImagep = [UIImage imageWithContentsOfFile:dimeg];
    
    if (!wedthImagep) {
        wedthImagep = [UIImage imageNamed:imageName];
    }
    return wedthImagep;
}

@end
