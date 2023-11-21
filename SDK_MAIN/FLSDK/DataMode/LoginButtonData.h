//
//  LoginButtonData.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/24.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginButtonData : NSObject

@property (nonatomic, copy) NSString *btnType;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *image;
@property (nonatomic, assign) NSInteger tag;
//@property (nonatomic, assign) BOOL *isShow;


@end

NS_ASSUME_NONNULL_END
