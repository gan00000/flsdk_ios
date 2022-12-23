
#import "MCoolFishModityOrderView.h"
#import "SdkHeader.h"
#import "MCoolFishFiledGestureView.h"
#import "MCoolFishFiledEncodingView.h"
#import "MCoolFishGamaCommonView.h"
#import "MCoolFishKeychainButton.h"
#import "MCoolFishWithCommon.h"
#import "MCoolFishEventFile.h"
#import "MCoolFishDelegate.h"
#import "MCoolFishBlock.h"

@implementation MCoolFishModityOrderView
{
    MCoolFishFiledEncodingView *accountSDKTextFiledView;
    MCoolFishFiledEncodingView *passwordSDKTextFiledView;
    MCoolFishFiledEncodingView *passwordAgainSDKTextFiledView;
    UIButton *regAccountBtn; 
    MCoolFishFiledGestureView   *mLoginTitleView;
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
   self.page_index = 2495;

   self.progressThirdLineString = @"club";

   self.enbale_Helper = YES;

    self = [super init];
    if (self) {
        
        
        
        
        self.bindType = bindType;
        
       
        
        accountSDKTextFiledView = [[MCoolFishFiledEncodingView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self);
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            make.height.mas_equalTo(VH(40));
        }];
        
        
        
        passwordSDKTextFiledView = [[MCoolFishFiledEncodingView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(22));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        UILabel *tipsUILabel = [[UILabel alloc] init];
        tipsUILabel.font = [UIFont systemFontOfSize:FS(10)];
        tipsUILabel.text = @"*帳號信箱將會作為您找回密碼的驗證信箱，請謹慎輸入";
        tipsUILabel.textAlignment = NSTextAlignmentLeft;
        tipsUILabel.numberOfLines = 1; 
        tipsUILabel.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    
        [self addSubview:tipsUILabel];
        [tipsUILabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).offset(8);
    
        }];
        
        
        regAccountBtn = [MCoolFishConfig initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_erraneous_styleward fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kRegisterAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [regAccountBtn.layer setCornerRadius:VH(25)];
        regAccountBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F94925];
        [self addSubview:regAccountBtn];
        
        [regAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            make.top.equalTo(tipsUILabel.mas_bottom).mas_offset(VH(34));
            make.height.mas_equalTo(VH(50));
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
            NSString *accountName = accountSDKTextFiledView.inputUITextField.text;
            NSString *pwd = passwordSDKTextFiledView.inputUITextField.text;
            
            [self endEditing:YES];
            if (![MCoolFishEventFile validUserName_MMMethodMMM:accountName]) {
                
                return;
            }
            
            if (![MCoolFishEventFile validPwd_MMMethodMMM:pwd]) {
                return;
            }
            
            [MCoolFishBlock accountRegister_MMMethodMMM:self.delegate view_MMMethodMMM:self areaCode_MMMethodMMM:@"" name:accountName password_MMMethodMMM:pwd phoneNum_MMMethodMMM:@"" vfCode_MMMethodMMM:@""];
            
        }
            break;
            
        default:
            break;
    }
}

@end
