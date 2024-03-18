//
//  FloatMenuCell.h
//  MW_SDK
//
//  Created by Gan Yuanrong on 2024/3/6.
//  Copyright © 2024 Gama. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FloatMenuCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *menuIconImageView;
@property (weak, nonatomic) IBOutlet UILabel *menuTitleLabel;
@property (weak, nonatomic) IBOutlet UIView *reddotView;

@end

NS_ASSUME_NONNULL_END
