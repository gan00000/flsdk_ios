
#import <UIKit/UIKit.h>
#import "SDKBaseView.h"
#import "AccountLoginViewV2.h"
#import "RegisterAccountViewV2.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginWithRegViewV2 : SDKBaseView


@property(nonatomic, assign)NSInteger  status_tag;
@property(nonatomic, assign)long  information_flag;
@property(nonatomic, assign)float  commonPadding;




-(NSString *)scanExpArea:(double)read;

-(NSInteger)failRngTimestampObserving:(float)click;

-(NSString *)uppercaseEventPentAmount:(NSArray *)callTapped observe:(int)observe;


@property (nonatomic, strong) AccountLoginViewV2 *mAccountLoginView;

@property (nonatomic, strong) RegisterAccountViewV2 *mRegisterAccountView;

- (instancetype)initView_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
