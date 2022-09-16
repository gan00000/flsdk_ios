//
//  LoginTypeButton.h
//  FLSDK
//
//  Created by ganyuanrong on 2020/10/21.
//  Copyright © 2020 Gama. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIUtil.h"
#import "SdkHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginTypeButton : UIView

- (instancetype)initWithType:(NSUInteger)type title:(NSString *)title image:(NSString *)image selector:(SEL)selector
                      target:(id)target;
@end

NS_ASSUME_NONNULL_END
