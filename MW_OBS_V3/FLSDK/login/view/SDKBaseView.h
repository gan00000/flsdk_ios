//
//  SDKBaseView.h
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/31.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginViewDelegate.h"
#import "ColorHeader.h"

#define MARGIN_TOP  IS_PORTRAIT ? 180.0 : 20.0

NS_ASSUME_NONNULL_BEGIN

@interface SDKBaseView : UIView


//@property(nonatomic, weak) UIViewController * theViewUIViewController;

@property(nonatomic, weak) id<LoginViewDelegate> delegate;
@property (nonatomic, assign) NSUInteger vovturePopulation;

//@property(nonatomic, weak) id<UITextFieldDelegate> mUITextFieldDelegate;

@property(nonatomic) CURRENT_PAGE_TYPE fromPage;
@property (nonatomic, copy) NSString *phylactMindia;
@property(nonatomic,assign) id fromPageParam;

@property(nonatomic,strong)NSMutableArray *drawBlockArray;
@property (nonatomic, assign) BOOL firstentScelanalysislike;

-(void) initData;

- (void)addDrawRectBolck:(CCallBack)callback;

@end

NS_ASSUME_NONNULL_END
