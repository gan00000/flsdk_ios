
#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, SDK_ICON_TITLE_BUTTON_TYPE)
{
    SDK_ICON_TITLE_BUTTON_TYPE_FB,
    SDK_ICON_TITLE_BUTTON_TYPE_APPLE,
    SDK_ICON_TITLE_BUTTON_TYPE_GEUST,
    SDK_ICON_TITLE_BUTTON_TYPE_ACCOUNT,
    SDK_ICON_TITLE_BUTTON_TYPE_BIND_FB,
    SDK_ICON_TITLE_BUTTON_TYPE_BIND_GEUST,
    SDK_ICON_TITLE_BUTTON_TYPE_BIND_APPLE,
};

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishFrameworkButton : UIView


@property(nonatomic, copy)NSString *  centerImpl_str;
@property(nonatomic, assign)double  arac_size;


/// 函数定义
- (instancetype)initBtnViewWithType_MMMethodMMM:(SDK_ICON_TITLE_BUTTON_TYPE)type tag_MMMethodMMM:(NSUInteger)tag selector:(SEL)selector target_MMMethodMMM:(id)target;
@end

NS_ASSUME_NONNULL_END
