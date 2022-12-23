
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class MCoolFishRequestEdit;
@protocol OVMCoolFishTermsPassword <NSObject>
@optional
- (void)fire;
@required
- (void)showSelectedAreaCodeValue_MMMethodMMM:(NSString *)selectedAreaCodeValue;
@end

@interface MCoolFishRequestEdit : NSObject


@property(nonatomic, assign)float  phone_offset;
@property(nonatomic, assign)double  frameworkMargin;
@property(nonatomic, assign)double  userMin;


/// 函数定义
@property (nonatomic, strong) NSString *selectedAreaCodeKey;
@property (nonatomic, strong) NSString *selectedAreaCodeValue;
@property (nonatomic, copy) NSString *selectedRegularExpression;
@property (nonatomic, assign) id<OVMCoolFishTermsPassword> delegate;

- (void)showAreaCodesActionSheetFromView_MMMethodMMM:(UIButton *)view;

@end
