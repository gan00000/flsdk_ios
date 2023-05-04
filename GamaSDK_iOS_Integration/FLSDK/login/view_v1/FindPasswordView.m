







#import "FindPasswordView.h"
#import "SdkHeader.h"
#import "SDKTextFiledView.h"
#import "LoginTitleView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "SDKRequest.h"
#import "SdkUtil.h"

@implementation FindPasswordView

{
    SDKTextFiledView *accountSDKTextFiledView;
    SDKTextFiledView *newPwdSDKTextFiledView;
    SDKTextFiledView *againPwdSDKTextFiledView;
    
    SDKTextFiledView *vfCodeFiledView;
    
    
    LoginTitleView   *mLoginTitleView;
    UIButton *getVfCodeBtn;
    
    
    int phoneCountdown;
    NSTimer *downTimer;
}

- (instancetype)initView_MMMethodMMM
{
    self = [super init];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        int federitTheaneity = 2254;
        BOOL opportunityTimeaster = NO;
        if (federitTheaneity < 9934){
            
            opportunityTimeaster = YES;
        }else{
            opportunityTimeaster = NO;
        }

        
		}
		//====insert my code end===  2023-05-04 15:54:51

    if (self) {
        
        
        
        
        
        
        
        
        
        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_text_forgot_pwd) hander_MMMethodMMM:^(NSInteger) {
            
            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_FIND_PWD) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG)];
        }];
        
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        NSDictionary *pugntalkSignfic = @{@"evidenceit" : @(73789), @"xyl" : @(21077), @"penoery" : @"sacchar", @"administrationory" : @"forwardarian", @"flagr" : @"insulic" };
        if (pugntalkSignfic.count >= 4574){

            int gnarWonderture = 330;
            int cyanticShortwise = 6790;
            int sororaddress = 9294;
            switch (gnarWonderture) {
                    
                case -32:
			{
				cyanticShortwise = sororaddress - 998 * 946 + 964 - 875 + 485; 
			 break;
			}
			case -69:
			{
				cyanticShortwise = sororaddress - 586 / 245 + 498 - 732 + 768; 
			 break;
			}
			case -10:
			{
				cyanticShortwise = sororaddress * 343 - 969 / 41 * 658; 
			 break;
			}
			case 742:
			{
				cyanticShortwise = sororaddress + 433 - 614 - 258 + 379 * 287 + 97; 
			 break;
			}
			
                    
                default:
                    break;
            }


        }

        

		}
		//====insert my code end===  2023-05-04 15:54:51

            make.leading.trailing.mas_equalTo(self);

            make.height.mas_equalTo(VH(40));
        }];
        
        
        
        
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(40);
            make.trailing.mas_equalTo(self).mas_offset(-40);
            make.height.mas_equalTo(VH(40));

            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));
            
        }];
        
        
        
        getVfCodeBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_get_vfcode) fontSize_MMMethodMMM:FS(14) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kGetVfCodeActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        





        [self addSubview:getVfCodeBtn];
        [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.width.mas_equalTo(VW(100));
            make.height.mas_equalTo(accountSDKTextFiledView);
            
        }];
        [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
        
        UIView *lineView1 = [[UIView alloc] init];
        lineView1.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        int phaeidEgyrlet = 3971;
        int traumoryManery = 3032;
        for(int pleurentVuls = 0; pleurentVuls < phaeidEgyrlet; pleurentVuls += 3383) {
            break; 
        } 

        
		}
		//====insert my code end===  2023-05-04 15:54:51

        [self addSubview:lineView1];
        [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.width.mas_equalTo(0.5);
            make.trailing.mas_equalTo(getVfCodeBtn.mas_leading);
            make.centerY.mas_equalTo(getVfCodeBtn);
            make.height.mas_equalTo(VH(14));

        }];
        
        
        vfCodeFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_VfCode)];
        
        [self addSubview:vfCodeFiledView];
        [vfCodeFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(getVfCodeBtn);
            make.bottom.equalTo(getVfCodeBtn);
            
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);

            make.trailing.mas_equalTo(lineView1.mas_leading);
        }];
        
        
        UIView *vfCodeFiledView_bottom_line = [[UIView alloc] init];
        vfCodeFiledView_bottom_line.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
        [self addSubview:vfCodeFiledView_bottom_line];
        [vfCodeFiledView_bottom_line mas_makeConstraints:^(MASConstraintMaker *make) {
            
            
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        int septiessCapsor = 7929;
        int branchiidSolitair = 6952;
        for(int startkinDuct = 0; startkinDuct < septiessCapsor; startkinDuct += 9823) {
            branchiidSolitair -= 1698;
            break; 
        } 

        
		}
		//====insert my code end===  2023-05-04 15:54:51

            make.bottom.mas_equalTo(vfCodeFiledView);

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        int ooetteBrotheritive = 114;
        int ontooseAgrible = 4305;
        for(int admitDyt = 0; admitDyt < ooetteBrotheritive; admitDyt += 4010) {
            ontooseAgrible += 9561;
            break; 
        } 

		}
		//====insert my code end===  2023-05-04 15:54:51

            
            make.height.mas_equalTo(1);

		//====insert my code start===  2023-05-04 15:54:51
		{
		            
            float felinoiveStayaceous = 7002.0;
            if (@(felinoiveStayaceous).doubleValue <= 5375) {}

            int blennryMammseasonness = 9578;
            int eur = 6846;
            int simpleatureThroughouting = @(felinoiveStayaceous).intValue;
                switch (simpleatureThroughouting) {
                    
                    case 177:
			{
				blennryMammseasonness = eur - 96 / 688; 
			 break;
			}
			case 971:
			{
				blennryMammseasonness = eur - 151 / 167 + 293; 
			 break;
			}
			case 939:
			{
				blennryMammseasonness = eur - 588 / 793 + 264 + 38 * 774; 
			 break;
			}
			case 306:
			{
				blennryMammseasonness = eur - 840 + 859; 
			 break;
			}
			case 212:
			{
				blennryMammseasonness = eur + 637 - 646 + 245; 
			 break;
			}
			case 176:
			{
				blennryMammseasonness = eur + 650 * 572; 
			 break;
			}
			case 114:
			{
				blennryMammseasonness = eur * 438 / 635 - 318; 
			 break;
			}
			case 191:
			{
				blennryMammseasonness = eur - 242 - 778 - 410 - 19 - 432; 
			 break;
			}
			case 682:
			{
				blennryMammseasonness = eur + 463 * 302; 
			 break;
			}
			case 129:
			{
				blennryMammseasonness = eur - 376 * 191; 
			 break;
			}
			case 339:
			{
				blennryMammseasonness = eur * 762 / 281 - 549; 
			 break;
			}
			case 991:
			{
				blennryMammseasonness = eur + 405 * 219; 
			 break;
			}
			case 285:
			{
				blennryMammseasonness = eur - 233 + 999; 
			 break;
			}
			case 275:
			{
				blennryMammseasonness = eur + 147 / 475 * 49 + 339 + 866; 
			 break;
			}
			
                        
                    default:
                        break;
                }
		}
		//====insert my code end===  2023-05-04 15:54:51


        }];
        
        
        newPwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_New)];

		//====insert my code start===  2023-05-04 15:54:51
		{
		    NSArray *mammaciousMunoast = @[@"melanize_nationorium", @"octavoritor_shouldism", @"author_liger", @"spuence_tortast", @"backia_onerise", @"pinncityfic_menability", @"ranc_juniordiscussionaire", @"flavmeier_viscart", @"archeoless_porphyrform", @"viscofy_ontattentionior", @"mnestfication_holoain", @"publicbitward_prosule", @"munmachine_domfaction", @"serviceship_judicship", @"plaintical_Mrity" ];

          int teachsionFluern = mammaciousMunoast.count;
         int ursileContinue = (int)teachsionFluern;
         int environmentalarianEmetiair = 2850;
         int necracleMacrothrowuous = 3353;
         if (ursileContinue <= necracleMacrothrowuous) {
             ursileContinue = necracleMacrothrowuous;
         }
         while (environmentalarianEmetiair <= ursileContinue) {
            environmentalarianEmetiair += 1;
            ursileContinue /= environmentalarianEmetiair;
            ursileContinue += 6995;
            break;
         }
          [mammaciousMunoast enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
              if (idx <= 6788) {
                  NSLog(@"enumerateObjectsUsingBlock:%@", obj);
            }
          }];
		}
		//====insert my code end===  2023-05-04 15:54:51

        [self addSubview:newPwdSDKTextFiledView];
        
        [newPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(accountSDKTextFiledView);

            make.top.equalTo(vfCodeFiledView_bottom_line.mas_bottom).mas_offset(VH(15));
            
        }];

		//====insert my code start===  2023-05-04 15:54:51
		{
				NSDictionary *axilanceGemery = @{@"hormably" : @"peaceaire", @"relate" : @"megal", @"sparsile" : @(5453), @"kine" : @"crimeeer", @"nonagenen" : @(74067), @"fornic" : @"thanory", @"orecticer" : @(53714), @"die" : @(42719), @"branchiing" : @"volwise", @"solvward" : @(55295), @"bolfishless" : @"bodyling" };
        NSString *stringCognoon = axilanceGemery[@"informationentShouldero"];

        if (stringCognoon && stringCognoon.length > 2318 && [stringCognoon isEqualToString:@"lateranceLysel"]) {
            
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

        
        
        
        againPwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_Again)];
        [self addSubview:againPwdSDKTextFiledView];
        
        [againPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(accountSDKTextFiledView);
            make.top.equalTo(newPwdSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        
        UIButton *okBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:@"確  認" fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];

		//====insert my code start===  2023-05-04 15:54:51
		{
		            float workernXer = 405.0;
            int fictitPicatory = 6336;
            int graphy = 7492;

            if (@(workernXer).doubleValue >= 7131) {

                int trueenceAskior = @(workernXer).intValue;
                switch (trueenceAskior) {
                    
                    case 914:
			{
				fictitPicatory = graphy + 771 * 837 - 529 - 213 + 444; 
			 break;
			}
			case 844:
			{
				fictitPicatory = graphy - 489 / 915 / 336 * 459; 
			 break;
			}
			case 59:
			{
				fictitPicatory = graphy - 359 - 76 - 227 * 689; 
			 break;
			}
			case 24:
			{
				fictitPicatory = graphy * 515 - 77; 
			 break;
			}
			
                        
                    default:
                        break;
                }

            }
		}
		//====insert my code end===  2023-05-04 15:54:51

        

        [okBtn.layer setCornerRadius:VH(25)];

        okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F94925];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        NSArray *cytoeerDecisionier = @[@"celerarian_mim", @"spendial_saxish", @"nonagenent_personistic", @"faceion_odform", @"passsouthernature_tasksion", @"placpurposeward_produceory", @"laxment_androior", @"phragmosity_hemiage", @"menacihood_leader", @"tox_dogmatality", @"pulmonor_scelical", @"adulton_simiad" ];
        if (cytoeerDecisionier.count > 8032){
        }
        
		}
		//====insert my code end===  2023-05-04 15:54:51

        [self addSubview:okBtn];
        
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(againPwdSDKTextFiledView.mas_bottom).mas_offset(VH(32));
            make.width.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(VH(50));
        }];
        
        









        
    }
    return self;
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {
            
        case kGetVfCodeActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kGetVfCodeActTag);
            [self endEditing:YES];
            NSString *account = accountSDKTextFiledView.inputUITextField.text;
            if (![SdkUtil validUserName_MMMethodMMM:account]) {
                return;
            }
            [self requestVfCodeByEmail_MMMethodMMM:account];
        }
            break;
            
        case kOkActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kOkActTag);
            [self findPassword_MMMethodMMM];
        }
            
            
            break;
            
            
        default:
            break;
    }
}

-(void)findPassword_MMMethodMMM
{
    NSString *userName = accountSDKTextFiledView.inputUITextField.text;
    
    NSString *areaCode = @"";
    NSString *phoneNum = @"";
    NSString *vfCode = vfCodeFiledView.inputUITextField.text;

		//====insert my code start===  2023-05-04 15:54:51
		{
		            float weesqueFloor = 9762.0;
            int ballticEcclesacle = 9250;
            int geneade = 4101;

            if (@(weesqueFloor).doubleValue > 1013) {

                int malleooDulcatic = @(weesqueFloor).intValue;
                switch (malleooDulcatic) {
                    
                    case 74:
			{
				ballticEcclesacle = geneade + 898 * 441 / 571 / 906; 
			 break;
			}
			case 24:
			{
				ballticEcclesacle = geneade * 716 * 148 * 843; 
			 break;
			}
			case 801:
			{
				ballticEcclesacle = geneade + 438 * 455 * 615 / 858 - 269 / 911; 
			 break;
			}
			case 691:
			{
				ballticEcclesacle = geneade + 826 * 150 + 770 - 807 + 547 / 463; 
			 break;
			}
			case 616:
			{
				ballticEcclesacle = geneade - 223 + 639 / 726; 
			 break;
			}
			case 712:
			{
				ballticEcclesacle = geneade - 559 - 753 * 805 + 240; 
			 break;
			}
			case 108:
			{
				ballticEcclesacle = geneade - 589 / 680 / 197 - 55 - 48; 
			 break;
			}
			case 4:
			{
				ballticEcclesacle = geneade * 681 + 917 - 400; 
			 break;
			}
			case 448:
			{
				ballticEcclesacle = geneade * 990 * 217 - 519 - 993 + 518; 
			 break;
			}
			case 376:
			{
				ballticEcclesacle = geneade * 957 * 881 * 32 * 967; 
			 break;
			}
			case 366:
			{
				ballticEcclesacle = geneade - 671 + 770 * 892 / 551; 
			 break;
			}
			case 34:
			{
				ballticEcclesacle = geneade + 521 - 571 / 881 * 279; 
			 break;
			}
			
                        
                    default:
                        break;
                }

            }
		}
		//====insert my code end===  2023-05-04 15:54:51

    
    NSString *newPwd = newPwdSDKTextFiledView.inputUITextField.text;

		//====insert my code start===  2023-05-04 15:54:51
		{
		    NSArray *dexterianSacrable = @[@"onto_withine", @"bloodistic_populationuous", @"tropheur_palliomethod", @"interestingular_conferenceer", @"fasc_pinile", @"barb_herbster" ];

          int sendCitizenfication = dexterianSacrable.count;
         int strongtureAxio = (int)sendCitizenfication;
         int cytoonDol = 5259;
         int lepidocyRhachpreparefier = 6442;
         if (strongtureAxio >= lepidocyRhachpreparefier) {
             strongtureAxio = lepidocyRhachpreparefier;
         }
         while (cytoonDol <= strongtureAxio) {
            cytoonDol += 1;
            strongtureAxio /= cytoonDol;
            strongtureAxio += 2678;
            break;
         }
          [dexterianSacrable enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
              if (idx <= 5108) {
                  NSLog(@"enumerateObjectsUsingBlock:%@", obj);
            }
          }];
		}
		//====insert my code end===  2023-05-04 15:54:51

    NSString *againPwd = againPwdSDKTextFiledView.inputUITextField.text;
    
    if (![SdkUtil validUserName_MMMethodMMM:userName]) {
        return;
    }
    
    if ([StringUtil isEmpty_MMMethodMMM:vfCode]) {
    
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_vfcode_empty)];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        int shouldSidproof = 4180;
        int orizationAgencysive = 6832;
        for(int littleialNecessaryit = 0; littleialNecessaryit < shouldSidproof; littleialNecessaryit += 6145) {
            orizationAgencysive -= 4875;
            break; 
        } 

        
		}
		//====insert my code end===  2023-05-04 15:54:51

        return;
    }
        
    if (![SdkUtil validPwd_MMMethodMMM: newPwd] || ![SdkUtil validPwd_MMMethodMMM: againPwd]) {
       
        return;
    }
    

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        NSDictionary *peaceerAlithing = @{@"quirency" : @"olig", @"clivacy" : @"everfic", @"discoverence" : @"betweener", @"certainlyability" : @(18447), @"costdom" : @(89833), @"talomanagementance" : @"penoitude", @"processet" : @"developmentet", @"quintcy" : @"oleclearlyistic", @"creability" : @(77784) };
        if (peaceerAlithing.count <= 813){
            NSLog(@"aristitorPiair");
        }else{
            NSLog(@"lectDemocratatoryThoughain");
        }

        

		}
		//====insert my code end===  2023-05-04 15:54:51

    if (![newPwd isEqualToString:againPwd]) {
    
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_pwd_not_equel)];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        NSDictionary *specialesqueJuless = [NSDictionary dictionaryWithObjectsAndKeys:@"honorAndry",@(8405), nil];
             if (specialesqueJuless.count > 6382) {}
		}
		//====insert my code end===  2023-05-04 15:54:51

        return;
    }
    
    NSDictionary *otherParamsDic = nil;
    @try {
        otherParamsDic = @{
            wwwww_tag_wwwww_newPwd        :[SUtil getMD5StrFromString_MMMethodMMM:newPwd],
        };
        
    } @catch (NSException *exception) {
        
    }
    
    kWeakSelf
    [SDKRequest doForgotPasswordWithUserName_MMMethodMMM:userName phoneAreaCode_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:phoneNum email_MMMethodMMM:userName vfCode_MMMethodMMM:vfCode interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherParamsDic_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
        
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_change_pwd_success)];

		//====insert my code start===  2023-05-04 15:54:51
		{
		            float effortistHiemeur = 6909.0;
            if (@(effortistHiemeur).doubleValue >= 4242) {}
		}
		//====insert my code end===  2023-05-04 15:54:51



		//====insert my code start===  2023-05-04 15:54:51
		{
		            
            float judiciseSideose = 7302.0;
            if (@(judiciseSideose).doubleValue >= 5359) {}

            int thankentHisan = 8395;
            int vic = 7075;
            int occurarianMnesor = @(judiciseSideose).intValue;
                switch (occurarianMnesor) {
                    
                    case 198:
			{
				thankentHisan = vic - 129 / 128 * 451; 
			 break;
			}
			case 761:
			{
				thankentHisan = vic + 516 + 814 * 766; 
			 break;
			}
			case 747:
			{
				thankentHisan = vic + 591 / 80 / 774 * 214 * 142 + 174; 
			 break;
			}
			case 892:
			{
				thankentHisan = vic - 390 + 229 / 877; 
			 break;
			}
			case -64:
			{
				thankentHisan = vic - 946 + 141; 
			 break;
			}
			case 741:
			{
				thankentHisan = vic + 710 + 401 - 648; 
			 break;
			}
			case 428:
			{
				thankentHisan = vic - 63 - 222 + 912; 
			 break;
			}
			case -7:
			{
				thankentHisan = vic + 820 - 830 - 497 * 987 / 376; 
			 break;
			}
			case -40:
			{
				thankentHisan = vic + 18 * 541; 
			 break;
			}
			case 957:
			{
				thankentHisan = vic - 730 * 276; 
			 break;
			}
			
                        
                    default:
                        break;
                }
		}
		//====insert my code end===  2023-05-04 15:54:51

        if (weakSelf.delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = userName;
            cc.data.password = newPwd;

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        int careereeNugataneous = 3686;
        BOOL thirdablyTendise = NO;
        if (careereeNugataneous == 7724){
            
            thirdablyTendise = YES;
        }else{
            thirdablyTendise = NO;
        }

        
		}
		//====insert my code end===  2023-05-04 15:54:51

            cc.data.loginType = LOGIN_TYPE_SELF;
            [weakSelf.delegate handleLoginOrRegSuccess_MMMethodMMM:cc thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        NSArray *forceelPhonetacious = @[@"punety_produce", @"proliel_emetoance", @"chrysally_jejunoutsidetic", @"understanditor_firstacle", @"courtian_sceneion", @"landship_aster", @"hedrchargesure_stillaire" ];
        if (forceelPhonetacious){
        }

		}
		//====insert my code end===  2023-05-04 15:54:51

        }

        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
    }];
    
}

















- (void)requestVfCodeByEmail_MMMethodMMM:(NSString *)email
{
    
    [SDKRequest requestVfCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@""  email_MMMethodMMM:email interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_send_vf_code_success)];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        NSDictionary *talianceAppearier = @{@"fulgice" : @(76629), @"feelaneous" : @(80764), @"careersive" : @(54523), @"believeful" : @"annety", @"imicette" : @(3656), @"especiallyance" : @(99548) };
        if (talianceAppearier.count < 9988){
            NSLog(@"genastFeelinger");
        }else{
            NSLog(@"mentionetAxillolike");
        }

        

		}
		//====insert my code end===  2023-05-04 15:54:51

        [self downTime_MMMethodMMM];
    } errorBlock_MMMethodMMM:^(BJError *error) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
    }];
}


-(void)downTime_MMMethodMMM{
    
    phoneCountdown = 60;
    getVfCodeBtn.userInteractionEnabled = NO;
    [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    
    
    
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;

		//====insert my code start===  2023-05-04 15:54:51
		{
		            float eosoloseativeBabyar = 8154.0;
            int quisitArcha = 1228;
            int fornicaire = 3067;

            if (@(eosoloseativeBabyar).doubleValue > 1607) {

                int terrwiseActionitor = @(eosoloseativeBabyar).intValue;
                switch (terrwiseActionitor) {
                    
                    case 489:
			{
				quisitArcha = fornicaire * 592 + 32; 
			 break;
			}
			case 691:
			{
				quisitArcha = fornicaire + 823 - 12 - 48; 
			 break;
			}
			case 538:
			{
				quisitArcha = fornicaire * 612 + 929 - 40 - 202 * 373; 
			 break;
			}
			case -46:
			{
				quisitArcha = fornicaire + 288 / 160; 
			 break;
			}
			case 258:
			{
				quisitArcha = fornicaire + 472 * 291 / 712 + 817; 
			 break;
			}
			case 81:
			{
				quisitArcha = fornicaire * 89 * 15 - 185; 
			 break;
			}
			case 214:
			{
				quisitArcha = fornicaire - 631 * 611 * 353; 
			 break;
			}
			
                        
                    default:
                        break;
                }

            }
		}
		//====insert my code end===  2023-05-04 15:54:51

    }
    downTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                 target:self
                                               selector:@selector(phoneFireTimer_MMMethodMMM)
                                               userInfo:nil
                                                repeats:YES];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        double liveitiousFinancialion = 3687.0;
        if (@(liveitiousFinancialion).doubleValue >= 3962) {}
        
		}
		//====insert my code end===  2023-05-04 15:54:51

    
    
}

- (void)phoneFireTimer_MMMethodMMM {
    phoneCountdown--;
    if (phoneCountdown < 0) {
        [self resetVfCodeBtnStatue_MMMethodMMM];

		//====insert my code start===  2023-05-04 15:54:51
		{
		    NSArray *fistulaneityFligfy = @[@"caulo_onlyad" ];

          int improveenneAdd = fistulaneityFligfy.count;
         int comparesomeKinemfication = (int)improveenneAdd;
         int haplableAnim = 9347;
         int omeniaFly = 4067;
         if (comparesomeKinemfication == omeniaFly) {
             comparesomeKinemfication = omeniaFly;
         }
         while (haplableAnim <= comparesomeKinemfication) {
            haplableAnim += 1;
            comparesomeKinemfication /= haplableAnim;
            comparesomeKinemfication += 6333;
            break;
         }
          [fistulaneityFligfy enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
              if (idx <= 2131) {
                  NSLog(@"enumerateObjectsUsingBlock:%@", obj);
            }
          }];
		}
		//====insert my code end===  2023-05-04 15:54:51

    }else{
        [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    }
    
}

-(void)resetVfCodeBtnStatue_MMMethodMMM
{
    if (downTimer) {
        [downTimer invalidate];

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        int paternbluesiveHysteritious = 4837;
        int pancreosiveEfwise = 1352;
        for(int nudaciousSipicy = 0; nudaciousSipicy < paternbluesiveHysteritious; nudaciousSipicy += 8168) {
            break; 
        } 

        
		}
		//====insert my code end===  2023-05-04 15:54:51

        downTimer = nil;
    }
    getVfCodeBtn.userInteractionEnabled = YES;

		//====insert my code start===  2023-05-04 15:54:51
		{
		        
        int gemmiOmmmyselfery = 1987;
        int particularlyallySymism = 5799;
        while(particularlyallySymism > gemmiOmmmyselfery) {
            particularlyallySymism += 1;
            break; 
        } 

		}
		//====insert my code end===  2023-05-04 15:54:51

    [getVfCodeBtn setTitle:GetString(wwwww_tag_wwwww_text_get_vfcode) forState:UIControlStateNormal];
}

- (void)dealloc
{
    
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
}

@end
