
#import "CHMXTTWithView.h"
#import "CHMXTTServiceTermsView.h"
#import "SdkHeader.h"
#import "CHMXTTStringView.h"
#import "CHMXTTRameworkUserButton.h"
#import "CHMXTTHourCell.h"
#import "CHMXTTCore.h"
#import "YYModel.h"
#import "AccountModel.h"
#import "CHMXTTRegister.h"
#import "CHMXTTLocal.h"
#import "CHMXTTChangeTimer.h"
#import "CHMXTTHelperButton.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import "CHMXTTErvice.h"
#import "CHMXTTEncodingLineView.h"
#import "CHMXTTNewsView.h"
#import "CHMXTTModeUtilView.h"
#import "CHMXTTAccount.h"
#import "CHMXTTGamaCore.h"
#import "CHMXTTHeaderLoggerView.h"

@interface CHMXTTWithView()


@property(nonatomic, copy)NSString *  window_dvString;
@property(nonatomic, assign)double  create_offset;


@end

@implementation CHMXTTWithView
{
    CHMXTTServiceTermsView *accountSDKTextFiledView;

    UIButton *accountLoginBtn;
  
    
    UITableView *accountListTableView;
    NSMutableArray<AccountModel *>  *accountDataList;
    
    BOOL isSaveAccountInfo;
    
    UIButton *checkBoxTermsBtn;
    
    CHMXTTErvice *gamaAppleLogin;
    
    CHMXTTStringView *mLoginTitleView;
    
    AccountModel *currentAccountModel;
    CHMXTTModeUtilView *accountListView;
    
    UIButton *swithAccountBtn_2;
    UIButton *update_change_btn;
    UIButton *swithAccountBtn;
    
    UIView *deleteAccountConfireView;
    
    CHMXTTHeaderLoggerView *accountMaskView;
    
    BOOL isAgree;
}

-(UIScrollView *)resFieldsPushPlainScopesAssignScrollView:(NSString *)readerToast register_6qKey:(long)register_6qKey format:(Boolean)format {
     UIImageView * passwordModel = [[UIImageView alloc] initWithFrame:CGRectZero];
     NSString * engineButton = @"triumph";
     double purchase = 5973.0;
    UIScrollView * cattleAutobiography = [UIScrollView new];
    cattleAutobiography.showsHorizontalScrollIndicator = NO;
    cattleAutobiography.delegate = nil;
    cattleAutobiography.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    cattleAutobiography.alwaysBounceVertical = YES;
    cattleAutobiography.alwaysBounceHorizontal = YES;
    cattleAutobiography.showsVerticalScrollIndicator = YES;
    cattleAutobiography.alpha = 0.6;
    cattleAutobiography.backgroundColor = [UIColor colorWithRed:48 / 255.0 green:36 / 255.0 blue:6 / 255.0 alpha:1.0];
    cattleAutobiography.frame = CGRectMake(226, 236, 0, 0);
    passwordModel.backgroundColor = [UIColor colorWithRed:23 / 255.0 green:203 / 255.0 blue:208 / 255.0 alpha:0.8];
    passwordModel.alpha = 0.3;
    passwordModel.frame = CGRectMake(261, 245, 0, 0);
    passwordModel.animationRepeatCount = 10;
    passwordModel.image = [UIImage imageNamed:@"efault"];
    passwordModel.contentMode = UIViewContentModeScaleAspectFit;
    
    CGRect passwordModelFrame = passwordModel.frame;
    passwordModelFrame.size = CGSizeMake(78, 241);
    passwordModel.frame = passwordModelFrame;
    if (passwordModel.alpha > 0.0) {
         passwordModel.alpha = 0.0;
    }
    if (passwordModel.isHidden) {
         passwordModel.hidden = false;
    }
    if (!passwordModel.isUserInteractionEnabled) {
         passwordModel.userInteractionEnabled = true;
    }

    [cattleAutobiography addSubview:passwordModel];
         int temp_g_3 = (int)purchase;
     if (temp_g_3 < 953) {
          }
     else if (temp_g_3 < 700) {
          temp_g_3 += 4;
     
     }
     else if (temp_g_3 != 413) {
     
     }

    
    CGRect cattleAutobiographyFrame = cattleAutobiography.frame;
    cattleAutobiographyFrame.size = CGSizeMake(105, 286);
    cattleAutobiography.frame = cattleAutobiographyFrame;
    if (cattleAutobiography.alpha > 0.0) {
         cattleAutobiography.alpha = 0.0;
    }
    if (cattleAutobiography.isHidden) {
         cattleAutobiography.hidden = false;
    }
    if (!cattleAutobiography.isUserInteractionEnabled) {
         cattleAutobiography.userInteractionEnabled = true;
    }

    return cattleAutobiography;

}







- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

   self.window_dvString = @"iterate";

   self.create_offset = 6333.0;

   self.local_yh = 8268;

   self.rate_max = 1477.0;

         {
UIScrollView * adjunctInterest = [self resFieldsPushPlainScopesAssignScrollView:@"marrow" register_6qKey:6417 format:YES];

      int adjunctInterest_tag = adjunctInterest.tag;
     int p_95 = (int)adjunctInterest_tag;
     int j_97 = 0;
     int w_31 = 1;
     if (p_95 > w_31) {
         p_95 = w_31;

     }
     for (int u_61 = 1; u_61 <= p_95; u_61++) {
         j_97 += u_61;
     int r_83 = j_97;
          switch (r_83) {
          case 91: {
          r_83 += 25;
          r_83 += 88;
             break;

     }
          case 92: {
          r_83 *= 70;
          r_83 /= 48;
             break;

     }
          case 88: {
          r_83 /= 47;
                  break;

     }
          case 90: {
          r_83 /= 86;
             break;

     }
     default:
         break;

     }
         break;

     }
      [self addSubview: adjunctInterest];


}

   self.framework_margin = 3004.0;

    switch (sender.tag) {
                    
        case kBindAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kBindAccountActTag);
            if (!currentAccountModel) {
                [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];
        {
            NSDictionary * plistI = [NSDictionary dictionaryWithObjectsAndKeys:@"validate",@(767), nil];
             if (plistI.count > 104) {}
        }
                return;
            }
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_BIND_ACCOUNT from_MMMethodMMM:CURRENT_PAGE_TYPE_WELCOME_BACK param_MMMethodMMM:currentAccountModel];
            }
            break;
            
            
        case kChangePwdActTag:
            SDK_LOG(wwwww_tag_wwwww_kChangePwdActTag);
            if (!currentAccountModel) {
                [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];
        {
            double styleS = 8212.0;
             while (@(styleS).integerValue == 125) { break; }
        }
                return;
            }
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_CHANGE_PWD from_MMMethodMMM:(CURRENT_PAGE_TYPE_WELCOME_BACK) param_MMMethodMMM:currentAccountModel];
            }
            break;
        
        case kGoGameActTag:
            SDK_LOG(wwwww_tag_wwwww_kGoGameActTag);
        {
            NSArray * alertM = [NSArray arrayWithObjects:@(595), @(557), @(29), nil];
        }
            [self goGame_MMMethodMMM];
        {
            double screenT = 4373.0;
             for(int screenT_idx = 0; screenT_idx < @(screenT).intValue; screenT_idx += 10) { break; } 
        }
            break;
            
        case kSwitchAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kSwitchAccountActTag);
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_LOGIN_WITH_REG from_MMMethodMMM:(CURRENT_PAGE_TYPE_WELCOME_BACK) param_MMMethodMMM:@(0)];
            }
            break;
        case kSureDeleteAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kSureDeleteAccountActTag);
        {
            NSArray * pushf = [NSArray arrayWithObjects:@(608), @(378), nil];
             while (pushf.count > 47) { break; }
        }
            [self doDeleteAccount_MMMethodMMM];
        {
            int service_ = 480;
             if (@(service_).doubleValue > 114) {}
        }
            break;
        case kCancelDeleteAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kCancelDeleteAccountActTag);
        {
            NSString * layoutr = @"underestimate";
        }
            [deleteAccountConfireView removeFromSuperview];
        {
            float payment_9f = 230.0;
             while (@(payment_9f).integerValue < 120) { break; }
        }
            break;
        default:
            break;
    }
    
}

-(NSString *)bundleBottomSin:(Boolean)header main_q:(NSArray *)main_q {
     double password = 167.0;
    NSMutableString *archipelagoInnovative = [NSMutableString new];
         int temp_s_65 = (int)password;
     int g_6 = 1;
     int a_57 = 0;
     if (temp_s_65 > a_57) {
         temp_s_65 = a_57;
     }
     while (g_6 <= temp_s_65) {
         g_6 += 1;
          temp_s_65 -= g_6;
          temp_s_65 += 90;
         break;
     }

    return archipelagoInnovative;

}






- (void)doDeleteAccount_MMMethodMMM {

         {
NSString * sunrisePanoramic = [self bundleBottomSin:NO main_q:@[@(975), @(287), @(773)]];

      int sunrisePanoramic_len = sunrisePanoramic.length;
     int _c_48 = (int)sunrisePanoramic_len;
     switch (_c_48) {
          case 47: {
          _c_48 -= 27;
          int a_13 = 0;
     for (int t_14 = _c_48; t_14 >= _c_48 - 1; t_14--) {
         a_13 += t_14;
          if (t_14 > 0) {
          _c_48 +=  t_14;

     }
     int j_77 = a_13;
          if (j_77 > 177) {
          j_77 /= 97;
          j_77 += 66;
     }
         break;

     }
             break;

     }
          case 51: {
          _c_48 *= 73;
             break;

     }
          case 35: {
          _c_48 *= 9;
          int k_68 = 0;
     int x_50 = 0;
     if (_c_48 > x_50) {
         _c_48 = x_50;

     }
     for (int d_23 = 1; d_23 < _c_48; d_23++) {
         k_68 += d_23;
     int e_22 = k_68;
          if (e_22 <= 900) {
          e_22 -= 31;
          e_22 *= 47;
     }
         break;

     }
             break;

     }
          case 67: {
          int j_29 = 0;
     int b_9 = 0;
     if (_c_48 > b_9) {
         _c_48 = b_9;

     }
     for (int i_10 = 0; i_10 <= _c_48; i_10++) {
         j_29 += i_10;
          if (i_10 > 0) {
          _c_48 -=  i_10;

     }
     int j_25 = j_29;
              break;

     }
             break;

     }
          case 84: {
          int n_82 = 0;
     for (int m_30 = _c_48; m_30 > _c_48 - 1; m_30--) {
         n_82 += m_30;
          if (m_30 > 0) {
          _c_48 +=  m_30;

     }
     int x_81 = n_82;
              break;

     }
             break;

     }
          case 4: {
          if (_c_48 == 214) {
          }
     else {
          _c_48 += 98;
     
     }
             break;

     }
          case 30: {
          int d_43 = 1;
     int b_3 = 0;
     if (_c_48 > b_3) {
         _c_48 = b_3;
     }
     while (d_43 < _c_48) {
         d_43 += 1;
          _c_48 -= d_43;
         break;
     }
             break;

     }
          case 68: {
          _c_48 /= 61;
          _c_48 /= 10;
             break;

     }
          case 38: {
          if (_c_48 == 309) {
          _c_48 *= 38;
          _c_48 -= 45;
     }
             break;

     }
          case 46: {
          if (_c_48 < 823) {
          _c_48 /= 41;
          }
             break;

     }
     default:
         break;

     }
      if ([sunrisePanoramic isEqualToString:@"preferred"]) {
              NSLog(@"%@",sunrisePanoramic);
      }


}

    [CHMXTTAccount deleteAccountAndRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self account_MMMethodMMM:currentAccountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^{
        [deleteAccountConfireView removeFromSuperview];
        NSArray<AccountModel *> *mAccountArray = [[CHMXTTEfault share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            currentAccountModel = mAccountArray[0];
            
            [accountDataList removeAllObjects];
            NSInteger errorN = 8448;
             while (@(errorN).intValue <= 22) { break; }
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [CHMXTTNewsView makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: nil];
            
            [self setViewStatue_MMMethodMMM];
            
        }else{
            
            currentAccountModel = nil;
            if (self.delegate) {
                
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_LOGIN_WITH_REG from_MMMethodMMM:CURRENT_PAGE_TYPE_WELCOME_BACK param_MMMethodMMM:nil];
            }
            
        }
        
    }];
            Boolean handle_ = NO;
             if (handle_) { __asm__("NOP"); }
}


- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
    
        
        mLoginTitleView = [[CHMXTTStringView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_text_welcome_back) hander_MMMethodMMM:^(NSInteger) {
            
        }];
            NSString * board5 = @"shawl";
             if ([board5 isEqualToString:@"P"]) {}
        mLoginTitleView.backBtn.hidden = YES;
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            
            make.leading.trailing.mas_equalTo(self);
            NSInteger findz = 1747;
             while (@(findz).longValue <= 88) { break; }
            make.height.mas_equalTo(VH(40));
            double delete_t1R = 6747.0;
             while (@(delete_t1R).doubleValue <= 164) { break; }
        }];
        
        
        accountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSString * regular8 = @"adolescent";
        accountSDKTextFiledView.inputUITextField.enabled = NO;
            Boolean interruptC = NO;
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));;
            float filedh = 6727.0;
             while (@(filedh).intValue > 108) { break; }
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            double r_count4 = 5202.0;
             if (@(r_count4).doubleValue <= 155) {}
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            NSString * appendB = @"heart";
            make.height.mas_equalTo(VH(40));
            double encrypto = 1447.0;
             while (@(encrypto).integerValue > 156) { break; }
        }];
        
        
        
        
        
        
       
        
        accountLoginBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_go_game) fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kGoGameActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [accountLoginBtn.layer setCornerRadius:VH(25)];
            NSDictionary * colorb = @{@"invisible":@(848)};
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F94925];
            NSDictionary * indicatory = [NSDictionary dictionaryWithObjectsAndKeys:@"J",@"E", @"x",@"j", @"3",@"F", nil];
             while (indicatory.count > 161) { break; }
        [self addSubview:accountLoginBtn];
        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            NSDictionary * perssions = [NSDictionary dictionaryWithObjectsAndKeys:@"innovative",@(773), @"stigma",@(290), nil];
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(42));
            NSArray * sdki = [NSArray arrayWithObjects:@(11), @(364), @(317), nil];
             if (sdki.count > 116) {}
            make.height.mas_equalTo(VH(50));
            double purchaseX = 3899.0;
             while (@(purchaseX).longLongValue < 3) { break; }
        }];
        
        swithAccountBtn_2 = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_switch_account) fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kSwitchAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [swithAccountBtn_2.layer setCornerRadius:VH(20)];
            NSDictionary * impv = [NSDictionary dictionaryWithObjectsAndKeys:@"overwrought",@(555), @"cumulative",@(596), @"anticipatory",@(588), nil];
             while (impv.count > 115) { break; }
        swithAccountBtn_2.layer.borderColor = [UIColor whiteColor].CGColor;
            NSString * keychainx = @"security";
             if ([keychainx isEqualToString:@"t"]) {}
        swithAccountBtn_2.layer.borderWidth = 1;
            int delegate_3J = 1103;
             while (@(delegate_3J).floatValue <= 52) { break; }
        [self addSubview:swithAccountBtn_2];
        
        [swithAccountBtn_2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            NSInteger reseti = 2742;
             while (@(reseti).floatValue < 14) { break; }
            make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(15));
            NSDictionary * callD = [NSDictionary dictionaryWithObjectsAndKeys:@"audible",@(4084), nil];
             while (callD.count > 39) { break; }
            make.height.mas_equalTo(VH(40));
        
        }];
        
        update_change_btn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_update_account_bind) fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kBindAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [update_change_btn.layer setCornerRadius:VH(20)];
            NSArray * local_pD = [NSArray arrayWithObjects:@(466), nil];
             while (local_pD.count > 26) { break; }
        update_change_btn.layer.borderColor = [UIColor whiteColor].CGColor;
            NSArray * commoni = @[@(784), @(324), @(171)];
             while (commoni.count > 13) { break; }
        update_change_btn.layer.borderWidth = 1;
            NSArray * loggern = [NSArray arrayWithObjects:@(467), @(465), @(987), nil];
             if (loggern.count > 69) {}
        [self addSubview:update_change_btn];
        
        [update_change_btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
            double sections5 = 9110.0;
             if (@(sections5).doubleValue >= 138) {}
            make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(15));
            NSArray * impF = [NSArray arrayWithObjects:@(746), @(877), @(282), nil];
             while (impF.count > 115) { break; }
            make.height.mas_equalTo(VH(40));
            make.width.mas_equalTo(VW(140));
            NSInteger implm = 975;
             if (@(implm).integerValue > 48) {}
        }];
        
        swithAccountBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_switch_account) fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kSwitchAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [swithAccountBtn.layer setCornerRadius:VH(20)];
            float levele = 8594.0;
             if (@(levele).doubleValue > 14) {}
        swithAccountBtn.layer.borderColor = [UIColor whiteColor].CGColor;
        swithAccountBtn.layer.borderWidth = 1;
            NSDictionary * readerI = @{@"temporary":@(682), @"crossroads":@(191), @"parka":@(917)};
             while (readerI.count > 189) { break; }
        [self addSubview:swithAccountBtn];
        
        [swithAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            float failG = 9551.0;
             if (@(failG).longLongValue == 124) {}
            make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(15));
            NSString * gamec = @"betroth";
             while (gamec.length > 109) { break; }
            make.height.mas_equalTo(VH(40));
            float ninit_yX = 9244.0;
             while (@(ninit_yX).integerValue <= 117) { break; }
            make.width.mas_equalTo(VW(140));
            double freeG = 7226.0;
             for(int freeG_idx = 0; freeG_idx < @(freeG).intValue; freeG_idx++) { break; } 
        }];
        
        ConfigModel *http = SDK_DATA.mConfigModel;
        if (http.deleteAccount) {
            [self addDeleteAccountView_MMMethodMMM];
        }
        
        
        isSaveAccountInfo = YES;
            NSArray * saveQ = [NSArray arrayWithObjects:@(5072.0), nil];
             if (saveQ.count > 131) {}
        accountDataList = [NSMutableArray array];
        
        NSArray<AccountModel *> *mAccountArray = [[CHMXTTEfault share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            currentAccountModel = mAccountArray[0];
            
            [accountDataList removeAllObjects];
            double failk = 7523.0;
             while (@(failk).doubleValue <= 29) { break; }
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [CHMXTTNewsView makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: nil];
            
            [self setViewStatue_MMMethodMMM];
            
        }
    
        
        
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            
            if (accountMaskView && accountListView) {
                
                
                if (accountMaskView.isHidden) {
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = YES;
            NSDictionary * pay_pot = [NSDictionary dictionaryWithObjectsAndKeys:@"coal",@(557), nil];
             while (pay_pot.count > 190) { break; }
                    accountMaskView.hidden = NO;
            NSDictionary * timesO = [NSDictionary dictionaryWithObjectsAndKeys:@"durability",@(688), @"menthol",@(874), @"quarter",@(472), nil];
             while (timesO.count > 191) { break; }
                    NSArray *gamej = [[CHMXTTEfault share] getAccountModels_MMMethodMMM];
            int blockV = 8788;
             if (@(blockV).floatValue > 57) {}
                    [accountDataList removeAllObjects];
            NSArray * phone3 = @[@(562), @(823)];
                    [accountDataList addObjectsFromArray:gamej];
            NSDictionary * loginA = @{@"coda":@(620)};
             if (loginA.count > 173) {}
                    accountListView.accountDataList = accountDataList;
            NSString * statueP = @"jump";
                    [accountListView.accountListTableView reloadData];
                    
                }else{
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = NO;
            NSString * stringJ = @"minor";
             while (stringJ.length > 68) { break; }
                    accountMaskView.hidden = YES;
                    
                }
                
            }else{
                accountSDKTextFiledView.moreAccountBtn.selected = YES;
            NSDictionary * orderG = @{@"corral":@[@(509), @(84), @(227)]};
             while (orderG.count > 103) { break; }
                [self addAccountListView_MMMethodMMM];
            NSInteger gamav = 2379;
             while (@(gamav).longValue >= 85) { break; }
                NSArray *gamej = [[CHMXTTEfault share] getAccountModels_MMMethodMMM];
            NSDictionary * levelp = [NSDictionary dictionaryWithObjectsAndKeys:@"bask",@(124), nil];
             if (levelp.count > 56) {}
                [accountDataList removeAllObjects];
            Boolean queue5 = NO;
                [accountDataList addObjectsFromArray:gamej];
            NSString * vipk = @"commemorate";
             while (vipk.length > 93) { break; }
                accountListView.accountDataList = accountDataList;
            NSArray * cliento = @[@(629), @(14)];
                [accountListView.accountListTableView reloadData];
            }
        };
    }
    return self;
}

-(double)tintEncodeAdvertiserOrigin:(long)urls {
     double self_xsArea = 2219.0;
     double beganRole = 3300.0;
    double dormancyReckon = 0;
    self_xsArea = 8364;
    dormancyReckon /= MAX(self_xsArea, 1);
         int temp_b_0 = (int)self_xsArea;
     temp_b_0 -= 72;
    beganRole /= 20;
    dormancyReckon += beganRole;
         int temp_p_35 = (int)beganRole;
     temp_p_35 += 15;

    return dormancyReckon;

}







-(void)addAccountListView_MMMethodMMM{

         {
double tripodRespectively = [self tintEncodeAdvertiserOrigin:4168];

      if (tripodRespectively < 76) {
             NSLog(@"%f",tripodRespectively);
      }
     int temp_b_22 = (int)tripodRespectively;
     int x_99 = 1;
     int u_77 = 0;
     if (temp_b_22 > u_77) {
         temp_b_22 = u_77;
     }
     while (x_99 <= temp_b_22) {
         x_99 += 1;
          temp_b_22 /= x_99;
          temp_b_22 += 71;
         break;
     }


}

    
    accountMaskView = [[CHMXTTHeaderLoggerView alloc] init];
    accountMaskView.touchesBeganCallback = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        if (!accountMaskView.isHidden) {
            
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            NSDictionary * aracS = [NSDictionary dictionaryWithObjectsAndKeys:@"obligatory",@(540), @"perplex",@(997), @"bachelor",@(957), nil];
             while (aracS.count > 5) { break; }
            accountMaskView.hidden = YES;
        }
        
    };
            NSString * userdefaultC = @"some";
             while (userdefaultC.length > 135) { break; }
    UIView * orientationsView = self.superview.superview;
    
    [orientationsView addSubview:accountMaskView];
    [accountMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(orientationsView);
            NSArray * keychainm = [NSArray arrayWithObjects:@(191), @(815), @(950), nil];
             while (keychainm.count > 84) { break; }
    }];
    
    accountListView = [[CHMXTTModeUtilView alloc] init];
            NSDictionary * infom = [NSDictionary dictionaryWithObjectsAndKeys:@"legion",@(471), @"otherdirected",@(706), nil];
             while (infom.count > 116) { break; }
    accountListView.layer.cornerRadius = 2.5f;
            NSArray * homec = [NSArray arrayWithObjects:@(402), @(738), nil];
    accountListView.layer.masksToBounds = YES;
            NSString * noticeG = @"retention";
             if (noticeG.length > 169) {}
    [accountMaskView addSubview:accountListView];
    [accountListView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            NSDictionary * gestureE = @{@"creative":@(497)};
             if (gestureE.count > 69) {}
        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            NSDictionary * areaY = [NSDictionary dictionaryWithObjectsAndKeys:@"hoop",@(848), @"ashamed",@(147), @"elephantine",@(296), nil];
             if (areaY[@"o"]) {}
        make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(4);
            NSString * resetupf = @"leisureliness";
             while (resetupf.length > 99) { break; }
        make.height.mas_equalTo(VH(200));
        
        
    }];
    kBlockSelf
    kWeakSelf
    accountListView.mAccountModelClickHander = ^(BOOL isDelete, AccountModel * _Nullable aModel, NSMutableArray<AccountModel *> *list) {
        
        if (isDelete) {
            
            if (accountDataList.count > 0) {
                currentAccountModel = accountDataList[0];
                
    
    
                
                [CHMXTTNewsView makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: nil];
            }else{
                currentAccountModel = nil;
            NSString * size_vU = @"aisle";
             if ([size_vU isEqualToString:@"I"]) {}
                [accountMaskView removeFromSuperview];
            NSArray * btnC = @[@(636), @(263), @(990)];
             if (btnC.count > 35) {}
                accountMaskView = nil;
            NSDictionary * type_yhG = @{@"fathomless":[NSArray arrayWithObjects:@(922), @(631), nil]};
             while (type_yhG.count > 159) { break; }
                accountListView = nil;
                
                if (self.delegate) {
                    
                    [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_LOGIN_WITH_REG from_MMMethodMMM:CURRENT_PAGE_TYPE_WELCOME_BACK param_MMMethodMMM:nil];
                }
                
            }
            
            
        }else{
            blockSelf->currentAccountModel = aModel;
            blockSelf->accountSDKTextFiledView.moreAccountBtn.selected = NO;
            NSArray * window_xO = [NSArray arrayWithObjects:@"provocative", @"ultimate", @"blustering", nil];
             while (window_xO.count > 172) { break; }
            accountMaskView.hidden = YES;
            [CHMXTTNewsView makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:blockSelf->accountSDKTextFiledView pwdView_MMMethodMMM:nil];
            Boolean rameworkv = NO;
             while (rameworkv) { __asm__("NOP"); break; }
            [weakSelf setViewStatue_MMMethodMMM];
        }
        
    };
            double webI = 3716.0;
             if (@(webI).longLongValue <= 97) {}
}

-(NSDictionary *)customNativeAlerAct:(double)binding vnewsAuto_ts:(NSString *)vnewsAuto_ts {
    NSMutableDictionary * headlong = [NSMutableDictionary dictionaryWithObject:@(797)forKey:@"chanteyRecentlyPosterior"];

    return headlong;

}







-(UIView *)addDeleteAccountConfireView_MMMethodMMM
{

         {
NSDictionary * equator = [self customNativeAlerAct:8765.0 vnewsAuto_ts:@"caper"];

      int equator_len = equator.count;
     int v_97 = (int)equator_len;
     if (v_97 < 968) {
          switch (v_97) {
          case 89: {
          v_97 -= 26;
             break;

     }
          case 98: {
          v_97 += 83;
          v_97 -= 73;
             break;

     }
          case 33: {
          v_97 -= 53;
             break;

     }
          case 78: {
          v_97 /= 55;
                  break;

     }
          case 6: {
          v_97 /= 28;
          v_97 *= 42;
             break;

     }
          case 26: {
          v_97 -= 39;
          v_97 *= 88;
             break;

     }
          case 52: {
                  break;

     }
          case 45: {
                  break;

     }
          case 55: {
          v_97 -= 33;
             break;

     }
          case 37: {
          if (v_97 >= 376) {
          v_97 /= 55;
     }
             break;

     }
     default:
         break;

     }
     }
      [equator enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"elegate"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];


}

    
    if (deleteAccountConfireView) {
        [deleteAccountConfireView removeFromSuperview];
    }
    
    UIView *editingView = [[UIView alloc] init];
            double expressionZ = 9707.0;
             for(NSInteger expressionZ_idx = 97; expressionZ_idx < @(expressionZ).intValue; expressionZ_idx--) { break; } 
    editingView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.85];
            NSInteger willq = 5039;
             for(NSInteger willq_idx = 0; willq_idx < @(willq).intValue; willq_idx += 7) { break; } 
    editingView.layer.cornerRadius = VW(10);
    
    [self addSubview:editingView];
    
    [editingView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
            NSString * serviceC = @"irrelevant";
             while (serviceC.length > 14) { break; }
        make.width.mas_equalTo(VW(272));
            NSDictionary * reloadx = [NSDictionary dictionaryWithObjectsAndKeys:@"junction",@(2148.0), nil];
             while (reloadx.count > 89) { break; }
    }];
    
    UIImageView *genericView = [CHMXTTLoginChange initImageViewWithImage_MMMethodMMM:nend_update_account_bg];
            NSDictionary * httpk = [NSDictionary dictionaryWithObjectsAndKeys:@"zipcode",@(454), @"chronological",@(160), @"singe",@(184), nil];
    [editingView addSubview:genericView];
    [genericView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(editingView).mas_offset(VH(12));
            float jsonA = 3248.0;
             while (@(jsonA).floatValue <= 27) { break; }
        make.centerX.equalTo(self);
            NSString * gestureh = @"whit";
        make.height.width.mas_equalTo(VW(25));
            NSDictionary * filedN = [NSDictionary dictionaryWithObjectsAndKeys:@"great",@(13), nil];
             if (filedN[@"G"]) {}
    }];
    
    UILabel *radiusLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account_tips) fontSize_MMMethodMMM:FS(13) textColor_MMMethodMMM:[UIColor whiteColor]];
            NSDictionary * levelF = @{@"homogenize":@(227), @"stymie":@(377)};
             while (levelF.count > 151) { break; }
    [editingView addSubview:radiusLabel];
            NSArray * bindI = @[@(920), @(883), @(145)];
             while (bindI.count > 125) { break; }
    radiusLabel.numberOfLines = 0;
    [radiusLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(genericView.mas_bottom).mas_offset(VH(10));
            NSDictionary * responseB = @{@"complacency":@(762), @"synergic":@(237)};
        make.leading.mas_equalTo(editingView).mas_offset(VW(14));
            NSDictionary * accont_ = [NSDictionary dictionaryWithObjectsAndKeys:@"longitude",@(607), nil];
             if (accont_.count > 90) {}
        make.trailing.mas_equalTo(editingView).mas_offset(VW(-14));
            NSArray * cell2 = @[@(335), @(540), @(20)];
             if (cell2.count > 81) {}
    }];
    
    UIButton *projectBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_cancel) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kCancelDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            double handerI = 6541.0;
             for(NSInteger handerI_idx = 0; handerI_idx < @(handerI).intValue; handerI_idx += 6) { break; } 
    projectBtn.layer.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F23B12].CGColor;
            NSArray * prefersD = [NSArray arrayWithObjects:@"positiveness", @"dogma", @"horizon", nil];
             while (prefersD.count > 90) { break; }
    projectBtn.layer.cornerRadius = VW(16);
            float statusa = 4135.0;
             if (@(statusa).floatValue < 164) {}
    [editingView addSubview:projectBtn];
    [projectBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(radiusLabel.mas_bottom).mas_offset(VH(18));
            NSDictionary * faile = [NSDictionary dictionaryWithObjectsAndKeys:@"despoil",@(940), @"norm",@(309), nil];
             if (faile.count > 31) {}
        make.bottom.mas_equalTo(editingView).mas_offset(VH(-18));
            double systeme = 3015.0;
             if (@(systeme).intValue < 70) {}
        make.height.mas_equalTo(VW(32));
            Boolean localxE = YES;
             while (!localxE) { __asm__("NOP"); break; }
        make.width.mas_equalTo(VW(108));
            Boolean uploadT = YES;
             if (uploadT) { __asm__("NOP"); }
        make.trailing.mas_equalTo(editingView.mas_centerX).mas_offset(VW(-11));
            NSString * become0 = @"nethermost";
             if ([become0 isEqualToString:@"Y"]) {}
    }];
    
    UIButton *totalBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kSureDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            double wrapperS = 842.0;
             if (@(wrapperS).intValue < 184) {}
    totalBtn.layer.cornerRadius = VW(16);
            double phoneO = 2010.0;
             for(int phoneO_idx = 97; phoneO_idx < @(phoneO).intValue; phoneO_idx--) { break; } 
    totalBtn.layer.borderColor = [UIColor whiteColor].CGColor;
            int messaged = 2531;
             if (@(messaged).intValue == 64) {}
    totalBtn.layer.borderWidth = 1;
    
    [editingView addSubview:totalBtn];
    [totalBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(projectBtn);
            float modity0 = 194.0;
             if (@(modity0).intValue < 16) {}
        make.bottom.mas_equalTo(projectBtn);
            NSArray * configuratorP = [NSArray arrayWithObjects:@(613), @(223), nil];
             if ([configuratorP containsObject:@"2"]) {}
        make.width.mas_equalTo(projectBtn);
            NSArray * generic3 = [NSArray arrayWithObjects:@(248), @(13), nil];
             while (generic3.count > 32) { break; }
        make.leading.mas_equalTo(editingView.mas_centerX).mas_offset(VW(11));
            NSString * array4 = @"optimum";
             if (array4.length > 127) {}
    }];
    
    deleteAccountConfireView = editingView;
            NSString * expressionR = @"hangdog";
             while (expressionR.length > 137) { break; }
    return deleteAccountConfireView;
    
}

-(Boolean)hashPlainDequeueEsclipeWrappingCompleted:(double)dateCreate serverScript:(NSString *)serverScript {
     double serverBolck = 4956.0;
    BOOL stigmatizeCreditworthinessStripe = NO;
    serverBolck *= serverBolck;
    stigmatizeCreditworthinessStripe = serverBolck > 3;
         int v_38 = (int)serverBolck;
     int t_2 = 0;
     int q_19 = 1;
     if (v_38 > q_19) {
         v_38 = q_19;

     }
     for (int l_6 = 1; l_6 <= v_38; l_6++) {
         t_2 += l_6;
     int c_83 = t_2;
          int i_31 = 0;
     int j_62 = 1;
     if (c_83 > j_62) {
         c_83 = j_62;

     }
     for (int h_69 = 1; h_69 <= c_83; h_69++) {
         i_31 += h_69;
          if (h_69 > 0) {
          c_83 -=  h_69;

     }
     int f_64 = i_31;
          switch (f_64) {
          case 32: {
          f_64 += 6;
             break;

     }
          case 70: {
          f_64 /= 33;
                  break;

     }
          case 13: {
                  break;

     }
          case 88: {
          f_64 /= 86;
                  break;

     }
          case 19: {
                  break;

     }
          case 27: {
          f_64 /= 61;
             break;

     }
     default:
         break;

     }
         break;

     }
         break;

     }

    return stigmatizeCreditworthinessStripe;

}






-(void)goGame_MMMethodMMM
{

         {
Boolean senderTree = [self hashPlainDequeueEsclipeWrappingCompleted:520.0 serverScript:@"prophetic"];

      if (senderTree) {
          NSLog(@"ok");
      }


}

    if (!currentAccountModel) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];
            double blockS = 1028.0;
             while (@(blockS).intValue > 168) { break; }
        return;
    }
    if ([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
       
        [CHMXTTAccount selfLoginAndRequest_MMMethodMMM:self.delegate account_MMMethodMMM:currentAccountModel.account pwd_MMMethodMMM:currentAccountModel.password];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]) {
        
        [CHMXTTAccount fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]) {
        
        [CHMXTTAccount appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]) {
        
        [CHMXTTAccount guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]) {
        
        [CHMXTTAccount googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]) {
        [CHMXTTAccount lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
    }
}

-(NSString *)centerArchaeSeparatorForceOrientation:(NSInteger)third btnServer:(NSDictionary *)btnServer {
     float loginList = 2295.0;
    NSString *biographerHereticalUnderstate = [NSString new];
         int _l_10 = (int)loginList;
     int k_34 = 1;
     int f_54 = 0;
     if (_l_10 > f_54) {
         _l_10 = f_54;
     }
     while (k_34 < _l_10) {
         k_34 += 1;
     int e_99 = k_34;
          switch (e_99) {
          case 8: {
          e_99 += 73;
             break;

     }
          case 57: {
          e_99 *= 23;
             break;

     }
     default:
         break;

     }
         break;
     }

    return biographerHereticalUnderstate;

}







-(void)addDeleteAccountView_MMMethodMMM
{

    UIView *editingViewJ = [[UIView alloc] init];
            NSArray * clickE = @[@(176), @(480), @(663)];

         {
NSString * lexicon = [self centerArchaeSeparatorForceOrientation:4976 btnServer:@{@"impotent":@(592), @"drizzly":@(725)}];

      int lexicon_len = lexicon.length;
     int temp_w_12 = (int)lexicon_len;
     int y_30 = 0;
     int v_69 = 1;
     if (temp_w_12 > v_69) {
         temp_w_12 = v_69;

     }
     for (int e_65 = 0; e_65 <= temp_w_12; e_65++) {
         y_30 += e_65;
          temp_w_12 *= e_65;
         break;

     }
      if ([lexicon isEqualToString:@"orientation"]) {
              NSLog(@"%@",lexicon);
      }


}
             if ([clickE containsObject:@"Y"]) {}
    editingViewJ.backgroundColor = UIColor.whiteColor;
            NSDictionary * bindingq = [NSDictionary dictionaryWithObjectsAndKeys:@"berry",@(34), @"terminable",@(627), nil];
             if (bindingq[@"q"]) {}
    editingViewJ.layer.cornerRadius = VW(14);
    
    [self addSubview:editingViewJ];
    
    [editingViewJ mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self.mas_bottom).mas_offset(VH(-15));
            double main_iW = 2760.0;
             if (@(main_iW).intValue >= 67) {}
        make.centerX.equalTo(self);
            NSDictionary * noticeO = @{@"artful":@(339)};
             if (noticeO[@"2"]) {}
    }];
    
    UIImageView *dictionaryView = [CHMXTTLoginChange initImageViewWithImage_MMMethodMMM:mw_delete_icon];
            NSArray * file0 = @[@[@(64), @(732), @(500)]];
    [editingViewJ addSubview:dictionaryView];
    [dictionaryView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(editingViewJ).mas_offset(VW(13));
            NSInteger accessw = 9439;
             while (@(accessw).longValue == 110) { break; }
        make.top.mas_equalTo(editingViewJ).mas_offset(VW(6));
            NSArray * modityq = @[@(542), @(310), @(490)];
             while (modityq.count > 151) { break; }
        make.bottom.mas_equalTo(editingViewJ).mas_offset(VW(-6));
            NSArray * errorQ = @[@(8911)];
             if (errorQ.count > 108) {}
        make.centerY.equalTo(editingViewJ);
        make.width.height.mas_equalTo(VW(16));
            NSDictionary * bolckI = @{@"grindstone":@(989), @"affliction":@(273), @"warranted":@(511)};
    }];
    
    UILabel *actionLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor blackColor]];
            float info2 = 4503.0;
             if (@(info2).floatValue < 183) {}
    [editingViewJ addSubview:actionLabel];
    [actionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(dictionaryView.mas_trailing).mas_offset(VW(6));
            NSString * maskf = @"sentiment";
             if (maskf.length > 9) {}
        make.trailing.mas_equalTo(editingViewJ).mas_offset(VW(-13));
            NSDictionary * f_titleH = [NSDictionary dictionaryWithObjectsAndKeys:@"entry",@(913), @"dose",@(817), @"holograph",@(196), nil];
             if (f_titleH.count > 71) {}
        make.centerY.equalTo(editingViewJ);
       
    }];
    
    [editingViewJ addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        [self addDeleteAccountConfireView_MMMethodMMM];
       
    }];
            NSInteger frameworkH = 6609;
             for(int frameworkH_idx = 26; frameworkH_idx < @(frameworkH).intValue; frameworkH_idx -= 2) { break; } 
}

-(NSArray *)roleSdlAbsoluteYearEmailTel:(NSString *)indicatorSign {
     float messageValue = 1507.0;
    NSMutableArray * auroraWarning = [[NSMutableArray alloc] init];
    messageValue *= 38;
    [auroraWarning addObject: @(messageValue)];
         int f_81 = (int)messageValue;
     if (f_81 == 692) {
          f_81 += 85;
          f_81 *= 59;
     }

    return auroraWarning;

}








-(void)setViewStatue_MMMethodMMM
{

    SDK_LOG(wwwww_tag_wwwww_setViewStatue);
    if ([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        swithAccountBtn_2.hidden = YES;
            Boolean localizedo = NO;

         {
NSArray * musicPatronage = [self roleSdlAbsoluteYearEmailTel:@"jacket"];

      [musicPatronage enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
          if (idx >= 71) {
              NSLog(@"v_title:%@", obj);
        }
      }];
      int musicPatronage_len = musicPatronage.count;
     int f_59 = (int)musicPatronage_len;
     if (f_59 > 684) {
          }
     else {
          f_59 *= 56;
          if (f_59 <= 311) {
          f_59 += 68;
          f_59 -= 14;
     }

     }


}
        swithAccountBtn.hidden = NO;
            float beginM = 9537.0;
             if (@(beginM).intValue < 40) {}
        update_change_btn.hidden = NO;

        
        update_change_btn.tag = kChangePwdActTag;
        [update_change_btn setTitle:GetString(wwwww_tag_wwwww_py_login_page_change_pwd) forState:(UIControlStateNormal)];
        
    }else{
        
        if (currentAccountModel.isBind) {
            swithAccountBtn_2.hidden = NO;
            swithAccountBtn.hidden = YES;
            update_change_btn.hidden = YES;
        }else{
            
            swithAccountBtn_2.hidden = YES;
            Boolean rotate3 = NO;
             while (!rotate3) { __asm__("NOP"); break; }
            swithAccountBtn.hidden = NO;
            NSInteger pay_bmK = 171;
             if (@(pay_bmK).longValue < 177) {}
            update_change_btn.hidden = NO;
            
            
            update_change_btn.tag = kBindAccountActTag;
            [update_change_btn setTitle:GetString(wwwww_tag_wwwww_text_update_account_bind) forState:(UIControlStateNormal)];
        }
        
    }
    
    
}



- (void)dealloc{
    if (accountMaskView) {
        [accountMaskView removeFromSuperview];
    }
}

@end
