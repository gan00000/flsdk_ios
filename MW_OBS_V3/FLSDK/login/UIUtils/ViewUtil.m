//
//  ViewUtil.m
//  MW_SDK
//
//  Created by Gan Yuanrong on 2022/9/21.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "ViewUtil.h"
#import "SdkHeader.h"

@implementation ViewUtil

+(CAGradientLayer *)createGradientLayerWithRadius:(CGFloat)cornerRadius{
    // gradient
    CAGradientLayer *gl = [CAGradientLayer layer];
//    gl.frame = guestLoginBtn.bounds;//CGRectMake(37.5,217.5,300,50);
//    guestBtnGradientLayer.frame = CGRectMake(0,0,200,20);
    gl.startPoint = CGPointMake(0.05, 0.05);
    gl.endPoint = CGPointMake(0.96, 0.95);
    gl.colors = @[(__bridge id)[UIColor colorWithHexString:@"#4CADFE"].CGColor, (__bridge id)[UIColor colorWithHexString:@"#02EDFC"].CGColor];
    gl.locations = @[@(0), @(1.0f)];
    gl.cornerRadius = cornerRadius;//VH(25)
    gl.zPosition = -10000;
    return gl;
}

@end
