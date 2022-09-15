//
//  AccountListViewCell.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/13.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "AccountListViewCell.h"
#import "SdkHeader.h"
#import "UIView+BlockGesture.h"

@implementation AccountListViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
       if (self) {
           [self addCellView];
       }
       return self;
}

- (void)addCellView{
    
    self.contentView.backgroundColor = [UIColor whiteColor];
    
    UIView *delContentView = [[UIView alloc] init];
    [self addSubview:delContentView];
    [delContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView.mas_trailing).mas_offset(VW(-10));
        make.top.mas_equalTo(self.contentView).offset(2);
        make.bottom.mas_equalTo(self.contentView).offset(-2);
        make.width.mas_equalTo(delContentView.mas_height);
       // make.centerY.mas_equalTo(self);
    }];
    
    self.deleteAccountBtn = [UIUtil initBtnWithNormalImage:delete_icon highlightedImage:delete_icon tag:kMoreAccountDeleteActTag selector:@selector(deleteAccontClick:) target:self];
    self.deleteAccountBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [delContentView addSubview:self.deleteAccountBtn];
    [self.deleteAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.trailing.equalTo(self.contentView.mas_trailing).mas_offset(VW(-10));
//        make.top.mas_equalTo(self.contentView).offset(2);
//        make.bottom.mas_equalTo(self.contentView).offset(-2);
        make.width.height.mas_equalTo(VW(14));
        make.center.mas_equalTo(delContentView);
    }];
    delContentView.userInteractionEnabled = YES;
    [delContentView addTapActionWithBlock:^(UIGestureRecognizer *gestureRecoginzer) {
        
        if (self.mItemViewClickHander) {
            self.mItemViewClickHander(kMoreAccountDeleteActTag);
        }
        
    }];
    
    //icon
   
    [self.contentView addSubview:self.iconImageView];
    [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.centerY.mas_equalTo(self);
        make.leading.mas_equalTo(self).mas_offset(VW(15));
        make.height.width.mas_equalTo(VW(15));
        
    }];
    
    self.accountUILabel = [[UILabel alloc] init];
    self.accountUILabel.font = [UIFont systemFontOfSize:FS(12)];
    self.accountUILabel.text = @"";
//    self.accountUILabel.textAlignment = NSTextAlignmentCenter;
//    self.accountUILabel.backgroundColor = [UIColor clearColor]xX;
    self.accountUILabel.numberOfLines = 1; //0为多行
    self.accountUILabel.textColor = [UIColor blackColor];
    
    [self.contentView addSubview:self.accountUILabel];
    [self.accountUILabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.iconImageView.mas_trailing).mas_offset(VW(15));
        make.top.mas_equalTo(self.contentView).offset(2);
        make.bottom.mas_equalTo(self.contentView).offset(-2);
        make.trailing.mas_equalTo(delContentView.mas_leading).mas_offset(VW(-15));
        
    }];
}

-(UIImageView*)iconImageView
{
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc] initWithImage:[UIImage res_imageNamed:mw_smail_icon]];
        _iconImageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    return _iconImageView;
}

- (void)deleteAccontClick:(UIButton *)sender
{
    if (self.mItemViewClickHander) {
        self.mItemViewClickHander(sender.tag);
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
