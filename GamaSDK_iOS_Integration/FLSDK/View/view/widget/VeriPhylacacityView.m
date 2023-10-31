

#import "VeriPhylacacityView.h"
#import "OpportunityianRiseon.h"
#import "UIImageView+WebCache.h"

@implementation VeriPhylacacityView
{
    UIButton *otherChannelBtn;
    UIButton *appleChannelBtn;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addView_MMMethodMMM];
    }
    return self;
}

- (void)addView_MMMethodMMM {
    
    
    UIView *contentView = [[UIView alloc] init];
    
    UIColor *color = [UIColor whiteColor];
    contentView.backgroundColor = color;
    contentView.layer.cornerRadius = 6; 
    contentView.layer.masksToBounds = YES;
    
    [self addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
        make.width.mas_equalTo(VW(227 + 24));
        make.height.mas_equalTo(VH(185 + 24));
    }];
    
    UIView *myContentView = [[UIView alloc] init];
    [contentView addSubview:myContentView];
    [myContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(contentView).mas_offset(VH(12));
        make.bottom.mas_equalTo(contentView).mas_offset(VH(-12));
        make.leading.mas_equalTo(contentView).mas_offset(VW(12));
        make.trailing.mas_equalTo(contentView).mas_offset(VW(-12));
        
    }];
    
    UIImageView *bgIV = [FelothersineEachive initImageViewWithImage_MMMethodMMM:bg_select_pay_channel];
    [myContentView addSubview:bgIV];
    [bgIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(myContentView);
    }];
    
    UIButton *closeBtn = [FelothersineEachive initBtnWithNormalImage_MMMethodMMM:bg_select_channel_close highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:TAG_CLOSE selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [contentView addSubview:closeBtn];
    [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.width.mas_equalTo(VH(24));
        make.top.mas_equalTo(contentView);
        make.trailing.mas_equalTo(contentView);
        
    }];
    
    
    otherChannelBtn = [FelothersineEachive initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_pay_pay.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:TAG_PAY_CHANNEL_OTHER selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [otherChannelBtn.layer setCornerRadius:VH(5)];
    otherChannelBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    
    CAGradientLayer *mGl = [OpportunityianRiseon createGradientLayerWithRadius_MMMethodMMM:VH(5)];
    [otherChannelBtn.layer addSublayer:mGl];
    [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        mGl.frame = otherChannelBtn.bounds;
    }];
    
    [myContentView addSubview:otherChannelBtn];
    [otherChannelBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(VH(35));
        make.bottom.mas_equalTo(myContentView).mas_offset(VH(-12));
        make.leading.mas_equalTo(myContentView).mas_offset(VW(10));
        make.trailing.mas_equalTo(myContentView).mas_offset(VW(-10));
        
    }];
    
    
    appleChannelBtn = [FelothersineEachive initBtnWithNormalImage_MMMethodMMM:nil highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:TAG_PAY_CHANNEL_APPLE selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    appleChannelBtn.layer.cornerRadius = 2;
    appleChannelBtn.layer.borderColor = UIColor.blackColor.CGColor;
    appleChannelBtn.layer.borderWidth = 0.5;
    [myContentView addSubview:appleChannelBtn];
    [appleChannelBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(otherChannelBtn);
        make.bottom.mas_equalTo(otherChannelBtn.mas_top).mas_offset(VH(-10));
        make.leading.mas_equalTo(otherChannelBtn);
        make.trailing.mas_equalTo(otherChannelBtn);
        
    }];
    
    UIButton *appleChannelBtn2 = [FelothersineEachive initBtnWithNormalImage_MMMethodMMM:icon_apple_pay highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:TAG_PAY_CHANNEL_APPLE selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [appleChannelBtn addSubview:appleChannelBtn2];
    [appleChannelBtn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(VH(24));
        make.width.mas_equalTo(VH(112));
        make.center.mas_equalTo(appleChannelBtn);
        
    }];
    
    
    
    UIView *tipsLabelContentView = [[UIView alloc] init];
    tipsLabelContentView.layer.cornerRadius = 4;
    tipsLabelContentView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#E2E2E2"];
    [myContentView addSubview:tipsLabelContentView];
    [tipsLabelContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(myContentView).mas_offset(VH(18));
        make.bottom.mas_equalTo(appleChannelBtn.mas_top).mas_offset(VH(-10));
        make.leading.mas_equalTo(otherChannelBtn);
        make.trailing.mas_equalTo(otherChannelBtn);
        
    }];

    UILabel *tipsLabel = [FelothersineEachive initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_select_pay_channel.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:UIColor.blackColor];
    tipsLabel.numberOfLines = 0;
    tipsLabel.textAlignment = NSTextAlignmentCenter;
    [tipsLabelContentView addSubview:tipsLabel];
    [tipsLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(tipsLabelContentView);
        make.bottom.mas_equalTo(tipsLabelContentView);
        make.leading.mas_equalTo(tipsLabelContentView).mas_offset(VW(12));
        make.trailing.mas_equalTo(tipsLabelContentView).mas_offset(VW(-12));
        
    }];
    
    UIImageView *handselIV = [[UIImageView alloc] init];
    handselIV.contentMode = UIViewContentModeScaleAspectFit;
    [myContentView addSubview:handselIV];
    [handselIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(otherChannelBtn);
        make.bottom.mas_equalTo(otherChannelBtn);
        make.width.mas_equalTo(VW(42));
        make.trailing.mas_equalTo(otherChannelBtn);
        
    }];
    
    LoginResponse *sLoginResponse = SDK_DATA.mLoginResponse;
    AccountModel *accountModel = sLoginResponse.data;
    
    NSString *mUrlString = [NSString stringWithFormat:@"%@image/sdk/%@/rebate_%@.png?t=%@", [SDKRES getCdnUrl_MMMethodMMM], [GAME_CODE stringByReplacingOccurrencesOfString:@"ios" withString:@""], @"ios", accountModel.timestamp];
    SDK_LOG(@"mUrlString = %@", mUrlString);
    NSURL *imageURL = [NSURL URLWithString:mUrlString];
    [handselIV sd_setImageWithURL:imageURL];
    
}

- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    SDK_LOG(@"sender.tag=%d", sender.tag);
    switch (sender.tag) {
       
        case TAG_PAY_CHANNEL_OTHER:
            if(self.mCallBack){
                self.mCallBack(@"TAG_PAY_CHANNEL_OTHER", TAG_PAY_CHANNEL_OTHER, nil);
            }
            break;
            
        case TAG_PAY_CHANNEL_APPLE:
            if(self.mCallBack){
                self.mCallBack(@"TAG_PAY_CHANNEL_APPLE", TAG_PAY_CHANNEL_APPLE, nil);
            }
            break;
            
        case TAG_CLOSE:
            
            if(self.mCallBack){
                self.mCallBack(@"TAG_CLOSE", TAG_CLOSE, nil);
            }
            
            break;
            
        default:
            break;
    }
    
}



@end
