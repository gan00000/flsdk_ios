//
//  ProvisionsView.h
//  GamaSDK_iOS
//
//  Created by coke on 2018/11/30.
//  Copyright © 2018年 starpy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProvisionsView : UIView

- (instancetype)initWithCompleter:(void (^)(void))completer;

+ (BOOL)openProvision;

@end
