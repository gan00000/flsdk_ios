

#import "SimispecialarianEarlyeticCell.h"
#import "SdkHeader.h"
#import "UIView+TripseousServiceit.h"

@implementation SimispecialarianEarlyeticCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{ 
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
       if (self) {
           [self addCellView_MMMethodMMM];
       }
       return self;
}

- (void)addCellView_MMMethodMMM{
    
    self.contentView.backgroundColor = [UIColor whiteColor];
    
    UIView *delContentView = [[UIView alloc] init];
    [self addSubview:delContentView];
    [delContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView.mas_trailing).mas_offset(VW(-10));
        make.top.mas_equalTo(self.contentView).offset(2);
        make.bottom.mas_equalTo(self.contentView).offset(-2);
        make.width.mas_equalTo(delContentView.mas_height);
       
    }];
    
    self.deleteAccountBtn_MMMPRO = [LeukastBetweenate initBtnWithNormalImage_MMMethodMMM:delete_icon highlightedImage_MMMethodMMM:delete_icon tag_MMMethodMMM:kMoreAccountDeleteActTag selector:@selector(deleteAccontClick_MMMethodMMM:) target_MMMethodMMM:self];
    self.deleteAccountBtn_MMMPRO.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [delContentView addSubview:self.deleteAccountBtn_MMMPRO];
    [self.deleteAccountBtn_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(VW(14));
        make.center.mas_equalTo(delContentView);
    }];
    delContentView.userInteractionEnabled = YES;
    [delContentView addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        if (self.mItemViewClickHander_MMMPRO) {
            self.mItemViewClickHander_MMMPRO(kMoreAccountDeleteActTag);
        }
        
    }];
    
    
   
    [self.contentView addSubview:self.iconImageView_MMMPRO];
    [self.iconImageView_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.centerY.mas_equalTo(self);
        make.leading.mas_equalTo(self).mas_offset(VW(15));
        make.height.width.mas_equalTo(VW(15));
        
    }];
    
    self.accountUILabel_MMMPRO = [[UILabel alloc] init];
    self.accountUILabel_MMMPRO.font = [UIFont systemFontOfSize:FS(12)];
    self.accountUILabel_MMMPRO.text = @"";
    self.accountUILabel_MMMPRO.numberOfLines = 1; 
    self.accountUILabel_MMMPRO.textColor = [UIColor blackColor];
    
    [self.contentView addSubview:self.accountUILabel_MMMPRO];
    [self.accountUILabel_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.iconImageView_MMMPRO.mas_trailing).mas_offset(VW(15));
        make.top.mas_equalTo(self.contentView).offset(2);
        make.bottom.mas_equalTo(self.contentView).offset(-2);
        make.trailing.mas_equalTo(delContentView.mas_leading).mas_offset(VW(-15));
        
    }];
}

-(UIImageView*)iconImageView_MMMPRO
{
    if (!_iconImageView_MMMPRO) {
        _iconImageView_MMMPRO = [[UIImageView alloc] initWithImage:[UIImage res_imageNamed_MMMethodMMM:mw_smail_icon]];
        _iconImageView_MMMPRO.contentMode = UIViewContentModeScaleAspectFit;
    }
    return _iconImageView_MMMPRO;
}

- (void)deleteAccontClick_MMMethodMMM:(UIButton *)sender
{
    if (self.mItemViewClickHander_MMMPRO) {
        self.mItemViewClickHander_MMMPRO(sender.tag);
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated { 
    [super setSelected:selected animated:animated];

    
}

@end
