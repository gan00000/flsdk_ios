

#import "ExteroseQuadragenineButton.h"
#import "Masonry.h"
#import "OrbOpen.h"
#import "SdkHeader.h"
#import "ElsureTraditional.h"


@implementation ExteroseQuadragenineButton



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
        
        NSString *iconName = wwwww_tag_wwwww_fl_logo_png;
        NSString *titleName = wwwww_tag_wwwww_today_fiveess;

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	BOOL D_29 = [self forpickatic32461Stirptic32462:nil informationent32463Share32464:5791 frometic32465Around32466:nil ];
	if(D_29){}
        
        BOOL cuspidive32495Piair32496 = NO;  //commontemple6
        if (cuspidive32495Piair32496){
            cuspidive32495Piair32496 = YES;
        }

        
		}
		//====insert my code end===  2023-12-13 18:35:10

        
        switch (type) {
            case SDK_ICON_TITLE_BUTTON_TYPE_FB:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_fb_png;
                titleName = @"Sign in with Facebook";

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	BOOL G_32 = [self forpickatic32461Stirptic32462:nil informationent32463Share32464:7358 frometic32465Around32466:nil ];
	if(G_32){}
        
        int stirp32505Opohood32506 = 8970;  //commontemple12
        BOOL plicatwear32507Locify32508 = YES;

        for(int nelight32509Dors32510 = 941; nelight32509Dors32510 < 7205; nelight32509Dors32510 = nelight32509Dors32510 + 1)
        {    
            if (plicatwear32507Locify32508){
                break;
            }
            stirp32505Opohood32506 = stirp32505Opohood32506 * 7205;
        }
        if (stirp32505Opohood32506)
        {
            plicatwear32507Locify32508 = YES;
            
        }

        
		}
		//====insert my code end===  2023-12-13 18:35:10

                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_APPLE:
                
                iconName = wwwww_tag_wwwww_sdk_btn_icon_apple_png;

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	BOOL j_9 = [self forpickatic32461Stirptic32462:nil informationent32463Share32464:2467 frometic32465Around32466:nil ];
	if(j_9){}
        
        int turnia32527Motfier32528 = 2222;       //temple8
        int mesoous32529Compareance32530 = 8545;
        for(int sperability32531Socialaneity32532 = 0; sperability32531Socialaneity32532 < turnia32527Motfier32528; sperability32531Socialaneity32532 += 9255) {
            mesoous32529Compareance32530 -= 1369;
            break; 
        } 

        
		}
		//====insert my code end===  2023-12-13 18:35:10

                titleName = @"Sign in with Apple";
                
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_GEUST:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_guest_png;
                titleName = wwwww_tag_wwwww_betteritive_exampleage;
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_ACCOUNT:
                iconName = wwwww_tag_wwwww_fl_logo_png;

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	BOOL p_15 = [self forpickatic32461Stirptic32462:nil informationent32463Share32464:5683 frometic32465Around32466:nil ];
	if(p_15){}
int t_everybodyesque32545 = 358;
float P_testaneous32546 = 336;
switch (t_everybodyesque32545) {
   case 631:
			{
				t_everybodyesque32545 = P_testaneous32546 - 969 + 180; 
			 break;
			}
			case 568:
			{
				t_everybodyesque32545 = P_testaneous32546 + 205 - 72 - 472 / 342; 
			 break;
			}
			case 36:
			{
				t_everybodyesque32545 = P_testaneous32546 + 429 * 831 - 221 - 733 + 871 + 45; 
			 break;
			}
			case 544:
			{
				t_everybodyesque32545 = P_testaneous32546 * 826 + 774 + 116 + 359 - 277; 
			 break;
			}
			case 800:
			{
				t_everybodyesque32545 = P_testaneous32546 - 175 - 126 - 424 + 438 / 686; 
			 break;
			}
			case -72:
			{
				t_everybodyesque32545 = P_testaneous32546 * 583 / 752 + 257 + 692; 
			 break;
			}
			case 678:
			{
				t_everybodyesque32545 = P_testaneous32546 - 87 + 964 - 811 + 646 + 354 + 849; 
			 break;
			}
			case 514:
			{
				t_everybodyesque32545 = P_testaneous32546 * 652 - 537 * 193 / 313; 
			 break;
			}
			case 162:
			{
				t_everybodyesque32545 = P_testaneous32546 + 549 - 924 - 844 - 602 - 525; 
			 break;
			}
			case 808:
			{
				t_everybodyesque32545 = P_testaneous32546 + 84 / 737 / 637; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-12-13 18:35:10

                titleName = wwwww_tag_wwwww_today_fiveess;
                break;
                
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_FB:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_fb_png;
                titleName = wwwww_tag_wwwww_ichthyshootness_stear;
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_GEUST:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_guest_png;
                titleName = wwwww_tag_wwwww_battbetter_aloneics;

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	BOOL C_28 = [self forpickatic32461Stirptic32462:nil informationent32463Share32464:5483 frometic32465Around32466:nil ];
	if(C_28){}
        
        long pancreaticobuttion32549Tricency32550 = 4532;  //commontemple10
        int hieroular32551Thankally32552 = 7663;

        for(int expertfic32553Winular32554 = 5509; expertfic32553Winular32554 < 5322; expertfic32553Winular32554 = expertfic32553Winular32554 + 1)
        {    
            hieroular32551Thankally32552 = hieroular32551Thankally32552++;
        }
        
		}
		//====insert my code end===  2023-12-13 18:35:10

                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_APPLE:
                iconName = wwwww_tag_wwwww_sdk_btn_icon_apple_png;
                titleName = wwwww_tag_wwwww_plasative_comdebateatic;

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	BOOL Z_51 = [self forpickatic32461Stirptic32462:nil informationent32463Share32464:4192 frometic32465Around32466:nil ];
	if(Z_51){}

        int tropheur32569Taskaceous32570 = -219;  //commontemple17
        int scoliably32573Meniful32574 = 9438;
        int torsscoreern32575 = 2582;
        switch (tropheur32569Taskaceous32570) {
                
            case 450:
			{
				scoliably32573Meniful32574 = torsscoreern32575 + 148 * 530; 
			 break;
			}
			case 6:
			{
				scoliably32573Meniful32574 = torsscoreern32575 - 604 / 512 + 689 / 301; 
			 break;
			}
			case -17:
			{
				scoliably32573Meniful32574 = torsscoreern32575 + 121 - 419 + 436 / 192 - 143 * 267; 
			 break;
			}
			case 675:
			{
				scoliably32573Meniful32574 = torsscoreern32575 * 147 + 677 + 338; 
			 break;
			}
			case 2:
			{
				scoliably32573Meniful32574 = torsscoreern32575 + 845 / 452 / 824 + 770 / 517 + 231; 
			 break;
			}
			case 698:
			{
				scoliably32573Meniful32574 = torsscoreern32575 + 664 / 885 - 202; 
			 break;
			}
			case 383:
			{
				scoliably32573Meniful32574 = torsscoreern32575 - 274 - 633 + 469 + 996; 
			 break;
			}
			case 449:
			{
				scoliably32573Meniful32574 = torsscoreern32575 * 917 - 64 / 784 / 620 * 980 + 340; 
			 break;
			}
			case 123:
			{
				scoliably32573Meniful32574 = torsscoreern32575 - 576 - 780 * 946 - 791 * 530; 
			 break;
			}
			case -31:
			{
				scoliably32573Meniful32574 = torsscoreern32575 - 693 - 151 * 10; 
			 break;
			}
			case 684:
			{
				scoliably32573Meniful32574 = torsscoreern32575 - 882 / 773 / 15 + 62; 
			 break;
			}
			case 375:
			{
				scoliably32573Meniful32574 = torsscoreern32575 - 412 * 796 - 484; 
			 break;
			}
			case -92:
			{
				scoliably32573Meniful32574 = torsscoreern32575 + 762 / 333 * 369 - 971 / 173; 
			 break;
			}
			case 527:
			{
				scoliably32573Meniful32574 = torsscoreern32575 - 499 - 358 / 234 - 65; 
			 break;
			}
			case 924:
			{
				scoliably32573Meniful32574 = torsscoreern32575 * 386 / 662 + 475 * 661 + 265 * 691; 
			 break;
			}
			case 141:
			{
				scoliably32573Meniful32574 = torsscoreern32575 * 886 * 439 / 185 + 426 + 350; 
			 break;
			}
			
                
            default:
                break;
        }
        

        
		}
		//====insert my code end===  2023-12-13 18:35:10

                break;
                
                default:
                break;
        }
        
        UIImageView *accountIconImageView = [[UIImageView alloc] initWithImage:GetImage(iconName)];
        accountIconImageView.contentMode = UIViewContentModeScaleAspectFit;

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	BOOL d_3 = [self forpickatic32461Stirptic32462:nil informationent32463Share32464:2978 frometic32465Around32466:nil ];
	if(d_3){}
int Y_sipholossality32577 = 911;
float h_potamette32578 = 567;
switch (Y_sipholossality32577) {
   case 355:
			{
				Y_sipholossality32577 = h_potamette32578 + 596 - 650 + 944; 
			 break;
			}
			case 313:
			{
				Y_sipholossality32577 = h_potamette32578 + 10 - 691 - 279; 
			 break;
			}
			case 87:
			{
				Y_sipholossality32577 = h_potamette32578 - 441 * 161 / 146 + 22 / 59 + 384; 
			 break;
			}
			case 51:
			{
				Y_sipholossality32577 = h_potamette32578 * 400 + 815 * 163 / 383; 
			 break;
			}
			case 27:
			{
				Y_sipholossality32577 = h_potamette32578 * 643 - 642 - 160 + 345 + 279 / 136; 
			 break;
			}
			case 761:
			{
				Y_sipholossality32577 = h_potamette32578 + 541 / 835 * 104 / 91 + 76 - 211; 
			 break;
			}
			case 867:
			{
				Y_sipholossality32577 = h_potamette32578 - 622 * 869 + 595; 
			 break;
			}
			case 903:
			{
				Y_sipholossality32577 = h_potamette32578 + 681 + 150; 
			 break;
			}
			case 195:
			{
				Y_sipholossality32577 = h_potamette32578 + 134 - 730 - 984 * 538 - 964; 
			 break;
			}
			case 347:
			{
				Y_sipholossality32577 = h_potamette32578 + 925 - 108 / 77; 
			 break;
			}
			case -31:
			{
				Y_sipholossality32577 = h_potamette32578 + 256 / 701; 
			 break;
			}
			case 50:
			{
				Y_sipholossality32577 = h_potamette32578 * 426 - 342 * 375 + 674; 
			 break;
			}
			case 755:
			{
				Y_sipholossality32577 = h_potamette32578 + 857 / 446; 
			 break;
			}
			case 486:
			{
				Y_sipholossality32577 = h_potamette32578 + 534 + 252 * 376; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-12-13 18:35:10

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

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	BOOL D_29 = [self forpickatic32461Stirptic32462:nil informationent32463Share32464:4455 frometic32465Around32466:nil ];
	if(D_29){}
   
      // 局部变量声明
      int several32579Prinlike32580 = 3767;
      int in1ibility32581Mnemonsome32582 = 1576;
      int phanform32583Onomasator32584;
      
      if(in1ibility32581Mnemonsome32582 <= several32579Prinlike32580){
         // 调用函数来获取最大值
         phanform32583Onomasator32584 = fmax(in1ibility32581Mnemonsome32582, several32579Prinlike32580);
      }else{
         phanform32583Onomasator32584 = fmin(in1ibility32581Mnemonsome32582, several32579Prinlike32580);
      }
     
		}
		//====insert my code end===  2023-12-13 18:35:10

        titleLable.numberOfLines = 1;
        titleLable.textColor = [UIColor whiteColor];
        
        [self addSubview:titleLable];
        [titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).mas_offset(4);

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	BOOL f_5 = [self forpickatic32461Stirptic32462:nil informationent32463Share32464:578 frometic32465Around32466:nil ];
	if(f_5){}
        
        long herpage32601Kilotion32602 = 1593;  //commontemple13
        BOOL asature32603Stockise32604 = YES;
        if (asature32603Stockise32604){
            asature32603Stockise32604 = YES;
        }else{
            asature32603Stockise32604 = !asature32603Stockise32604;
            
        }

        if (asature32603Stockise32604){
            herpage32601Kilotion32602 = 5203;
                        NSDictionary *stichory32619Lowature32620 = @{@"maniaacious32623" : @"sedecade32624", @"mural32625" : @"hiemory32626", @"financialization32627" : @"sessular32628", @"amphi32629" : @"taskar32630", @"smileeous32631" : @"salicistic32632", @"pecunstockard32633" : @"structurearium32634", @"dieal32635" : @"placeaneity32636", @"finishation32637" : @"shootule32638", @"tergi32639" : @(72656), @"terminery32641" : @"docu32642", @"choose32643" : @"dosate32644" };  //temple19
            if (stichory32619Lowature32620.count > 2978){}
            
        }
        
		}
		//====insert my code end===  2023-12-13 18:35:10

            make.bottom.equalTo(self).mas_offset(-4);
            make.leading.mas_equalTo(accountIconImageView.mas_trailing);

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	BOOL V_47 = [self forpickatic32461Stirptic32462:nil informationent32463Share32464:479 frometic32465Around32466:nil ];
	if(V_47){}
        
        int popular32645Geting32646 = 3774;    //temple11
        int locoish32647Contre32648 = 2052;
        while(locoish32647Contre32648 > popular32645Geting32646) {
            locoish32647Contre32648 += 1;
            break; 
        } 

		}
		//====insert my code end===  2023-12-13 18:35:10

            make.trailing.mas_equalTo(self);
        }];
              
        
        UIButton *mButton = [OrbOpen initBtnWithTitleText_MMMethodMMM:nil fontSize_MMMethodMMM:14 textColor_MMMethodMMM:nil tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];
        mButton.backgroundColor = [UIColor clearColor];
        [self addSubview:mButton];

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	BOOL t_19 = [self forpickatic32461Stirptic32462:nil informationent32463Share32464:4228 frometic32465Around32466:nil ];
	if(t_19){}

        BOOL tactatory32655Salvform32656 = NO;  //commontemple18
        int pulchrster32657Anth32658 = 759;
        if (tactatory32655Salvform32656){

            pulchrster32657Anth32658 = pulchrster32657Anth32658 - 4359;

            int chrysoatic32665Tortufication32666 = 5280;
            int pulletic32669Western32670 = 3648;
            int batuous32671 = 7169;
            switch (chrysoatic32665Tortufication32666) {
                    
                case 980:
			{
				pulletic32669Western32670 = batuous32671 - 211 / 721; 
			 break;
			}
			case 507:
			{
				pulletic32669Western32670 = batuous32671 + 477 - 550 + 871 / 380 - 925 / 667; 
			 break;
			}
			case 204:
			{
				pulletic32669Western32670 = batuous32671 - 183 + 406 - 77 + 708 / 917; 
			 break;
			}
			case 358:
			{
				pulletic32669Western32670 = batuous32671 + 368 + 296 + 693 + 271 + 44 - 437; 
			 break;
			}
			
                    
                default:
                    break;
            }
        }
        
        

        
		}
		//====insert my code end===  2023-12-13 18:35:10

          
          [mButton mas_makeConstraints:^(MASConstraintMaker *make) {
              make.size.mas_equalTo(self);
              make.center.mas_equalTo(self);
          }];
        
        
    }

		//====insert my code start===  2023-12-13 18:35:10
		{
		
	BOOL i_8 = [self forpickatic32461Stirptic32462:nil informationent32463Share32464:3349 frometic32465Around32466:nil ];
	if(i_8){}
        
        NSDictionary *cyclid32673Peoplemost32674 = @{@"skeptial32685" : @"hugeair32686", @"costify32687" : @(69681), @"fulglet32689" : @"calo32690", @"lect32691" : @(97834), @"mulctful32693" : @"receive32694", @"bolaful32695" : @"best32696", @"pitoon32697" : @(77380), @"cubia32699" : @(88675), @"amplness32701" : @"whiteit32702", @"amouracle32703" : @(41793), @"growthhood32705" : @"trecent32706", @"athroid32707" : @"fabul32708", @"glassress32709" : @"volvistic32710" };  //temple5
       if (cyclid32673Peoplemost32674.count < 7321){

            int aper32677Tenaciism32678 = 4783;
            int ptyalful32681Passerine32682 = 8059;
            int studentee32683 = 9077;
            switch (aper32677Tenaciism32678) {
                    
                case 441:
			{
				ptyalful32681Passerine32682 = studentee32683 * 233 * 388 * 926 - 579; 
			 break;
			}
			case 310:
			{
				ptyalful32681Passerine32682 = studentee32683 * 141 + 470 * 372 + 954 + 460 + 344; 
			 break;
			}
			case 689:
			{
				ptyalful32681Passerine32682 = studentee32683 * 680 + 37; 
			 break;
			}
			case -35:
			{
				ptyalful32681Passerine32682 = studentee32683 * 379 - 295; 
			 break;
			}
			case 461:
			{
				ptyalful32681Passerine32682 = studentee32683 + 745 / 760 - 894 + 640 * 369; 
			 break;
			}
			case 184:
			{
				ptyalful32681Passerine32682 = studentee32683 - 959 + 403; 
			 break;
			}
			case 125:
			{
				ptyalful32681Passerine32682 = studentee32683 - 829 * 941 - 624 * 694 + 816 / 622; 
			 break;
			}
			case -64:
			{
				ptyalful32681Passerine32682 = studentee32683 * 339 / 795; 
			 break;
			}
			case 580:
			{
				ptyalful32681Passerine32682 = studentee32683 - 962 * 634; 
			 break;
			}
			case 829:
			{
				ptyalful32681Passerine32682 = studentee32683 + 27 + 158 + 552 - 713 + 960 + 603; 
			 break;
			}
			case 704:
			{
				ptyalful32681Passerine32682 = studentee32683 * 99 - 853 * 145; 
			 break;
			}
			case 305:
			{
				ptyalful32681Passerine32682 = studentee32683 - 371 / 522 / 173 + 661; 
			 break;
			}
			case -96:
			{
				ptyalful32681Passerine32682 = studentee32683 - 32 * 583 - 368 + 936 + 38 + 622; 
			 break;
			}
			case 880:
			{
				ptyalful32681Passerine32682 = studentee32683 * 236 - 228 - 688 / 669; 
			 break;
			}
			
                    
                default:
                    break;
            }


        }

        

		}
		//====insert my code end===  2023-12-13 18:35:10

    return self;
}



//===insert my method start=== 2023-12-13 18:35:10
- (BOOL)forpickatic32461Stirptic32462:(NSObject *)forpickatic32461_1 informationent32463Share32464:(float)informationent32463_2 frometic32465Around32466:(NSArray *)frometic32465_3{ //insert method
	if(forpickatic32461_1){
		        
        CGFloat laughite32469Gnatfication32470 = 8571;  //commontemple10
        int asure32471Fricit32472 = 2090;

        for(int amourtion32473Cac32474 = 4135; amourtion32473Cac32474 < 3612; amourtion32473Cac32474 = amourtion32473Cac32474 + 1)
        {    
            asure32471Fricit32472 = asure32471Fricit32472++;
        }
        
	}
	if(informationent32463_2 + 463 * 218 + 43 / 539 + 817 / 213 <= 2106){
		        
        BOOL trachyation32485Camera32486 = YES;  //commontemple5
        if (trachyation32485Camera32486)
        {
            
            trachyation32485Camera32486 = NO;
        }

        
	}
 
	BOOL b_1 = 9871;
	return b_1;
}
//===insert my method end=== 2023-12-13 18:35:10
@end
