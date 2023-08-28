

#import "DidactyMortueeView.h"
#import "PointsionValueain.h"
#import "UIColor+PodSeemsive.h"
#import "SdkHeader.h"
#import "EquinsexageChoiceitudeButton.h"
#import "MulctfulHemeresqueView.h"
#import "CorticoalityHormship.h"

#define SDK_PROVISIONS_FIRST_ENBLE wwwww_tag_wwwww_sdk_provisions_first_enble
@interface DidactyMortueeView ()
@property (copy,nonatomic) void (^completer)(void);
@end

@implementation DidactyMortueeView
{

    
    WKWebView *provisionWebView;
    
    UIButton *policyUrlBtn2;
    UIButton *serviceUrlBtn2;
    
    NSString *policyUrl;
    NSString *serviceUrl;
}

- (instancetype)initWithCompleter_MMMethodMMM:(void (^)(void))completer
{
    self = [self init];
    if (self) {
        self.completer = completer;
    }
    return self;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        self.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.1];
        
        [self landspaceView_MMMethodMMM];
        
        
    }
    return self;
}


- (void)landspaceView_MMMethodMMM {
   
    
    UIView *contentView = [[UIView alloc] init];
    
    UIColor *color = [UIColor whiteColor];
    contentView.backgroundColor = color;
    contentView.layer.cornerRadius = 10; 
    contentView.layer.masksToBounds = YES;
    
    [self addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
        make.width.mas_equalTo(VW(330));
        make.height.mas_equalTo(VH(300));
    }];
    
    
    UIView *titleView = [[UIView alloc] init];
    [contentView addSubview:titleView];
    [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(contentView.mas_top).mas_offset(VH(10));
        make.leading.mas_equalTo(contentView).mas_offset(VW(15));
        make.trailing.mas_equalTo(contentView).mas_offset(VW(-15));
    }];
    
    
    UIView *tagView = [[UIView alloc] init];
    tagView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#707070"];
    [titleView addSubview:tagView];
    [tagView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(titleView);
        make.width.mas_equalTo(VW(2));
        make.height.mas_equalTo(VH(14));
    }];
    
    UIButton *policyUrlBtn = [LaughelArborthattion initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_privacy_policy.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor] tag_MMMethodMMM:privacyPolicyActTag selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    [titleView addSubview:policyUrlBtn];
    [policyUrlBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(titleView).mas_offset(6);
        make.trailing.mas_equalTo(titleView.mas_centerX);
        make.top.mas_equalTo(titleView);
        make.bottom.mas_equalTo(titleView);
    }];
    policyUrlBtn2 = policyUrlBtn;

    UIButton *serviceUrlBtn = [LaughelArborthattion initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_personal_clause.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:term_title_unselect] tag_MMMethodMMM:personalClauseActTag selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    [titleView addSubview:serviceUrlBtn];
    [serviceUrlBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(titleView.mas_centerX);
        make.trailing.mas_equalTo(titleView).mas_offset(-6);;
        make.top.mas_equalTo(titleView);
        make.bottom.mas_equalTo(titleView);
    }];
    serviceUrlBtn2 = serviceUrlBtn;
    
    
    UIButton *closeBtn = [LaughelArborthattion initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_close.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor] tag_MMMethodMMM:TAG_CLOSE selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    closeBtn.layer.cornerRadius = VH(32) / 2;
    closeBtn.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor].CGColor;
    closeBtn.layer.borderWidth = 0.5;
    
    [contentView addSubview:closeBtn];
    [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(contentView).mas_offset(VW(15));;
        make.bottom.mas_equalTo(contentView.mas_bottom).mas_offset(-VH(10));
        make.width.mas_equalTo(VW(94));
        make.height.mas_equalTo(VH(32));
    }];
    
    UIButton *okBtn = [LaughelArborthattion initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_agree_read_tips.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    okBtn.layer.cornerRadius = VH(16);
    okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    
    [contentView addSubview:okBtn];
    [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.mas_equalTo(contentView).mas_offset(-VW(15));
        make.bottom.mas_equalTo(closeBtn.mas_bottom);
        make.width.mas_equalTo(VW(190));
        make.height.mas_equalTo(VH(32));
    }];
    
    CAGradientLayer *gl = [CorticoalityHormship createGradientLayerWithRadius_MMMethodMMM:VH(16)];
    [okBtn.layer addSublayer:gl];
    [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        gl.frame = okBtn.bounds;
    }];
    
    
    UIView *xView = [[UIView alloc] init];
    
    xView.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_DEDEDE].CGColor;
    xView.layer.borderWidth = 0.6;
    [contentView addSubview:xView];
    [xView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(contentView).mas_offset(VW(15));;
        make.trailing.mas_equalTo(contentView).mas_offset(-VW(15));
        make.top.mas_equalTo(titleView.mas_bottom).mas_offset(VW(10));
        make.bottom.mas_equalTo(closeBtn.mas_top).mas_offset(-VW(10));
    }];



    
    
    
    NSString * url = SDK_DATA.urls.agreementUrl;
    if (!url || [@"" isEqualToString:url]) {
        url = [NSString stringWithFormat:TERMS_SERVICE_URL,GAME_CODE];
    }
    
    if([url containsString:@","]){
        NSArray *arrayUrls = [url componentsSeparatedByString:@","];
        if(arrayUrls && arrayUrls.count > 1){
            policyUrl = arrayUrls[1];
            serviceUrl = arrayUrls[0];
        }
    }else{
        serviceUrl = url;
        policyUrl = url;
    }
    
    SDK_LOG(@"termsUrl=%@",url);
    provisionWebView = [[WKWebView alloc] init];
    [provisionWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: policyUrl]]];
    [provisionWebView.scrollView setBounces:YES];
    [provisionWebView.scrollView setScrollEnabled:YES];
    [xView addSubview:provisionWebView];
    [provisionWebView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.leading.mas_equalTo(xView).mas_offset(VW(8));
        make.bottom.trailing.mas_equalTo(xView).mas_offset(-VW(8));
    }];
    
}

- (void)btnClickAction_MMMethodMMM:(UIButton *)sender
{
   
    switch (sender.tag) {
        case 11://點擊服務條款
            break;
        case TAG_CLOSE:
            [self removeFromSuperview];
            break;
            
        case kAgreeTermsCheckBoxBtnTag:
            
            if (self.completer) {
                self.completer();
            }
            
            [self removeFromSuperview];
            
            break;
            
        case privacyPolicyActTag:
        {
            [serviceUrlBtn2 setTitleColor:[UIColor colorWithHexString_MMMethodMMM:term_title_unselect] forState:UIControlStateNormal];
            [policyUrlBtn2 setTitleColor:[UIColor colorWithHexString_MMMethodMMM:BaseColor] forState:UIControlStateNormal];
            
            [provisionWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: policyUrl]]];
            
            break;
        }
        case personalClauseActTag:
        {
            [serviceUrlBtn2 setTitleColor:[UIColor colorWithHexString_MMMethodMMM:BaseColor] forState:UIControlStateNormal];
            [policyUrlBtn2 setTitleColor:[UIColor colorWithHexString_MMMethodMMM:term_title_unselect] forState:UIControlStateNormal];
            
            [provisionWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: serviceUrl]]];
            
            break;
        }
            
            
        default:
            break;
    }
    
}

+ (void)saveAgreenProvisionState_MMMethodMMM:(BOOL)agreen
{
    NSUserDefaults *saveDefault = [NSUserDefaults standardUserDefaults];
    [saveDefault setBool:agreen forKey:SDK_PROVISIONS_FIRST_ENBLE];
    [saveDefault synchronize];
}

+ (BOOL)openProvision_MMMethodMMM{
    
    return ![DidactyMortueeView isAgreenProvision_MMMethodMMM];
}

+(BOOL)isAgreenProvision_MMMethodMMM
{
    NSUserDefaults *saveDefault = [NSUserDefaults standardUserDefaults];
    return [saveDefault boolForKey:SDK_PROVISIONS_FIRST_ENBLE];
}

@end
