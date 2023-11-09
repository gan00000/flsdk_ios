

#import "HandanceSorsacyView.h"
#import "SdkHeader.h"
#import "TaurstuffelVasetteView.h"
#import "ExoSingleitorButton.h"
#import "TomoVoiceatureButton.h"

#import <AuthenticationServices/AuthenticationServices.h>

@implementation HandanceSorsacyView{
    TaurstuffelVasetteView *mLoginTitleView;
    UIView *appleBindView;
}

- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        UIColor *color = [UIColor colorWithHexString_MMMethodMMM:ContentViewBgColor];
        self.backgroundColor = color;
        self.layer.cornerRadius = 10; 
        
        
        self.layer.masksToBounds = YES; 
        
        
        mLoginTitleView = [[TaurstuffelVasetteView alloc] initViewWithTitle_MMMethodMMM:wwwww_tag_wwwww_sureenne_terless hander_MMMethodMMM:^(NSInteger) {
            
        }];
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(32));
            make.centerX.mas_equalTo(self);
            make.width.mas_equalTo(self).mas_offset(-VW(55));
            make.height.mas_equalTo(VH(56));
        }];
        
        
        UIView *guestBindBtn = [[TomoVoiceatureButton alloc] initBtnViewWithType_MMMethodMMM:(SDK_ICON_TITLE_BUTTON_TYPE_BIND_GEUST) tag_MMMethodMMM:kBindGuestActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
           
        [self addSubview:guestBindBtn];
        
        [guestBindBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(40));
            make.height.mas_equalTo(VH(70));
            make.width.mas_equalTo(mLoginTitleView);
        }];
        
        
              UIView *fbBindBtn = [[TomoVoiceatureButton alloc] initBtnViewWithType_MMMethodMMM:(SDK_ICON_TITLE_BUTTON_TYPE_BIND_FB) tag_MMMethodMMM:kBindFBActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
              [self addSubview:fbBindBtn];
              
              [fbBindBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                  make.centerX.equalTo(self);
                  make.top.equalTo(guestBindBtn.mas_bottom).mas_offset(20);
                  make.width.mas_equalTo(guestBindBtn);
                  make.height.mas_equalTo(guestBindBtn);
              }];
              
        
        
        if (@available(iOS 13.0, *)) {
            
            appleBindView = [[UIView alloc] init];
            appleBindView.layer.cornerRadius = 4;
            appleBindView.tag = kBindAppleActTag;
            appleBindView.backgroundColor = [UIColor blackColor];
            
            appleBindView.userInteractionEnabled = YES; 
            UITapGestureRecognizer *tapGr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(appleViewTapped_MMMethodMMM:)];
            [appleBindView addGestureRecognizer:tapGr];
            
            [self addSubview:appleBindView];
            [appleBindView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.equalTo(self);
                make.top.equalTo(fbBindBtn.mas_bottom).mas_offset(20);
                make.width.mas_equalTo(guestBindBtn);
                make.height.mas_equalTo(guestBindBtn);
            }];

               ASAuthorizationAppleIDButton *appleBindBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                         authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleBlack];
            
            [appleBindBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
            appleBindBtn.tag = kBindAppleActTag;
            [appleBindView addSubview:appleBindBtn];
               
                   [appleBindBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                       make.top.mas_equalTo(appleBindView);
                       make.leading.mas_equalTo(appleBindView).mas_offset(VW(30));
                       make.height.mas_equalTo(guestBindBtn);
                       make.width.mas_equalTo(guestBindBtn.mas_height);
                   }];
            
            UILabel *titleLable = [[UILabel alloc] init];
           titleLable.text = wwwww_tag_wwwww_plasative_comdebateatic;
           titleLable.font = [UIFont systemFontOfSize:VH(32)];
           titleLable.textAlignment = NSTextAlignmentCenter;
           titleLable.backgroundColor = [UIColor clearColor];
            titleLable.numberOfLines = 1;
           titleLable.textColor = [UIColor whiteColor];
            titleLable.adjustsFontSizeToFitWidth = YES;
            [appleBindView addSubview:titleLable];
            [titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.mas_equalTo(appleBindView);
                make.bottom.mas_equalTo(appleBindView);
                
                
                make.leading.mas_equalTo(appleBindBtn.mas_trailing);
                make.trailing.mas_equalTo(appleBindView);
            }];
            
           } else {
               
           }
      
        
    }
    return self;
}

-(void)appleViewTapped_MMMethodMMM:(UITapGestureRecognizer*)tapGr
{
    SDK_LOG(wwwww_tag_wwwww_appleViewTapped);
    UIButton *xButton = [[UIButton alloc] init];
    xButton.tag = kBindAppleActTag;
    [self registerViewBtnAction_MMMethodMMM:xButton];
}



- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
        switch (sender.tag) {
            case kBindAppleActTag:
            {
                SDK_LOG(wwwww_tag_wwwww_kBindAppleActTag);
                if (@available(iOS 13, *)) {
                                
                  }else{
                     [StrigLevelule showAlertWithMessage_MMMethodMMM:GetString(wwwww_tag_wwwww_GAMA_APPLE_SYSTEM_OLD_WARNING)];
                      return;
                  }
            }
                
                break;
    
            case kBindFBActTag:
                SDK_LOG(wwwww_tag_wwwww_kBindFBActTag);
            break;
    
            case kBindAccountActTag:
                SDK_LOG(wwwww_tag_wwwww_kBindGuestActTag);
            break;
    
            default:
                break;
        }
    
    
    if (self.delegate) {
        [self.delegate goPageView_MMMethodMMM:(CURRENT_PAGE_TYPE_BIND_ACCOUNT) from_MMMethodMMM:(CURRENT_PAGE_TYPE_SELECT_BIND_TYPE) param_MMMethodMMM:@(sender.tag)];
    }
}
@end
