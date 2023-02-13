
#import "MathhalfabilityPresentView.h"
#import "SdkHeader.h"
#import "MonteasyetMorphryView.h"
#import "SitiorCentesimadView.h"
#import "GroupitiveNoxisticView.h"
#import "CertainlyitiousPhylactrepresentticButton.h"
#import "TermDiseaseid.h"
#import "ProfederalfierRepresent.h"

@implementation MathhalfabilityPresentView

{
    MonteasyetMorphryView *oldPwdSDKTextFiledView;
    MonteasyetMorphryView *newPwdSDKTextFiledView;
    MonteasyetMorphryView *againPwdSDKTextFiledView;
    
    
    
    SitiorCentesimadView   *mLoginTitleView;
    UIButton *getVfCodeBtn;
    
    
}

-(NSArray *)clipsFunctionTemptext:(float)flows {
     NSInteger sign = 4341;
    NSMutableArray * makeGuilelessness = [[NSMutableArray alloc] init];
sign = sign;
    [makeGuilelessness addObject: @(sign)];
         int j_15 = (int)sign;
     int q_28 = 0;
     for (int g_29 = j_15; g_29 > j_15 - 1; g_29--) {
         q_28 += g_29;
          if (g_29 > 0) {
          j_15 +=  g_29;

     }
              break;

     }

    return makeGuilelessness;

}






-(void)changePassword_MMMethodMMM
{

         {
NSArray * misshapen = [self clipsFunctionTemptext:6486.0];

      [misshapen enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
          if (idx >= 1) {
              NSLog(@"changeEfaultRole:%@", obj);
        }
      }];
      int misshapen_len = misshapen.count;
     int g_73 = (int)misshapen_len;
     int r_35 = 1;
     int a_71 = 0;
     if (g_73 > a_71) {
         g_73 = a_71;
     }
     while (r_35 <= g_73) {
         r_35 += 1;
          g_73 /= r_35;
     int e_35 = r_35;
          int f_30 = 0;
     for (int e_44 = e_35; e_44 > e_35 - 1; e_44--) {
         f_30 += e_44;
          if (e_44 > 0) {
          e_35 +=  e_44;

     }
     int w_56 = f_30;
              break;

     }
         break;
     }


}

    
    if (!self.fromPageParam) {
        [ProfederalfierRepresent toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];
            int passwordX = 4176;
             if (@(passwordX).intValue <= 136) {}
        return;
    }
    
    AccountModel * mAccountModel = (AccountModel *)self.fromPageParam;
            NSDictionary * ramework8 = [NSDictionary dictionaryWithObjectsAndKeys:@"hibernal",@(942), nil];
             if (ramework8[@"U"]) {}
    NSString *userName = mAccountModel.account;
    
    NSString *oldPwd = oldPwdSDKTextFiledView.inputUITextField.text;
    
    NSString *newPwd = newPwdSDKTextFiledView.inputUITextField.text;
            NSDictionary * bindK = @{@"digest":@(784), @"whose":@(672), @"windbag":@(348)};
             while (bindK.count > 70) { break; }
    NSString *againPwd = againPwdSDKTextFiledView.inputUITextField.text;
    
    if (![ProfederalfierRepresent validUserName_MMMethodMMM:userName]) {
        return;
    }
    
    if ([GeoallyKin isEmpty_MMMethodMMM:oldPwd]) {
        [ProfederalfierRepresent toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_password_empty)];
            NSDictionary * ipadx = @{@"clairvoyance":@(375)};
             while (ipadx.count > 12) { break; }
        return;
    }
 
    if (![ProfederalfierRepresent validPwd_MMMethodMMM:newPwd]) {
        return;
    }
    
    if (![ProfederalfierRepresent validPwd_MMMethodMMM:againPwd]) {
        return;
    }
    
    if (![newPwd isEqualToString:againPwd]) {
    
        [ProfederalfierRepresent toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_pwd_not_equel)];
            NSDictionary * loggerV = [NSDictionary dictionaryWithObjectsAndKeys:@"organizational",@(425), @"snow",@(484), @"operator",@(201), nil];
             if (loggerV.count > 96) {}
        return;
    }
   
    kWeakSelf
    [TermDiseaseid doChangePasswordWithUserName_MMMethodMMM:userName andOldPassword_MMMethodMMM:oldPwd andNewPassword_MMMethodMMM:newPwd otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        [ProfederalfierRepresent toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_change_pwd_success)];
        if (weakSelf.delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            NSDictionary * foot_ = [NSDictionary dictionaryWithObjectsAndKeys:@"transit",@(YES), nil];
             if (foot_.count > 192) {}
            cc.data.account = mAccountModel.account;
            int eventS = 8466;
             while (@(eventS).doubleValue > 5) { break; }
            cc.data.password = newPwd;
            NSString * maskP = @"melodrama";
             if (maskP.length > 23) {}
            cc.data.loginType = LOGIN_TYPE_SELF;
            NSString * boardK = @"water";
             if (boardK.length > 135) {}
            [weakSelf.delegate handleLoginOrRegSuccess_MMMethodMMM:cc thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
        
    } errorBlock_MMMethodMMM:^(DermencyTreatarium *error) {
        
        [RiskHalf showAlertWithMessage_MMMethodMMM:error.message];
        
    }];
    
}


- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        
        
        
        
        
        
        
        
        mLoginTitleView = [[SitiorCentesimadView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_text_change_pwd) hander_MMMethodMMM:^(NSInteger) {
            
            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_CHANGE_PWD) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_WELCOME_BACK)];
            NSInteger applet = 8736;
             if (@(applet).intValue == 57) {}
        }];
        
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            NSDictionary * controller6 = @{@"attest":@(3601)};

		//====insert my code start===
		{
		        int futureaneitypropri = 755672.15051;
        int sistaceoustaenity = 912621.093098;
        int addsive = 131485.282205;
        switch (futureaneitypropri) {
                
            case -92943:
			{
			sistaceoustaenity = addsive + (-22032 / 45301); 
		 break;
			}
			case -63703:
			{
			sistaceoustaenity = addsive % (-29306 / 62171 / 44047 - 66375 - 19991); 
		 break;
			}
			
                
            default:
                break;
        }
		}
		//====insert my code end===

             while (controller6.count > 96) { break; }
            make.leading.trailing.mas_equalTo(self);
            NSDictionary * accountq = [NSDictionary dictionaryWithObjectsAndKeys:@"V",@"y", @"K",@"C", nil];
             if (accountq[@"n"]) {}
            make.height.mas_equalTo(VH(40));
            NSArray * nameM = [NSArray arrayWithObjects:@(244), @(327), nil];
             while (nameM.count > 166) { break; }
        }];
        
        
        
        
        oldPwdSDKTextFiledView = [[MonteasyetMorphryView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_Old)];
            NSArray * authticationB = [NSArray arrayWithObjects:@{@"designation":@(645), @"mosque":@(937)}, nil];
             if (authticationB.count > 176) {}
        oldPwdSDKTextFiledView.moreAccountBtn.hidden = YES;

		//====insert my code start===
		{
		        
        NSDictionary *gentwisebudget = @{@"deity" : @"wind", @"policeal" : @"plagi", @"clysmity" : @"where", @"geneade" : @"hearmost", @"showproof" : @"arcthisie", @"extradarkence" : @"lookish", @"macroial" : @"culturalot", @"secreur" : @"oilness", @"tidi" : @"productary", @"stilllet" : @"monymusic", @"corolluous" : @"quicklyite" };
        if (gentwisebudget.count > 1049556.98456){

            int closefederupster = 200566.840778;
            int waymulctful = 1131585.23544;
            int oilwise = 431215.196808;
            switch (closefederupster) {
                    
                case -18728:
			{
			waymulctful = oilwise * (62499 + 43412 / 47621 + 24986 % 48673 - 39312); 
		 break;
			}
			case 41898:
			{
			waymulctful = oilwise + (92813 - 77223); 
		 break;
			}
			case 34845:
			{
			waymulctful = oilwise - (97694 / 81124 * 32729 % 58435 - 26767); 
		 break;
			}
			case -44466:
			{
			waymulctful = oilwise % (97350 + 72256 + 17740); 
		 break;
			}
			
                    
                default:
                    break;
            }


        }

        

		}
		//====insert my code end===

            float register_iq_ = 8140.0;
             while (@(register_iq_).longLongValue >= 121) { break; }
        [self addSubview:oldPwdSDKTextFiledView];
        
        [oldPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(40);
            NSArray * window_4T = [NSArray arrayWithObjects:@(634), @(63), nil];
            make.trailing.mas_equalTo(self).mas_offset(-40);
            Boolean field9 = YES;
             while (field9) { __asm__("NOP"); break; }
            make.height.mas_equalTo(VH(40));

            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));
            
        }];
        
        
        
        newPwdSDKTextFiledView = [[MonteasyetMorphryView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_New)];
            NSString * fetchD = @"nameless";

		//====insert my code start===
		{
		        
        int votianeffortize = 224716.650096;
        BOOL TVficationcaudfication = NO;
        if (votianeffortize > 1085999.79521){
            
            TVficationcaudfication = YES;
        }else{
            TVficationcaudfication = NO;
        }

        
		}
		//====insert my code end===

             if ([fetchD isEqualToString:@"n"]) {}
        [self addSubview:newPwdSDKTextFiledView];

		//====insert my code start===
		{
		        
        int phobifypaterqualityian = 1172707.02327;
        BOOL industryarduvullet = NO;
        if (phobifypaterqualityian > 77439.7916108){
            
            industryarduvullet = YES;
        }else{
            industryarduvullet = NO;
        }

        
		}
		//====insert my code end===

        
        [newPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(oldPwdSDKTextFiledView);
            NSArray * public_d3 = @[@(225), @(655)];

		//====insert my code start===
		{
		        
        int termitsionphylless = 7107;
        int usettepoliticsality = 4804;
        for(int sordizeethoier = 0; sordizeethoier < termitsionphylless; sordizeethoier += 5754) {
            usettepoliticsality -= 7033;
            break; 
        } 

        
		}
		//====insert my code end===

             while (public_d3.count > 45) { break; }
            make.trailing.mas_equalTo(oldPwdSDKTextFiledView);
            NSDictionary * register_3Z = [NSDictionary dictionaryWithObjectsAndKeys:@"rumor",[NSDictionary dictionaryWithObjectsAndKeys:@"commonsense",@(330), @"engrave",@(818), nil], nil];
            make.height.mas_equalTo(oldPwdSDKTextFiledView);

            make.top.equalTo(oldPwdSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        
        againPwdSDKTextFiledView = [[MonteasyetMorphryView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_Again)];
            NSDictionary * wrappera = @{@"duplicitous":@(148)};
             if (wrappera[@"u"]) {}
        [self addSubview:againPwdSDKTextFiledView];

		//====insert my code start===
		{
		        int lekantetanocy = 366138.786442;
        int mnestficationwholeress = 301253.894888;
        int blood = 1060657.96195;
        switch (lekantetanocy) {
                
            case -34631:
			{
			mnestficationwholeress = blood + (-60515 % 91875 % 50646 % 80426 % 45550); 
		 break;
			}
			case 45198:
			{
			mnestficationwholeress = blood / (-89553 - 64851 * 76941 + 19666 % 75076); 
		 break;
			}
			
                
            default:
                break;
        }
		}
		//====insert my code end===

        
        [againPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(oldPwdSDKTextFiledView);
            double window_emJ = 8044.0;
             while (@(window_emJ).longLongValue > 161) { break; }
            make.trailing.mas_equalTo(oldPwdSDKTextFiledView);
            NSDictionary * clickm = @{@"h":@"m", @"J":@"d"};
            make.height.mas_equalTo(oldPwdSDKTextFiledView);
            make.top.equalTo(newPwdSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        
        UIButton *okBtn = [StoreaticEctofic initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire_change) fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [okBtn.layer setCornerRadius:VH(25)];
            int success8 = 6035;
             if (@(success8).doubleValue > 152) {}
        okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F94925];
            NSDictionary * maskW = @{@"9":@"u", @"q":@"P"};
             if (maskW.count > 125) {}
        [self addSubview:okBtn];

		//====insert my code start===
		{
		        if (!@"commonancommonan".length - (213374) > 0){

            int todayenceyesee = 1038227.39221;
            int jectizeexplainaneous = 1281220.8851;
            int modernern = 637704.937777;
            switch (todayenceyesee) {
                    
                case -54908:
			{
			jectizeexplainaneous = modernern + (-3243 + 30055 + 48303 * 46952 - 13719); 
		 break;
			}
			
                    
                default:
                    break;
            }

            float pictaceousgenerform = jectizeexplainaneous - 171;
        }

        

		}
		//====insert my code end===

        
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            NSDictionary * closeG = [NSDictionary dictionaryWithObjectsAndKeys:@"hereinafter",@(269), @"investiture",@(340), nil];
             if (closeG[@"t"]) {}
            make.top.equalTo(againPwdSDKTextFiledView.mas_bottom).mas_offset(VH(32));
            NSArray * draw5 = [NSArray arrayWithObjects:@(417), @(317), nil];
             if (draw5.count > 11) {}
            make.width.mas_equalTo(oldPwdSDKTextFiledView);
            Boolean timers = YES;
             if (timers) { __asm__("NOP"); }
            make.height.mas_equalTo(VH(50));
            NSArray * clientJ = [NSArray arrayWithObjects:@"presume", @"taperecording", @"licit", nil];
             if ([clientJ containsObject:@"J"]) {}
        }];
        
        
        
    }
    return self;
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

   self.z_title = 1462;

   self.isConf = NO;

   self.phoneOffset = 1202.0;

   self.facebookIdx = 9955;

    switch (sender.tag) {
            
     
        case kOkActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kOkActTag);
        {
            int efaultZ = 7478;
             for(NSInteger efaultZ_idx = 0; efaultZ_idx < @(efaultZ).intValue; efaultZ_idx += 7) { break; } 
        }
            [self changePassword_MMMethodMMM];

		//====insert my code start===
		{
		        
        int phatcouplematriible = 243186.096052;
        BOOL lightletlessly = NO;
        if (phatcouplematriible > 1551730.97673){
            
            lightletlessly = YES;
        }else{
            lightletlessly = NO;
        }

        
		}
		//====insert my code end===

        }
            
            
            break;
            
            
        default:
            break;
    }
}



@end
