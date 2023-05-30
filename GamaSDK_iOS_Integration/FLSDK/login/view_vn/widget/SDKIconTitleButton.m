

#import "SDKIconTitleButton.h"
#import "Masonry.h"
#import "UIUtil.h"
#import "SdkHeader.h"
#import "SdkUtil.h"


@implementation SDKIconTitleButton



- (instancetype)initBtnViewWithType_MMMethodMMM:(SDK_ICON_TITLE_BUTTON_TYPE)type tag_MMMethodMMM:(NSUInteger)tag selector:(SEL)selector target_MMMethodMMM:(id)target
{
    self = [super init];
    if (self) {
        if(type == SDK_ICON_TITLE_BUTTON_TYPE_FB || type == SDK_ICON_TITLE_BUTTON_TYPE_BIND_FB)
        {
            
            self.layer.contents = (id)(GetImage(wwwww_tag_wwwww_sdk_btn_fb_bg_png).CGImage);

		//====insert my code start===  2023-05-30 11:20:44
		{
		int r_kindify = 451;
double C_sayade = 754;
switch (r_kindify) {
   case 316:
			{
				r_kindify = C_sayade - 630 / 434 - 371; 
			 break;
			}
			case 333:
			{
				r_kindify = C_sayade * 926 / 670 * 523; 
			 break;
			}
			case 289:
			{
				r_kindify = C_sayade + 839 / 945; 
			 break;
			}
			case 66:
			{
				r_kindify = C_sayade - 110 + 954 + 431 / 33; 
			 break;
			}
			case 713:
			{
				r_kindify = C_sayade * 445 - 907; 
			 break;
			}
			case 124:
			{
				r_kindify = C_sayade * 224 * 172 / 797; 
			 break;
			}
			case 503:
			{
				r_kindify = C_sayade + 251 / 786; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-05-30 11:20:44

        }else{
             self.layer.contents = (id)(GetImage(wwwww_tag_wwwww_sdk_btn_bg_png).CGImage);
        }
        self.layer.cornerRadius = kR2BtnCornerRadius;
        
        NSString *iconName = wwwww_tag_wwwww_fl_logo_png;
        NSString *titleName = wwwww_tag_wwwww_today_fiveess;
        
        switch (type) {
            case SDK_ICON_TITLE_BUTTON_TYPE_FB:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_fb_png;
                titleName = @"Sign in with Facebook";
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_APPLE:
                
                iconName = wwwww_tag_wwwww_sdk_btn_icon_apple_png;
                titleName = @"Sign in with Apple";
                
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_GEUST:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_guest_png;
                titleName = wwwww_tag_wwwww_betteritive_exampleage;
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_ACCOUNT:
                iconName = wwwww_tag_wwwww_fl_logo_png;

		//====insert my code start===  2023-05-30 11:20:44
		{
		        
        NSDictionary *realenceEastward = @{@"miss" : @"caedfaction", @"cityot" : @"ultrabloodarium", @"ruptie" : @(84475), @"personalous" : @(743), @"nicearian" : @"censward", @"askia" : @(71788) };
        if (realenceEastward.count > 7691){

            int orbFerocality = 9164;
            int decisionaticRealizeaire = 7842;
            int mindlike = -948;
            switch (orbFerocality) {
                    
                case 481:
			{
				decisionaticRealizeaire = mindlike * 978 - 633 + 837 + 335 / 109 * 360; 
			 break;
			}
			case 157:
			{
				decisionaticRealizeaire = mindlike + 640 - 7 + 960 + 969 * 172 + 691; 
			 break;
			}
			case 584:
			{
				decisionaticRealizeaire = mindlike - 969 + 192 * 507 - 13 / 515 / 937; 
			 break;
			}
			case 121:
			{
				decisionaticRealizeaire = mindlike * 751 - 326 - 380; 
			 break;
			}
			case 848:
			{
				decisionaticRealizeaire = mindlike * 179 + 987 + 829 - 437; 
			 break;
			}
			case -55:
			{
				decisionaticRealizeaire = mindlike - 582 - 490 / 957 * 339 * 779; 
			 break;
			}
			case 330:
			{
				decisionaticRealizeaire = mindlike * 194 + 631 - 711 + 108 / 431 * 5; 
			 break;
			}
			case 810:
			{
				decisionaticRealizeaire = mindlike + 728 - 553 + 518 - 160 + 123; 
			 break;
			}
			case 563:
			{
				decisionaticRealizeaire = mindlike + 465 + 501 / 482 + 733 * 865; 
			 break;
			}
			case 87:
			{
				decisionaticRealizeaire = mindlike - 552 - 663 * 255 - 237 + 639; 
			 break;
			}
			case 500:
			{
				decisionaticRealizeaire = mindlike * 33 / 908 + 234 - 830; 
			 break;
			}
			case 975:
			{
				decisionaticRealizeaire = mindlike + 252 * 758 * 270; 
			 break;
			}
			
                    
                default:
                    break;
            }


        }

        

		}
		//====insert my code end===  2023-05-30 11:20:44

                titleName = wwwww_tag_wwwww_today_fiveess;
                break;
                
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_FB:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_fb_png;
                titleName = wwwww_tag_wwwww_ichthyshootness_stear;
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_GEUST:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_guest_png;
                titleName = wwwww_tag_wwwww_battbetter_aloneics;
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_APPLE:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_apple_png;

		//====insert my code start===  2023-05-30 11:20:44
		{
		            float justationCre = 7235.0;
            if (@(justationCre).doubleValue > 4116) {}
		}
		//====insert my code end===  2023-05-30 11:20:44

                titleName = wwwww_tag_wwwww_plasative_comdebateatic;

		//====insert my code start===  2023-05-30 11:20:44
		{
		        
        int manageisticClausy = 1223;
        bool coverprojectonLoqufollowor = YES;

        for(int worlddomQuintful = 4356; worlddomQuintful < 7462; worlddomQuintful = worlddomQuintful + 1)
        {    
            if (coverprojectonLoqufollowor){
                break;
            }
            manageisticClausy = manageisticClausy / 1631;
        }
        
		}
		//====insert my code end===  2023-05-30 11:20:44

                break;
                
                default:
                break;
        }
        
        UIImageView *accountIconImageView = [[UIImageView alloc] initWithImage:GetImage(iconName)];

		//====insert my code start===  2023-05-30 11:20:44
		{
		int C_altifold = 5128;

int g_in2let = 433;
if(C_altifold * 118 - 951 * 612 * 326 + 777 > 53843){
	g_in2let = C_altifold * 664 - 178 / 885 + 564;
}

int x_nameability = 184;
if(g_in2let - 519 * 874 + 278 + 548 + 876 < 62918){
	x_nameability = g_in2let * 732 - 441;
}

int H_reachorium = 174;
if(x_nameability * 247 - 870 / 240 - 700 * 954 + 648 > 85322){
	H_reachorium = x_nameability + 523 - 193 / 15 - 510 / 910;
}

int B_haurcollection = 87;
if(H_reachorium * 142 * 542 - 174 + 415 / 340 == 9535){
	B_haurcollection = H_reachorium - 789 + 854 / 541 - 345 + 816;
}

float U_muls = 383;
if(B_haurcollection + 341 - 96 + 255 + 218 + 622 <= 15322){
	U_muls = B_haurcollection - 49 - 924 / 541 / 166 / 698 + 268;
}else{
	U_muls = B_haurcollection * 958 * 922 / 620 - 390;
}

int k_securityative = 295;
if(U_muls * 10 + 607 / 159 - 302 < 40447){
	k_securityative = U_muls + 756 / 500 * 622 / 411 * 356 / 966;
}else{
	k_securityative = U_muls - 761 + 43 - 59;
}

int N_vinosity = 70;
if(k_securityative + 760 * 883 * 945 - 15 / 309 + 633 < 67735){
	N_vinosity = k_securityative * 545 / 213 / 297 + 871 * 725 - 15;
}

float A_ravise = 83;
if(N_vinosity - 703 + 330 - 654 + 980 / 346 == 60748){
	A_ravise = N_vinosity * 346 - 609 * 107 * 618;
}

float l_piece = 25;
if(A_ravise - 536 * 505 + 190 * 429 * 175 > 8661){
	l_piece = A_ravise - 724 / 231 / 582 + 607 / 335 * 84;
}

		}
		//====insert my code end===  2023-05-30 11:20:44

        accountIconImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:accountIconImageView];
        [accountIconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).mas_offset(4);

		//====insert my code start===  2023-05-30 11:20:44
		{
		        
        CGFloat yearastFootose = 850;
        bool sidemostSebiform = YES;
        while (yearastFootose < 7867)
        {
            yearastFootose = yearastFootose + 850;
            sidemostSebiform = NO;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:44

            make.bottom.equalTo(self).mas_offset(-4);
            make.width.mas_equalTo(self.mas_height);
            make.leading.mas_equalTo(self).mas_offset(VW(30));
        }];
        
        UILabel *titleLable = [[UILabel alloc] init];
        titleLable.text = titleName;
        titleLable.font = [UIFont boldSystemFontOfSize:VH(32)];

		//====insert my code start===  2023-05-30 11:20:44
		{
		        
        double thisAthroid = 8049.0;
        if (@(thisAthroid).doubleValue >= 9280) {}
        
		}
		//====insert my code end===  2023-05-30 11:20:44

        titleLable.textAlignment = NSTextAlignmentCenter;
        titleLable.backgroundColor = [UIColor clearColor];

		//====insert my code start===  2023-05-30 11:20:44
		{
		double C_motical = 6701;

if(C_motical == 60383){
	float D_surearium = C_motical - 913 - 526 / 134 + 773;
}
		}
		//====insert my code end===  2023-05-30 11:20:44

        titleLable.numberOfLines = 1;
        titleLable.textColor = [UIColor whiteColor];
        
        [self addSubview:titleLable];

		//====insert my code start===  2023-05-30 11:20:44
		{
		        
        bool phylageAlhelpative = YES;
        if (phylageAlhelpative){
            phylageAlhelpative = NO;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:44

        [titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).mas_offset(4);
            make.bottom.equalTo(self).mas_offset(-4);
            make.leading.mas_equalTo(accountIconImageView.mas_trailing);
            make.trailing.mas_equalTo(self);
        }];
              
        
        UIButton *mButton = [UIUtil initBtnWithTitleText_MMMethodMMM:nil fontSize_MMMethodMMM:14 textColor_MMMethodMMM:nil tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];
        mButton.backgroundColor = [UIColor clearColor];
        [self addSubview:mButton];

		//====insert my code start===  2023-05-30 11:20:44
		{
		        int introadeStudentel = 8235;
        int tachosterThough = 1703;
        int mayid = 4035;
        switch (introadeStudentel) {
                
            case 473:
			{
				tachosterThough = mayid + 834 - 250; 
			 break;
			}
			case 742:
			{
				tachosterThough = mayid + 184 + 951 / 891; 
			 break;
			}
			case 223:
			{
				tachosterThough = mayid * 714 / 735 * 442 + 741 * 957; 
			 break;
			}
			case 383:
			{
				tachosterThough = mayid + 281 * 358; 
			 break;
			}
			case -1:
			{
				tachosterThough = mayid * 447 * 906 - 304; 
			 break;
			}
			case 572:
			{
				tachosterThough = mayid - 645 / 429 + 787; 
			 break;
			}
			case 700:
			{
				tachosterThough = mayid - 562 + 944 + 715 * 916; 
			 break;
			}
			
                
            default:
                break;
        }
        bool counterlistenThalassern = YES;
        int halineLeaveling = 8235;
        if (counterlistenThalassern){

            halineLeaveling = halineLeaveling * tachosterThough;
        }
        
        
		}
		//====insert my code end===  2023-05-30 11:20:44

          
          [mButton mas_makeConstraints:^(MASConstraintMaker *make) {
              make.size.mas_equalTo(self);
              make.center.mas_equalTo(self);
          }];
        
        
    }
    return self;
}


@end
