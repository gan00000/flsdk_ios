//
//  FloatMenu.h
//  MW_SDK
//
//  Created by Gan Yuanrong on 2024/3/6.
//  Copyright © 2024 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FloatMenu : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, assign) BOOL isPage;//是否是网页
@property (nonatomic, copy) NSString *code;
@property (nonatomic, assign) BOOL display;
@property (nonatomic, assign) BOOL isClick;

@end

NS_ASSUME_NONNULL_END
