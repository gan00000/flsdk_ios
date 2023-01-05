
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

@interface SDKIconTitleButton : UIView


@property(nonatomic, assign)long  existing_tag;
@property(nonatomic, assign)int  touchSum;



- (instancetype)initBtnViewWithType_MMMethodMMM:(SDK_ICON_TITLE_BUTTON_TYPE)type tag_MMMethodMMM:(NSUInteger)tag selector:(SEL)selector target_MMMethodMMM:(id)target;
@end

NS_ASSUME_NONNULL_END
