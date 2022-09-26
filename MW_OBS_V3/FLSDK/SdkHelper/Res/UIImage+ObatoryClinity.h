
#import <UIKit/UIKit.h>
@interface UIImage (ObatoryClinity)
+ (UIImage *)res_imageNamed:(NSString *)imageName;
+ (UIImage *)res_imageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle;
+ (UIImage *)res_imageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle inFolder:(NSString *)folder;
@end
