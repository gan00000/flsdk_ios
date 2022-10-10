//


#import <UIKit/UIKit.h>

@interface UIImage (ResBundle)

/**
 *	@brief	UIImage 类别，读取 默认 bundle 文件下的图片。
 */
+ (UIImage *)res_imageNamed_MMMethodMMM:(NSString *)imageName;

/**
 *	@brief	UIImage 类别，读取不同 bundle 文件下的图片。
 */
+ (UIImage *)res_imageNamed_MMMethodMMM:(NSString *)imageName inBundle_MMMethodMMM:(NSBundle *)bundle;

/**
 *	@brief	UIImage 类别，读取不同 bundle 文件下某个文件夹的图片。
 */
+ (UIImage *)res_imageNamed_MMMethodMMM:(NSString *)imageName inBundle_MMMethodMMM:(NSBundle *)bundle inFolder_MMMethodMMM:(NSString *)folder;


@end
