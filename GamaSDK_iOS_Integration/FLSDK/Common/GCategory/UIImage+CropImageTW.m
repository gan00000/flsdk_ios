//
//  UIImage+CropImage.m
//  ios-动画-UIBezierPath-1
//
//  Created by TangTieshan on 16/4/8.
//  Copyright (c) 2016年 TangTieshan. All rights reserved.
//



#import "UIImage+CropImageTW.h"

@implementation UIImage (CropImageTW)
- (UIImage *)imageByCropToEqualWithAndHeight
{
    CGSize imageSize = self.size;
    CGFloat screenScale = [[UIScreen mainScreen] scale];
    
    CGFloat imageWidth = imageSize.width * screenScale;
    CGFloat imageHeight = imageSize.height * screenScale;
    
    CGFloat widthAndHeight = fminf(imageWidth, imageHeight);
    
    CGFloat pointX = (imageWidth - widthAndHeight) * 0.5f;
    CGFloat pointY = (imageHeight - widthAndHeight) * 0.5f;
    
    return [self cropImageAtRect:CGRectMake(pointX, pointY, widthAndHeight, widthAndHeight)];
    
}

- (UIImage *)imageByCropToSize:(CGSize)targetSize AtPosition:(TTSCropImagePosition)position
{
    CGRect rect = CGRectZero;
    CGSize imageSize = self.size;
    
    CGFloat screenScale = 1.0f; //[[UIScreen mainScreen] scale];
    
    CGFloat imageWidth = imageSize.width * screenScale;
    CGFloat imageHeight = imageSize.height * screenScale;
    
    CGFloat pointX = 0;
    CGFloat pointY = 0;
    
    targetSize.width = targetSize.width * screenScale;
    targetSize.height = targetSize.height * screenScale;
    
    switch (position) {
        case kTTSCropImagePositionFromCenter: {
            
            pointX = imageWidth * 0.5f - targetSize.width * 0.5f;
            pointY = imageHeight * 0.5f - targetSize.height * 0.5f;
            
            break;
        }
        case kTTSCropImagePositionFromTopLeft: {
            break;
        }
        case kTTSCropImagePositionFromTopRight: {
            pointX = imageWidth - targetSize.width;
            break;
        }
        case kTTSCropImagePositionFromBottomLeft: {
            pointY = imageHeight - targetSize.height;
            break;
        }
        case kTTSCropImagePositionFromBottomRight: {
            pointX = imageWidth - targetSize.width;
            pointY = imageHeight - targetSize.height;
            break;
        }
    }
    
    rect = CGRectMake(pointX, pointY, targetSize.width, targetSize.height);
    
    return [self cropImageAtRect:rect];
}

- (UIImage *)imageByCropToScale:(CGFloat)scale
{
    CGSize imageSize = self.size;
    
    CGFloat imageScale = imageSize.width / imageSize.height;
    
    CGSize cropSize = imageSize;
    
    if (scale > imageScale) {
        cropSize.width = imageSize.width;
        cropSize.height = imageSize.width / scale;
    }
    else
    {
        cropSize.height = imageSize.height;
        cropSize.width = imageSize.height * scale;
    }
    
    return [self imageByCropToSize:cropSize AtPosition:kTTSCropImagePositionFromCenter];
}

- (UIImage *)cropImageAtRect:(CGRect)rect
{
    CGImageRef imageRef = self.CGImage;
    
    CGImageRef imagePartRef = CGImageCreateWithImageInRect(imageRef, rect);
    
    UIImage * cropImage = [UIImage imageWithCGImage:imagePartRef scale:[[UIScreen mainScreen] scale] orientation:UIImageOrientationUp];
    
    CGImageRelease(imagePartRef);
    
    return cropImage;
}

+ (UIImage *)image:(UIImage *)image rotation:(UIImageOrientation)orientation
{
    long double rotate = 0.0;
    CGRect rect;
    float translateX = 0;
    float translateY = 0;
    float scaleX = 1.0;
    float scaleY = 1.0;
    
    switch (orientation) {
        case UIImageOrientationLeft:
            rotate = M_PI_2;
            rect = CGRectMake(0, 0, image.size.height, image.size.width);
            translateX = 0;
            translateY = -rect.size.width;
            scaleY = rect.size.width/rect.size.height;
            scaleX = rect.size.height/rect.size.width;
            break;
        case UIImageOrientationRight:
            rotate = 3 * M_PI_2;
            rect = CGRectMake(0, 0, image.size.height, image.size.width);
            translateX = -rect.size.height;
            translateY = 0;
            scaleY = rect.size.width/rect.size.height;
            scaleX = rect.size.height/rect.size.width;
            break;
        case UIImageOrientationDown:
            rotate = M_PI;
            rect = CGRectMake(0, 0, image.size.width, image.size.height);
            translateX = -rect.size.width;
            translateY = -rect.size.height;
            break;
        default:
            rotate = 0.0;
            rect = CGRectMake(0, 0, image.size.width, image.size.height);
            translateX = 0;
            translateY = 0;
            break;
    }
    
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    //做CTM变换
    CGContextTranslateCTM(context, 0.0, rect.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextRotateCTM(context, rotate);
    CGContextTranslateCTM(context, translateX, translateY);
    
    CGContextScaleCTM(context, scaleX, scaleY);
    //绘制图片
    CGContextDrawImage(context, CGRectMake(0, 0, rect.size.width, rect.size.height), image.CGImage);
    
    UIImage *newPic = UIGraphicsGetImageFromCurrentImageContext();
    
    return newPic;
}
@end
