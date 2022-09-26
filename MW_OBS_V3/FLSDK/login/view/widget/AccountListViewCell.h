//
//  AccountListViewCell.h
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/13.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SdkHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface AccountListViewCell : UITableViewCell
@property(nonatomic, weak) id stigdrawPingability;

@property (nonatomic, strong) UILabel *accountUILabel;
@property (nonatomic, strong) UIButton *deleteAccountBtn;
@property (nonatomic, assign) CGFloat pachoonThirdaryOvermost;
@property (nonatomic, strong) UIImageView *iconImageView;

@property (nonatomic, strong) ItemViewClickHander mItemViewClickHander;
@property (nonatomic, assign) CGFloat phaganeityMind;

@end

NS_ASSUME_NONNULL_END
