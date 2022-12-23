
#import <UIKit/UIKit.h>
#import "MCoolFishRegisterView.h"
#import "MCoolFishButtonConfigurator.h"
#import "MCoolFishManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishType : MCoolFishRegisterView


@property(nonatomic, assign)double  hander_padding;
@property(nonatomic, assign)Boolean  is_Editing;
@property(nonatomic, copy)NSString *  successNewsFramework_string;


/// 函数定义
@property (nonatomic, strong) MCoolFishButtonConfigurator *mAccountLoginView;

@property (nonatomic, strong) MCoolFishManager *mRegisterAccountView;

- (instancetype)initView_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
