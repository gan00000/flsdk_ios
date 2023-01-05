
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#import "SdkHeader.h"
#import "SDKBaseView.h"

typedef NS_OPTIONS(NSUInteger, BUTTON_TYPE)
{
    BUTTON_TYPE_FB,
    BUTTON_TYPE_APPLE,
    BUTTON_TYPE_GEUST,
    BUTTON_TYPE_ACCOUNT,
    BUTTON_TYPE_ACCOUNT_REGISTER,
    BUTTON_TYPE_ACCOUNT_LOGIN,
    BUTTON_TYPE_OK,
    BUTTON_TYPE_BIND_FB,
    BUTTON_TYPE_BIND_GEUST,
    BUTTON_TYPE_BIND_APPLE,
    BUTTON_TYPE_CHANGE_ACCOUNT,
    BUTTON_TYPE_BIND_ACCOUNT,
};

NS_ASSUME_NONNULL_BEGIN

@interface LoginButton : NSObject


@property(nonatomic, assign)long  main_l;
@property(nonatomic, assign)double  firebaseSize;
@property(nonatomic, assign)int  projectTag;
@property(nonatomic, assign)NSInteger  t_view;



+ (UIButton *)initBtnWithType_MMMethodMMM:(BUTTON_TYPE)type tag_MMMethodMMM:(NSUInteger)tag selector:(SEL)selector target_MMMethodMMM:(id)target;

@end

NS_ASSUME_NONNULL_END
