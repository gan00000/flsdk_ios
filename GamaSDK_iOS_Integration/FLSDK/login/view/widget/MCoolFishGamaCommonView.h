
#import "MCoolFishRegisterView.h"
#import "MCoolFishRequestEdit.h"

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishGamaCommonView : MCoolFishRegisterView <OVMCoolFishTermsPassword>


@property(nonatomic, copy)NSArray *  rameworkArr;
@property(nonatomic, copy)NSArray *  editingItem_Array;


/// 函数定义
@property (nonatomic, strong) MCoolFishRequestEdit *phoneModel;
@property (nonatomic) UILabel *aracCodeUILabel;

@property (nonatomic) UITextField *mUITextField;

- (instancetype)initView_MMMethodMMM;

-(NSString *)getPhoneNumber_MMMethodMMM;
-(NSString *)getPhoneAreaCode_MMMethodMMM;
@end

NS_ASSUME_NONNULL_END
