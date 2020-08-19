//
//  GamaAnnouncement.h
//  GamaSDK_iOS
//
//  Created by coke on 2020/5/20.
//  Copyright © 2020 Gama. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GamaAnnouncement : UIView

- (instancetype)initWithCompleter:(void (^)(void))completer;


@end
NS_ASSUME_NONNULL_END
