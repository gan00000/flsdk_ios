







#import "SDKBaseView.h"
#import "CComHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface BasePopupView : SDKBaseView

@property (nonatomic,strong) UIView *contentView;
@property (nonatomic,strong) CCallBack touchesBeganCallback;

@end

NS_ASSUME_NONNULL_END
