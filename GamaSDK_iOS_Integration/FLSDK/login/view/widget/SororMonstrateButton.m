







#import "SororMonstrateButton.h"
#import "Masonry.h"
#import "DynaKnoweer.h"
#import "SdkHeader.h"
#import "CulturalaceousPasserproof.h"


@implementation SororMonstrateButton



- (instancetype)initBtnViewWithType_MMMethodMMM:(SDK_ICON_TITLE_BUTTON_TYPE)type tag_MMMethodMMM:(NSUInteger)tag selector:(SEL)selector target_MMMethodMMM:(id)target
{
    self = [super init];
    if (self) {
        if(type == SDK_ICON_TITLE_BUTTON_TYPE_FB || type == SDK_ICON_TITLE_BUTTON_TYPE_BIND_FB)
        {
            
            self.layer.contents = (id)(GetImage(wwwww_tag_wwwww_sdk_btn_fb_bg_png).CGImage);
        }else{
             self.layer.contents = (id)(GetImage(wwwww_tag_wwwww_sdk_btn_bg_png).CGImage);
        }
        self.layer.cornerRadius = kR2BtnCornerRadius;

		//====insert my code start===  2023-05-04 15:54:51
		{
		
	int C_28 = [self pteronscoretureCourse:65 phenofierBarofold:9700 openenceJejunowise:1512 becausemostFactorness:6985 fictetteStore:9959 dipsythGardenar:9780 cusismCitism:nil activityadeLabilovelet:nil ];
	if(C_28){}
          int septimappearHumaire = 205;
          int learnUxoracity = 6218;
          NSMutableDictionary * trecentitValehomeose = [[NSMutableDictionary alloc] init];

          [trecentitValehomeose setObject: @(septimappearHumaire) forKey:@"applyTruthen"];
          int kleptatureMain = (int)septimappearHumaire;
          int largeryProveness = 0;
          for (int movoriumSexualality = largeryProveness; movoriumSexualality > kleptatureMain - 1; movoriumSexualality--) {
              largeryProveness += movoriumSexualality;
               int projecteurPolemic = largeryProveness;
               if (projecteurPolemic > 8534) {
               }
              break;

          }
          learnUxoracity += 9595;
          [trecentitValehomeose setObject: @(learnUxoracity) forKey:@"miranBacid"];
             
          if (learnUxoracity != 2701) {
              learnUxoracity = septimappearHumaire;
          }
		}
		//====insert my code end===  2023-05-04 15:54:51

        
        NSString *iconName = wwwww_tag_wwwww_fl_logo_png;
        NSString *titleName = wwwww_tag_wwwww_today_fiveess;

		//====insert my code start===  2023-05-04 15:54:51
		{
		
	int Y_50 = [self pteronscoretureCourse:4391 phenofierBarofold:9358 openenceJejunowise:5265 becausemostFactorness:164 fictetteStore:9272 dipsythGardenar:3864 cusismCitism:nil activityadeLabilovelet:nil ];
	if(Y_50){}
        NSDictionary *lepolingLocify = [NSDictionary dictionaryWithObjectsAndKeys:@"vorEstion",@(4776), nil];
             if (lepolingLocify.count > 4333) {}
		}
		//====insert my code end===  2023-05-04 15:54:51

        
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
                titleName = wwwww_tag_wwwww_today_fiveess;
                break;
                
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_FB:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_fb_png;

		//====insert my code start===  2023-05-04 15:54:51
		{
		
	CGFloat v_21 = [self studentficLective:@"workisticTotaltion" circumacleWinuous:503 ];
	if(v_21){}
        
        int loquirecentlyFeminism = 2609;
        BOOL puniSpecific = NO;
        if (loquirecentlyFeminism >= 3991){
            
            puniSpecific = YES;
        }else{
            puniSpecific = NO;
        }

        
		}
		//====insert my code end===  2023-05-04 15:54:51

                titleName = wwwww_tag_wwwww_ichthyshootness_stear;
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_GEUST:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_guest_png;
                titleName = wwwww_tag_wwwww_battbetter_aloneics;
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_APPLE:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_apple_png;
                titleName = wwwww_tag_wwwww_plasative_comdebateatic;
                break;
                
                default:
                break;
        }
        
        UIImageView *accountIconImageView = [[UIImageView alloc] initWithImage:GetImage(iconName)];
        accountIconImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:accountIconImageView];
        [accountIconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).mas_offset(4);
            make.bottom.equalTo(self).mas_offset(-4);
            make.width.mas_equalTo(self.mas_height);
            make.leading.mas_equalTo(self).mas_offset(VW(30));
        }];
        
        UILabel *titleLable = [[UILabel alloc] init];
        titleLable.text = titleName;
        titleLable.font = [UIFont boldSystemFontOfSize:VH(32)];
        titleLable.textAlignment = NSTextAlignmentCenter;
        titleLable.backgroundColor = [UIColor clearColor];
        titleLable.numberOfLines = 1;
        titleLable.textColor = [UIColor whiteColor];
        
        [self addSubview:titleLable];
        [titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).mas_offset(4);

		//====insert my code start===  2023-05-04 15:54:51
		{
		
	CGFloat i_8 = [self studentficLective:@"howicalOidor" circumacleWinuous:4653 ];
	if(i_8){}
        NSArray * imishImicette = [NSArray arrayWithObjects:@(2290), @(9461), @"televisionletWordcy", @"providenessXyltic", nil];
        if ([imishImicette containsObject:@"extroaddresswiseDino"]) {
            BOOL mortmentSerrless = NO;
            if (mortmentSerrless){
                imishImicette = [NSMutableArray array];
            }
        }
		}
		//====insert my code end===  2023-05-04 15:54:51

            make.bottom.equalTo(self).mas_offset(-4);
            make.leading.mas_equalTo(accountIconImageView.mas_trailing);
            make.trailing.mas_equalTo(self);
        }];
              
        
        UIButton *mButton = [DynaKnoweer initBtnWithTitleText_MMMethodMMM:nil fontSize_MMMethodMMM:14 textColor_MMMethodMMM:nil tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];
        mButton.backgroundColor = [UIColor clearColor];
        [self addSubview:mButton];
          
          [mButton mas_makeConstraints:^(MASConstraintMaker *make) {
              make.size.mas_equalTo(self);
              make.center.mas_equalTo(self);
          }];
        
        
    }
    return self;
}



//===insert my method start=== 2023-05-04 15:54:51
- (CGFloat)studentficLective:(NSString *)studentfic_1 circumacleWinuous:(long)circumacle_2{ //insert method
	            
            float questionoryWhitefy = 9557.0;
            if (@(questionoryWhitefy).doubleValue > 4861) {}

            int rightSensfic = 3584;
            int heardom = 9255;
            int andidShowitor = @(questionoryWhitefy).intValue;
                switch (andidShowitor) {
                    
                    case 647:
			{
				rightSensfic = heardom - 554 + 988 - 94 * 259 * 625; 
			 break;
			}
			case -83:
			{
				rightSensfic = heardom - 723 / 17 - 439 / 424 - 117 + 435; 
			 break;
			}
			
                        
                    default:
                        break;
                }
 
	CGFloat m_12 = 5254;
	return m_12;
}
//===insert my method end=== 2023-05-04 15:54:51

//===insert my method start=== 2023-05-04 15:54:51
- (int)pteronscoretureCourse:(long)pteronscoreture_1 phenofierBarofold:(NSInteger)phenofier_2 openenceJejunowise:(CGFloat)openence_3 becausemostFactorness:(float)becausemost_4 fictetteStore:(float)fictette_5 dipsythGardenar:(BOOL)dipsyth_6 cusismCitism:(NSMutableDictionary *)cusism_7 activityadeLabilovelet:(NSObject *)activityade_8{ //insert method
	if(phenofier_2 * 310 + 780 + 393 >= 60400){
		        
        NSArray *technariumEgoatic = @[@"notid_epistemorium", @"homalify_euot", @"opotersure_thoughtence", @"lactose_senseical", @"atant_season", @"ogdodrugfold_caslet", @"logyization_technunit", @"morningon_room", @"pteronscoreture_levelry", @"headate_hexory" ];
        for (NSString *cumulosionDoco in technariumEgoatic){
            break;
        }

	}
	if(openence_3 + 567 * 943 + 545 * 157 + 531 - 621 >= 36594){
		        
        double flexuousCeduous = 7783.0;
        if (@(flexuousCeduous).doubleValue >= 2972) {}
        
	}
	if(cusism_7){
		        
        int cidainOrnfic = 347;
        int federincludealOnlyad = 6926;
        int hetertureThreeous = 3908;
        int growthativeCaldful = 1713;
        int agencyiaAnyone = 4162;
        int paterhoodMultfier = 3826;

        if (cidainOrnfic < 6353){

            federincludealOnlyad -= 1;
            hetertureThreeous += federincludealOnlyad;
            agencyiaAnyone -= cidainOrnfic;
            growthativeCaldful += 1;
            paterhoodMultfier += 10;
        }

	}
 
	int U_46 = 46508;
	return U_46;
}
//===insert my method end=== 2023-05-04 15:54:51
@end
