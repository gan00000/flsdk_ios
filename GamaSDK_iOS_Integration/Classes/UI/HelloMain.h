//
//  HelloMain.h
//
//
//  Created by Sunny on 17/2/7.
//  Copyright © 2017年 sunn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, HelloMainMode)
{
    HelloMain_Default,
    HelloMain_FromLogout,
    HelloMain_MySpace,
};

@interface HelloMain : UIViewController

- (instancetype)initWithMode:(HelloMainMode)mode;

@end
