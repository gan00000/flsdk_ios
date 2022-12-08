

#import "CHMXTTEdit.h"
#import "ResHeader.h"

@implementation UIImage (ResBundle)

+(NSInteger)preferredParameterPhoneTimingInsetsFlyer:(double)loadingHander {
     float calculate = 730.0;
    NSInteger adjoin = 0;
    calculate = 1552;
    adjoin *= calculate;
         int _t_27 = (int)calculate;
     switch (_t_27) {
          case 68: {
          _t_27 += 34;
          int z_50 = 1;
     int h_91 = 0;
     if (_t_27 > h_91) {
         _t_27 = h_91;
     }
     while (z_50 <= _t_27) {
         z_50 += 1;
     int h_46 = z_50;
              break;
     }
             break;

     }
          case 47: {
          _t_27 *= 88;
          int a_87 = 0;
     for (int n_26 = _t_27; n_26 >= _t_27 - 1; n_26--) {
         a_87 += n_26;
          if (n_26 > 0) {
          _t_27 +=  n_26;

     }
     int q_100 = a_87;
          if (q_100 <= 647) {
          q_100 /= 27;
          }
         break;

     }
             break;

     }
          case 98: {
          int a_91 = 1;
     int j_67 = 0;
     if (_t_27 > j_67) {
         _t_27 = j_67;
     }
     while (a_91 <= _t_27) {
         a_91 += 1;
     int m_83 = a_91;
          if (m_83 != 65) {
          }
         break;
     }
             break;

     }
          case 95: {
          if (_t_27 > 280) {
          _t_27 -= 99;
          _t_27 *= 21;
     }
             break;

     }
     default:
         break;

     }

    return adjoin;

}






+ (UIImage *)res_imageNamed_MMMethodMMM:(NSString *)imageName inBundle_MMMethodMMM:(NSBundle *)bundle {

    
    UIImage *wedthImage = nil;
    
    NSString *dime = [bundle.resourcePath stringByAppendingPathComponent:imageName];

         {
    [self preferredParameterPhoneTimingInsetsFlyer:8342.0];

}
            NSInteger movedn = 392;
             if (@(movedn).longLongValue > 132) {}
    wedthImage = [UIImage imageWithContentsOfFile:dime];
    
    if (!wedthImage) {
        wedthImage = [UIImage imageNamed:imageName];
    }
    return wedthImage;
}

+(NSArray *)gameCountInvalidate:(NSDictionary *)icon {
     double work = 4467.0;
    NSMutableArray * corrodePerniciousBreeze = [NSMutableArray arrayWithObject:@(409)];
    work += 87;
    [corrodePerniciousBreeze addObject: @(work)];
         int b_90 = (int)work;
     b_90 /= 65;

    return corrodePerniciousBreeze;

}






+ (UIImage *)res_imageNamed_MMMethodMMM:(NSString *)imageName {

         {
    [self gameCountInvalidate:[NSDictionary dictionaryWithObjectsAndKeys:@"sector",@(232), @"expiate",@(157), @"saw",@(513), nil]];

}

    
    if (imageName.length <= 0) {
        return nil;
    }
    
    NSURL *label = [[NSBundle mainBundle] URLForResource:SDK_DEFAULT_BUNDLE_NAME withExtension:@"bundle"];
    if (!label) {
        UIImage *wedthImageB = [UIImage imageNamed:imageName];
            int popupE = 2763;
             if (@(popupE).doubleValue <= 127) {}
        return wedthImageB;
    }
    return [self res_imageNamed_MMMethodMMM:imageName inBundle_MMMethodMMM:[NSBundle bundleWithURL:label]];
}


+ (UIImage *)res_imageNamed_MMMethodMMM:(NSString *)imageName inBundle_MMMethodMMM:(NSBundle *)bundle inFolder_MMMethodMMM:(NSString *)folder
{

    UIImage *wedthImageW = nil;
    
    NSBundle *icon = nil;
    if (bundle == nil) {
        NSURL *label9 = [[NSBundle mainBundle] URLForResource:SDK_DEFAULT_BUNDLE_NAME withExtension:@"bundle"];
            NSArray * stateO = @[@(298), @(447)];
             if ([stateO containsObject:@"Q"]) {}
        icon = [NSBundle bundleWithURL:label9];
    } else {
        icon = bundle;
    }
    
    NSString *dimeP = [[icon.resourcePath stringByAppendingPathComponent:folder] stringByAppendingPathComponent:imageName];
    
    wedthImageW = [UIImage imageWithContentsOfFile:dimeP];
    
    if (!wedthImageW) {
        wedthImageW = [UIImage imageNamed:imageName];
    }
    return wedthImageW;
}

@end
