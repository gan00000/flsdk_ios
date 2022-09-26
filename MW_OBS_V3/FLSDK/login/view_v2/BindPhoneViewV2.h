//
#import "BaseCountTimerView.h"
#import "MWSDK.h"
NS_ASSUME_NONNULL_BEGIN

@interface BindPhoneViewV2 : BaseCountTimerView

@property (copy,nonatomic) MWBlock mMWBlock;
@property (nonatomic, assign) BOOL tenaneousArbor;

@end

NS_ASSUME_NONNULL_END
