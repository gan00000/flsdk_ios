

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class PhoneInfoModel;
@protocol PhoneInfoModelDelegate <NSObject>
@optional
- (void)fire;
@required
- (void)showSelectedAreaCodeValue_MMMethodMMM:(NSString *)selectedAreaCodeValue;
@end

@interface PhoneInfoModel : NSObject

@property (nonatomic, strong) NSString *selectedAreaCodeKey_MMMPRO;
@property (nonatomic, strong) NSString *selectedAreaCodeValue_MMMPRO;
@property (nonatomic, copy) NSString *selectedRegularExpression_MMMPRO;
@property (nonatomic, assign) id<PhoneInfoModelDelegate> phoneDelegate_MMMPRO;

- (void)showAreaCodesActionSheetFromView_MMMethodMMM:(UIButton *)view;

@end
