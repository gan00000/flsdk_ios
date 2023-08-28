

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class AmericanateMenaciee;
@protocol PhoneInfoModelDelegate <NSObject>
@optional
- (void)fire;
@required
- (void)showSelectedAreaCodeValue_MMMethodMMM:(NSString *)selectedAreaCodeValue;
@end

@interface AmericanateMenaciee : NSObject

@property (nonatomic, strong) NSString *selectedAreaCodeKey;
@property (nonatomic, strong) NSString *selectedAreaCodeValue;
@property (nonatomic, copy) NSString *selectedRegularExpression;
@property (nonatomic, assign) id<PhoneInfoModelDelegate> delegate;

- (void)showAreaCodesActionSheetFromView_MMMethodMMM:(UIButton *)view;

@end
