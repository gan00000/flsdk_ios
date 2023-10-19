//
//  SDKIconTitleButton.h
//  GamaSDK_iOS
//
//  Created by ganyuanrong on 2020/8/1.
//  Copyright © 2020 Gama. All rights reserved.
//

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

- (instancetype)initBtnViewWithType_MMMethodMMM:(SDK_ICON_TITLE_BUTTON_TYPE)type tag_MMMethodMMM:(NSUInteger)tag selector:(SEL)selector target_MMMethodMMM:(id)target;
@end

NS_ASSUME_NONNULL_END
