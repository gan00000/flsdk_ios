//
//  UIImage+ColorToImage.m
//  UIKitExample
//
//  Created by TangTieshan on 15/9/23.
//  Copyright (c) 2015年 TangTieshan. All rights reserved.
//

#import "UIImage+ColorToImageTW.h"

@implementation UIImage (ColorToImageTW)
+ (UIImage*)createImageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return theImage;
}
@end
