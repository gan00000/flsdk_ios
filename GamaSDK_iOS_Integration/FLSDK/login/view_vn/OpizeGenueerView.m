

#import "OpizeGenueerView.h"
#import "SdkHeader.h"
#import "AgoniaShootalView.h"
#import "RhombtyWesternentView.h"
#import "PathacityThoughainView.h"
#import "TrichoasterPhaneruleButton.h"
#import "TransifySideatory.h"
#import "DiseaseitudeGastroaire.h"
#import "FinalaneityTangice.h"
#import "AloneuleCipitdifferenting.h"
#import "LuminseaicalPresentth.h"

@implementation OpizeGenueerView
{
    RhombtyWesternentView *accountSDKTextFiledView;
    RhombtyWesternentView *passwordSDKTextFiledView;
    RhombtyWesternentView *passwordAgainSDKTextFiledView;
    UIButton *regAccountBtn; 
    AgoniaShootalView   *mLoginTitleView;
    int phoneCountdown;
    
    
}


- (instancetype)initView_MMMethodMMM
{
    self = [self initViewWithBindType_MMMethodMMM:0];
    if (!self) {
        return nil;
    }
    return self;
}
- (instancetype)initViewWithBindType_MMMethodMMM:(NSInteger) bindType
{
    self = [super init];
    if (self) {
        
        
        
        
        self.bindType = bindType;
        
       
        
        accountSDKTextFiledView = [[RhombtyWesternentView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self);
            make.leading.mas_equalTo(self).mas_offset(VW(18));
            make.trailing.mas_equalTo(self).mas_offset(-VW(18));
            make.height.mas_equalTo(VH(40));
        }];
        
        
        
        passwordSDKTextFiledView = [[RhombtyWesternentView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        UILabel *tipsUILabel = [[UILabel alloc] init];
        tipsUILabel.font = [UIFont systemFontOfSize:FS(10)];
        tipsUILabel.text = wwwww_tag_wwwww_text_reg_tips.localx;
        tipsUILabel.textAlignment = NSTextAlignmentLeft;
        tipsUILabel.numberOfLines = 0; 
        tipsUILabel.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    
        [self addSubview:tipsUILabel];
        [tipsUILabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).offset(8);
    
        }];
        
        
        regAccountBtn = [SmilePitate initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_confire_reg.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kRegisterAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [regAccountBtn.layer setCornerRadius:VH(5)];
        regAccountBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
        [self addSubview:regAccountBtn];
        
        [regAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            make.top.equalTo(tipsUILabel.mas_bottom).mas_offset(VH(38));
            make.height.mas_equalTo(VH(40));
        }];
        
        CAGradientLayer *gl = [LuminseaicalPresentth createGradientLayerWithRadius_MMMethodMMM:VH(5)];
        [regAccountBtn.layer addSublayer:gl];
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            gl.frame = regAccountBtn.bounds;
        }];

        
        
    }
    return self;
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {
            
            
        case kRegisterAccountActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kRegisterAccountActTag);
            NSString *accountName = [accountSDKTextFiledView.inputUITextField.text trim_MMMethodMMM];
            NSString *pwd = [passwordSDKTextFiledView.inputUITextField.text trim_MMMethodMMM];
            
            
            if (![DiseaseitudeGastroaire validUserName_MMMethodMMM:accountName]) {
                
                return;
            }
            
            if (![DiseaseitudeGastroaire validPwd_MMMethodMMM:pwd]) {
                return;
            }
          
            [AloneuleCipitdifferenting accountRegister_MMMethodMMM:self.delegate view_MMMethodMMM:self areaCode_MMMethodMMM:@"" name:accountName password_MMMethodMMM:pwd phoneNum_MMMethodMMM:@"" vfCode_MMMethodMMM:@""];
            
        }
            break;
            
        default:
            break;
    }
}

@end
