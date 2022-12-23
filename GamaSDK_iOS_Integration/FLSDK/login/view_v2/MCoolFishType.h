
#import <UIKit/UIKit.h>
#import "MCoolFishRegisterView.h"
#import "MCoolFishButtonConfigurator.h"
#import "MCoolFishManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishType : MCoolFishRegisterView


@property(nonatomic, assign)long  type_mt;
@property(nonatomic, assign)int  common_mark;
@property(nonatomic, assign)long  fieldSum;
@property(nonatomic, assign)Boolean  enbaleShould;


/// 函数定义
@property (nonatomic, strong) MCoolFishButtonConfigurator *mAccountLoginView;

@property (nonatomic, strong) MCoolFishManager *mRegisterAccountView;

- (instancetype)initView_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
