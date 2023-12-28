

#import <UIKit/UIKit.h>
#import "LoginViewDelegate.h"
#import "ColorHeader.h"
#import "TouchEventInterruptView.h"

#define MARGIN_TOP  IS_PORTRAIT ? 180.0 : 20.0

NS_ASSUME_NONNULL_BEGIN

@interface SDKBaseView : UIView



@property(nonatomic, weak) id<LoginViewDelegate> loginDelegate_MMMPRO;


@property(nonatomic) CURRENT_PAGE_TYPE fromPage_MMMPRO;
@property(nonatomic,assign) id fromPageParam_MMMPRO;

-(void)initData_MMMethodMMM;
@property(nonatomic,strong)NSMutableArray *drawBlockArray_MMMPRO;

- (void)addDrawRectBolck_MMMethodMMM:(CCallBack)callback;

-(void)removeFromGameView_MMMethodMMM;
@end

NS_ASSUME_NONNULL_END
