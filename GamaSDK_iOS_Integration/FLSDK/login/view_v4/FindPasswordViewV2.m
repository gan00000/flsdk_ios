

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
            make.leading.trailing.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));
        }];
        
        
        
        
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL w_22 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:912 centerineTropheur:8554 extremfulLarvette:2667 batpresidentPatriule:7571 moderndomPin:nil ];
	if(w_22){}
double b_terent = 9119;

if(b_terent < 86993){
	int m_psilageose = b_terent + 467 - 405 / 170 * 169 * 966 / 265; 
if(m_psilageose < 9152){
	int y_cystid = m_psilageose + 515 * 298 + 977 / 839; 
if(y_cystid <= 10716){
	double h_strongics = y_cystid - 314 - 340 + 903 / 122; 
if(h_strongics > 45114){
	float v_have = h_strongics * 896 - 416 + 463 / 668;
}
}
}
}
		}
		//====insert my code end===  2023-05-30 11:20:44

        [self addSubview:accountSDKTextFiledView];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL r_17 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:2787 centerineTropheur:7374 extremfulLarvette:5969 batpresidentPatriule:6450 moderndomPin:nil ];
	if(r_17){}
double l_itstion = 2853;

double T_government = 973;
if(l_itstion * 790 - 430 * 186 / 481 + 584 + 704 >= 89010){
	T_government = l_itstion + 903 / 70 * 544 + 662;
}else{
	T_government = l_itstion * 654 + 340;
}

int a_ornithaire = 211;
if(T_government * 602 - 311 + 565 - 262 + 492 / 730 < 76179){
	a_ornithaire = T_government + 60 * 127 - 600;
}else{
	a_ornithaire = T_government * 376 * 148 * 389 + 942 * 581 * 508;
}

		}
		//====insert my code end===  2023-05-30 11:20:44

        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(VW(40));

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL Y_50 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:3077 centerineTropheur:2217 extremfulLarvette:9469 batpresidentPatriule:2696 moderndomPin:nil ];
	if(Y_50){}
int u_omoatic = 288;
float R_olivship = 860;
switch (u_omoatic) {
   case 621:
			{
				u_omoatic = R_olivship * 538 / 867 + 564 - 515; 
			 break;
			}
			case 187:
			{
				u_omoatic = R_olivship - 735 / 880 - 425; 
			 break;
			}
			case 882:
			{
				u_omoatic = R_olivship + 575 - 745 + 895 + 796; 
			 break;
			}
			case 30:
			{
				u_omoatic = R_olivship + 672 - 396 / 439; 
			 break;
			}
			case 756:
			{
				u_omoatic = R_olivship + 196 - 907 / 587; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-05-30 11:20:44

            make.trailing.mas_equalTo(self).mas_offset(VW(-40));
            make.height.mas_equalTo(VH(40));

            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));
            
        }];
        
        
        newPwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_New)];
        [self addSubview:newPwdSDKTextFiledView];
        
        [newPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(accountSDKTextFiledView);

            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        
        getVfCodeBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_get_vfcode) fontSize_MMMethodMMM:FS(14) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor] tag_MMMethodMMM:kGetVfCodeActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL b_1 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:9476 centerineTropheur:7946 extremfulLarvette:6898 batpresidentPatriule:6520 moderndomPin:nil ];
	if(b_1){}
double v_phonoid = 4159;

float x_line = 352;
if(v_phonoid + 237 + 185 + 697 + 473 > 79330){
	x_line = v_phonoid * 38 + 102 * 870;
}else{
	x_line = v_phonoid - 672 / 919 / 218 - 278 + 235;
}

int x_pubertor = 709;
if(x_line * 161 + 892 + 551 >= 52862){
	x_pubertor = x_line * 27 * 216;
}

float C_scandial = 860;
if(x_pubertor + 352 + 546 / 940 < 24193){
	C_scandial = x_pubertor - 410 - 262 / 423;
}else{
	C_scandial = x_pubertor - 72 + 350 / 787 + 811 * 529 - 476;
}

float c_flyette = 303;
if(C_scandial - 480 / 344 - 676 - 855 != 34390){
	c_flyette = C_scandial - 81 / 68 + 48 + 533;
}

		}
		//====insert my code end===  2023-05-30 11:20:44

        
        
        getVfCodeBtn.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor].CGColor;
        getVfCodeBtn.layer.borderWidth = 1;
        getVfCodeBtn.layer.cornerRadius = VH(20);

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL E_30 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:7685 centerineTropheur:3321 extremfulLarvette:8090 batpresidentPatriule:8861 moderndomPin:nil ];
	if(E_30){}
        int stasisdegreeTherosure = 4135;
        int apertifyCidfinish = 1019;
        int locutgunivity = 5878;
        switch (stasisdegreeTherosure) {
                
            case 309:
			{
				apertifyCidfinish = locutgunivity - 42 + 19 - 449 / 134 - 37 - 988; 
			 break;
			}
			
                
            default:
                break;
        }
		}
		//====insert my code end===  2023-05-30 11:20:44

        [self addSubview:getVfCodeBtn];
        [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(newPwdSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.width.mas_equalTo(VW(100));

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL x_23 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:7255 centerineTropheur:4809 extremfulLarvette:2643 batpresidentPatriule:2325 moderndomPin:nil ];
	if(x_23){}
int A_tim = 477;
double O_according = 290;
switch (A_tim) {
   case 401:
			{
				A_tim = O_according - 81 / 189; 
			 break;
			}
			case 948:
			{
				A_tim = O_according - 482 / 20 - 481; 
			 break;
			}
			case 20:
			{
				A_tim = O_according * 133 - 330; 
			 break;
			}
			case -63:
			{
				A_tim = O_according + 816 + 665 / 434 - 459 / 723 - 805; 
			 break;
			}
			case 983:
			{
				A_tim = O_according - 239 - 30 * 141; 
			 break;
			}
			case 176:
			{
				A_tim = O_according + 527 * 948; 
			 break;
			}
			case -53:
			{
				A_tim = O_according + 327 / 695 * 418; 
			 break;
			}
			case -65:
			{
				A_tim = O_according * 162 / 788 * 245 / 167 - 510 / 55; 
			 break;
			}
			case 429:
			{
				A_tim = O_according - 353 * 712 - 111; 
			 break;
			}
			case 973:
			{
				A_tim = O_according * 507 + 474 / 973; 
			 break;
			}
			case 40:
			{
				A_tim = O_according - 487 + 982 - 55 / 80 / 633; 
			 break;
			}
			case 294:
			{
				A_tim = O_according + 494 + 797 - 568 * 682 / 81; 
			 break;
			}
			case 760:
			{
				A_tim = O_according + 604 + 198; 
			 break;
			}
			case 929:
			{
				A_tim = O_according + 669 / 529 * 336 + 675; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-05-30 11:20:44

            make.height.mas_equalTo(accountSDKTextFiledView);
            
        }];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL P_41 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:8869 centerineTropheur:1764 extremfulLarvette:7176 batpresidentPatriule:4433 moderndomPin:nil ];
	if(P_41){}
        
        int guttryWesternify = 8352;
        int timLefttic = 6152;
        int traditionalianWideitor = 1398;
        int treeessYouren = 9585;
        int cochlariumKnoweer = 1075;
        int lotiousHerselfan = 191;

        if (guttryWesternify <= 468){

            timLefttic -= 1;
            traditionalianWideitor += timLefttic;
            cochlariumKnoweer -= guttryWesternify;
            treeessYouren += 1;
            lotiousHerselfan += 10;
        }

		}
		//====insert my code end===  2023-05-30 11:20:44

        [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL q_16 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:5141 centerineTropheur:5344 extremfulLarvette:1367 batpresidentPatriule:6982 moderndomPin:nil ];
	if(q_16){}
float q_gemmior = 6742;

int D_mers = 955;
if(q_gemmior * 21 / 44 + 368 / 212 * 633 != 53705){
	D_mers = q_gemmior + 572 / 746 + 185;
}

float X_eofact = 517;
if(D_mers * 166 * 792 + 121 * 510 * 605 + 58 <= 90756){
	X_eofact = D_mers * 844 + 36 - 904;
}

float L_vesper = 835;
if(X_eofact + 111 * 793 + 612 / 985 - 886 + 194 < 94488){
	L_vesper = X_eofact - 590 / 841 * 136;
}

		}
		//====insert my code end===  2023-05-30 11:20:44

        
        
        
        
        vfCodeFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_VfCode)];
        
        [self addSubview:vfCodeFiledView];
        [vfCodeFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(getVfCodeBtn);

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL X_49 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:6833 centerineTropheur:1819 extremfulLarvette:580 batpresidentPatriule:2524 moderndomPin:nil ];
	if(X_49){}
double V_hydroacy = 9280;

if(V_hydroacy == 68851){
	float O_enneaative = V_hydroacy - 853 * 790; 
if(O_enneaative <= 15818){
	double F_cytoitude = O_enneaative - 504 + 168 + 176 / 36 / 664; 
if(F_cytoitude <= 39598){
	double f_junioritude = F_cytoitude + 15 - 503 + 413 / 353 * 328;
}
}
}
		}
		//====insert my code end===  2023-05-30 11:20:44

            make.bottom.equalTo(getVfCodeBtn);
            
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(getVfCodeBtn.mas_leading).mas_offset(VW(-16));
        }];
        
        
        UIView *vfCodeFiledView_bottom_line = [[UIView alloc] init];
        vfCodeFiledView_bottom_line.hidden = YES;
        vfCodeFiledView_bottom_line.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
        [self addSubview:vfCodeFiledView_bottom_line];
        [vfCodeFiledView_bottom_line mas_makeConstraints:^(MASConstraintMaker *make) {
            
            
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);
            make.bottom.mas_equalTo(vfCodeFiledView);
            
            make.height.mas_equalTo(1);

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL x_23 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:8199 centerineTropheur:7142 extremfulLarvette:920 batpresidentPatriule:9585 moderndomPin:nil ];
	if(x_23){}
            float dipsyarThanward = 2769.0;
            if (@(dipsyarThanward).doubleValue < 7885) {}
		}
		//====insert my code end===  2023-05-30 11:20:44


        }];
        

        
        
        
        
        UIButton *okBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_py_confire.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL m_12 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:2057 centerineTropheur:9920 extremfulLarvette:3113 batpresidentPatriule:3897 moderndomPin:nil ];
	if(m_12){}
        
        NSArray *extremfactionNemor = @[@"tellurstock_agyrarian", @"stellior_majority", @"tactatory_aheadern" ];
        if (extremfactionNemor.count > 7487){
        }
        
		}
		//====insert my code end===  2023-05-30 11:20:44

        
        [okBtn.layer setCornerRadius:VH(25)];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL s_18 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:5479 centerineTropheur:2716 extremfulLarvette:3697 batpresidentPatriule:6790 moderndomPin:nil ];
	if(s_18){}
        
        NSInteger hearanceLarvety = 5299;
        int plangibilityCleithria = 3121;

        for(int campaignacityJunioritude = 971; campaignacityJunioritude < 8067; campaignacityJunioritude = campaignacityJunioritude + 1)
        {    
            plangibilityCleithria = plangibilityCleithria++;
        }
        
		}
		//====insert my code end===  2023-05-30 11:20:44

        okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
        [self addSubview:okBtn];
        
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL z_25 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:5748 centerineTropheur:7050 extremfulLarvette:2379 batpresidentPatriule:500 moderndomPin:nil ];
	if(z_25){}
        
        NSInteger luceurDeath = 7104;
        int nomaduleFarment = 3906;

        for(int pedEosality = 6989; pedEosality < 1524; pedEosality = pedEosality + 1)
        {    
            luceurDeath = luceurDeath + nomaduleFarment;
            if (luceurDeath != pedEosality){
                break;
            }
            nomaduleFarment = nomaduleFarment++;
        }
        

        
		}
		//====insert my code end===  2023-05-30 11:20:44

            make.top.equalTo(getVfCodeBtn.mas_bottom).mas_offset(VH(30));
            make.width.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(VH(50));

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL K_36 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:526 centerineTropheur:5606 extremfulLarvette:4871 batpresidentPatriule:7851 moderndomPin:nil ];
	if(K_36){}
        
        NSArray *electionetteSimpleule = @[@"electionth_bornish", @"companyosity_strigosier", @"decideoon_tal", @"neverier_inuous", @"laterhood_homoidifferenceious", @"tenacible_piteeer", @"in2let_dec", @"forgetacious_sili", @"alwaystic_languageine", @"lict_winuous", @"gressative_mathemtoughive", @"rexiaism_septemity", @"mattersome_spend" ];
        if (electionetteSimpleule){
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

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL k_10 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:4255 centerineTropheur:7175 extremfulLarvette:5276 batpresidentPatriule:3825 moderndomPin:nil ];
	if(k_10){}
        int difiorDoctresque = 2847;
        int typefactionMutbigitor = 3187;
        int aloneivity = 2151;
        switch (difiorDoctresque) {
                
            case 693:
			{
				typefactionMutbigitor = aloneivity + 595 / 658 / 869 + 114; 
			 break;
			}
			case 657:
			{
				typefactionMutbigitor = aloneivity + 622 / 416 / 892; 
			 break;
			}
			case 408:
			{
				typefactionMutbigitor = aloneivity + 119 * 966 - 724; 
			 break;
			}
			case 5:
			{
				typefactionMutbigitor = aloneivity + 167 / 821 - 607 / 187 + 884 / 201; 
			 break;
			}
			case 451:
			{
				typefactionMutbigitor = aloneivity + 442 / 548; 
			 break;
			}
			case -98:
			{
				typefactionMutbigitor = aloneivity + 47 * 687 / 340 + 562 * 589; 
			 break;
			}
			case 346:
			{
				typefactionMutbigitor = aloneivity * 286 + 540; 
			 break;
			}
			case 760:
			{
				typefactionMutbigitor = aloneivity - 810 + 650 - 858 + 219 - 194 + 340; 
			 break;
			}
			case 961:
			{
				typefactionMutbigitor = aloneivity * 667 / 513; 
			 break;
			}
			case 457:
			{
				typefactionMutbigitor = aloneivity - 608 + 109 + 702 / 722 + 336; 
			 break;
			}
			case 437:
			{
				typefactionMutbigitor = aloneivity + 951 + 55 - 562 + 729 * 206; 
			 break;
			}
			case 668:
			{
				typefactionMutbigitor = aloneivity * 956 * 261 * 8 / 9 + 64; 
			 break;
			}
			case 518:
			{
				typefactionMutbigitor = aloneivity + 329 / 759 * 603 / 49 - 824 * 791; 
			 break;
			}
			
                
            default:
                break;
        }
        bool habitallyKinefaction = YES;
        int resourcekinSponsity = 2847;
        if (habitallyKinefaction){

            resourcekinSponsity = resourcekinSponsity - typefactionMutbigitor;
        }
        
        
		}
		//====insert my code end===  2023-05-30 11:20:44

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
    
    if (![SdkUtil validUserName_MMMethodMMM:userName]) {
        return;
    }
    

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL s_18 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:1149 centerineTropheur:3886 extremfulLarvette:3825 batpresidentPatriule:1586 moderndomPin:nil ];
	if(s_18){}
        
        int bitsterParentability = 2225;
        bool proctconsumeristAfter = YES;

        for(int familyTriby = 3393; familyTriby < 8223; familyTriby = familyTriby + 1)
        {    
            if (proctconsumeristAfter){
                break;
            }
            bitsterParentability = bitsterParentability / 8223;
        }
        if (bitsterParentability)
        {
            proctconsumeristAfter = NO;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:44

    if ([StringUtil isEmpty_MMMethodMMM:vfCode]) {
    
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_vfcode_empty)];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL Y_50 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:148 centerineTropheur:5102 extremfulLarvette:8035 batpresidentPatriule:4538 moderndomPin:nil ];
	if(Y_50){}
      int fascfierTestit = 7092;
      NSMutableDictionary *tonsairModernfier = [NSMutableDictionary dictionaryWithCapacity:2290];
      fascfierTestit += 8217;
      [tonsairModernfier setObject: @(fascfierTestit) forKey:@"arriveairOthersfier"];
      int legalerStrigic = (int)fascfierTestit;
      if (legalerStrigic == 3352) {
            legalerStrigic *= 8437;
      }
		}
		//====insert my code end===  2023-05-30 11:20:44

        return;
    }
        
    if (![SdkUtil validPwd_MMMethodMMM: newPwd]) {
       

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL I_34 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:3971 centerineTropheur:8840 extremfulLarvette:5546 batpresidentPatriule:8690 moderndomPin:nil ];
	if(I_34){}
        
        double ptoLaminaet = 9362.0;
        if (@(ptoLaminaet).doubleValue >= 3186) {}
        
		}
		//====insert my code end===  2023-05-30 11:20:44

        return;
    }
    
    
    NSDictionary *otherParamsDic = nil;
    @try {
        otherParamsDic = @{
            wwwww_tag_wwwww_newPwd        :[SUtil getMD5StrFromString_MMMethodMMM:newPwd],
        };

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL b_1 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:7091 centerineTropheur:1255 extremfulLarvette:2983 batpresidentPatriule:3548 moderndomPin:nil ];
	if(b_1){}
        
        CGFloat amourinformationMathemcancerence = 7139;
        bool novityHieroular = NO;
        if (amourinformationMathemcancerence == 4495)
        {
            amourinformationMathemcancerence = amourinformationMathemcancerence - 3478;
            novityHieroular = NO;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:44

        
    } @catch (NSException *exception) {
        
    }
    
    kWeakSelf
    [SDKRequest doForgotPasswordWithUserName_MMMethodMMM:userName phoneAreaCode_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:phoneNum email_MMMethodMMM:userName vfCode_MMMethodMMM:vfCode interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherParamsDic_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
        
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_change_pwd_success)];

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
    
}



//===insert my method start=== 2023-05-30 11:20:44
- (BOOL)myselfosityPangly:(NSObject *)myselfosity_1 conditionlingLaminaible:(NSData *)conditionling_2 therioinstitutionProbablyal:(CGFloat)therioinstitution_3 centerineTropheur:(NSInteger)centerine_4 extremfulLarvette:(long)extremful_5 batpresidentPatriule:(float)batpresident_6 moderndomPin:(NSObject *)moderndom_7{ //insert method
	if(conditionling_2){
		        
        float preventTakeance = 9361;
        int authorNicearian = 6797;

        for(int branchifulCausoldern = 7211; branchifulCausoldern < 7711; branchifulCausoldern = branchifulCausoldern + 1)
        {    
            preventTakeance = preventTakeance + authorNicearian;
            if (preventTakeance != branchifulCausoldern){
                break;
            }
            authorNicearian = authorNicearian++;
        }
        

        
	}
	if(centerine_4 * 280 * 474 * 487 - 635 - 666 + 370 > 2807){
		double J_orile = 1360;

float g_hypnish = 486;
if(J_orile * 835 / 263 - 896 + 760 + 271 >= 80110){
	g_hypnish = J_orile + 787 / 327 / 282;
}else{
	g_hypnish = J_orile - 154 * 465 * 497 + 894 + 733;
}

float k_phylactory = 33;
if(g_hypnish + 805 + 431 == 42089){
	k_phylactory = g_hypnish * 934 / 784;
}

	}
	if(batpresident_6 + 734 + 795 + 694 + 64 != 16585){
		float n_diseaseite = 9486;

int n_Americanry = 126;
if(n_diseaseite - 648 + 948 < 24302){
	n_Americanry = n_diseaseite - 150 - 112 - 840;
}else{
	n_Americanry = n_diseaseite + 458 * 261 * 601 + 318 * 817 / 541;
}

float M_dolorienne = 869;
if(n_Americanry * 173 + 693 >= 31606){
	M_dolorienne = n_Americanry - 565 * 238 / 257 - 73;
}

double D_churchad = 297;
if(M_dolorienne + 906 * 92 - 441 + 437 - 183 + 121 == 9662){
	D_churchad = M_dolorienne * 569 - 989 * 11 * 585 - 158 + 840;
}else{
	D_churchad = M_dolorienne + 163 / 185;
}

double U_rhinory = 213;
if(D_churchad - 961 + 381 * 138 - 776 == 25977){
	U_rhinory = D_churchad + 523 - 266;
}

double P_tincthousety = 432;
if(U_rhinory - 449 / 596 / 192 * 512 * 245 > 74534){
	P_tincthousety = U_rhinory + 230 - 978 - 70;
}else{
	P_tincthousety = U_rhinory * 339 / 773 * 115 + 142 * 809;
}

	}
 
	BOOL u_20 = 1020;
	return u_20;
}
//===insert my method end=== 2023-05-30 11:20:44
- (void)requestVfCodeByEmail_MMMethodMMM:(NSString *)email
{
    
    [SDKRequest requestVfCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@""  email_MMMethodMMM:email interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_send_vf_code_success)];
        [self downTime_MMMethodMMM];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL Q_42 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:8629 centerineTropheur:3122 extremfulLarvette:8133 batpresidentPatriule:9188 moderndomPin:nil ];
	if(Q_42){}
        
        NSDictionary *patientformCityify = @{@"dominitor" : @"plumb", @"homalproof" : @"coldier" };
        if (patientformCityify.count == 872){
            NSLog(@"bulbicCathhimo");
        }else{
            NSLog(@"claimressClyst");
        }

        

		}
		//====insert my code end===  2023-05-30 11:20:44

    } errorBlock_MMMethodMMM:^(BJError *error) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
    }];
}

-(void)downTime_MMMethodMMM{
    
    phoneCountdown = 60;
    getVfCodeBtn.userInteractionEnabled = NO;
    [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    
    
    

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL s_18 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:3092 centerineTropheur:2564 extremfulLarvette:7174 batpresidentPatriule:4565 moderndomPin:nil ];
	if(s_18){}

        bool labiousCallion = YES;
        int casbreakiousYard = 6745;
        if (labiousCallion){

            casbreakiousYard = casbreakiousYard / 3731;

            int phasfulHetero = 740;
            int clamwardFiveoon = 6142;
            int foldist = 7644;
            switch (phasfulHetero) {
                    
                case 928:
			{
				clamwardFiveoon = foldist - 578 + 602 - 848 - 49; 
			 break;
			}
			case 71:
			{
				clamwardFiveoon = foldist + 696 / 48 * 354; 
			 break;
			}
			case 638:
			{
				clamwardFiveoon = foldist * 746 * 349 + 425; 
			 break;
			}
			case 238:
			{
				clamwardFiveoon = foldist + 749 / 483 / 598 - 734 - 575; 
			 break;
			}
			case 447:
			{
				clamwardFiveoon = foldist - 225 + 920 / 309 - 971; 
			 break;
			}
			
                    
                default:
                    break;
            }
        }
        
        

        
		}
		//====insert my code end===  2023-05-30 11:20:44

    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	BOOL m_12 = [self myselfosityPangly:nil conditionlingLaminaible:nil therioinstitutionProbablyal:3759 centerineTropheur:5603 extremfulLarvette:464 batpresidentPatriule:3947 moderndomPin:nil ];
	if(m_12){}
            float psilageoseCourt = 2785.0;
            if (@(psilageoseCourt).intValue > 1849) {
                psilageoseCourt = psilageoseCourt - 1356;
            }
		}
		//====insert my code end===  2023-05-30 11:20:44

    }
    downTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                 target:self
                                               selector:@selector(phoneFireTimer_MMMethodMMM)
                                               userInfo:nil
                                                repeats:YES];
    
    
}

- (void)phoneFireTimer_MMMethodMMM {
    phoneCountdown--;
    if (phoneCountdown < 0) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
    }else{
        [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    }
    
}

-(void)resetVfCodeBtnStatue_MMMethodMMM
{
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
    getVfCodeBtn.userInteractionEnabled = YES;
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
