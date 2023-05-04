







#import "MainHomeView.h"
#import "UIUtil.H"
#import "LoginTypeButton.h"
#import "UIView+BlockGesture.h"
#import "SDKRequest.h"
#import "FBDelegate.h"
#import "SdkHeader.h"
#import "LoginHelper.h"
#import "SAppleLogin.h"

#import <AuthenticationServices/AuthenticationServices.h>

@interface MainHomeView()

@end

@implementation MainHomeView
{
    UIButton *guestLoginBtn;
    UIButton *checkBoxTermsBtn;
    
}


- (instancetype)initView_MMMethodMMM
{
    self = [super init];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        int ortatureNeedics = 7636;
        int oedatoryBlackitive = 2313;
        for(int glutinitiousTrachy = 0; glutinitiousTrachy < ortatureNeedics; glutinitiousTrachy += 321) {
            oedatoryBlackitive += 145;
            break; 
        } 

		}
		//====insert my code end===  2023-05-04 15:54:51

    if (self) {
       
        [self addView_MMMethodMMM];
    }
    return self;
}

-(void)addView_MMMethodMMM
{
    
    



    
    UIView *contentView = [[UIView alloc] init];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        double ludatureBrachioar = 1661.0;
        if (@(ludatureBrachioar).doubleValue >= 3766) {}
        
		}
		//====insert my code end===  2023-05-04 15:54:51

    [self addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(self);
        make.centerY.mas_equalTo(self);
    }];
    
    UIImageView *logoIV = [UIUtil initImageViewWithImage_MMMethodMMM:mw_logo];
    logoIV.hidden = YES;
    if (SDK_DATA.mConfigModel.showLogo) {
        logoIV.hidden = NO;
    }
    [contentView addSubview:logoIV];
    [logoIV mas_makeConstraints:^(MASConstraintMaker *make) {


        make.top.mas_equalTo(contentView.mas_top);
        make.width.mas_equalTo(VW(200));

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        NSDictionary *withPer = @{@"woman" : @"nutri", @"fontacy" : @"galvananeous", @"xen" : @"spinent" };
        for (NSString *riskacyFamily in withPer){
            break;
        }

		}
		//====insert my code end===  2023-05-04 15:54:51


		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        int droperEquinate = 9037;
        NSString *mandotHibernory = @"languSitship";
        while(mandotHibernory.length > droperEquinate) {
            break; 
        } 

		}
		//====insert my code end===  2023-05-04 15:54:51

        if (SDK_DATA.mConfigModel.showLogo) {
            make.height.mas_equalTo(VH(50));
        }else{
            make.height.mas_equalTo(VH(2));
        }
        make.centerX.mas_equalTo(contentView);
    }];
    
    
    
    guestLoginBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:@"" fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [guestLoginBtn.layer setCornerRadius:VH(25)];

    guestLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F94925];
    
    [contentView addSubview:guestLoginBtn];
    
    [guestLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        if (logoIV.hidden) {
            make.top.mas_equalTo(logoIV.mas_bottom);
        }else{
            make.top.mas_equalTo(logoIV.mas_bottom).mas_offset(VH(18));
        }
        
        make.leading.mas_equalTo(contentView).mas_offset(VH(38));

		//====insert my code start===  2023-05-04 15:54:51
		{
		        NSArray * quindecimanFriendice = [NSArray arrayWithObjects:@(4050), @(7426), @"damnactanAffectty", @"athlitudeFacesion", nil];
        if ([quindecimanFriendice containsObject:@"calFeluous"]) {
            BOOL aphicStaffably = NO;
            if (aphicStaffably){
                quindecimanFriendice = [NSMutableArray array];
            }
        }
		}
		//====insert my code end===  2023-05-04 15:54:51

        make.trailing.mas_equalTo(contentView).mas_offset(VH(-38));;
        make.height.mas_equalTo(VH(50));
    }];
    
    UIView *guestLoginBtnContent = [[UIView alloc] init];
    [guestLoginBtn addSubview:guestLoginBtnContent];
    [guestLoginBtnContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(guestLoginBtn);

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        NSArray *fodiaTopette = @[@"craniature_scalennoticead", @"attackfaction_voluntforery", @"bistraditionaler_cynade", @"marriagedom_patient", @"schisatic_winant", @"encephaloeous_beatship", @"foentheirfy_imagery", @"trigesimenne_unipositiveory", @"eurcy_come", @"variousier_munitypeful" ];
        if (fodiaTopette.count > 3167){
        }
        
		}
		//====insert my code end===  2023-05-04 15:54:51


    }];
    
    UIButton *guestIconBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:guse_login_bg highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [guestLoginBtnContent addSubview:guestIconBtn];
    [guestIconBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.mas_equalTo(guestLoginBtnContent);
        make.width.height.mas_equalTo(VW(30));
    }];
    
    UIButton *guestTextBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_archae_effortfold fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [guestLoginBtnContent addSubview:guestTextBtn];
    [guestTextBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.trailing.mas_equalTo(guestLoginBtnContent);
        make.leading.mas_equalTo(guestIconBtn.mas_trailing).mas_offset(VW(12));
    }];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        NSDictionary *stelliorBovous = @{@"election" : @(63687), @"car" : @"doorress", @"paratic" : @"waterule", @"lievcy" : @(24392), @"ntform" : @"nearacious", @"visit" : @(17031), @"terfold" : @"ann", @"generalern" : @"alth" };
        if (stelliorBovous.count < 5919){
            NSLog(@"aesthetsionIrascule");
        }else{
            NSLog(@"mightOptionorium");
        }

        

		}
		//====insert my code end===  2023-05-04 15:54:51

    if (!SDK_DATA.mConfigModel.visitorLogin) {
        guestLoginBtn.hidden = YES;
    }
    
    
    UIView *topView = guestLoginBtn;
    
    
    

		//====insert my code start===  2023-05-04 15:54:51
		{
		            float alloonPhonetel = 4052.0;
            if (@(alloonPhonetel).doubleValue <= 5728) {}
		}
		//====insert my code end===  2023-05-04 15:54:51

    if (@available(iOS 13.0, *)) {
        ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                    authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
        [appleLoginBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        double habilositySourceize = 6532.0;
        if (@(habilositySourceize).doubleValue >= 835) {}
        
		}
		//====insert my code end===  2023-05-04 15:54:51

        appleLoginBtn.tag = appleLoginActTag;
        appleLoginBtn.cornerRadius = VH(25);

		//====insert my code start===  2023-05-04 15:54:51
		{
				NSDictionary *trecentRisk = @{@"networkacle" : @"haemize" };
        NSString *activitySapiing = trecentRisk[@"bulbshipSolid"];

        if (activitySapiing && activitySapiing.length > 5397 && [activitySapiing isEqualToString:@"lectivityVolv"]) {
            
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

        [contentView addSubview:appleLoginBtn];

        topView = appleLoginBtn;
        
        if (!SDK_DATA.mConfigModel.appleLogin || SDK_DATA.mConfigModel.appPassCheck) {
            appleLoginBtn.hidden = YES;

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        int trapezServiceosity = 3229;
        int experationCultureity = 3524;
        while(experationCultureity > trapezServiceosity) {
            experationCultureity += 1;
            break; 
        } 

		}
		//====insert my code end===  2023-05-04 15:54:51

            [appleLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.trailing.mas_equalTo(guestLoginBtn);

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        int valanceCochlly = 4722;
        int brevyearPhesia = 1652;
        for(int dysmostGirlment = 0; dysmostGirlment < valanceCochlly; dysmostGirlment += 436) {
            break; 
        } 

        
		}
		//====insert my code end===  2023-05-04 15:54:51

                make.top.mas_equalTo(guestLoginBtn.mas_bottom).mas_offset(2);
                make.height.mas_equalTo(2);
            }];
            
        }else{
            [appleLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.trailing.height.mas_equalTo(guestLoginBtn);
                make.top.mas_equalTo(guestLoginBtn.mas_bottom).mas_offset(VH(15));
            }];
        }
        
    }
    
    UIView *hasAccountContent = [[UIView alloc] init];
    [contentView addSubview:hasAccountContent];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        NSDictionary *lesseurLoweer = @{@"meteral" : @(64396), @"ramery" : @(98216), @"whatative" : @"createer", @"fistulaceous" : @"prehendress", @"role" : @"buildo", @"schis" : @"treatyoungsome", @"lot" : @(47923), @"westance" : @"gene", @"attentionette" : @(33981), @"apfaction" : @"landous", @"tympanwise" : @"arboriaceous", @"missprobablyition" : @"meiry", @"manmedical" : @"plegition" };
        if (lesseurLoweer.count <= 382){
            NSLog(@"throughicalFriendlike");
        }else{
            NSLog(@"findTrinist");
        }

        

		}
		//====insert my code end===  2023-05-04 15:54:51

    [hasAccountContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(contentView);
        make.top.mas_equalTo(topView.mas_bottom).mas_offset(VH(27));
    }];
    
    UILabel *hasAccountLabel = [UIUtil initLabelWithText_MMMethodMMM:@"已有帳號？ " fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor whiteColor]];
    [hasAccountContent addSubview:hasAccountLabel];
    [hasAccountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.top.mas_equalTo(hasAccountContent);

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        int gramitorBroncher = 6207;
        NSString *didactHedret = @"ignlikePathomotherlet";
        while(didactHedret.length > gramitorBroncher) {
            break; 
        } 

		}
		//====insert my code end===  2023-05-04 15:54:51


    }];
    
    UILabel *loginLabel = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_vigenast_claimistic fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_EB2E2B]];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        NSDictionary *treiskaidekeerCataety = @{@"comeeous" : @"stalactory", @"with" : @"environmentalaire", @"race" : @(8544), @"knowledgeer" : @(56487), @"educationette" : @(49739), @"costtion" : @"sophoelectionile", @"passster" : @"opisthincludeaster" };
        if (treiskaidekeerCataety.count == -385){

            int courJobet = 4414;
            int raphDignture = -120;
            int fringile = 677;
            switch (courJobet) {
                    
                case 917:
			{
				raphDignture = fringile - 658 * 312 - 941; 
			 break;
			}
			
                    
                default:
                    break;
            }


        }

        

		}
		//====insert my code end===  2023-05-04 15:54:51

    [hasAccountContent addSubview:loginLabel];
    [loginLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.bottom.top.mas_equalTo(hasAccountContent);
        make.leading.mas_equalTo(hasAccountLabel.mas_trailing);
    }];

		//====insert my code start===  2023-05-04 15:54:51
		{
		          int petlikeBasiious = 6799;
          int viewkinLoveer = 1595;
          NSMutableDictionary * arboriworkuousSpondylform = [[NSMutableDictionary alloc] init];

          [arboriworkuousSpondylform setObject: @(petlikeBasiious) forKey:@"doorierTop"];
          int torrfallitorIssue = (int)petlikeBasiious;
          int laminasiveCampaigntic = 0;
          for (int omenainLittleuous = laminasiveCampaigntic; omenainLittleuous > torrfallitorIssue - 1; omenainLittleuous--) {
              laminasiveCampaigntic += omenainLittleuous;
               int fourarBeatous = laminasiveCampaigntic;
               if (fourarBeatous > 5985) {
               }
              break;

          }
          viewkinLoveer += 1486;
          [arboriworkuousSpondylform setObject: @(viewkinLoveer) forKey:@"goibilityAqueur"];
             
          if (viewkinLoveer == 4869) {
              viewkinLoveer = petlikeBasiious;
          }
		}
		//====insert my code end===  2023-05-04 15:54:51

    
    
    UILabel *otherLoginLabel = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_mostery_tricesimreachory fontSize_MMMethodMMM:FS(11) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
    [contentView addSubview:otherLoginLabel];
    [otherLoginLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(hasAccountLabel.mas_bottom).mas_offset(VH(22));
        make.centerX.mas_equalTo(contentView);
    }];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        NSDictionary *saccharVulgate = @{@"raceose" : @(94853) };
        for (NSString *townFeelinger in saccharVulgate){
            break;
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

    
    UIView *lineView1 = [[UIView alloc] init];
    lineView1.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    [contentView addSubview:lineView1];
    [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        
        make.trailing.mas_equalTo(otherLoginLabel.mas_leading).mas_offset(VW(-22));

		//====insert my code start===  2023-05-04 15:54:51
		{
		            NSDictionary *drapableOptimdom = @{@"westernent" : @"byify", @"pansly" : @"premmost", @"Mrsress" : @"circumet", @"laus" : @"wideaneous" };
            if (drapableOptimdom.count > 8855){}
            
		}
		//====insert my code end===  2023-05-04 15:54:51

        make.centerY.mas_equalTo(otherLoginLabel);
        make.height.mas_equalTo(1);
        make.width.mas_equalTo(VW(26));

		//====insert my code start===  2023-05-04 15:54:51
		{
		      int priceoryZelless = 5771;
      NSMutableDictionary *informationeticSquamlet = [NSMutableDictionary dictionaryWithCapacity:326];
      priceoryZelless += 918;
      [informationeticSquamlet setObject: @(priceoryZelless) forKey:@"zoniseSessfaction"];
      int dogmMeniful = (int)priceoryZelless;
      if (dogmMeniful < 6440) {
            dogmMeniful *= 1510;
      }
		}
		//====insert my code end===  2023-05-04 15:54:51

        
    }];
    
    UIView *lineView2 = [[UIView alloc] init];
    lineView2.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    [contentView addSubview:lineView2];
    [lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        
        make.leading.mas_equalTo(otherLoginLabel.mas_trailing).mas_offset(VW(22));
        make.centerY.mas_equalTo(otherLoginLabel);
        make.height.mas_equalTo(1);

		//====insert my code start===  2023-05-04 15:54:51
		{
				NSDictionary *carFewty = @{@"saluten" : @(30955), @"dicy" : @"hibernatic", @"topon" : @"mnestization", @"natureic" : @(92379), @"treeon" : @"traditionalian", @"enni" : @"zymition", @"zelfic" : @"stylefication", @"judicosity" : @(17035), @"pretiably" : @"nubless" };
        NSString *conditionariumPeriitive = carFewty[@"quinfactionEsit"];

        if (conditionariumPeriitive && conditionariumPeriitive.length > 5746 && [conditionariumPeriitive isEqualToString:@"finishtionStudyization"]) {
            
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

        make.width.mas_equalTo(VW(26));
        
    }];

		//====insert my code start===  2023-05-04 15:54:51
		{
		      int pancreSeative = 1354;
      NSMutableDictionary *reportOpoial = [NSMutableDictionary dictionaryWithCapacity:2394];
      pancreSeative += 9764;
      [reportOpoial setObject: @(pancreSeative) forKey:@"uvulpressureScissbankive"];
      int orthatorArchoreason = (int)pancreSeative;
      if (orthatorArchoreason >= 388) {
            orthatorArchoreason *= 1843;
      }
		}
		//====insert my code end===  2023-05-04 15:54:51

    
    
    
    
    UIView *loginTypeView = [[UIView alloc] init];
    [contentView addSubview:loginTypeView];
    [loginTypeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(contentView);
        make.top.mas_equalTo(otherLoginLabel.mas_bottom).mas_offset(VH(24));

		//====insert my code start===  2023-05-04 15:54:51
		{
		        NSString *gredMrsAloneuous = @"";
        if([@"reveallingIdentifyless" hasSuffix: @"easyantTinctal"]){
            gredMrsAloneuous = @"clysmAthlitude";
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

        
        make.bottom.mas_equalTo(contentView.mas_bottom);
    }];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        int avoidizationIrascule = 5798;
        int densativeOldaneity = 9764;
        int purpurifyCentrically = 3561;
        int sophletForeigneur = 521;
        int egorairOstracenne = 8543;
        int currSophexperienceitious = 8559;

        if (avoidizationIrascule <= 3698){

            densativeOldaneity -= 1;
            purpurifyCentrically += densativeOldaneity;
            egorairOstracenne -= avoidizationIrascule;
            sophletForeigneur += 1;
            currSophexperienceitious += 10;
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

    
    
    CGFloat btn_w = VW(28);
    CGFloat btn_h = btn_w;
    CGFloat margin_leading = VW(27);
    
    NSMutableArray *loginBtnDatas;
    if (SDK_DATA.mConfigModel.appPassCheck) {
        loginBtnDatas = [SdkUtil getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:YES guestBtn_MMMethodMMM:NO];

		//====insert my code start===  2023-05-04 15:54:51
		{
		            float benefiticalArcheoence = 3253.0;
            if (@(benefiticalArcheoence).doubleValue > 9233) {}
		}
		//====insert my code end===  2023-05-04 15:54:51

    }else{
        loginBtnDatas = [SdkUtil getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:NO guestBtn_MMMethodMMM:NO];
    }
    UIView *leadingView = loginTypeView;
  
    for (int i = 0; i < loginBtnDatas.count; i++) {
        
        LoginButtonData *lbd = loginBtnDatas[i];
        UIView *btnView;

		//====insert my code start===  2023-05-04 15:54:51
		{
		        if (!([@"typeismOrtho" hasSuffix: @"okidKakacle"])){

            int salvanceDescribe = 7027;
            int furtshipOtize = -812;
            int kleptator = 3533;
            switch (salvanceDescribe) {
                    
                case 849:
			{
				furtshipOtize = kleptator * 361 - 577 + 308 * 741; 
			 break;
			}
			case 337:
			{
				furtshipOtize = kleptator * 366 + 468 * 668 * 186; 
			 break;
			}
			case 465:
			{
				furtshipOtize = kleptator + 965 + 737 * 135 + 117 + 8 + 339; 
			 break;
			}
			case 9:
			{
				furtshipOtize = kleptator * 735 - 380 / 385 - 448 * 921 * 209; 
			 break;
			}
			case 694:
			{
				furtshipOtize = kleptator - 219 + 645 * 180; 
			 break;
			}
			case 171:
			{
				furtshipOtize = kleptator * 828 / 588 + 461 * 173; 
			 break;
			}
			case 16:
			{
				furtshipOtize = kleptator * 854 * 605 - 733 * 374 + 685 * 137; 
			 break;
			}
			case 550:
			{
				furtshipOtize = kleptator * 249 * 342 - 290; 
			 break;
			}
			
                    
                default:
                    break;
            }

            float terrindustryibilityRhynchics = furtshipOtize - 2136;
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

        
        if ([lbd.btnType isEqualToString:LOGIN_TYPE_APPLE]) {
            

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        int everybodyPreknowit = 6038;
        int technilePitee = 5603;
        for(int mulgativeGustthreat = 0; mulgativeGustthreat < everybodyPreknowit; mulgativeGustthreat += 8628) {
            break; 
        } 

        
		}
		//====insert my code end===  2023-05-04 15:54:51

            if (@available(iOS 13.0, *)) {
                
                ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                          authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        double fingerieHemerappearify = 8745.0;
        if (@(fingerieHemerappearify).doubleValue >= 6777) {}
        
		}
		//====insert my code end===  2023-05-04 15:54:51

                [appleLoginBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
                appleLoginBtn.tag = lbd.tag;
                appleLoginBtn.cornerRadius = btn_w / 2.0;
                btnView = appleLoginBtn;
            }
            
        }else{
            
            LoginTypeButton *mBtn = [[LoginTypeButton alloc] initWithType_MMMethodMMM:lbd.tag title_MMMethodMMM:@"" image_MMMethodMMM:lbd.image selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            
            btnView = mBtn;
        }
       
        

		//====insert my code start===  2023-05-04 15:54:51
		{
				NSDictionary *privateistUntil = @{@"quirency" : @"dolorsive", @"histrity" : @(50322), @"specificite" : @(60819), @"itudinular" : @(77146), @"cedism" : @"throughoutization", @"former" : @"natosity", @"sacchar" : @"xermost", @"run" : @"lucid", @"blueitude" : @(8231), @"omnision" : @"brachioaskot", @"eastability" : @"textability", @"country" : @"metaator", @"vestigy" : @(14968), @"mensaneity" : @"participantan" };
        NSString *hippsureGlobeur = privateistUntil[@"moniliousAcceptose"];

        if (hippsureGlobeur && hippsureGlobeur.length > 4410 && [hippsureGlobeur isEqualToString:@"undenSaccforceie"]) {
            
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

        if (btnView) {
            
            [loginTypeView addSubview:btnView];
            [btnView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.mas_equalTo(btn_w);
                make.height.mas_equalTo(btn_h);
                make.top.mas_equalTo(loginTypeView);
                make.bottom.mas_equalTo(loginTypeView);
                
                if (i == 0) {
                    make.leading.mas_equalTo(leadingView);

		//====insert my code start===  2023-05-04 15:54:51
		{
		        NSDictionary *gelataryOrder = [NSDictionary dictionaryWithObjectsAndKeys:@"minimmonthivityDecdom",@(802), nil];
             if (gelataryOrder.count > 5626) {}
		}
		//====insert my code end===  2023-05-04 15:54:51

                }else{
                    make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(margin_leading);
                }
                if (i == loginBtnDatas.count - 1) {
                    make.trailing.mas_equalTo(loginTypeView);
                }
            }];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        NSArray *plainaceousOmay = @[@"obdoctorish_pansability", @"blueacious_realizeture", @"octogenon_caletownosity", @"sophycy_countryfold", @"fanwestate_cryptesque", @"juri_phorability", @"volvature_endolayer", @"centralally_secrdom", @"rustic_phytshakely", @"issue_pratia", @"challengearium_tritenne", @"potamosuddenlyness_avi", @"manageretic_pointfaction" ];
        if (plainaceousOmay.count > 4016){
        }
        
		}
		//====insert my code end===  2023-05-04 15:54:51

            
            leadingView = btnView;
            
        }

    }
    
    
    [hasAccountContent addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {

		//====insert my code start===  2023-05-04 15:54:51
		{
		            float vitroSuso = 6582.0;
            if (@(vitroSuso).intValue != 4464) {
                vitroSuso = vitroSuso - 9279;
            }
		}
		//====insert my code end===  2023-05-04 15:54:51

        if (self.delegate) {
            [self.delegate goPageView_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG)];
        }
    }];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        int vicantProxim = 3229;
        int lystionRockfaction = 342;
        int thusiveLeaderth = 2789;
        int gonorealityeurPang = 5546;
        int egyrsomePluvition = 3450;
        int tenaciaceousResultious = 432;

        if (vicantProxim == 1426){

            lystionRockfaction -= 1;
            thusiveLeaderth += lystionRockfaction;
            egyrsomePluvition -= vicantProxim;
            gonorealityeurPang += 1;
            tenaciaceousResultious += 10;
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

    
  
    UIView *termAgreeView = [[UIView alloc] init];
    [self addSubview:termAgreeView];
    [termAgreeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.bottom.mas_equalTo(self.mas_bottom).mas_offset(VH(-15));

		//====insert my code start===  2023-05-04 15:54:51
		{
		            float turpitoseCalidability = 3907.0;
            int commonPrin = 7778;
            int septimniceture = 6220;

            if (@(turpitoseCalidability).doubleValue == 7022) {

                int streptencyBoxitive = @(turpitoseCalidability).intValue;
                switch (streptencyBoxitive) {
                    
                    case 911:
			{
				commonPrin = septimniceture - 370 - 443 + 85 + 234; 
			 break;
			}
			case 220:
			{
				commonPrin = septimniceture - 22 * 782 * 331; 
			 break;
			}
			case 367:
			{
				commonPrin = septimniceture + 535 / 50 + 57 / 984 + 79; 
			 break;
			}
			case 996:
			{
				commonPrin = septimniceture * 276 * 797 - 688; 
			 break;
			}
			case 470:
			{
				commonPrin = septimniceture - 988 * 645 + 197 - 931 * 102 / 20; 
			 break;
			}
			case 463:
			{
				commonPrin = septimniceture - 32 + 529 * 173 / 802 / 710 + 727; 
			 break;
			}
			case 137:
			{
				commonPrin = septimniceture * 117 * 870 / 20; 
			 break;
			}
			case 198:
			{
				commonPrin = septimniceture * 694 - 538 / 258 * 236 + 94; 
			 break;
			}
			case 797:
			{
				commonPrin = septimniceture + 748 - 683 + 407 + 544 / 121; 
			 break;
			}
			case 887:
			{
				commonPrin = septimniceture * 999 * 501; 
			 break;
			}
			case 506:
			{
				commonPrin = septimniceture * 969 * 963; 
			 break;
			}
			
                        
                    default:
                        break;
                }

            }
		}
		//====insert my code end===  2023-05-04 15:54:51


    }];
    
    checkBoxTermsBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_cb_uncheck highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:mw_cb_check tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    checkBoxTermsBtn.selected = YES;
    [termAgreeView addSubview:checkBoxTermsBtn];
    [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(termAgreeView);
        make.centerY.mas_equalTo(termAgreeView);
        make.width.height.mas_equalTo(VH(15));
       
    }];
    
        NSString *xtext = GetString(wwwww_tag_wwwww_gama_ui_term_port_read2);
        UILabel *rememberTermsLable = [UIUtil initLabelWithText_MMMethodMMM:xtext fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
        rememberTermsLable.textAlignment = NSTextAlignmentLeft;
        rememberTermsLable.backgroundColor = [UIColor clearColor];
        rememberTermsLable.numberOfLines = 1;
        
    
         NSDictionary *attribtDic = @{NSForegroundColorAttributeName: [UIColor whiteColor], NSFontAttributeName: [UIFont systemFontOfSize:FS(10)]
         };
         NSMutableAttributedString *attribtStr = [[NSMutableAttributedString alloc]initWithString:xtext];
        [attribtStr addAttributes:attribtDic range: NSMakeRange(xtext.length-5, 5)];
         
        rememberTermsLable.attributedText = attribtStr;
        
        [termAgreeView addSubview:rememberTermsLable];

		//====insert my code start===  2023-05-04 15:54:51
		{
		            
            float hypnainStin = 7999.0;
            if (@(hypnainStin).doubleValue >= 1212) {}

            int valueadeCultureivity = 331;
            int fig = 6022;
            int unciitionDuringacle = @(hypnainStin).intValue;
                switch (unciitionDuringacle) {
                    
                    case 618:
			{
				valueadeCultureivity = fig - 715 * 653 - 901 / 166 * 653; 
			 break;
			}
			case 297:
			{
				valueadeCultureivity = fig - 751 / 719 - 972 + 28; 
			 break;
			}
			case 278:
			{
				valueadeCultureivity = fig - 943 - 768 + 363 + 703; 
			 break;
			}
			case 120:
			{
				valueadeCultureivity = fig * 580 - 577; 
			 break;
			}
			case -91:
			{
				valueadeCultureivity = fig * 489 / 742 * 98; 
			 break;
			}
			case -11:
			{
				valueadeCultureivity = fig * 552 * 334 - 950 * 201; 
			 break;
			}
			case 633:
			{
				valueadeCultureivity = fig + 108 * 53; 
			 break;
			}
			case 256:
			{
				valueadeCultureivity = fig + 424 * 648 + 285 - 247; 
			 break;
			}
			case 847:
			{
				valueadeCultureivity = fig * 862 / 35 * 907 / 459 / 65; 
			 break;
			}
			case 860:
			{
				valueadeCultureivity = fig * 431 / 154 - 382 - 632; 
			 break;
			}
			case -49:
			{
				valueadeCultureivity = fig * 221 - 228 - 472 * 702; 
			 break;
			}
			case 110:
			{
				valueadeCultureivity = fig - 782 - 686 / 824 - 737; 
			 break;
			}
			case 141:
			{
				valueadeCultureivity = fig * 653 + 75; 
			 break;
			}
			case 692:
			{
				valueadeCultureivity = fig + 261 * 502 * 24 + 473; 
			 break;
			}
			
                        
                    default:
                        break;
                }
		}
		//====insert my code end===  2023-05-04 15:54:51

        [rememberTermsLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(termAgreeView);
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);
            make.trailing.mas_equalTo(termAgreeView.mas_trailing);
        }];
        rememberTermsLable.userInteractionEnabled=YES;
        [rememberTermsLable addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
            SDK_LOG(wwwww_tag_wwwww_rememberTermsLableTapped);
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_TEARMS from_MMMethodMMM:(CURRENT_PAGE_TYPE_MAIN_HOME) param_MMMethodMMM:0];
            }
        }];
    ConfigModel *mConfigModel = SDK_DATA.mConfigModel;

		//====insert my code start===  2023-05-04 15:54:51
		{
		            float sectitiousPowertic = 921.0;
            if (@(sectitiousPowertic).doubleValue == 3171) {}
		}
		//====insert my code end===  2023-05-04 15:54:51

    termAgreeView.hidden = !mConfigModel.showContract;

		//====insert my code start===  2023-05-04 15:54:51
		{
		            float rugDifferentan = 1265.0;
            if (@(rugDifferentan).intValue != 3388) {
                rugDifferentan = rugDifferentan - 5496;
            }
		}
		//====insert my code end===  2023-05-04 15:54:51

     
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {
       
        case kAgreeTermsCheckBoxBtnTag:
            
            SDK_LOG(wwwww_tag_wwwww_kAgreeTermsCheckBoxBtnTag);

		//====insert my code start===  2023-05-04 15:54:51
		{
		            NSDictionary *faceiseBrom = @{@"tost" : @"opularian", @"alter" : @"motherice" };
            if (faceiseBrom.count > 8623){}
            
		}
		//====insert my code end===  2023-05-04 15:54:51

            if (checkBoxTermsBtn.selected) {
                checkBoxTermsBtn.selected = NO;
            }else{
                checkBoxTermsBtn.selected = YES;
            }
            break;
            
        case appleLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_appleLoginActTag);

		//====insert my code start===  2023-05-04 15:54:51
		{
		    NSArray *pathficationNewspaperency = @[@"paternette_mnemonsome", @"nulloon_munling", @"pressureish_with", @"relationshipitive_floorery", @"pect_melan", @"listtion_gemmiose", @"resultious_actually", @"morphaire_sedality" ];

          int capitfollowularDensfier = pathficationNewspaperency.count;
         int phosacityDorsattackistic = (int)capitfollowularDensfier;
         int millionsureJaction = 372;
         int successieSenwesure = 6755;
         if (phosacityDorsattackistic > successieSenwesure) {
             phosacityDorsattackistic = successieSenwesure;
         }
         while (millionsureJaction <= phosacityDorsattackistic) {
            millionsureJaction += 1;
            phosacityDorsattackistic /= millionsureJaction;
            phosacityDorsattackistic += 8783;
            break;
         }
          [pathficationNewspaperency enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
              if (idx <= 211) {
                  NSLog(@"enumerateObjectsUsingBlock:%@", obj);
            }
          }];
		}
		//====insert my code end===  2023-05-04 15:54:51

            if (![self checkAgreeTerm_MMMethodMMM]) {

		//====insert my code start===  2023-05-04 15:54:51
		{
		            
            float finallyaneousEnvironmentalarian = 4973.0;
            if (@(finallyaneousEnvironmentalarian).doubleValue > 2371) {}

            int septuousAlterice = 2479;
            int epistem = 5318;
            int wearetyShowon = @(finallyaneousEnvironmentalarian).intValue;
                switch (wearetyShowon) {
                    
                    case 785:
			{
				septuousAlterice = epistem * 483 + 198 + 538; 
			 break;
			}
			case 159:
			{
				septuousAlterice = epistem * 308 / 816; 
			 break;
			}
			case 882:
			{
				septuousAlterice = epistem + 937 - 974 - 642 * 346 + 936 - 453; 
			 break;
			}
			case 205:
			{
				septuousAlterice = epistem * 238 - 189 * 397 - 570 + 448 * 591; 
			 break;
			}
			case 230:
			{
				septuousAlterice = epistem + 206 / 716 / 615 + 810 / 673 - 945; 
			 break;
			}
			
                        
                    default:
                        break;
                }
		}
		//====insert my code end===  2023-05-04 15:54:51

                return;
            }
            [LoginHelper appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        NSDictionary *oscillolateenChronal = @{@"aser" : @"trophice", @"donative" : @"glabrbackant", @"notice" : @(8203), @"expertast" : @(84494), @"glutintic" : @"rock", @"facy" : @"wallist", @"flyitor" : @(72099), @"aristary" : @"wayacy", @"sulcenne" : @"flat", @"mentionon" : @(27378), @"vulsant" : @"tentaally", @"dataful" : @"myxule" };
        for (NSString *amplfinishMerg in oscillolateenChronal){
            break;
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

            break;
            
        case guestLoginActTag:
            {
            SDK_LOG(wwwww_tag_wwwww_guestLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
            
            }
            break;
            
        case fbLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_fbLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        int papericsLike = 7868;
        int thataireFormical = 9388;
        int measurehoodAmplness = 4761;
        int revealStin = 7540;
        int monbehindKakowearality = 1789;
        int tasksionVulpency = 4002;

        if (papericsLike == 1313){

            thataireFormical -= 1;
            measurehoodAmplness += thataireFormical;
            monbehindKakowearality -= papericsLike;
            revealStin += 1;
            tasksionVulpency += 10;
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

                return;
            }
            [LoginHelper fbLoginAndThirdRequest_MMMethodMMM:self.delegate];

		//====insert my code start===  2023-05-04 15:54:51
		{
		      int salubreticFactoreur = 885;
      NSMutableDictionary *felshipAffectacious = [NSMutableDictionary dictionaryWithCapacity:8055];
      salubreticFactoreur += 4794;
      [felshipAffectacious setObject: @(salubreticFactoreur) forKey:@"adipbookiousAdministrationeous"];
      int tectonfactionCauseproof = (int)salubreticFactoreur;
      if (tectonfactionCauseproof < 2449) {
            tectonfactionCauseproof *= 9595;
      }
		}
		//====insert my code end===  2023-05-04 15:54:51

            
            break;
        case googleLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_googleLoginActTag);

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        NSArray *westitorHerselfoon = @[@"soletsion_dinneria", @"placeability_spect", @"ntess_rhigion", @"tardit_liquation", @"cephaloular_alwaysate", @"monstratoccuritor_amongess" ];
        if (westitorHerselfoon){
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
            break;
        case lineLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_lineLoginActTag);

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        NSDictionary *centrierRaucenne = @{@"lactaceous" : @"arctacle", @"bar" : @"yetacity", @"someful" : @(42351), @"orarian" : @"absious", @"periule" : @(40461), @"megalbeaire" : @(28798), @"ethnent" : @"industryety", @"weightfication" : @"enneaaster" };
        if (centrierRaucenne.count >= 502){
            NSLog(@"genuStalagmhood");
        }else{
            NSLog(@"benwiseNonagesimish");
        }

        

		}
		//====insert my code end===  2023-05-04 15:54:51

            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
            break;
        default:
            break;
    }
    
}


-(BOOL)checkAgreeTerm_MMMethodMMM
{
    if (checkBoxTermsBtn.selected) {

		//====insert my code start===  2023-05-04 15:54:51
		{
		        NSArray * explainSimpleature = [NSArray arrayWithObjects:@(7755), @(5742), @"showousFire", @"meiaciousCrispine", nil];
        if ([explainSimpleature containsObject:@"severaceousUvtruthfaction"]) {
            BOOL rotfulLoweer = YES;
            if (rotfulLoweer){
                explainSimpleature = [NSMutableArray array];
            }
        }
		}
		//====insert my code end===  2023-05-04 15:54:51

        return YES;
    }
    [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_term_not_read)];

    return NO;
}

@end
