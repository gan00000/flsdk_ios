//
//  SDKBaseView.m
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/31.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import "SDKBaseView.h"

@implementation SDKBaseView

- (void)initData{
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    SDK_LOG(@"SDKBaseView touchesBegan");
    [self endEditing:YES];
}
@end
