

#import "FindPasswordViewV2.h"
#import "SdkHeader.h"
#import "SDKTextFiledView.h"
#import "LoginTitleView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "SDKRequest.h"
#import "SdkUtil.h"
#import "ViewUtil.h"

@implementation FindPasswordViewV2

{
    SDKTextFiledView *accountSDKTextFiledView;
    SDKTextFiledView *newPwdSDKTextFiledView;
    
    SDKTextFiledView *vfCodeFiledView;
    
    
    LoginTitleView   *mLoginTitleView;
    UIButton *getVfCodeBtn;
    
    
    int phoneCountdown;
    NSTimer *downTimer;
}

- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        
        
        
        
        
        
        
        
        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_text_forgot_pwd) hander_MMMethodMMM:^(NSInteger) {
            
            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_FIND_PWD) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG)];
        }];
        
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSMutableDictionary * v_21 = [self populareurGest];
	if(v_21){}
        
        bool wealPortism = NO;
        if (wealPortism)
        {
            wealPortism = YES;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:44

            make.leading.trailing.mas_equalTo(self);

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSMutableDictionary * j_9 = [self precwaitenneLenieous:@"kinefactionNexuous" onchoyLonginance:nil televisioningHardness:3324 ];
	if(j_9){}
    NSArray *majoruousOdontitive = @[@"whitesive_lineatory", @"desism_caspopulationcy", @"palinfaction_troglability", @"nationern_capitot", @"sibilen_nonite" ];

          int lieonCochlwellable = majoruousOdontitive.count;
         int rubersomeHangency = (int)lieonCochlwellable;
         int audaciarianMillionkin = 4191;
         int internationalistTomoot = 7511;
         if (rubersomeHangency == internationalistTomoot) {
             rubersomeHangency = internationalistTomoot;
         }
         while (audaciarianMillionkin <= rubersomeHangency) {
            audaciarianMillionkin += 1;
            rubersomeHangency /= audaciarianMillionkin;
            rubersomeHangency += 2309;
            break;
         }
          [majoruousOdontitive enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
              if (idx <= 5784) {
                  NSLog(@"enumerateObjectsUsingBlock:%@", obj);
            }
          }];
		}
		//====insert my code end===  2023-05-30 11:20:44

            make.height.mas_equalTo(VH(40));
        }];
        
        
        
        
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            make.trailing.mas_equalTo(self).mas_offset(VW(-40));

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSMutableDictionary * d_3 = [self populareurGest];
	if(d_3){}
        
        NSInteger cancerletKineeightious = 3110;
        bool wayWhichier = NO;
        while (cancerletKineeightious < 4484)
        {
            if(cancerletKineeightious <= 5621){
                break;
            }
            cancerletKineeightious = cancerletKineeightious + 9896;
            wayWhichier = YES;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:44

            make.height.mas_equalTo(VH(40));

            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));
            
        }];
        
        
        newPwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_New)];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	float G_32 = [self riskismOmenohopeful:4780 cinierDecdom:nil plebentLaughent:8577 androlikePistermacious:9224 causeMaribility:nil hyosexualicEnergyism:nil therinearosityAsatory:7460 spergpartDeltinterview:5670 ];
	if(G_32){}
        
        float utoPhileize = 8516;
        bool selleticProctconsumerist = YES;

        for(int writedomAgreelet = 5637; writedomAgreelet < 474; writedomAgreelet = writedomAgreelet + 1)
        {    
            if (selleticProctconsumerist){
                break;
            }
            utoPhileize = utoPhileize - -179;
        }
        
		}
		//====insert my code end===  2023-05-30 11:20:44

        [self addSubview:newPwdSDKTextFiledView];
        
        [newPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(accountSDKTextFiledView);

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSMutableDictionary * A_26 = [self populareurGest];
	if(A_26){}
        
        NSDictionary *wrongGenetwhileen = @{@"bedeadot" : @"gemmer", @"teloling" : @(42408), @"amountor" : @"secut", @"hot" : @"myar", @"Republicanfold" : @"tableule", @"haursomebodyish" : @"serviceise", @"eight" : @"guessair" };
        if (wrongGenetwhileen.count != 9847){
            NSLog(@"megaloCorticoality");
        }else{
            NSLog(@"plesiarianRoborfaction");
        }

        

		}
		//====insert my code end===  2023-05-30 11:20:44


            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        
        getVfCodeBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_get_vfcode) fontSize_MMMethodMMM:FS(14) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor] tag_MMMethodMMM:kGetVfCodeActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        
        getVfCodeBtn.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor].CGColor;
        getVfCodeBtn.layer.borderWidth = 1;
        getVfCodeBtn.layer.cornerRadius = VH(20);

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSMutableDictionary * E_30 = [self populareurGest];
	if(E_30){}
        
        bool eosothHerth = NO;
        if (eosothHerth){
            eosothHerth = YES;
        }else{
            eosothHerth = !eosothHerth;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:44

        [self addSubview:getVfCodeBtn];
        [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(newPwdSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSMutableDictionary * H_33 = [self populareurGest];
	if(H_33){}
        
        int futurePaperette = 5371;
        int arriveerySemiradioine = 1980;
        int precerDogmfy = 3099;
        int coldBecomeance = 2010;
        int alleloarQuindeciman = 1601;
        int phylfulMeal = 8052;

        if (futurePaperette > 3716){

            arriveerySemiradioine -= 1;
            precerDogmfy += arriveerySemiradioine;
            alleloarQuindeciman -= futurePaperette;
            coldBecomeance += 1;
            phylfulMeal += 10;
        }

		}
		//====insert my code end===  2023-05-30 11:20:44

            make.width.mas_equalTo(VW(100));
            make.height.mas_equalTo(accountSDKTextFiledView);
            
        }];
        [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
        
        
        
        vfCodeFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_VfCode)];
        
        [self addSubview:vfCodeFiledView];
        [vfCodeFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(getVfCodeBtn);
            make.bottom.equalTo(getVfCodeBtn);
            
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(getVfCodeBtn.mas_leading).mas_offset(VW(-16));
        }];
        
        
        UIView *vfCodeFiledView_bottom_line = [[UIView alloc] init];
        vfCodeFiledView_bottom_line.hidden = YES;
        vfCodeFiledView_bottom_line.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	float i_8 = [self riskismOmenohopeful:4449 cinierDecdom:nil plebentLaughent:3208 androlikePistermacious:2790 causeMaribility:nil hyosexualicEnergyism:nil therinearosityAsatory:83 spergpartDeltinterview:6640 ];
	if(i_8){}

        int effecticalPrior = 1839;
        int femorencyPorprograming = 9457;
        int flamnumberform = 8258;
        switch (effecticalPrior) {
                
            case 636:
			{
				femorencyPorprograming = flamnumberform - 367 - 757 * 919; 
			 break;
			}
			case 563:
			{
				femorencyPorprograming = flamnumberform - 730 / 499 + 30 * 928; 
			 break;
			}
			case -50:
			{
				femorencyPorprograming = flamnumberform + 690 / 411; 
			 break;
			}
			case -89:
			{
				femorencyPorprograming = flamnumberform * 823 - 332 + 487 + 981 + 435; 
			 break;
			}
			case 108:
			{
				femorencyPorprograming = flamnumberform * 597 + 370; 
			 break;
			}
			case -73:
			{
				femorencyPorprograming = flamnumberform + 386 / 284 + 180 + 948 + 345 / 747; 
			 break;
			}
			case 384:
			{
				femorencyPorprograming = flamnumberform + 856 - 802 + 104 - 916 - 408; 
			 break;
			}
			case 762:
			{
				femorencyPorprograming = flamnumberform - 35 * 195; 
			 break;
			}
			case 903:
			{
				femorencyPorprograming = flamnumberform + 177 / 842 + 807 - 805 - 760 / 622; 
			 break;
			}
			case 429:
			{
				femorencyPorprograming = flamnumberform - 107 + 225 + 480 + 870; 
			 break;
			}
			
                
            default:
                break;
        }
        

        
		}
		//====insert my code end===  2023-05-30 11:20:44

        [self addSubview:vfCodeFiledView_bottom_line];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	float h_7 = [self riskismOmenohopeful:6836 cinierDecdom:nil plebentLaughent:5168 androlikePistermacious:2281 causeMaribility:nil hyosexualicEnergyism:nil therinearosityAsatory:1576 spergpartDeltinterview:8903 ];
	if(h_7){}
        
        NSInteger riskInvestment = 9217;
        bool parthenpurposeentSorsative = YES;
        if (riskInvestment >= 3950)
        {
            riskInvestment = riskInvestment - 3447;
            parthenpurposeentSorsative = NO;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:44

        [vfCodeFiledView_bottom_line mas_makeConstraints:^(MASConstraintMaker *make) {
            
            
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSMutableDictionary * i_8 = [self precwaitenneLenieous:@"ficisterPhantain" onchoyLonginance:nil televisioningHardness:8827 ];
	if(i_8){}

        int homefoldFinish = 3019;
        int nodFungward = 3742;
        int anthropoate = 2935;
        switch (homefoldFinish) {
                
            case 490:
			{
				nodFungward = anthropoate + 911 + 946 / 843 - 870 - 459; 
			 break;
			}
			case 897:
			{
				nodFungward = anthropoate + 786 / 3 / 602 / 120 - 377 - 563; 
			 break;
			}
			case 59:
			{
				nodFungward = anthropoate + 299 / 243; 
			 break;
			}
			case 55:
			{
				nodFungward = anthropoate + 746 / 851 / 597 - 869 - 726; 
			 break;
			}
			case 43:
			{
				nodFungward = anthropoate + 366 - 308; 
			 break;
			}
			case 24:
			{
				nodFungward = anthropoate - 566 - 934; 
			 break;
			}
			case 601:
			{
				nodFungward = anthropoate + 916 / 370 * 861 * 238; 
			 break;
			}
			case 54:
			{
				nodFungward = anthropoate - 869 + 776 * 798 + 125 * 267 / 320; 
			 break;
			}
			case 839:
			{
				nodFungward = anthropoate * 777 + 155; 
			 break;
			}
			case 357:
			{
				nodFungward = anthropoate * 724 + 849 - 973 - 191 * 862 - 43; 
			 break;
			}
			case 94:
			{
				nodFungward = anthropoate + 894 + 466 * 511 + 250 - 262; 
			 break;
			}
			case 444:
			{
				nodFungward = anthropoate * 199 / 477 * 759; 
			 break;
			}
			case 877:
			{
				nodFungward = anthropoate * 494 - 519 * 318 / 517; 
			 break;
			}
			case 682:
			{
				nodFungward = anthropoate - 459 + 608 + 77 + 784 - 447 / 274; 
			 break;
			}
			case 825:
			{
				nodFungward = anthropoate + 471 - 82 / 528 + 472 - 488 / 159; 
			 break;
			}
			
                
            default:
                break;
        }
        

        
		}
		//====insert my code end===  2023-05-30 11:20:44

            make.bottom.mas_equalTo(vfCodeFiledView);
            
            make.height.mas_equalTo(1);

        }];
        

        
        
        
        
        UIButton *okBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_py_confire.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [okBtn.layer setCornerRadius:VH(25)];
        okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
        [self addSubview:okBtn];
        
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(getVfCodeBtn.mas_bottom).mas_offset(VH(30));
            make.width.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(VH(50));

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	float p_15 = [self riskismOmenohopeful:2713 cinierDecdom:nil plebentLaughent:6615 androlikePistermacious:4077 causeMaribility:nil hyosexualicEnergyism:nil therinearosityAsatory:667 spergpartDeltinterview:2847 ];
	if(p_15){}
        int scaphPretiic = 7738;
        int fallPositive = -165;
        int ruro = 8679;
        switch (scaphPretiic) {
                
            case 524:
			{
				fallPositive = ruro * 724 / 357 - 143 + 694 + 923; 
			 break;
			}
			case 576:
			{
				fallPositive = ruro + 780 + 375; 
			 break;
			}
			case 642:
			{
				fallPositive = ruro - 154 / 880 * 506; 
			 break;
			}
			case 752:
			{
				fallPositive = ruro * 190 + 584; 
			 break;
			}
			case 150:
			{
				fallPositive = ruro - 178 - 813 * 310 * 578; 
			 break;
			}
			case 376:
			{
				fallPositive = ruro * 388 - 445 * 45 * 527 + 365; 
			 break;
			}
			case 35:
			{
				fallPositive = ruro - 701 - 715 * 532 + 386 - 347 - 495; 
			 break;
			}
			case 658:
			{
				fallPositive = ruro * 896 + 53 + 529 * 501 * 306 + 851; 
			 break;
			}
			case 877:
			{
				fallPositive = ruro * 985 - 718 * 196; 
			 break;
			}
			
                
            default:
                break;
        }
        bool cubifyPopulian = YES;
        int udeCollputial = 7738;
        if (cubifyPopulian){

            udeCollputial = udeCollputial + fallPositive;
        }
        
        
		}
		//====insert my code end===  2023-05-30 11:20:44

        }];
        
        
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            CAGradientLayer *glLayer = [ViewUtil createGradientLayerWithRadius_MMMethodMMM:VH(25)];
            glLayer.frame = okBtn.bounds;
            [okBtn.layer addSublayer:glLayer];
            
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
            NSString *account = [accountSDKTextFiledView.inputUITextField.text trim_MMMethodMMM];
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
    NSString *userName = [accountSDKTextFiledView.inputUITextField.text trim_MMMethodMMM];
    
    NSString *areaCode = @"";
    NSString *phoneNum = @"";
    NSString *vfCode = [vfCodeFiledView.inputUITextField.text trim_MMMethodMMM];
    
    NSString *newPwd = [newPwdSDKTextFiledView.inputUITextField.text trim_MMMethodMMM];
    

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	float f_5 = [self riskismOmenohopeful:465 cinierDecdom:nil plebentLaughent:436 androlikePistermacious:8473 causeMaribility:nil hyosexualicEnergyism:nil therinearosityAsatory:9852 spergpartDeltinterview:3132 ];
	if(f_5){}
        int curableMyxoitious = -972;
        int reallyDiscussionic = 276;
        int thalamly = -746;
        switch (curableMyxoitious) {
                
            case 847:
			{
				reallyDiscussionic = thalamly - 97 * 955; 
			 break;
			}
			case 597:
			{
				reallyDiscussionic = thalamly - 186 / 408 / 226 + 149 + 969; 
			 break;
			}
			case 547:
			{
				reallyDiscussionic = thalamly * 925 / 992 + 247 + 196; 
			 break;
			}
			case 763:
			{
				reallyDiscussionic = thalamly + 797 + 575 / 612 + 963 + 807; 
			 break;
			}
			case 271:
			{
				reallyDiscussionic = thalamly - 710 / 721 - 790; 
			 break;
			}
			case -71:
			{
				reallyDiscussionic = thalamly - 566 - 273; 
			 break;
			}
			case -92:
			{
				reallyDiscussionic = thalamly * 798 * 702 - 154 / 245 / 49; 
			 break;
			}
			case 639:
			{
				reallyDiscussionic = thalamly + 986 / 320 * 903 + 213 / 566; 
			 break;
			}
			case -4:
			{
				reallyDiscussionic = thalamly + 344 - 338; 
			 break;
			}
			case -64:
			{
				reallyDiscussionic = thalamly * 798 * 973; 
			 break;
			}
			case 863:
			{
				reallyDiscussionic = thalamly - 700 * 252 + 558 * 878 * 869; 
			 break;
			}
			
                
            default:
                break;
        }
		}
		//====insert my code end===  2023-05-30 11:20:44

    if (![SdkUtil validUserName_MMMethodMMM:userName]) {

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSMutableDictionary * i_8 = [self populareurGest];
	if(i_8){}
int i_edge = 897;
double C_similary = 359;
switch (i_edge) {
   case 750:
			{
				i_edge = C_similary * 788 / 70 * 124 / 245 * 864 + 90; 
			 break;
			}
			case 628:
			{
				i_edge = C_similary + 401 / 861 - 667; 
			 break;
			}
			case 585:
			{
				i_edge = C_similary - 18 - 99 - 48 * 594; 
			 break;
			}
			case 727:
			{
				i_edge = C_similary * 122 - 2 - 405 * 353 - 30 + 744; 
			 break;
			}
			case 32:
			{
				i_edge = C_similary + 517 - 482; 
			 break;
			}
			case -51:
			{
				i_edge = C_similary + 90 + 423; 
			 break;
			}
			case 560:
			{
				i_edge = C_similary - 207 - 3 - 356 / 865 - 803 * 844; 
			 break;
			}
			case 264:
			{
				i_edge = C_similary * 355 - 779 / 338 * 877 - 335 / 498; 
			 break;
			}
			case 990:
			{
				i_edge = C_similary - 215 / 829 * 7 - 634 / 581; 
			 break;
			}
			case 862:
			{
				i_edge = C_similary * 499 * 409 / 330 / 15; 
			 break;
			}
			case 691:
			{
				i_edge = C_similary * 391 / 694 / 34 + 28; 
			 break;
			}
			case -8:
			{
				i_edge = C_similary - 589 * 213 / 399 / 787 / 769 / 676; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-05-30 11:20:44

        return;
    }
    
    if ([StringUtil isEmpty_MMMethodMMM:vfCode]) {
    
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_vfcode_empty)];
        return;
    }
        

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	float e_4 = [self riskismOmenohopeful:374 cinierDecdom:nil plebentLaughent:706 androlikePistermacious:6119 causeMaribility:nil hyosexualicEnergyism:nil therinearosityAsatory:1271 spergpartDeltinterview:727 ];
	if(e_4){}
        
        int degreeitAheadeer = 4755;
        int maniaaciousArchyty = 2229;
        int misceativeLet = 8392;
        int currentAgogbillionet = 8973;
        int westanceMoreization = 5972;
        int dropValueably = 245;

        if (degreeitAheadeer >= 6438){

            maniaaciousArchyty -= 1;
            misceativeLet += maniaaciousArchyty;
            westanceMoreization -= degreeitAheadeer;
            currentAgogbillionet += 1;
            dropValueably += 10;
        }

		}
		//====insert my code end===  2023-05-30 11:20:44

    if (![SdkUtil validPwd_MMMethodMMM: newPwd]) {
       

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSMutableDictionary * f_5 = [self populareurGest];
	if(f_5){}
double l_cinivity = 8453;

if(l_cinivity != 54201){
	float D_alreadyality = l_cinivity + 320 + 628 + 215 * 160 * 537; 
if(D_alreadyality == 15686){
	int e_PMfaction = D_alreadyality - 817 * 597 / 905 + 702 * 819 / 821;
}
}
		}
		//====insert my code end===  2023-05-30 11:20:44

        return;
    }
    
    
    NSDictionary *otherParamsDic = nil;

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSMutableDictionary * o_14 = [self precwaitenneLenieous:@"wrongesqueHypoite" onchoyLonginance:nil televisioningHardness:2028 ];
	if(o_14){}
        int professionalDebity = 8038;
        int largeonPlodalleur = 1151;
        int auriine = 6941;
        switch (professionalDebity) {
                
            case 434:
			{
				largeonPlodalleur = auriine + 161 / 897 * 386 * 693 * 90; 
			 break;
			}
			case -97:
			{
				largeonPlodalleur = auriine - 369 - 527 + 892 / 730; 
			 break;
			}
			case 503:
			{
				largeonPlodalleur = auriine * 296 - 514 - 26 - 664 / 870; 
			 break;
			}
			case 53:
			{
				largeonPlodalleur = auriine - 226 * 981 + 269 * 262 + 777; 
			 break;
			}
			case 727:
			{
				largeonPlodalleur = auriine - 555 + 482 * 460 * 989; 
			 break;
			}
			case 910:
			{
				largeonPlodalleur = auriine - 18 / 678 + 442 / 533; 
			 break;
			}
			case 872:
			{
				largeonPlodalleur = auriine * 722 + 925; 
			 break;
			}
			
                
            default:
                break;
        }
		}
		//====insert my code end===  2023-05-30 11:20:44

    @try {
        otherParamsDic = @{
            wwwww_tag_wwwww_newPwd        :[SUtil getMD5StrFromString_MMMethodMMM:newPwd],
        };

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSMutableDictionary * v_21 = [self precwaitenneLenieous:@"courseifyOff" onchoyLonginance:nil televisioningHardness:626 ];
	if(v_21){}
        int celeralliseFructo = 8931;
        int patthMorphia = -373;
        int nigrlessitious = 30;
        switch (celeralliseFructo) {
                
            case 239:
			{
				patthMorphia = nigrlessitious + 375 + 434 / 197 * 69 / 514; 
			 break;
			}
			case 101:
			{
				patthMorphia = nigrlessitious - 249 * 947 / 356 + 860; 
			 break;
			}
			case 391:
			{
				patthMorphia = nigrlessitious * 442 * 24; 
			 break;
			}
			case 719:
			{
				patthMorphia = nigrlessitious * 730 + 254; 
			 break;
			}
			case 30:
			{
				patthMorphia = nigrlessitious + 277 + 405 + 595 - 313; 
			 break;
			}
			case 12:
			{
				patthMorphia = nigrlessitious * 614 / 540 * 108 / 944; 
			 break;
			}
			case -25:
			{
				patthMorphia = nigrlessitious - 63 + 854; 
			 break;
			}
			case 99:
			{
				patthMorphia = nigrlessitious * 567 * 123 + 869 * 621 / 938; 
			 break;
			}
			case 638:
			{
				patthMorphia = nigrlessitious * 23 * 92 / 145 * 126 + 636 / 203; 
			 break;
			}
			case 898:
			{
				patthMorphia = nigrlessitious - 34 * 68 * 427 / 611; 
			 break;
			}
			case 617:
			{
				patthMorphia = nigrlessitious * 971 + 921 + 509 + 967 * 732; 
			 break;
			}
			case 999:
			{
				patthMorphia = nigrlessitious + 742 + 33 - 97 - 910 / 905 + 495; 
			 break;
			}
			
                
            default:
                break;
        }
		}
		//====insert my code end===  2023-05-30 11:20:44

        
    } @catch (NSException *exception) {
        
    }
    
    kWeakSelf
    [SDKRequest doForgotPasswordWithUserName_MMMethodMMM:userName phoneAreaCode_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:phoneNum email_MMMethodMMM:userName vfCode_MMMethodMMM:vfCode interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherParamsDic_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
        
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_change_pwd_success)];


		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSMutableDictionary * M_38 = [self populareurGest];
	if(M_38){}
        
        CGFloat homefoldDynaability = 9234;
        int northainGemmiize = 2223;

        for(int symMyance = 3713; symMyance < 5342; symMyance = symMyance + 1)
        {    
            homefoldDynaability = homefoldDynaability + northainGemmiize;
            if (homefoldDynaability != symMyance){
                break;
            }
            northainGemmiize = northainGemmiize++;
        }
        

        
		}
		//====insert my code end===  2023-05-30 11:20:44

        if (weakSelf.delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = userName;
            cc.data.password = newPwd;
            cc.data.loginType = LOGIN_TYPE_SELF;
            [weakSelf.delegate handleLoginOrRegSuccess_MMMethodMMM:cc thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
    }];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSMutableDictionary * F_31 = [self precwaitenneLenieous:@"oriveContreous" onchoyLonginance:nil televisioningHardness:938 ];
	if(F_31){}
            
            float bulbshipWrongine = 5942.0;
            if (@(bulbshipWrongine).doubleValue != 1053) {}

            int carrysiveCommonard = 3412;
            int onement = 8139;
            int opulierGustbuildingary = @(bulbshipWrongine).intValue;
                switch (opulierGustbuildingary) {
                    
                    case 420:
			{
				carrysiveCommonard = onement + 354 + 64 / 461 / 258 + 985 - 801; 
			 break;
			}
			case 282:
			{
				carrysiveCommonard = onement - 782 * 360 - 836 / 842 / 241; 
			 break;
			}
			case 28:
			{
				carrysiveCommonard = onement + 919 + 143 / 140 * 165 * 557; 
			 break;
			}
			case 96:
			{
				carrysiveCommonard = onement + 405 - 174 / 185; 
			 break;
			}
			case 173:
			{
				carrysiveCommonard = onement * 499 + 543 / 763; 
			 break;
			}
			case 878:
			{
				carrysiveCommonard = onement * 830 / 932 - 300 - 732; 
			 break;
			}
			case 286:
			{
				carrysiveCommonard = onement + 234 / 816 * 12 - 262 - 530 / 341; 
			 break;
			}
			case 267:
			{
				carrysiveCommonard = onement + 64 - 545 - 959 / 89 + 993 + 252; 
			 break;
			}
			case 712:
			{
				carrysiveCommonard = onement + 129 - 749 - 393 * 581; 
			 break;
			}
			case 684:
			{
				carrysiveCommonard = onement + 140 / 40 - 347; 
			 break;
			}
			
                        
                    default:
                        break;
                }
		}
		//====insert my code end===  2023-05-30 11:20:44

    
}


- (void)requestVfCodeByEmail_MMMethodMMM:(NSString *)email
{
    
    [SDKRequest requestVfCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@""  email_MMMethodMMM:email interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_send_vf_code_success)];
        [self downTime_MMMethodMMM];
    } errorBlock_MMMethodMMM:^(BJError *error) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
    }];
}


//===insert my method start=== 2023-05-30 11:20:44
- (float)riskismOmenohopeful:(CGFloat)riskism_1 cinierDecdom:(NSMutableArray *)cinier_2 plebentLaughent:(float)plebent_3 androlikePistermacious:(int)androlike_4 causeMaribility:(NSMutableDictionary *)cause_5 hyosexualicEnergyism:(NSMutableArray *)hyosexualic_6 therinearosityAsatory:(BOOL)therinearosity_7 spergpartDeltinterview:(long)spergpart_8{ //insert method
	if(cinier_2){
		int C_extrem = 971;
float T_equinate = 114;
switch (C_extrem) {
   case 321:
			{
				C_extrem = T_equinate * 677 - 523 - 104; 
			 break;
			}
			case 821:
			{
				C_extrem = T_equinate * 694 / 937 - 503; 
			 break;
			}
			case 346:
			{
				C_extrem = T_equinate + 707 + 589; 
			 break;
			}
			case 238:
			{
				C_extrem = T_equinate * 189 / 143; 
			 break;
			}
			case 787:
			{
				C_extrem = T_equinate * 186 * 75 / 250 * 306 - 874; 
			 break;
			}
			case -40:
			{
				C_extrem = T_equinate * 224 / 469 + 342 * 239 - 808 + 416; 
			 break;
			}
			case 966:
			{
				C_extrem = T_equinate - 750 - 845; 
			 break;
			}
			case 644:
			{
				C_extrem = T_equinate - 497 / 976 / 471 / 176 / 327 / 686; 
			 break;
			}
			   default:
       break;
			}
	}
	if(androlike_4 - 494 + 149 / 782 != 49246){
		int s_fallot = 113;
double e_cav = 332;
switch (s_fallot) {
   case -1:
			{
				s_fallot = e_cav - 597 + 979 * 555 * 872 - 143; 
			 break;
			}
			case 416:
			{
				s_fallot = e_cav + 902 / 556; 
			 break;
			}
			case 285:
			{
				s_fallot = e_cav + 745 / 715 + 323 - 406; 
			 break;
			}
			case 469:
			{
				s_fallot = e_cav + 191 + 970; 
			 break;
			}
			case 800:
			{
				s_fallot = e_cav * 883 * 155 * 192 - 124; 
			 break;
			}
			case 943:
			{
				s_fallot = e_cav + 291 - 528 - 665; 
			 break;
			}
			case 206:
			{
				s_fallot = e_cav - 568 / 944 + 484 / 554 + 634; 
			 break;
			}
			case 965:
			{
				s_fallot = e_cav - 3 * 97 * 732 + 306; 
			 break;
			}
			case 212:
			{
				s_fallot = e_cav - 787 / 134 + 965 - 87 - 1 * 352; 
			 break;
			}
			case 540:
			{
				s_fallot = e_cav * 74 * 232 + 392 - 327 - 411 * 623; 
			 break;
			}
			case 548:
			{
				s_fallot = e_cav * 487 / 368 / 818 - 432 * 839; 
			 break;
			}
			case 778:
			{
				s_fallot = e_cav - 252 + 958 / 294 - 869 * 178; 
			 break;
			}
			case 20:
			{
				s_fallot = e_cav * 976 * 199 / 979 - 259 * 860; 
			 break;
			}
			case 913:
			{
				s_fallot = e_cav + 483 - 649 / 196 / 839; 
			 break;
			}
			   default:
       break;
			}
	}
	if(cause_5){
		    NSArray *hypoantOpulian = @[@"rhabdoccur_velo", @"scop_watchia", @"lawyerot_receiveality", @"tredecia_hotelad", @"natureit_porphyr", @"afheavyel_sciencearium", @"langu_biosive", @"able_developmentence", @"fugary_plurimer" ];

          int costlastoCircumable = hypoantOpulian.count;
         int westernishStillate = (int)costlastoCircumable;
         int genulingOsteoian = 2073;
         int pectoonThalassivity = 7182;
         if (westernishStillate != pectoonThalassivity) {
             westernishStillate = pectoonThalassivity;
         }
         while (genulingOsteoian <= westernishStillate) {
            genulingOsteoian += 1;
            westernishStillate /= genulingOsteoian;
            westernishStillate += 9967;
            break;
         }
          [hypoantOpulian enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
              if (idx <= 6582) {
                  NSLog(@"enumerateObjectsUsingBlock:%@", obj);
            }
          }];
	}
	if(hyosexualic_6){
		        
        int homeileAmboon = 2085;
        int engyhangizationTrusaneous = 5683;
        int solveryChangeety = 6085;
        int squamformTournern = 2311;
        int handmostOutsidewise = 7523;
        int equinsexageEosthink = 8578;

        if (homeileAmboon >= 3689){

            engyhangizationTrusaneous -= 1;
            solveryChangeety += engyhangizationTrusaneous;
            handmostOutsidewise -= homeileAmboon;
            squamformTournern += 1;
            equinsexageEosthink += 10;
        }

	}
	if(spergpart_8 * 903 / 174 / 346 + 903 - 996 == 10152){
		            float waterlessTortuinsideability = 3326.0;
            if (@(waterlessTortuinsideability).doubleValue > 5677) {}
	}
 
	return plebent_3;
}
//===insert my method end=== 2023-05-30 11:20:44

//===insert my method start=== 2023-05-30 11:20:44
- (NSMutableDictionary *)precwaitenneLenieous:(NSString *)precwaitenne_1 onchoyLonginance:(NSMutableDictionary *)onchoy_2 televisioningHardness:(int)televisioning_3{ //insert method
	if(precwaitenne_1){
		        
        int tenuitChanceify = 1674;
        int rosySecondive = 8710;
        for(int septuagenyFactorness = 0; septuagenyFactorness < tenuitChanceify; septuagenyFactorness += 7590) {
            rosySecondive += 467;
            break; 
        } 

	}
	if(onchoy_2){
		float M_esesque = 6973;

if(M_esesque <= 23098){
	float S_plutth = M_esesque - 196 - 110 / 165 - 405; 
if(S_plutth > 80996){
	int s_clementeer = S_plutth + 13 * 877; 
if(s_clementeer != 5170){
	int i_sapiet = s_clementeer - 675 * 134;
}
}
}
	}
	if(televisioning_3 * 177 / 743 - 459 / 933 < 35716){
		          int radicmentViolence = 3610;
          int memberryStrategylike = 6014;
          NSMutableDictionary * ophiSomethingship = [[NSMutableDictionary alloc] init];

          [ophiSomethingship setObject: @(radicmentViolence) forKey:@"layairFratrence"];
          int privishipMentioning = (int)radicmentViolence;
          int macroenneGenet = 0;
          for (int popularressMythlike = macroenneGenet; popularressMythlike > privishipMentioning - 1; popularressMythlike--) {
              macroenneGenet += popularressMythlike;
               int deadencyIdianeous = macroenneGenet;
               if (deadencyIdianeous <= 2171) {
               }
              break;

          }
          memberryStrategylike += 8824;
          [ophiSomethingship setObject: @(memberryStrategylike) forKey:@"rotifySapiuous"];
             
          if (memberryStrategylike <= 7746) {
              memberryStrategylike = radicmentViolence;
          }
	}
 
	return onchoy_2;
}
//===insert my method end=== 2023-05-30 11:20:44
-(void)downTime_MMMethodMMM{
    
    phoneCountdown = 60;
    getVfCodeBtn.userInteractionEnabled = NO;

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSMutableDictionary * V_47 = [self precwaitenneLenieous:@"annairPoliticalfier" onchoyLonginance:nil televisioningHardness:9286 ];
	if(V_47){}
int c_entership = 916;
int T_contreuous = 27;
switch (c_entership) {
   case 352:
			{
				c_entership = T_contreuous + 792 - 242 - 746 - 497; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-05-30 11:20:44

    [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    
    
    
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
    downTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                 target:self
                                               selector:@selector(phoneFireTimer_MMMethodMMM)
                                               userInfo:nil
                                                repeats:YES];
    
    
}

- (void)phoneFireTimer_MMMethodMMM {
    phoneCountdown--;

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSMutableDictionary * L_37 = [self precwaitenneLenieous:@"seriesatorSpergdeepard" onchoyLonginance:nil televisioningHardness:2107 ];
	if(L_37){}

        bool pisuousGratacy = NO;
        if (pisuousGratacy){
            pisuousGratacy = NO;
            float chelonablyCarcin = 8180;
            if (chelonablyCarcin <= 9423){
                chelonablyCarcin = chelonablyCarcin + 4741;
            }
        }else{
            pisuousGratacy = !pisuousGratacy;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:44

    if (phoneCountdown < 0) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
    }else{
        [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    }
    
}


//===insert my method start=== 2023-05-30 11:20:44
- (NSMutableDictionary *)populareurGest{ //insert method
	
        int fallacSeekant = -729;
        int brachiofactionPrice = 8969;
        int agent = 1863;
        switch (fallacSeekant) {
                
            case 685:
			{
				brachiofactionPrice = agent + 940 + 900 - 710 + 628 * 231; 
			 break;
			}
			case 552:
			{
				brachiofactionPrice = agent - 293 / 316 / 548 / 604; 
			 break;
			}
			case 450:
			{
				brachiofactionPrice = agent * 441 * 481 + 791 * 435 * 394 + 766; 
			 break;
			}
			case 602:
			{
				brachiofactionPrice = agent * 439 / 330; 
			 break;
			}
			case -55:
			{
				brachiofactionPrice = agent * 275 * 50 * 949 - 768; 
			 break;
			}
			
                
            default:
                break;
        }
        

        
 
	NSMutableDictionary *a_0 = nil;
	return a_0;
}
//===insert my method end=== 2023-05-30 11:20:44
-(void)resetVfCodeBtnStatue_MMMethodMMM
{
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	float O_40 = [self riskismOmenohopeful:628 cinierDecdom:nil plebentLaughent:3277 androlikePistermacious:1988 causeMaribility:nil hyosexualicEnergyism:nil therinearosityAsatory:7397 spergpartDeltinterview:2582 ];
	if(O_40){}
        
        NSArray *anthoicalGustally = @[@"scabioster_formeraster", @"mnesress_continue", @"plectwaithood_shootot", @"chargeid_adultose", @"cyclid_mydiscoverfication", @"similarose_intodom", @"unitie_thus", @"sacly_college", @"financialial_galvanward", @"script_dermful", @"possibleacious_lithhood", @"arborith_micen", @"tendetic_anthropoate", @"prob_democraticette" ];
        if (anthoicalGustally){
        }

		}
		//====insert my code end===  2023-05-30 11:20:44

    }
    getVfCodeBtn.userInteractionEnabled = YES;
    [getVfCodeBtn setTitle:GetString(wwwww_tag_wwwww_text_get_vfcode) forState:UIControlStateNormal];
}

- (void)dealloc
{
    
    if (downTimer) {
        [downTimer invalidate];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	float b_1 = [self riskismOmenohopeful:1628 cinierDecdom:nil plebentLaughent:1402 androlikePistermacious:8486 causeMaribility:nil hyosexualicEnergyism:nil therinearosityAsatory:6709 spergpartDeltinterview:9592 ];
	if(b_1){}

        bool bothHeaditor = YES;
        int secrficDucward = 4102;
        if (bothHeaditor){

            secrficDucward = secrficDucward / 2726;

            int pagDetermine = 4858;
            int dinoPorcling = 184;
            int pretidifferent = 2351;
            switch (pagDetermine) {
                    
                case 455:
			{
				dinoPorcling = pretidifferent - 83 + 849 * 998 + 123; 
			 break;
			}
			case 899:
			{
				dinoPorcling = pretidifferent + 906 * 949; 
			 break;
			}
			case 14:
			{
				dinoPorcling = pretidifferent - 69 + 116 / 257 / 201; 
			 break;
			}
			case 128:
			{
				dinoPorcling = pretidifferent * 154 / 948 + 431 - 175; 
			 break;
			}
			case 792:
			{
				dinoPorcling = pretidifferent + 972 + 699 - 958 * 722; 
			 break;
			}
			case 753:
			{
				dinoPorcling = pretidifferent - 624 + 555 + 227 - 538; 
			 break;
			}
			case -97:
			{
				dinoPorcling = pretidifferent * 906 * 428 / 432 - 201 - 834 / 611; 
			 break;
			}
			case 416:
			{
				dinoPorcling = pretidifferent * 546 + 411 - 328; 
			 break;
			}
			case 365:
			{
				dinoPorcling = pretidifferent + 512 + 856 - 80 * 746 + 641 / 729; 
			 break;
			}
			case 574:
			{
				dinoPorcling = pretidifferent + 435 + 654 * 351 - 15; 
			 break;
			}
			case 404:
			{
				dinoPorcling = pretidifferent + 701 + 129 + 306 * 656 + 959; 
			 break;
			}
			case 374:
			{
				dinoPorcling = pretidifferent * 243 * 41 - 469 * 972 / 404 - 414; 
			 break;
			}
			case 951:
			{
				dinoPorcling = pretidifferent * 911 * 762 * 176 / 491 + 641; 
			 break;
			}
			
                    
                default:
                    break;
            }
        }
        
        

        
		}
		//====insert my code end===  2023-05-30 11:20:44

        downTimer = nil;
    }
}

@end
