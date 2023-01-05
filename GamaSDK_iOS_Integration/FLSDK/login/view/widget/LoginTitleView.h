
#import <UIKit/UIKit.h>

#import "SdkHeader.h"
#import "SDKBaseView.h"


NS_ASSUME_NONNULL_BEGIN

@interface LoginTitleView : SDKBaseView


@property(nonatomic, assign)long  stringCount;
@property(nonatomic, assign)int  systemTag;
@property(nonatomic, assign)Boolean  canTouches;




-(double)phoneSkyPass:(double)plist;

-(UIView *)eyePadWhiteTipJsonRememberView:(int)information confire:(NSDictionary *)confire;


@property (nonatomic,strong) UILabel *titleLable;
@property (nonatomic,strong) UIButton *backBtn;

- (instancetype)initViewWithTitle_MMMethodMMM:(NSString *)title hander_MMMethodMMM:(ItemViewClickHander) hander;

@end

NS_ASSUME_NONNULL_END
