

#import "LoginTitleView.h"

@implementation LoginTitleView

{
    ItemViewClickHander mhander;
}


- (instancetype)initViewWithTitle_MMMethodMMM:(NSString *)title hander_MMMethodMMM:(ItemViewClickHander) hander{
    
    self = [super init];
    
    mhander = hander;
    self.backgroundColor = [UIColor clearColor];
    
    
    self.titleLable = [[UILabel alloc] init];
    self.titleLable.text = title;
    self.titleLable.font = [UIFont systemFontOfSize:FS(24)];
    self.titleLable.textAlignment = NSTextAlignmentCenter;
    
    self.titleLable.numberOfLines = 1;
    self.titleLable.textColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    
    [self addSubview:self.titleLable];
    [self.titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
        
        
        
        
        make.center.mas_equalTo(self);
    }];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    _backBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_back_icon highlightedImage_MMMethodMMM:mw_back_icon tag_MMMethodMMM:kBackBtnActTag selector:@selector(backBtnView_MMMethodMMM:) target_MMMethodMMM:self];
    [self addSubview:_backBtn];
    [_backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self).mas_offset(VW(18));
        make.width.mas_equalTo(VH(25));
        make.centerY.equalTo(self);
        make.height.mas_equalTo(VH(25));
    }];
    
    return self;
}


-(void)backUIView_MMMethodMMM:(UITapGestureRecognizer *)gesture
{
    SDK_LOG(@"backUIView gesture");
    
}
-(void)backBtnView_MMMethodMMM:(UIButton *) btn{
    SDK_LOG(wwwww_tag_wwwww_kBackBtnActTag);
    
    
    if (mhander) {
        mhander(1);
    }
}

@end
