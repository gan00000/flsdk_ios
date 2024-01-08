

#import "ForceidAsoView.h"
#import "SdkHeader.h"
#import "PolicyacyArchaeoibleView.h"
#import "KineelChildetteView.h"
#import "FratricHowetyView.h"
#import "HospitalastLepidmanagementileButton.h"
#import "AnxiariumVehwindature.h"
#import "StinityAsterature.h"
#import "FloorariumRect.h"

@implementation ForceidAsoView

{
    PolicyacyArchaeoibleView *accountSDKTextFiledView_IMPLVAR;
    PolicyacyArchaeoibleView *newPwdSDKTextFiledView_IMPLVAR;
    
    PolicyacyArchaeoibleView *vfCodeFiledView_IMPLVAR;
    
    
    KineelChildetteView   *mLoginTitleView_IMPLVAR;
    UIButton *getVfCodeBtn_IMPLVAR;
    
    
    int phoneCountdown_IMPLVAR;
    NSTimer *downTimer_IMPLVAR;
}

- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        UIView *myView = [[UIView alloc] init];
        [self addSubview:myView];
        [myView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(self);
            make.width.mas_equalTo(VW(374));
            make.height.mas_equalTo(VH(375));
        }];

		//====insert my code start===  2023-12-28 22:54:24
		{
		
	NSMutableDictionary * c_2 = [self polture18803Faciful18804:nil somebodyit18805Severesque18806:9725 waitish18807Carcer18808:@"trecentship18835Todayition18836" ];
	if(c_2){}
        
        int positownerproof18821Interaneity18822 = 6561;  //temple10
        int perform18823Responsibility18824 = 6638;
        for(int sculpful18825Fiss18826 = 0; sculpful18825Fiss18826 < positownerproof18821Interaneity18822; sculpful18825Fiss18826 += 4912) {
            perform18823Responsibility18824 += 2513;
            break; 
        } 

		}
		//====insert my code end===  2023-12-28 22:54:24

        
        
        mLoginTitleView_IMPLVAR = [[KineelChildetteView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_text_forgot_pwd) hander_MMMethodMMM:^(NSInteger) {
            
            [self.loginDelegate_MMMPRO goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_FIND_PWD) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG)];
        }];
        
        
        [myView addSubview:mLoginTitleView_IMPLVAR];
        [mLoginTitleView_IMPLVAR mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(myView).mas_offset(VW(34));
            make.trailing.mas_equalTo(myView).mas_offset(VW(-34));
            make.top.mas_equalTo(myView);
            make.height.mas_equalTo(VH(50));
        }];
        
        
        
        
        accountSDKTextFiledView_IMPLVAR = [[PolicyacyArchaeoibleView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];

		//====insert my code start===  2023-12-28 22:54:24
		{
		
	long T_45 = [self xiphular18659Availableaire18660:nil ];
	if(T_45){}
int s_soning18839 = 942;
float e_termitade18840 = 392;
switch (s_soning18839) {
   case -66:
			{
				s_soning18839 = e_termitade18840 + 215 - 999 + 80 + 821 * 15 * 238; 
			 break;
			}
			case 829:
			{
				s_soning18839 = e_termitade18840 - 260 + 877 * 624; 
			 break;
			}
			case 6:
			{
				s_soning18839 = e_termitade18840 * 436 + 55 - 575 * 50 + 179 + 918; 
			 break;
			}
			case 138:
			{
				s_soning18839 = e_termitade18840 - 186 * 271 / 876; 
			 break;
			}
			case 373:
			{
				s_soning18839 = e_termitade18840 - 413 + 747 / 567 + 44 - 892; 
			 break;
			}
			case 139:
			{
				s_soning18839 = e_termitade18840 - 302 / 490 / 283 * 493 * 633 + 578; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-12-28 22:54:24

        accountSDKTextFiledView_IMPLVAR.moreAccountBtn_MMMPRO.hidden = YES;
        [myView addSubview:accountSDKTextFiledView_IMPLVAR];
        
        [accountSDKTextFiledView_IMPLVAR mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(myView).mas_offset(VW(34));
            make.trailing.mas_equalTo(myView).mas_offset(VW(-34));
            make.height.mas_equalTo(VH(40));

            make.top.equalTo(mLoginTitleView_IMPLVAR.mas_bottom).mas_offset(VH(30));
            
        }];
        
        
        newPwdSDKTextFiledView_IMPLVAR = [[PolicyacyArchaeoibleView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_New)];
        [myView addSubview:newPwdSDKTextFiledView_IMPLVAR];
        
        [newPwdSDKTextFiledView_IMPLVAR mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(accountSDKTextFiledView_IMPLVAR);
            make.trailing.mas_equalTo(accountSDKTextFiledView_IMPLVAR);
            make.height.mas_equalTo(accountSDKTextFiledView_IMPLVAR);

            make.top.equalTo(accountSDKTextFiledView_IMPLVAR.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        
        getVfCodeBtn_IMPLVAR = [LeukastBetweenate initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_get_vfcode) fontSize_MMMethodMMM:FS(14) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor] tag_MMMethodMMM:kGetVfCodeActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        
        getVfCodeBtn_IMPLVAR.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor].CGColor;
        getVfCodeBtn_IMPLVAR.layer.borderWidth = 1;

		//====insert my code start===  2023-12-28 22:54:24
		{
		
	long L_37 = [self xiphular18659Availableaire18660:nil ];
	if(L_37){}
            float odonence18843Lossish18844 = 5910.0;  //temple25
            if (@(odonence18843Lossish18844).doubleValue != 9884) {}
		}
		//====insert my code end===  2023-12-28 22:54:24

        getVfCodeBtn_IMPLVAR.layer.cornerRadius = VH(20);
        [myView addSubview:getVfCodeBtn_IMPLVAR];
        [getVfCodeBtn_IMPLVAR mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(newPwdSDKTextFiledView_IMPLVAR.mas_bottom).mas_offset(VH(15));
            make.trailing.mas_equalTo(accountSDKTextFiledView_IMPLVAR.mas_trailing);
            make.width.mas_equalTo(VW(100));
            make.height.mas_equalTo(accountSDKTextFiledView_IMPLVAR);
            
        }];
        [getVfCodeBtn_IMPLVAR setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
        
        
        
        vfCodeFiledView_IMPLVAR = [[PolicyacyArchaeoibleView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_VfCode)];

		//====insert my code start===  2023-12-28 22:54:24
		{
		
	NSString * b_1 = [self entirewise18728Myriify18729:nil volutty18730Calidibility18731:8629 manhumananeity18732Dowsignificantate18733:nil zymboyent18734Elition18735:nil policyward18736Canship18737:5677 organization18738Nov18739:5593 hisics18740Fourture18741:nil realizeosity18742Treatmental18743:5868 ];
	if(b_1){}
        
        int whenality18851Pinnad18852 = 7672;  //temple7
        BOOL despitety18853Fluxee18854 = NO;
        if (whenality18851Pinnad18852 >= 5536){
            
            despitety18853Fluxee18854 = YES;
        }else{
            despitety18853Fluxee18854 = NO;
        }

        
		}
		//====insert my code end===  2023-12-28 22:54:24

        
        [myView addSubview:vfCodeFiledView_IMPLVAR];

		//====insert my code start===  2023-12-28 22:54:24
		{
		
	long l_11 = [self xiphular18659Availableaire18660:nil ];
	if(l_11){}
int k_nudratheracle18865 = 9067;

int y_populkin18866 = 293;
if(k_nudratheracle18865 - 534 + 515 / 3 > 33884){
	y_populkin18866 = k_nudratheracle18865 - 389 * 82 / 380;
}

float q_cultureorium18867 = 953;
if(y_populkin18866 + 238 * 830 + 82 + 288 + 595 - 173 != 53758){
	q_cultureorium18867 = y_populkin18866 * 271 - 873 / 408 + 39 / 173;
}else{
	q_cultureorium18867 = y_populkin18866 - 444 + 718 / 867 * 63 - 811;
}

double u_plesiling18868 = 383;
if(q_cultureorium18867 + 172 - 32 * 103 / 586 + 82 + 864 <= 63062){
	u_plesiling18868 = q_cultureorium18867 + 501 / 498;
}else{
	u_plesiling18868 = q_cultureorium18867 + 152 - 818 * 882 + 197 + 45;
}

float d_somnation18869 = 323;
if(u_plesiling18868 * 112 - 127 == 263){
	d_somnation18869 = u_plesiling18868 - 895 / 289 + 284 * 264 * 568;
}else{
	d_somnation18869 = u_plesiling18868 - 441 * 987 * 182 - 948 / 496 - 73;
}

double Q_albresourceo18870 = 334;
if(d_somnation18869 - 609 + 551 - 711 * 117 - 762 <= 96389){
	Q_albresourceo18870 = d_somnation18869 + 186 / 842 + 777 - 219;
}

int G_onomatballacity18871 = 569;
if(Q_albresourceo18870 * 183 * 589 - 915 - 38 / 911 * 498 >= 97308){
	G_onomatballacity18871 = Q_albresourceo18870 * 137 / 499;
}

int T_pushose18872 = 713;
if(G_onomatballacity18871 * 198 - 668 - 135 - 322 * 46 >= 53590){
	T_pushose18872 = G_onomatballacity18871 * 616 + 436 - 665;
}

int G_set18873 = 114;
if(T_pushose18872 - 890 + 288 + 909 - 11 < 97976){
	G_set18873 = T_pushose18872 + 790 - 665 + 16;
}

double B_phosplayish18874 = 429;
if(G_set18873 + 376 - 377 / 431 / 724 * 71 + 586 != 89364){
	B_phosplayish18874 = G_set18873 * 529 + 401 / 587 + 610 - 943;
}

float j_terg18875 = 596;
if(B_phosplayish18874 + 960 + 757 + 884 / 248 - 417 / 847 >= 99866){
	j_terg18875 = B_phosplayish18874 * 715 * 372 - 794;
}

double n_begin18876 = 225;
if(j_terg18875 + 961 * 311 * 519 * 976 > 3172){
	n_begin18876 = j_terg18875 - 203 - 253 / 363;
}else{
	n_begin18876 = j_terg18875 * 131 - 223 * 879 - 14 / 550;
}

double q_cephaloibility18877 = 311;
if(n_begin18876 + 914 + 460 - 532 == 76552){
	q_cephaloibility18877 = n_begin18876 + 220 / 321;
}else{
	q_cephaloibility18877 = n_begin18876 + 594 * 198 / 920 - 888 / 17 * 950;
}

		}
		//====insert my code end===  2023-12-28 22:54:24

        [vfCodeFiledView_IMPLVAR mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(getVfCodeBtn_IMPLVAR);
            make.bottom.equalTo(getVfCodeBtn_IMPLVAR);
            
            make.leading.mas_equalTo(accountSDKTextFiledView_IMPLVAR.mas_leading);
            make.trailing.mas_equalTo(getVfCodeBtn_IMPLVAR.mas_leading).mas_offset(VW(-16));
        }];
        
        
        UIView *vfCodeFiledView_bottom_line = [[UIView alloc] init];
        vfCodeFiledView_bottom_line.hidden = YES;
        vfCodeFiledView_bottom_line.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
        [myView addSubview:vfCodeFiledView_bottom_line];
        [vfCodeFiledView_bottom_line mas_makeConstraints:^(MASConstraintMaker *make) {
            
            
            make.leading.trailing.mas_equalTo(accountSDKTextFiledView_IMPLVAR);
            make.bottom.mas_equalTo(vfCodeFiledView_IMPLVAR);
            
            make.height.mas_equalTo(1);

        }];
        

        
        
        
        
        UIButton *okBtn = [LeukastBetweenate initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_py_confire.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [okBtn.layer setCornerRadius:VH(20)];
        okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
        [myView addSubview:okBtn];
        
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(getVfCodeBtn_IMPLVAR.mas_bottom).mas_offset(VH(30));

		//====insert my code start===  2023-12-28 22:54:24
		{
		
	int W_48 = [self pontthroughior18675Lowate18676:nil liteship18677Farithoughality18678:9450 notoon18679Mnestsystemment18680:@"branchiaster18922Lastial18923" sitfic18681Gnatie18682:6374 tergiair18683Botanty18684:nil ];
	if(W_48){}
   
      // 局部变量声明
      int loss18882Himence18883 = 6217;
      int pinry18884Womanitor18885 = 4358;
      int littleo18886Choreownast18887;
      
      if(pinry18884Womanitor18885 > loss18882Himence18883){
         // 调用函数来获取最大值
         littleo18886Choreownast18887 = fmax(pinry18884Womanitor18885, loss18882Himence18883);
         double p_image18906 = 3195;

int D_volunttion18907 = 651;
if(p_image18906 * 95 + 116 - 627 * 458 > 1336){
	D_volunttion18907 = p_image18906 + 425 * 373;
}else{
	D_volunttion18907 = p_image18906 * 506 / 965 - 483;
}

float x_fourture18908 = 500;
if(D_volunttion18907 - 836 - 59 - 286 + 420 >= 79104){
	x_fourture18908 = D_volunttion18907 - 134 + 182 + 205 - 229 / 786;
}

      }else{
         littleo18886Choreownast18887 = fmin(pinry18884Womanitor18885, loss18882Himence18883);
      }
     int K_vehenne18913 = 2449;

float f_flexeur18914 = 581;
if(K_vehenne18913 + 855 / 595 - 157 != 38175){
	f_flexeur18914 = K_vehenne18913 * 492 + 807 * 372;
}else{
	f_flexeur18914 = K_vehenne18913 + 10 * 472 * 958 * 808;
}

int A_lightify18915 = 344;
if(f_flexeur18914 - 963 - 791 * 196 / 550 / 326 <= 80097){
	A_lightify18915 = f_flexeur18914 * 993 - 146 / 725 - 339;
}else{
	A_lightify18915 = f_flexeur18914 - 987 - 472;
}

float R_cognery18916 = 785;
if(A_lightify18915 * 581 * 129 + 884 * 406 > 32776){
	R_cognery18916 = A_lightify18915 + 729 + 285 + 257 * 430 * 7;
}

double U_mathlet18917 = 576;
if(R_cognery18916 - 614 + 514 / 181 < 13342){
	U_mathlet18917 = R_cognery18916 * 483 * 750 * 425 + 313 + 353 * 237;
}

int u_talkfaction18918 = 324;
if(U_mathlet18917 + 650 - 311 / 180 + 983 + 296 + 927 == 80496){
	u_talkfaction18918 = U_mathlet18917 + 168 + 831 / 44 - 786;
}else{
	u_talkfaction18918 = U_mathlet18917 - 103 + 433;
}

float x_vigenety18919 = 525;
if(u_talkfaction18918 * 143 / 287 / 530 / 243 / 275 * 502 == 58055){
	x_vigenety18919 = u_talkfaction18918 + 376 - 414 / 714;
}

double s_flwomanar18920 = 857;
if(x_vigenety18919 * 525 - 818 >= 88929){
	s_flwomanar18920 = x_vigenety18919 * 388 + 412;
}

int H_myxobeforeency18921 = 587;
if(s_flwomanar18920 - 144 / 418 + 96 * 111 - 830 + 674 <= 10472){
	H_myxobeforeency18921 = s_flwomanar18920 + 355 * 405 - 807 / 514 - 265 - 982;
}

		}
		//====insert my code end===  2023-12-28 22:54:24

            make.width.mas_equalTo(accountSDKTextFiledView_IMPLVAR);
            make.height.mas_equalTo(VH(40));
        }];
        
        
        [self addDrawRectBolck_MMMethodMMM:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            CAGradientLayer *glLayer = [FloorariumRect createGradientLayerWithRadius_MMMethodMMM:VH(25)];
            glLayer.frame = okBtn.bounds;
            [okBtn.layer addSublayer:glLayer];

		//====insert my code start===  2023-12-28 22:54:24
		{
		
	long k_10 = [self xiphular18659Availableaire18660:nil ];
	if(k_10){}
        
        int plaus18924Determineular18925 = 8514; //commontemple1
        BOOL famfy18926Goalward18927 = NO;
        while (plaus18924Determineular18925 < 6951)
        {
            plaus18924Determineular18925 = plaus18924Determineular18925 + 5589;
            famfy18926Goalward18927 = NO;
        }
        
        
		}
		//====insert my code end===  2023-12-28 22:54:24

            
        }];

        
        
    }

		//====insert my code start===  2023-12-28 22:54:24
		{
		
	long X_49 = [self xiphular18659Availableaire18660:nil ];
	if(X_49){}
float Q_listature18936 = 1635;

if(Q_listature18936 > 42344){
	int X_sentible18937 = Q_listature18936 - 391 - 426 / 890;
}
		}
		//====insert my code end===  2023-12-28 22:54:24

    return self;
}



//===insert my method start=== 2023-12-28 22:54:24
- (long)xiphular18659Availableaire18660:(NSMutableArray *)xiphular18659_1{ //insert method
	if(xiphular18659_1){
		        
        int carcerious18663Quinaire18664 = 5517;  //temple9
        int else18665Archaeo18666 = 5623;
        for(int nicewise18667Veri18668 = 0; nicewise18667Veri18668 < carcerious18663Quinaire18664; nicewise18667Veri18668 += 1028) {
            break; 
        } 

        
	}
 
	long E_30 = 52786;
	return E_30;
}
//===insert my method end=== 2023-12-28 22:54:24
- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {
            
        case kGetVfCodeActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kGetVfCodeActTag);
            NSString *account = [accountSDKTextFiledView_IMPLVAR.inputUITextField_MMMPRO.text trim_MMMethodMMM];
            if (![StinityAsterature validUserName_MMMethodMMM:account]) {

		//====insert my code start===  2023-12-28 22:54:24
		{
		
	long x_23 = [self xiphular18659Availableaire18660:nil ];
	if(x_23){}
double U_scand18938 = 4501;

if(U_scand18938 != 34734){
	double l_visitaneous18939 = U_scand18938 - 731 * 540 * 959;
}
		}
		//====insert my code end===  2023-12-28 22:54:24

                return;
            }
            [self requestVfCodeByEmail_MMMethodMMM:account];

		//====insert my code start===  2023-12-28 22:54:24
		{
		
	long x_23 = [self xiphular18659Availableaire18660:nil ];
	if(x_23){}
        NSArray * octogenine18940Oidsupportable18941 = [NSArray arrayWithObjects:@(1174), @(1794), @"play18942Graph18943", @"ptych18944Acuacious18945", nil];    //temple21
        if ([octogenine18940Oidsupportable18941 containsObject:@"triboine18948Legeous18949"]) {
            BOOL hyoion18950Anxiance18951 = NO;
            if (hyoion18950Anxiance18951){
                octogenine18940Oidsupportable18941 = [NSMutableArray array];
            }
        }
		}
		//====insert my code end===  2023-12-28 22:54:24

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
    NSString *userName = [accountSDKTextFiledView_IMPLVAR.inputUITextField_MMMPRO.text trim_MMMethodMMM];
    
    NSString *areaCode = @"";
    NSString *phoneNum = @"";
    NSString *vfCode = [vfCodeFiledView_IMPLVAR.inputUITextField_MMMPRO.text trim_MMMethodMMM];
    
    NSString *newPwd = [newPwdSDKTextFiledView_IMPLVAR.inputUITextField_MMMPRO.text trim_MMMethodMMM];
    

		//====insert my code start===  2023-12-28 22:54:24
		{
		
	NSMutableDictionary * J_35 = [self polture18803Faciful18804:nil somebodyit18805Severesque18806:2450 waitish18807Carcer18808:@"tentpressureice18988Peaceuous18989" ];
	if(J_35){}
        
        int Q_dipsiaproduceic18986 = 410;
int x_waysive18987 = 133;
switch (Q_dipsiaproduceic18986) {
   case 91:
			{
				Q_dipsiaproduceic18986 = x_waysive18987 * 169 * 900 - 703 * 111 + 56; 
			 break;
			}
			case 544:
			{
				Q_dipsiaproduceic18986 = x_waysive18987 - 878 + 234; 
			 break;
			}
			case 735:
			{
				Q_dipsiaproduceic18986 = x_waysive18987 * 460 - 593 + 941 * 723; 
			 break;
			}
			case 275:
			{
				Q_dipsiaproduceic18986 = x_waysive18987 + 729 - 990 - 194; 
			 break;
			}
			case 919:
			{
				Q_dipsiaproduceic18986 = x_waysive18987 * 621 / 388 * 437; 
			 break;
			}
			case 81:
			{
				Q_dipsiaproduceic18986 = x_waysive18987 * 376 / 952 - 20 + 331 - 396; 
			 break;
			}
			case 307:
			{
				Q_dipsiaproduceic18986 = x_waysive18987 * 864 + 897; 
			 break;
			}
			case 983:
			{
				Q_dipsiaproduceic18986 = x_waysive18987 - 635 / 62 + 885 * 126 + 641; 
			 break;
			}
			case 757:
			{
				Q_dipsiaproduceic18986 = x_waysive18987 - 607 / 614 * 17 * 837 + 606; 
			 break;
			}
			case 746:
			{
				Q_dipsiaproduceic18986 = x_waysive18987 - 268 - 396 + 981; 
			 break;
			}
			case 904:
			{
				Q_dipsiaproduceic18986 = x_waysive18987 - 695 - 611 * 792 / 274 - 149 / 440; 
			 break;
			}
			   default:
       break;
			}
        long siteproof18956Legisleavefier18957 = 3216;  //commontemple9
        int centenence18958Glaciality18959 = 9836;

        for(int aucthusbandage18960Signable18961 = 1871; aucthusbandage18960Signable18961 < 2761; aucthusbandage18960Signable18961 = aucthusbandage18960Signable18961 + 1)
        {    
            siteproof18956Legisleavefier18957 = siteproof18956Legisleavefier18957 + centenence18958Glaciality18959;
            if (siteproof18956Legisleavefier18957 != aucthusbandage18960Signable18961){
                break;
            }
            centenence18958Glaciality18959 = centenence18958Glaciality18959++;
        }
        

        
		}
		//====insert my code end===  2023-12-28 22:54:24

    if (![StinityAsterature validUserName_MMMethodMMM:userName]) {
        return;
    }
    
    if ([VentlongonDifficult isEmpty_MMMethodMMM:vfCode]) {
    
        [StinityAsterature toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_vfcode_empty)];
        return;
    }
        

		//====insert my code start===  2023-12-28 22:54:24
		{
		
	int W_48 = [self pontthroughior18675Lowate18676:nil liteship18677Farithoughality18678:7804 notoon18679Mnestsystemment18680:@"gnarpositivefic19010Tripsry19011" sitfic18681Gnatie18682:3637 tergiair18683Botanty18684:nil ];
	if(W_48){}

        BOOL ursally18992Tv18993 = NO;  //commontemple18
        int argentreceiveent18994Enough18995 = 6777;
        if (ursally18992Tv18993){

            argentreceiveent18994Enough18995 = argentreceiveent18994Enough18995 + 8916;

            int carryling19002Murplantitude19003 = -780;
            int fraternpower19006Algoion19007 = 6831;
            int stuffeer19008 = 256;
            switch (carryling19002Murplantitude19003) {
                    
                case 384:
			{
				fraternpower19006Algoion19007 = stuffeer19008 - 343 / 412 - 962 + 767 - 529; 
			 break;
			}
			case 80:
			{
				fraternpower19006Algoion19007 = stuffeer19008 + 310 + 667 * 57 + 461 * 424 + 88; 
			 break;
			}
			case 412:
			{
				fraternpower19006Algoion19007 = stuffeer19008 - 450 - 388 - 965 - 785; 
			 break;
			}
			case 643:
			{
				fraternpower19006Algoion19007 = stuffeer19008 + 223 * 913 - 690; 
			 break;
			}
			case -45:
			{
				fraternpower19006Algoion19007 = stuffeer19008 * 986 / 812 / 461 + 537; 
			 break;
			}
			case 796:
			{
				fraternpower19006Algoion19007 = stuffeer19008 + 703 + 872 / 974; 
			 break;
			}
			case 351:
			{
				fraternpower19006Algoion19007 = stuffeer19008 - 699 + 665 + 928 / 45 / 569; 
			 break;
			}
			case 175:
			{
				fraternpower19006Algoion19007 = stuffeer19008 - 265 + 574 * 335 - 224 - 389; 
			 break;
			}
			case 854:
			{
				fraternpower19006Algoion19007 = stuffeer19008 - 768 + 313 + 455 / 424; 
			 break;
			}
			case 132:
			{
				fraternpower19006Algoion19007 = stuffeer19008 * 706 + 27; 
			 break;
			}
			case 136:
			{
				fraternpower19006Algoion19007 = stuffeer19008 * 10 - 655 * 750 / 498 + 491; 
			 break;
			}
			case 576:
			{
				fraternpower19006Algoion19007 = stuffeer19008 - 303 * 121 - 935 - 808; 
			 break;
			}
			case 10:
			{
				fraternpower19006Algoion19007 = stuffeer19008 - 55 - 78 + 443 - 449 / 111 * 455; 
			 break;
			}
			case 191:
			{
				fraternpower19006Algoion19007 = stuffeer19008 + 113 / 903 + 764; 
			 break;
			}
			
                    
                default:
                    break;
            }
        }
        
        

        
		}
		//====insert my code end===  2023-12-28 22:54:24

    if (![StinityAsterature validPwd_MMMethodMMM: newPwd]) {
       
        return;
    }
    
    
    NSDictionary *otherParamsDic = nil;
    @try {
        otherParamsDic = @{
            wwwww_tag_wwwww_newPwd        :[CollectionDoloroant getMD5StrFromString_MMMethodMMM:newPwd],
        };
        
    } @catch (NSException *exception) {
        
    }
    
    kWeakSelf
    [AnxiariumVehwindature doForgotPasswordWithUserName_MMMethodMMM:userName phoneAreaCode_MMMethodMMM:areaCode phoneNumber_MMMethodMMM:phoneNum email_MMMethodMMM:userName vfCode_MMMethodMMM:vfCode interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherParamsDic_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
        
        [StinityAsterature toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_change_pwd_success)];

        if (weakSelf.loginDelegate_MMMPRO) {
            TrichinoonArchiability *cc = (TrichinoonArchiability *)responseData;

		//====insert my code start===  2023-12-28 22:54:24
		{
		
	NSMutableDictionary * d_3 = [self polture18803Faciful18804:nil somebodyit18805Severesque18806:5521 waitish18807Carcer18808:@"placeorium19019Barbdom19020" ];
	if(d_3){}
float V_dicory19016 = 4988;

float I_juvenian19017 = 639;
if(V_dicory19016 * 895 - 933 * 238 + 26 * 358 < 90661){
	I_juvenian19017 = V_dicory19016 * 788 + 205 * 995;
}else{
	I_juvenian19017 = V_dicory19016 + 270 / 407;
}

float s_yardize19018 = 820;
if(I_juvenian19017 - 706 / 875 - 366 / 232 + 108 > 49065){
	s_yardize19018 = I_juvenian19017 - 378 - 757 + 683 / 434 / 1 * 474;
}

		}
		//====insert my code end===  2023-12-28 22:54:24

            cc.data.account = userName;
            cc.data.password = newPwd;

		//====insert my code start===  2023-12-28 22:54:24
		{
		
	NSMutableDictionary * l_11 = [self polture18803Faciful18804:nil somebodyit18805Severesque18806:4071 waitish18807Carcer18808:@"Congressad19031Cantfication19032" ];
	if(l_11){}
        
        BOOL veh19025Legeightent19026 = NO;  //commontemple5
        if (veh19025Legeightent19026)
        {
            veh19025Legeightent19026 = YES;
        }

        
		}
		//====insert my code end===  2023-12-28 22:54:24

            cc.data.loginType = LOGIN_TYPE_SELF;
            [weakSelf.loginDelegate_MMMPRO handleLoginOrRegSuccess_MMMethodMMM:cc thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
        
    } errorBlock_MMMethodMMM:^(AlleloitySex *error) {
        [FearicalVoracwise showAlertWithMessage_MMMethodMMM:error.message];
    }];
    
}


- (void)requestVfCodeByEmail_MMMethodMMM:(NSString *)email
{
    
    [AnxiariumVehwindature requestVfCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@""  email_MMMethodMMM:email interfaces_MMMethodMMM:wwwww_tag_wwwww_4 otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [StinityAsterature toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_send_vf_code_success)];
        [self downTime_MMMethodMMM];
    } errorBlock_MMMethodMMM:^(AlleloitySex *error) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
        [FearicalVoracwise showAlertWithMessage_MMMethodMMM:error.message];
    }];
}


//===insert my method start=== 2023-12-28 22:54:24
- (int)pontthroughior18675Lowate18676:(NSDictionary *)pontthroughior18675_1 liteship18677Farithoughality18678:(float)liteship18677_2 notoon18679Mnestsystemment18680:(NSString *)notoon18679_3 sitfic18681Gnatie18682:(float)sitfic18681_4 tergiair18683Botanty18684:(NSMutableDictionary *)tergiair18683_5{ //insert method
	if(pontthroughior18675_1){
		double s_determineivity18687 = 5064;

double d_telitude18688 = 982;
if(s_determineivity18687 * 399 * 799 + 955 * 626 > 2919){
	d_telitude18688 = s_determineivity18687 + 457 / 257 + 835 - 32;
}else{
	d_telitude18688 = s_determineivity18687 * 819 / 964 - 430;
}

int G_oilior18689 = 126;
if(d_telitude18688 + 968 + 887 * 776 + 116 * 776 * 16 > 24985){
	G_oilior18689 = d_telitude18688 + 957 / 218;
}

	}
	if(liteship18677_2 + 625 - 657 + 17 - 959 * 678 + 958 >= 89005){
		int P_ver18690 = 5;
int i_saceur18691 = 467;
switch (P_ver18690) {
   case 228:
			{
				P_ver18690 = i_saceur18691 - 563 * 778; 
			 break;
			}
			   default:
       break;
			}
	}
	if(notoon18679_3){
		        
        NSInteger supize18692Include18693 = 5887;  //commontemple10
        int ergitive18694Raisefaction18695 = 6983;

        for(int roomtion18696Critage18697 = 6955; roomtion18696Critage18697 < 5375; roomtion18696Critage18697 = roomtion18696Critage18697 + 1)
        {    
            ergitive18694Raisefaction18695 = ergitive18694Raisefaction18695++;
        }
        
	}
	if(tergiair18683_5){
		      int dolor18708Januhappen18709 = 3125;  //temple24
      NSMutableDictionary *doltion18710Limac18711 = [NSMutableDictionary dictionaryWithCapacity:3999];
      dolor18708Januhappen18709 += 3605;
      [doltion18710Limac18711 setObject: @(dolor18708Januhappen18709) forKey:@"cuspcourtic18718Silally18719"];
      int tellurable18720Hostaboutality18721 = (int)dolor18708Januhappen18709;
      if (tellurable18720Hostaboutality18721 < 9642) {
            tellurable18720Hostaboutality18721 *= 8768;
      }
	}
 
	int k_10 = 65908;
	return k_10;
}
//===insert my method end=== 2023-12-28 22:54:24
-(void)downTime_MMMethodMMM{
    
    phoneCountdown_IMPLVAR = 60;
    getVfCodeBtn_IMPLVAR.userInteractionEnabled = NO;

		//====insert my code start===  2023-12-28 22:54:24
		{
		
	NSMutableDictionary * G_32 = [self polture18803Faciful18804:nil somebodyit18805Severesque18806:8696 waitish18807Carcer18808:@"asterize19045Lexior19046" ];
	if(G_32){}

        int sinusator19037Egbringious19038 = 3423;  //commontemple17
        int acutoperationry19041Seraneous19042 = 5119;
        int technly19043 = 2997;
        switch (sinusator19037Egbringious19038) {
                
            case 352:
			{
				acutoperationry19041Seraneous19042 = technly19043 - 998 + 976 / 621; 
			 break;
			}
			case 203:
			{
				acutoperationry19041Seraneous19042 = technly19043 + 695 + 586 - 290 / 401 - 377 * 821; 
			 break;
			}
			case 564:
			{
				acutoperationry19041Seraneous19042 = technly19043 * 976 - 664 + 208; 
			 break;
			}
			case 858:
			{
				acutoperationry19041Seraneous19042 = technly19043 + 475 + 739; 
			 break;
			}
			case 454:
			{
				acutoperationry19041Seraneous19042 = technly19043 - 49 / 325 + 254; 
			 break;
			}
			case 99:
			{
				acutoperationry19041Seraneous19042 = technly19043 * 225 - 46 + 166; 
			 break;
			}
			case 921:
			{
				acutoperationry19041Seraneous19042 = technly19043 * 188 + 581 * 506; 
			 break;
			}
			case 392:
			{
				acutoperationry19041Seraneous19042 = technly19043 + 451 + 467 * 612 - 2 / 817; 
			 break;
			}
			case 5:
			{
				acutoperationry19041Seraneous19042 = technly19043 + 520 - 851 * 822 * 614 * 295; 
			 break;
			}
			case 917:
			{
				acutoperationry19041Seraneous19042 = technly19043 + 902 - 383 - 799 - 98 + 335; 
			 break;
			}
			case 973:
			{
				acutoperationry19041Seraneous19042 = technly19043 - 62 * 926 * 681; 
			 break;
			}
			
                
            default:
                break;
        }
        

        
		}
		//====insert my code end===  2023-12-28 22:54:24

    [getVfCodeBtn_IMPLVAR setTitle:[NSString stringWithFormat:@"%d", phoneCountdown_IMPLVAR] forState:UIControlStateNormal];
    
    
    
    if (downTimer_IMPLVAR) {
        [downTimer_IMPLVAR invalidate];
        downTimer_IMPLVAR = nil;
    }
    downTimer_IMPLVAR = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                 target:self
                                               selector:@selector(phoneFireTimer_MMMethodMMM)
                                               userInfo:nil
                                                repeats:YES];

		//====insert my code start===  2023-12-28 22:54:24
		{
		
	int z_25 = [self pontthroughior18675Lowate18676:nil liteship18677Farithoughality18678:8989 notoon18679Mnestsystemment18680:@"seattion19063Southern19064" sitfic18681Gnatie18682:4725 tergiair18683Botanty18684:nil ];
	if(z_25){}
            
            float soporia19049Specificator19050 = 2915.0;  //temple27
            if (@(soporia19049Specificator19050).doubleValue != 5374) {}

            int brachyatic19059Mnesess19060 = 4373;
            int vapwritering19061 = 7601;
            int internationalfic19053Less19054 = @(soporia19049Specificator19050).intValue;
                switch (internationalfic19053Less19054) {
                    
                    case 576:
			{
				brachyatic19059Mnesess19060 = vapwritering19061 - 103 / 69 - 672 - 136 + 982 / 231; 
			 break;
			}
			case 871:
			{
				brachyatic19059Mnesess19060 = vapwritering19061 + 519 - 900 - 493 - 428 * 756; 
			 break;
			}
			case 349:
			{
				brachyatic19059Mnesess19060 = vapwritering19061 + 716 - 332 * 345; 
			 break;
			}
			case 702:
			{
				brachyatic19059Mnesess19060 = vapwritering19061 - 937 * 985 - 479 + 258 - 167; 
			 break;
			}
			case 52:
			{
				brachyatic19059Mnesess19060 = vapwritering19061 * 207 / 218; 
			 break;
			}
			
                        
                    default:
                        break;
                }
		}
		//====insert my code end===  2023-12-28 22:54:24

    
    
}


//===insert my method start=== 2023-12-28 22:54:24
- (NSString *)entirewise18728Myriify18729:(NSObject *)entirewise18728_1 volutty18730Calidibility18731:(BOOL)volutty18730_2 manhumananeity18732Dowsignificantate18733:(NSMutableDictionary *)manhumananeity18732_3 zymboyent18734Elition18735:(NSMutableDictionary *)zymboyent18734_4 policyward18736Canship18737:(float)policyward18736_5 organization18738Nov18739:(long)organization18738_6 hisics18740Fourture18741:(NSMutableArray *)hisics18740_7 realizeosity18742Treatmental18743:(long)realizeosity18742_8{ //insert method
	if(volutty18730_2){
		        
        int merc18746Membercy18747 = 9679;  //commontemple11
        BOOL doloro18748Hydrpushproof18749 = NO;

        for(int triciacle18750Actuallyfier18751 = 2465; triciacle18750Actuallyfier18751 < 442; triciacle18750Actuallyfier18751 = triciacle18750Actuallyfier18751 + 1)
        {    
            if (doloro18748Hydrpushproof18749){
                break;
            }
            merc18746Membercy18747 = merc18746Membercy18747 + 449;
        }
        
	}
	if(hisics18740_7){
		float M_yearity18764 = 2075;

if(M_yearity18764 < 13936){
	int Y_common18765 = M_yearity18764 - 269 / 317 + 657 - 127 * 229 - 35; 
if(Y_common18765 < 14449){
	int E_pitimportant18766 = Y_common18765 - 159 / 370 - 667 * 936 - 639; 
if(E_pitimportant18766 < 68614){
	float I_sound18767 = E_pitimportant18766 + 844 - 329 * 847 * 348 * 859 / 612; 
if(I_sound18767 > 10350){
	double F_rightade18768 = I_sound18767 + 684 * 394 - 611 - 847 * 40; 
if(F_rightade18768 != 14470){
	double n_texation18769 = F_rightade18768 + 603 + 331 - 578 * 276 - 827 + 40;
}
}
}
}
}
	}
	if(realizeosity18742_8 * 762 - 183 / 169 / 351 - 409 * 985 >= 12667){
		int r_goalless18770 = 4771;

double Y_lausative18771 = 921;
if(r_goalless18770 + 542 / 585 - 696 / 418 < 31016){
	Y_lausative18771 = r_goalless18770 * 278 / 10 - 48 + 594 / 594;
}else{
	Y_lausative18771 = r_goalless18770 - 360 * 161;
}

int P_pondship18772 = 79;
if(Y_lausative18771 * 712 * 231 / 384 - 963 * 729 - 824 != 74646){
	P_pondship18772 = Y_lausative18771 - 920 / 493;
}

int G_uncform18773 = 796;
if(P_pondship18772 + 239 / 162 * 747 - 423 > 11773){
	G_uncform18773 = P_pondship18772 - 555 * 815 * 665 / 391;
}else{
	G_uncform18773 = P_pondship18772 * 172 * 131 - 10;
}

int L_official18774 = 375;
if(G_uncform18773 * 281 + 362 != 36072){
	L_official18774 = G_uncform18773 - 828 / 756 + 379 * 354;
}else{
	L_official18774 = G_uncform18773 - 866 - 559;
}

int A_comeist18775 = 744;
if(L_official18774 * 318 - 465 + 932 + 444 != 86380){
	A_comeist18775 = L_official18774 - 740 - 862 * 695 - 591 / 469;
}

double X_odsion18776 = 244;
if(A_comeist18775 + 493 + 452 * 335 * 353 != 47042){
	X_odsion18776 = A_comeist18775 * 436 * 456 * 516 - 244 * 995 / 355;
}

double q_niceator18777 = 581;
if(X_odsion18776 - 80 * 515 + 303 <= 9434){
	q_niceator18777 = X_odsion18776 - 692 - 193 / 49 / 531;
}

double j_receiveeur18778 = 135;
if(q_niceator18777 + 155 * 576 == 24353){
	j_receiveeur18778 = q_niceator18777 - 386 + 546 + 64;
}

	}
 
	NSString *D_29 = @"postitor18745veriic18744";
	return D_29;
}
//===insert my method end=== 2023-12-28 22:54:24
- (void)phoneFireTimer_MMMethodMMM {
    phoneCountdown_IMPLVAR--;

		//====insert my code start===  2023-12-28 22:54:24
		{
		
	int l_11 = [self pontthroughior18675Lowate18676:nil liteship18677Farithoughality18678:105 notoon18679Mnestsystemment18680:@"callsome19097Ig19098" sitfic18681Gnatie18682:3006 tergiair18683Botanty18684:nil ];
	if(l_11){}
        
        int voracon19069Pallirisk19070 = 2525;    //temple17
        int logoion19071Coveror19072 = 1092;
        int phone19073Mensurhisaire19074 = 1147;
        int cumulkillacle19075Orexicavoidenne19076 = 9065;
        int acceptly19077Wifeitude19078 = 1688;
        int specificery19079Shouldatory19080 = 9679;

        if (voracon19069Pallirisk19070 < 6003){

            logoion19071Coveror19072 -= 1;
            phone19073Mensurhisaire19074 += logoion19071Coveror19072;
            acceptly19077Wifeitude19078 -= voracon19069Pallirisk19070;
            cumulkillacle19075Orexicavoidenne19076 += 1;
            specificery19079Shouldatory19080 += 10;
        }

		}
		//====insert my code end===  2023-12-28 22:54:24

    if (phoneCountdown_IMPLVAR < 0) {
        [self resetVfCodeBtnStatue_MMMethodMMM];
    }else{
        [getVfCodeBtn_IMPLVAR setTitle:[NSString stringWithFormat:@"%d", phoneCountdown_IMPLVAR] forState:UIControlStateNormal];
    }
    
}

-(void)resetVfCodeBtnStatue_MMMethodMMM
{
    if (downTimer_IMPLVAR) {
        [downTimer_IMPLVAR invalidate];

		//====insert my code start===  2023-12-28 22:54:24
		{
		
	int m_12 = [self pontthroughior18675Lowate18676:nil liteship18677Farithoughality18678:3524 notoon18679Mnestsystemment18680:@"educationtion19111Nugrelatelike19112" sitfic18681Gnatie18682:4200 tergiair18683Botanty18684:nil ];
	if(m_12){}
            NSDictionary *singulit19103Factororium19104 = @{@"bestally19107" : @(10123), @"typence19109" : @"long19110" };  //temple19
            if (singulit19103Factororium19104.count > 9800){}
            
		}
		//====insert my code end===  2023-12-28 22:54:24

        downTimer_IMPLVAR = nil;
    }
    getVfCodeBtn_IMPLVAR.userInteractionEnabled = YES;
    [getVfCodeBtn_IMPLVAR setTitle:GetString(wwwww_tag_wwwww_text_get_vfcode) forState:UIControlStateNormal];
}

- (void)dealloc
{
    
    if (downTimer_IMPLVAR) {
        [downTimer_IMPLVAR invalidate];
        downTimer_IMPLVAR = nil;
    }
}


//===insert my method start=== 2023-12-28 22:54:24
- (NSMutableDictionary *)polture18803Faciful18804:(NSDictionary *)polture18803_1 somebodyit18805Severesque18806:(BOOL)somebodyit18805_2 waitish18807Carcer18808:(NSString *)waitish18807_3{ //insert method
	        
        int ferocose18811Challengeade18812 = 5683;  //temple7
        BOOL significant18813Director18814 = NO;
        if (ferocose18811Challengeade18812 < -239){
            
            significant18813Director18814 = YES;
        }else{
            significant18813Director18814 = NO;
        }

        
 
	NSMutableDictionary *f_5 = nil;
	return f_5;
}
//===insert my method end=== 2023-12-28 22:54:24

//===insert my method start=== 2023-12-28 22:54:24
- (long)etymant18779Nominhood18780:(CGFloat)etymant18779_1 athroidance18781Abory18782:(NSInteger)athroidance18781_2{ //insert method
	if(etymant18779_1 - 329 / 741 - 251 - 805 + 181 == 26402){
		int u_laughule18785 = 883;
float k_questionty18786 = 550;
switch (u_laughule18785) {
   case 872:
			{
				u_laughule18785 = k_questionty18786 * 77 * 815 * 943 / 901 * 627; 
			 break;
			}
			case 389:
			{
				u_laughule18785 = k_questionty18786 * 464 + 898; 
			 break;
			}
			case 317:
			{
				u_laughule18785 = k_questionty18786 - 762 * 319 - 753 / 374; 
			 break;
			}
			case -49:
			{
				u_laughule18785 = k_questionty18786 + 151 + 783 + 54 * 715; 
			 break;
			}
			case 138:
			{
				u_laughule18785 = k_questionty18786 - 239 + 459; 
			 break;
			}
			   default:
       break;
			}
	}
	if(athroidance18781_2 - 578 + 478 * 630 / 831 == 77961){
		            NSDictionary *fugitite18787Affect18788 = @{@"none18791" : @"singward18792", @"coverfy18793" : @"veren18794", @"lead18795" : @(12744), @"pasteer18797" : @(68636), @"suggestivity18799" : @(95144), @"sorbous18801" : @"globfy18802" };  //temple19
            if (fugitite18787Affect18788.count > 3779){}
            
	}
 
	long b_1 = 26456;
	return b_1;
}
//===insert my method end=== 2023-12-28 22:54:24
@end
