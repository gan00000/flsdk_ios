

#import <UIKit/UIKit.h>
#import "LoginViewDelegate.h"
#import "ColorHeader.h"
#import "CivilativeFutilView.h"

#define MARGIN_TOP  IS_PORTRAIT ? 180.0 : 20.0

NS_ASSUME_NONNULL_BEGIN

@interface PausetteQuadragenularView : UIView



@property(nonatomic, weak) id<LoginViewDelegate> delegate;


@property(nonatomic) CURRENT_PAGE_TYPE fromPage;
@property(nonatomic,assign) id fromPageParam;

-(void)initData_MMMethodMMM;
@property(nonatomic,strong)NSMutableArray *drawBlockArray;

- (void)addDrawRectBolck:(CCallBack)callback;

-(void)removeFromGameView;
@end

NS_ASSUME_NONNULL_END
