
#import <UIKit/UIKit.h>
#import "LoginViewDelegate.h"
#import "ColorHeader.h"
#import "MCoolFishWrapperView.h"

#define MARGIN_TOP  IS_PORTRAIT ? 180.0 : 20.0

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishRegisterView : UIView




@property(nonatomic, assign)long  efaultIndex;
@property(nonatomic, assign)float  dimeMin;
@property(nonatomic, copy)NSString *  commonStr;
@property(nonatomic, assign)int  orientationSum;


/// 函数定义
@property(nonatomic, weak) id<LoginViewDelegate> delegate;


@property(nonatomic) CURRENT_PAGE_TYPE fromPage;
@property(nonatomic,assign) id fromPageParam;

-(void)initData_MMMethodMMM;
@property(nonatomic,strong)NSMutableArray *drawBlockArray;

- (void)addDrawRectBolck:(CCallBack)callback;

-(void)removeFromGameView;
@end

NS_ASSUME_NONNULL_END
