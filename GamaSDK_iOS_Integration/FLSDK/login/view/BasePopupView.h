
#import "SDKBaseView.h"
#import "CComHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface BasePopupView : SDKBaseView


@property(nonatomic, assign)long  registIdx;
@property(nonatomic, copy)NSString *  implChangeNotification_str;




-(NSArray *)parseHeightCompletedPtr:(NSString *)reload;


@property (nonatomic,strong) UIView *contentView;
@property (nonatomic,strong) CCallBack touchesBeganCallback;

@end

NS_ASSUME_NONNULL_END
