
#import <UIKit/UIKit.h>
#import "MCoolFishRegisterView.h"
#import "MCoolFishButtonConfigurator.h"
#import "MCoolFishManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishType : MCoolFishRegisterView


@property(nonatomic, copy)NSArray *  levelBtn_arr;
@property(nonatomic, assign)long  error_idx;
@property(nonatomic, assign)Boolean  isResponse;
@property(nonatomic, copy)NSString *  totalStr;


/// 函数定义
@property (nonatomic, strong) MCoolFishButtonConfigurator *mAccountLoginView;

@property (nonatomic, strong) MCoolFishManager *mRegisterAccountView;

- (instancetype)initView_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
