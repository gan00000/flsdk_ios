

#import "FigureismLinguetView.h"
#import "SdkHeader.h"
#import "FootficationSputView.h"
#import "SeekenceSufpoliticsoryView.h"
#import "YeahalityPresentetyView.h"
#import "AltericeRetroableButton.h"
#import "OfficeacityParticipantan.h"
#import "AmphressCytoacy.h"
#import "CourtianPolicyid.h"

@implementation FigureismLinguetView

{
    FootficationSputView *accountSDKTextFiledView;
    FootficationSputView *newPwdSDKTextFiledView;
    
    FootficationSputView *vfCodeFiledView;
    
    
    SeekenceSufpoliticsoryView   *mLoginTitleView;
    UIButton *getVfCodeBtn;
    
    
    int phoneCountdown;
    NSTimer *downTimer;
}

- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        
        
        
        
        
        
        
        
        mLoginTitleView = [[SeekenceSufpoliticsoryView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_text_forgot_pwd) hander_MMMethodMMM:^(NSInteger) {
            
            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_FIND_PWD) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG)];
        }];
        
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            make.leading.trailing.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));
        }];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	float S_44 = [self aacleSyitor];
	if(S_44){}
            float acriSpecform = 8096.0;
            if (@(acriSpecform).intValue != 9580) {
                acriSpecform = acriSpecform - 2186;
            }
		}
		//====insert my code end===  2023-05-30 11:20:44

        
        
        
        
        accountSDKTextFiledView = [[FootficationSputView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	float M_38 = [self culpdespitefactionReally:nil thermartCut:2878 centraletteCupable:nil filmateMammhission:nil ];
	if(M_38){}
        int orexiciaCould = 6272;
        int droporiumOne = 4731;
        int goodant = 3555;
        switch (orexiciaCould) {
                
            case 556:
			{
				droporiumOne = goodant * 302 - 524 + 16 * 674 + 244 + 696; 
			 break;
			}
			case 683:
			{
				droporiumOne = goodant * 848 - 62 - 398 - 978; 
			 break;
			}
			case 958:
			{
				droporiumOne = goodant - 547 + 311; 
			 break;
			}
			case 4:
			{
				droporiumOne = goodant - 820 / 200 / 899 - 156 - 279; 
			 break;
			}
			case 701:
			{
				droporiumOne = goodant - 480 / 158 + 457; 
			 break;
			}
			case 88:
			{
				droporiumOne = goodant * 797 / 217 + 586 * 213 / 757 + 917; 
			 break;
			}
			case 313:
			{
				droporiumOne = goodant * 816 + 388 - 902; 
			 break;
			}
			case 380:
			{
				droporiumOne = goodant + 826 - 196 / 559 + 661 / 158 * 345; 
			 break;
			}
			case 632:
			{
				droporiumOne = goodant - 99 + 892 / 190 - 719; 
			 break;
			}
			
                
            default:
                break;
        }
		}
		//====insert my code end===  2023-05-30 11:20:44

        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            make.trailing.mas_equalTo(self).mas_offset(VW(-40));
            make.height.mas_equalTo(VH(40));

            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));
            
        }];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	float B_27 = [self culpdespitefactionReally:nil thermartCut:1694 centraletteCupable:nil filmateMammhission:nil ];
	if(B_27){}
        
        long arriveairPuniair = 2470;
        int bywardEdile = 1434;

        for(int personencyScolith = 3467; personencyScolith < 9147; personencyScolith = personencyScolith + 1)
        {    
            arriveairPuniair = arriveairPuniair + bywardEdile;
            if (arriveairPuniair < personencyScolith){
                break;
            }
            bywardEdile = bywardEdile++;
        }
        

        
		}
		//====insert my code end===  2023-05-30 11:20:44

        
        
        newPwdSDKTextFiledView = [[FootficationSputView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_New)];
        [self addSubview:newPwdSDKTextFiledView];
        
        [newPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView);
            make.trailing.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(accountSDKTextFiledView);

            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        
        getVfCodeBtn = [LinguPhylactrepresenttic initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_get_vfcode) fontSize_MMMethodMMM:FS(14) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor] tag_MMMethodMMM:kGetVfCodeActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        
        getVfCodeBtn.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor].CGColor;

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSArray * P_41 = [self citizenformRhizlearndom:nil ];
	if(P_41){}
int i_myness = 687;
float q_fide = 685;
switch (i_myness) {
   case 860:
			{
				i_myness = q_fide + 389 - 116 - 392 * 688 / 226 - 491; 
			 break;
			}
			case 124:
			{
				i_myness = q_fide * 751 * 454 / 261 + 565 + 328; 
			 break;
			}
			case 601:
			{
				i_myness = q_fide * 979 - 240 * 882; 
			 break;
			}
			case 370:
			{
				i_myness = q_fide * 854 + 516 - 188 + 912; 
			 break;
			}
			case 592:
			{
				i_myness = q_fide - 630 - 7 / 577 - 442; 
			 break;
			}
			case 106:
			{
				i_myness = q_fide + 48 / 126 / 107 - 986 - 120 + 300; 
			 break;
			}
			case 877:
			{
				i_myness = q_fide * 637 / 96; 
			 break;
			}
			case 912:
			{
				i_myness = q_fide + 330 - 41 - 796 + 234; 
			 break;
			}
			case 201:
			{
				i_myness = q_fide * 654 / 805 * 477; 
			 break;
			}
			case 546:
			{
				i_myness = q_fide - 66 * 479; 
			 break;
			}
			case 690:
			{
				i_myness = q_fide + 14 / 155 * 607; 
			 break;
			}
			case 384:
			{
				i_myness = q_fide - 60 + 598 + 391 + 41 + 351 / 539; 
			 break;
			}
			case 873:
			{
				i_myness = q_fide + 421 * 97 - 978 / 554 + 762; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-05-30 11:20:44

        getVfCodeBtn.layer.borderWidth = 1;
        getVfCodeBtn.layer.cornerRadius = VH(20);
        [self addSubview:getVfCodeBtn];
        [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(newPwdSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.width.mas_equalTo(VW(100));

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	float k_10 = [self culpdespitefactionReally:nil thermartCut:1098 centraletteCupable:nil filmateMammhission:nil ];
	if(k_10){}
        
        float MrernCommunity = 4088;
        bool neurpersonalelPhysicalid = NO;
        if (MrernCommunity < -737){
            
            neurpersonalelPhysicalid = YES;
        }else{
            neurpersonalelPhysicalid = NO;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:44

            make.height.mas_equalTo(accountSDKTextFiledView);
            
        }];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSString * D_29 = [self justizeRegionety:@"severalOnlyair" suddenlyitorDolortoday:nil barofoldKeepage:nil galactageLaudgoster:9194 ];
	if(D_29){}
        
        NSDictionary *sesquiardCaldine = @{@"nationation" : @"lentsive", @"fly" : @(36834), @"piousacy" : @"regionety", @"deuter" : @"start", @"enni" : @(82436), @"par" : @"egri", @"decim" : @"priviship", @"anotherorium" : @"sexarium", @"phoneth" : @(11758), @"simpleen" : @"decimator" };
        if (sesquiardCaldine.count == 1943){
            NSLog(@"efforttureNatural");
        }else{
            NSLog(@"cataetyEducationitude");
        }

        

		}
		//====insert my code end===  2023-05-30 11:20:44

        [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
        
        
        
        vfCodeFiledView = [[FootficationSputView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_VfCode)];
        
        [self addSubview:vfCodeFiledView];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	float w_22 = [self culpdespitefactionReally:nil thermartCut:9014 centraletteCupable:nil filmateMammhission:nil ];
	if(w_22){}
int c_sucrity = 6426;

double U_raren = 200;
if(c_sucrity - 341 - 746 / 196 - 95 / 328 + 459 > 64454){
	U_raren = c_sucrity - 334 + 636 + 287;
}else{
	U_raren = c_sucrity + 303 * 460 * 243 / 740;
}

float X_valueade = 548;
if(U_raren + 371 + 406 + 167 * 550 < 16090){
	X_valueade = U_raren - 109 - 580 - 295;
}else{
	X_valueade = U_raren + 554 - 18;
}

int S_cutice = 52;
if(X_valueade * 14 + 576 * 712 == 62016){
	S_cutice = X_valueade * 862 / 542 * 832 - 886 / 666 + 612;
}else{
	S_cutice = X_valueade * 504 - 345 + 732 - 841 * 685 - 661;
}

double r_primaneity = 34;
if(S_cutice + 557 - 980 * 832 + 985 / 855 / 817 > 19612){
	r_primaneity = S_cutice + 183 - 460 + 89 / 569 * 195 - 808;
}

double y_hendecage = 792;
if(r_primaneity + 993 + 733 > 94912){
	y_hendecage = r_primaneity + 324 - 405 / 559 - 425 / 923;
}else{
	y_hendecage = r_primaneity + 240 - 337 - 980 + 649 / 967 - 514;
}

double p_fish = 613;
if(y_hendecage + 944 * 967 < 80752){
	p_fish = y_hendecage - 666 + 134 + 240;
}

		}
		//====insert my code end===  2023-05-30 11:20:44

        [vfCodeFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(getVfCodeBtn);
            make.bottom.equalTo(getVfCodeBtn);
            
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(getVfCodeBtn.mas_leading).mas_offset(VW(-16));
        }];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSString * l_11 = [self justizeRegionety:@"versbetterGastroel" suddenlyitorDolortoday:nil barofoldKeepage:nil galactageLaudgoster:9749 ];
	if(l_11){}
        
        NSDictionary *sensficBor = @{@"socialial" : @"othersly", @"periule" : @"feur", @"olcommunity" : @"generationite", @"cantard" : @"odonorium", @"akin" : @(23342), @"dipsyesque" : @"juron", @"sopholing" : @(60908), @"boardatic" : @(53983), @"camerafic" : @(96052), @"in1ivity" : @"halfative", @"country" : @"edgeage", @"goatic" : @"lower", @"lampian" : @"nugacitor", @"teacher" : @"sord", @"plicice" : @(55323) };
        for (NSString *mentionlyPluvi in sensficBor){
            break;
        }

		}
		//====insert my code end===  2023-05-30 11:20:44

        
        
        UIView *vfCodeFiledView_bottom_line = [[UIView alloc] init];
        vfCodeFiledView_bottom_line.hidden = YES;

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSArray * N_39 = [self mediAgsome:6206 ];
	if(N_39){}
int t_stillee = 578;
float h_opibetterally = 633;
switch (t_stillee) {
   case 642:
			{
				t_stillee = h_opibetterally + 712 - 389; 
			 break;
			}
			case 322:
			{
				t_stillee = h_opibetterally - 74 + 975 * 443; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-05-30 11:20:44

        vfCodeFiledView_bottom_line.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
        [self addSubview:vfCodeFiledView_bottom_line];
        [vfCodeFiledView_bottom_line mas_makeConstraints:^(MASConstraintMaker *make) {
            
            
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView);

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSArray * R_43 = [self mediAgsome:2746 ];
	if(R_43){}
        
        int phragmingOlivad = 9938;
        NSString *opoteraceousApert = @"paternaireBattseveralward";
        while(opoteraceousApert.length > phragmingOlivad) {
            break; 
        } 

		}
		//====insert my code end===  2023-05-30 11:20:44

            make.bottom.mas_equalTo(vfCodeFiledView);
            
            make.height.mas_equalTo(1);

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSArray * g_6 = [self citizenformRhizlearndom:nil ];
	if(g_6){}
        
        int bringCalliitor = 3603;
        bool spatiatorSacceur = NO;
        while (bringCalliitor < 9162)
        {
            if(bringCalliitor < 6500){
                break;
            }
            bringCalliitor = bringCalliitor + 8379;
            spatiatorSacceur = NO;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:44


        }];
        

        
        
        
        
        UIButton *okBtn = [LinguPhylactrepresenttic initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_py_confire.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [okBtn.layer setCornerRadius:VH(25)];
        okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
        [self addSubview:okBtn];
        
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(getVfCodeBtn.mas_bottom).mas_offset(VH(30));
            make.width.mas_equalTo(accountSDKTextFiledView);
            make.height.mas_equalTo(VH(50));
        }];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	float O_40 = [self culpdespitefactionReally:nil thermartCut:1472 centraletteCupable:nil filmateMammhission:nil ];
	if(O_40){}
        
        float crevsiveGent = 3544;
        bool senseryDeon = NO;
        if (senseryDeon){
            senseryDeon = YES;
        }else{
            senseryDeon = !senseryDeon;
        }

        if (senseryDeon){
            crevsiveGent = 9754;
        }
        
		}
		//====insert my code end===  2023-05-30 11:20:44

        
        
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            CAGradientLayer *glLayer = [CourtianPolicyid createGradientLayerWithRadius_MMMethodMMM:VH(25)];
            glLayer.frame = okBtn.bounds;
            [okBtn.layer addSublayer:glLayer];
            
        }];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSString * P_41 = [self justizeRegionety:@"placeernPancreo" suddenlyitorDolortoday:nil barofoldKeepage:nil galactageLaudgoster:774 ];
	if(P_41){}

        bool priorHistoryosity = NO;
        int claringSpaceform = 1235;
        if (priorHistoryosity){

            int husbandlikeBudgetfication = 4633;
            int pteroesque = 2860;
            switch (claringSpaceform) {
                    
                case 705:
			{
				husbandlikeBudgetfication = pteroesque + 782 + 48; 
			 break;
			}
			case 685:
			{
				husbandlikeBudgetfication = pteroesque * 784 / 347 + 685 - 179; 
			 break;
			}
			case 203:
			{
				husbandlikeBudgetfication = pteroesque - 535 + 556 * 920 * 551 / 190; 
			 break;
			}
			case 124:
			{
				husbandlikeBudgetfication = pteroesque + 471 * 132; 
			 break;
			}
			case 760:
			{
				husbandlikeBudgetfication = pteroesque * 131 - 565 / 171 + 148 / 966 * 109; 
			 break;
			}
			case 858:
			{
				husbandlikeBudgetfication = pteroesque - 34 * 669 * 971 * 671 - 166; 
			 break;
			}
			case 67:
			{
				husbandlikeBudgetfication = pteroesque + 260 - 91 + 127 * 142; 
			 break;
			}
			case -77:
			{
				husbandlikeBudgetfication = pteroesque * 561 + 78 / 429 + 681 / 225; 
			 break;
			}
			case 627:
			{
				husbandlikeBudgetfication = pteroesque - 247 + 623 - 549 / 566 * 948 / 996; 
			 break;
			}
			case 944:
			{
				husbandlikeBudgetfication = pteroesque + 122 + 133 - 296; 
			 break;
			}
			case 282:
			{
				husbandlikeBudgetfication = pteroesque * 483 - 977 / 626 + 302 - 59; 
			 break;
			}
			case 74:
			{
				husbandlikeBudgetfication = pteroesque * 112 - 744 * 22; 
			 break;
			}
			
                    
                default:
                    break;
            }

        }else{
            priorHistoryosity = !priorHistoryosity;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:44


        
        
    }
    return self;
}



//===insert my method start=== 2023-05-30 11:20:44
- (NSData *)wouldoriumEvery:(long)wouldorium_1 demnineRep:(NSData *)demnine_2 necessaryIn1:(NSString *)necessary_3{ //insert method
	if(wouldorium_1 - 502 - 922 / 556 / 455 - 196 / 512 == 87822){
		int g_presbyast = 931;
int o_phytize = 922;
switch (g_presbyast) {
   case 897:
			{
				g_presbyast = o_phytize - 517 - 298 / 640; 
			 break;
			}
			case 121:
			{
				g_presbyast = o_phytize - 389 * 747 + 436; 
			 break;
			}
			   default:
       break;
			}
	}
	if(demnine_2){
		            float oscillThusain = 6923.0;
            if (@(oscillThusain).doubleValue >= 7476) {}
	}
	if(necessary_3){
		int W_treiskaidekeer = 481;
double L_artance = 222;
switch (W_treiskaidekeer) {
   case 577:
			{
				W_treiskaidekeer = L_artance - 269 - 773 + 9 * 636 / 861; 
			 break;
			}
			case -40:
			{
				W_treiskaidekeer = L_artance + 696 * 608 + 410 - 495 / 279 + 74; 
			 break;
			}
			case 691:
			{
				W_treiskaidekeer = L_artance * 36 + 326; 
			 break;
			}
			case -69:
			{
				W_treiskaidekeer = L_artance * 257 / 861; 
			 break;
			}
			case 657:
			{
				W_treiskaidekeer = L_artance + 635 - 929 * 37; 
			 break;
			}
			case 63:
			{
				W_treiskaidekeer = L_artance + 525 - 289 + 980 * 109; 
			 break;
			}
			case 803:
			{
				W_treiskaidekeer = L_artance * 282 * 927 + 482; 
			 break;
			}
			case 656:
			{
				W_treiskaidekeer = L_artance - 839 * 863; 
			 break;
			}
			case 231:
			{
				W_treiskaidekeer = L_artance + 930 - 546 / 868 / 514; 
			 break;
			}
			   default:
       break;
			}
	}
 
	return demnine_2;
}
//===insert my method end=== 2023-05-30 11:20:44
- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {
            
        case kGetVfCodeActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kGetVfCodeActTag);
            NSString *account = accountSDKTextFiledView.inputUITextField.text;

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSData * H_33 = [self wouldoriumEvery:9467 demnineRep:nil necessaryIn1:@"willeticMusviewize" ];
	if(H_33){}
        
        int hugeibleRepresent = 4803;
        BOOL sensreporttureViscerbyard = NO;
        if (hugeibleRepresent > 6597){
            
            sensreporttureViscerbyard = YES;
        }else{
            sensreporttureViscerbyard = NO;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:44

            if (![AmphressCytoacy validUserName_MMMethodMMM:account]) {
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
    
    NSString *newPwd = newPwdSDKTextFiledView.inputUITextField.text;
    
    if (![AmphressCytoacy validUserName_MMMethodMMM:userName]) {
        return;
    }
    

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSString * W_48 = [self justizeRegionety:@"feryPhemproductionify" suddenlyitorDolortoday:nil barofoldKeepage:nil galactageLaudgoster:1013 ];
	if(W_48){}
int x_herbster = 9231;

double H_debateative = 119;
if(x_herbster - 551 + 504 + 466 / 636 != 89308){
	H_debateative = x_herbster * 681 / 10 + 26;
}

double z_commercialic = 161;
if(H_debateative - 584 / 53 * 349 + 840 >= 68254){
	z_commercialic = H_debateative + 958 * 466 - 262 / 783 * 517 - 727;
}else{
	z_commercialic = H_debateative + 952 + 664 * 770;
}

float q_sisterward = 775;
if(z_commercialic * 353 + 823 / 754 - 854 * 239 * 337 <= 31193){
	q_sisterward = z_commercialic * 759 * 522 * 604;
}

float o_pejorism = 353;
if(q_sisterward + 907 + 617 + 713 <= 56447){
	o_pejorism = q_sisterward - 721 / 871 + 23 - 811;
}else{
	o_pejorism = q_sisterward * 638 + 772 + 158;
}

		}
		//====insert my code end===  2023-05-30 11:20:44

    if ([DrugfulMediic isEmpty_MMMethodMMM:vfCode]) {
    
        [AmphressCytoacy toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_vfcode_empty)];
        return;
    }
        

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	int s_18 = [self hibernizeReportit:nil deictinalityJust:908 ];
	if(s_18){}
        NSString *lecithimproveeurLaminaability = @"";
        if(@"receivealityWifeic".length - (-330) != 3246){
            lecithimproveeurLaminaability = @"stinguestablishesqueSimpleule";
        }

		}
		//====insert my code end===  2023-05-30 11:20:44

    if (![AmphressCytoacy validPwd_MMMethodMMM: newPwd]) {
       

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSArray * u_20 = [self mediAgsome:5754 ];
	if(u_20){}
double q_risk = 4909;

if(q_risk == 30325){
	float N_gramably = q_risk * 325 - 380 - 549 + 950; 
if(N_gramably < 26186){
	double Y_fastaire = N_gramably - 961 / 217 * 731 + 859; 
if(Y_fastaire < 79296){
	double i_lausacy = Y_fastaire + 803 - 548 / 308 * 88 + 197;
}
}
}
		}
		//====insert my code end===  2023-05-30 11:20:44

        return;
    }
    
    
    NSDictionary *otherParamsDic = nil;
    @try {
        otherParamsDic = @{
            wwwww_tag_wwwww_newPwd        :[CenturyiaGraphic getMD5StrFromString_MMMethodMMM:newPwd],
        };
        
    } @catch (NSException *exception) {
        
    }
    
    kWeakSelf
    [OfficeacityParticipantan doForgotPasswordWithUserName_MMMethodMMM:userName phoneAreaCode_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:phoneNum email_MMMethodMMM:userName vfCode_MMMethodMMM:vfCode interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherParamsDic_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
        
        [AmphressCytoacy toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_change_pwd_success)];

        if (weakSelf.delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = userName;
            cc.data.password = newPwd;
            cc.data.loginType = LOGIN_TYPE_SELF;
            [weakSelf.delegate handleLoginOrRegSuccess_MMMethodMMM:cc thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSData * v_21 = [self wouldoriumEvery:8315 demnineRep:nil necessaryIn1:@"stinguProve" ];
	if(v_21){}
        
        double tenarianGemm = 9318.0;
        if (@(tenarianGemm).doubleValue >= 8653) {}
        
		}
		//====insert my code end===  2023-05-30 11:20:44

        }
        
    } errorBlock_MMMethodMMM:^(VernfactionVeral *error) {
        [MeanSecutization showAlertWithMessage_MMMethodMMM:error.message];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	float Z_51 = [self aacleSyitor];
	if(Z_51){}
        NSDictionary *sapiuousCarcerseasonlet = [NSDictionary dictionaryWithObjectsAndKeys:@"mnemonitiousOfficerous",@(3074), nil];
             if (sapiuousCarcerseasonlet.count > 342) {}
		}
		//====insert my code end===  2023-05-30 11:20:44

    }];
    
}


- (void)requestVfCodeByEmail_MMMethodMMM:(NSString *)email
{
    
    [OfficeacityParticipantan requestVfCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@""  email_MMMethodMMM:email interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [AmphressCytoacy toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_send_vf_code_success)];
        [self downTime_MMMethodMMM];
    } errorBlock_MMMethodMMM:^(VernfactionVeral *error) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
        [MeanSecutization showAlertWithMessage_MMMethodMMM:error.message];
    }];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSArray * M_38 = [self mediAgsome:7359 ];
	if(M_38){}
        
        bool seniorityArchokin = YES;
        if (seniorityArchokin)
        {
            seniorityArchokin = NO;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:44

}


//===insert my method start=== 2023-05-30 11:20:44
- (float)culpdespitefactionReally:(NSDictionary *)culpdespitefaction_1 thermartCut:(BOOL)thermart_2 centraletteCupable:(NSArray *)centralette_3 filmateMammhission:(NSMutableArray *)filmate_4{ //insert method
	if(filmate_4){
		        
        int pachoyBromoperformence = 9884;
        BOOL xermostPolitics = NO;
        if (pachoyBromoperformence != 8582){
            
            xermostPolitics = YES;
        }else{
            xermostPolitics = NO;
        }

        
	}
 
	float q_16 = 53042;
	return q_16;
}
//===insert my method end=== 2023-05-30 11:20:44

//===insert my method start=== 2023-05-30 11:20:44
- (NSArray *)citizenformRhizlearndom:(NSMutableDictionary *)citizenform_1{ //insert method
	        
        NSDictionary *createerFlictious = @{@"captnation" : @"haemfinish", @"togetherar" : @"thermion", @"makeeer" : @(11646), @"capssayoon" : @"remainain", @"vincy" : @(2352), @"brachioaskot" : @(559), @"rememberably" : @"todayel", @"nuchwinitor" : @"docuer", @"mandcare" : @"lavdegreeible", @"nominose" : @(77793), @"treatremove" : @(76612) };
        if (createerFlictious.count == 3117){
            NSLog(@"coletWonderit");
        }else{
            NSLog(@"udintudeizationTransify");
        }

        

 
	NSArray *s_18 = nil;
	return s_18;
}
//===insert my method end=== 2023-05-30 11:20:44
-(void)downTime_MMMethodMMM{
    
    phoneCountdown = 60;
    getVfCodeBtn.userInteractionEnabled = NO;
    [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    
    
    

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSString * W_48 = [self justizeRegionety:@"dogmatettePapereur" suddenlyitorDolortoday:nil barofoldKeepage:nil galactageLaudgoster:2934 ];
	if(W_48){}
        
        CGFloat electraceousCivern = 264;
        bool hearanceGeneral = YES;

        for(int standidPriceenne = 2491; standidPriceenne < 6908; standidPriceenne = standidPriceenne + 1)
        {    
            if (hearanceGeneral){
                break;
            }
            electraceousCivern = electraceousCivern + 6969;
        }
        
		}
		//====insert my code end===  2023-05-30 11:20:44

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


//===insert my method start=== 2023-05-30 11:20:44
- (NSString *)justizeRegionety:(NSString *)justize_1 suddenlyitorDolortoday:(NSArray *)suddenlyitor_2 barofoldKeepage:(NSMutableArray *)barofold_3 galactageLaudgoster:(NSInteger)galactage_4{ //insert method
	if(justize_1){
		        
        NSDictionary *noriseProductionform = @{@"passerice" : @"nuchlet", @"veryty" : @"pastee" };
        if (noriseProductionform.count < 5506){

            int vitiPaushard = 6932;
            int vulpPylfaction = -121;
            int pulchrate = 1857;
            switch (vitiPaushard) {
                    
                case 193:
			{
				vulpPylfaction = pulchrate - 284 / 313 * 551 + 331; 
			 break;
			}
			case 268:
			{
				vulpPylfaction = pulchrate + 744 / 833 + 193; 
			 break;
			}
			case 18:
			{
				vulpPylfaction = pulchrate * 903 - 802 / 594 * 669 - 259 - 889; 
			 break;
			}
			case 126:
			{
				vulpPylfaction = pulchrate + 168 * 233 * 532 / 587 * 560; 
			 break;
			}
			case 263:
			{
				vulpPylfaction = pulchrate + 555 / 310 * 11; 
			 break;
			}
			case 484:
			{
				vulpPylfaction = pulchrate - 970 + 313 - 466 + 387; 
			 break;
			}
			case 713:
			{
				vulpPylfaction = pulchrate - 316 + 719; 
			 break;
			}
			case 524:
			{
				vulpPylfaction = pulchrate - 903 - 918 * 915 - 30 / 927 + 933; 
			 break;
			}
			case 765:
			{
				vulpPylfaction = pulchrate + 325 / 166; 
			 break;
			}
			case 721:
			{
				vulpPylfaction = pulchrate + 336 + 278 / 456 - 162 + 765 + 441; 
			 break;
			}
			case 256:
			{
				vulpPylfaction = pulchrate + 430 - 669 / 379 + 71 - 889 * 834; 
			 break;
			}
			case 946:
			{
				vulpPylfaction = pulchrate * 612 + 897 + 66 - 27; 
			 break;
			}
			case 902:
			{
				vulpPylfaction = pulchrate - 518 / 205 * 8 - 321 * 292 - 866; 
			 break;
			}
			case 283:
			{
				vulpPylfaction = pulchrate + 588 / 455; 
			 break;
			}
			
                    
                default:
                    break;
            }


        }

        

	}
 
	return justize_1;
}
//===insert my method end=== 2023-05-30 11:20:44
- (void)phoneFireTimer_MMMethodMMM {
    phoneCountdown--;

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSString * U_46 = [self justizeRegionety:@"theyTrixify" suddenlyitorDolortoday:nil barofoldKeepage:nil galactageLaudgoster:9489 ];
	if(U_46){}
            float hessiveEverth = 543.0;
            if (@(hessiveEverth).doubleValue > 5455) {}
		}
		//====insert my code end===  2023-05-30 11:20:44

    if (phoneCountdown < 0) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
    }else{
        [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	float w_22 = [self culpdespitefactionReally:nil thermartCut:4895 centraletteCupable:nil filmateMammhission:nil ];
	if(w_22){}
        
        CGFloat civVariousature = 6201;
        int abilityatureFals = 9436;

        for(int benefitileDyslet = 8953; benefitileDyslet < 6911; benefitileDyslet = benefitileDyslet + 1)
        {    
            civVariousature = civVariousature + abilityatureFals;
            if (civVariousature <= benefitileDyslet){
                break;
            }
            abilityatureFals = abilityatureFals++;
        }
        

        
		}
		//====insert my code end===  2023-05-30 11:20:44

    }
    
}

-(void)resetVfCodeBtnStatue_MMMethodMMM
{
    if (downTimer) {
        [downTimer invalidate];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	int J_35 = [self hibernizeReportit:nil deictinalityJust:576 ];
	if(J_35){}
        
        int oreticativeLavdegreeible = 2801;
        int ceivthSuperaceous = 6422;
        for(int mimgrowadeAxiion = 0; mimgrowadeAxiion < oreticativeLavdegreeible; mimgrowadeAxiion += 9958) {
            break; 
        } 

        
		}
		//====insert my code end===  2023-05-30 11:20:44

        downTimer = nil;

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	float j_9 = [self aacleSyitor];
	if(j_9){}
int a_pelesque = 1732;

if(a_pelesque != 51375){
	int C_emetice = a_pelesque + 819 / 184 - 312 + 534 * 8;
}
		}
		//====insert my code end===  2023-05-30 11:20:44

    }
    getVfCodeBtn.userInteractionEnabled = YES;
    [getVfCodeBtn setTitle:GetString(wwwww_tag_wwwww_text_get_vfcode) forState:UIControlStateNormal];

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	int a_0 = [self hibernizeReportit:nil deictinalityJust:2180 ];
	if(a_0){}
        
        int pausitionGeneso = 377;
        int anthDocify = 2247;
        int startitePater = 9694;
        int gravpositionularPaternior = 5433;
        int photariumHandmost = 1786;
        int hypnainFewry = 7097;

        if (pausitionGeneso <= 7745){

            anthDocify -= 1;
            startitePater += anthDocify;
            photariumHandmost -= pausitionGeneso;
            gravpositionularPaternior += 1;
            hypnainFewry += 10;
        }

		}
		//====insert my code end===  2023-05-30 11:20:44

}


//===insert my method start=== 2023-05-30 11:20:44
- (int)hibernizeReportit:(NSMutableArray *)hibernize_1 deictinalityJust:(int)deictinality_2{ //insert method
	if(hibernize_1){
		        
        float hypoaneousFocus = 1085;
        float itinerrecordeerMinute = 7789;

        bool ofivityFlorot = YES;
        while (hypoaneousFocus < 9826)
        {
            hypoaneousFocus = hypoaneousFocus + 1391;
            ofivityFlorot = NO;
            if(ofivityFlorot){
                break;
            }
        }

        hypoaneousFocus = itinerrecordeerMinute + 5457 ;
        ofivityFlorot = YES;
	}
 
	return deictinality_2;
}
//===insert my method end=== 2023-05-30 11:20:44

//===insert my method start=== 2023-05-30 11:20:44
- (NSArray *)mediAgsome:(BOOL)medi_1{ //insert method
	        
        NSArray *dipsiaitionPrimocandidate = @[@"publicism_solutsome", @"recognize_abilityical" ];
        if (dipsiaitionPrimocandidate){
        }

 
	NSArray *B_27 = nil;
	return B_27;
}
//===insert my method end=== 2023-05-30 11:20:44
- (void)dealloc
{
    

		//====insert my code start===  2023-05-30 11:20:44
		{
		
	NSArray * k_10 = [self citizenformRhizlearndom:nil ];
	if(k_10){}
int C_phobible = 7095;

if(C_phobible <= 41518){
	float A_least = C_phobible + 870 - 90 + 807; 
if(A_least == 91530){
	float l_technologyery = A_least + 990 + 423 - 76 + 128 + 985; 
if(l_technologyery <= 33983){
	float r_interviewice = l_technologyery + 84 - 823 / 340 * 430; 
if(r_interviewice == 93529){
	double s_beatit = r_interviewice - 173 - 609 - 721 + 586;
}
}
}
}
		}
		//====insert my code end===  2023-05-30 11:20:44

    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
}


//===insert my method start=== 2023-05-30 11:20:44
- (float)aacleSyitor{ //insert method
	        NSDictionary *baloarGirlth = [NSDictionary dictionaryWithObjectsAndKeys:@"pressureiousScandial",@(3154), nil];
             if (baloarGirlth.count > 8600) {}
 
	float d_3 = 45684;
	return d_3;
}
//===insert my method end=== 2023-05-30 11:20:44
@end
