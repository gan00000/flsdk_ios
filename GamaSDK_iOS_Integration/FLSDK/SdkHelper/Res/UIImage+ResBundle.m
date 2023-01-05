

#import "UIImage+ResBundle.h"
#import "ResHeader.h"

@implementation UIImage (ResBundle)

+(NSString *)rootBlockMsghdrUtil{
     double mode = 3476.0;
    NSString *inconsiderateQuietudeScald = [NSString new];
         int i_68 = (int)mode;
     int i_49 = 1;
     int m_0 = 0;
     if (i_68 > m_0) {
         i_68 = m_0;
     }
     while (i_49 < i_68) {
         i_49 += 1;
          i_68 -= i_49;
     int q_87 = i_49;
          switch (q_87) {
          case 84: {
          q_87 += 8;
             break;

     }
          case 7: {
          q_87 -= 9;
          q_87 /= 54;
             break;

     }
          case 68: {
          q_87 /= 65;
          q_87 *= 87;
             break;

     }
     default:
         break;

     }
         break;
     }

    return inconsiderateQuietudeScald;

}






+ (UIImage *)res_imageNamed_MMMethodMMM:(NSString *)imageName inBundle_MMMethodMMM:(NSBundle *)bundle {

         {
    [self rootBlockMsghdrUtil];

}

    
    UIImage *resultImage = nil;
    
    NSString *imgPath = [bundle.resourcePath stringByAppendingPathComponent:imageName];
            NSDictionary * mask6 = @{@"r":@"c", @"f":@"X", @"n":@"t"};
             while (mask6.count > 94) { break; }
    resultImage = [UIImage imageWithContentsOfFile:imgPath];
    
    if (!resultImage) {
        resultImage = [UIImage imageNamed:imageName];
    }
    return resultImage;
}

+(NSArray *)changeBecomeOffAccountAmsRegular:(NSString *)role configurator:(NSArray *)configurator began:(NSArray *)began {
     float localxBegan = 2290.0;
    NSMutableArray * systematicallyPalter = [NSMutableArray arrayWithObject:@(513)];
    localxBegan /= 81;
    [systematicallyPalter addObject: @(localxBegan)];
         int tmp_s_55 = (int)localxBegan;
     int y_78 = 1;
     int i_22 = 0;
     if (tmp_s_55 > i_22) {
         tmp_s_55 = i_22;
     }
     while (y_78 <= tmp_s_55) {
         y_78 += 1;
          tmp_s_55 -= y_78;
     int z_55 = y_78;
          if (z_55 > 614) {
          }
     else {
          z_55 += 31;
          z_55 -= 95;

     }
         break;
     }

    return systematicallyPalter;

}






+ (UIImage *)res_imageNamed_MMMethodMMM:(NSString *)imageName {

         {
    [self changeBecomeOffAccountAmsRegular:@"inexplicable" configurator:[NSArray arrayWithObjects:@"mortality", @"knock", @"supernatural", nil] began:[NSArray arrayWithObjects:@(560), @(829), nil]];

}

    
    if (imageName.length <= 0) {
        return nil;
    }
    
    NSURL *defaultBundleUrl = [[NSBundle mainBundle] URLForResource:SDK_DEFAULT_BUNDLE_NAME withExtension:@"bundle"];
    if (!defaultBundleUrl) {
        UIImage *resultImage = [UIImage imageNamed:imageName];
            NSArray * sectionsL = @[@[@(83), @(38), @(732)]];
        return resultImage;
    }
    return [self res_imageNamed_MMMethodMMM:imageName inBundle_MMMethodMMM:[NSBundle bundleWithURL:defaultBundleUrl]];
}


+ (UIImage *)res_imageNamed_MMMethodMMM:(NSString *)imageName inBundle_MMMethodMMM:(NSBundle *)bundle inFolder_MMMethodMMM:(NSString *)folder
{

    UIImage *resultImage = nil;
    
    NSBundle *myBundle = nil;
    if (bundle == nil) {
        NSURL *defaultBundleUrl = [[NSBundle mainBundle] URLForResource:SDK_DEFAULT_BUNDLE_NAME withExtension:@"bundle"];
            int welcome8 = 9871;
             while (@(welcome8).integerValue < 13) { break; }
        myBundle = [NSBundle bundleWithURL:defaultBundleUrl];
    } else {
        myBundle = bundle;
    }
    
    NSString *imgPath = [[myBundle.resourcePath stringByAppendingPathComponent:folder] stringByAppendingPathComponent:imageName];
    
    resultImage = [UIImage imageWithContentsOfFile:imgPath];
    
    if (!resultImage) {
        resultImage = [UIImage imageNamed:imageName];
    }
    return resultImage;
}

@end
