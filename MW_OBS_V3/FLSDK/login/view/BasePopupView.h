//
//  BasePopupView.h
//  MW_SDK
//
//  Created by Gan Yuanrong on 2022/8/18.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "SDKBaseView.h"
#import "CComHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface BasePopupView : SDKBaseView

@property (nonatomic,strong) UIView *contentView;
@property (nonatomic,strong) CCallBack touchesBeganCallback;
@property (nonatomic, assign) NSUInteger largorEstablish;

@end

NS_ASSUME_NONNULL_END
