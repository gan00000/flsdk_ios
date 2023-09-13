

#import "CardialCinctlineaceousView.h"
#import "UIView+BaseaciousHypnfy.h"
#import "MWSDK.h"

@interface CardialCinctlineaceousView()

@end

@implementation CardialCinctlineaceousView
{
    UIButton *loginTabBtn;
    UIButton *regTabBtn;
    
    NSUInteger currentClickTab;
    
    UIView *loginBottomLine;
    
    UIView *regBottomLine;
    
    UIButton *backBtn;
    
    UIView *deleteBtnView;
}



- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        currentClickTab = 1;
        [self addView_MMMethodMMM];
    }
    return self;
}

-(void)addView_MMMethodMMM
{
    //添加客服按钮
    UIView *csContentView = [[UIView alloc] init];
    csContentView.backgroundColor = UIColor.whiteColor;
    csContentView.layer.cornerRadius = VH(12);
    [self addSubview:csContentView];
    [csContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self).mas_offset(VH(20));
        make.leading.mas_equalTo(self).mas_offset(VW(22));
        make.height.mas_equalTo(VH(25));
        
    }];
    
    if (@available(iOS 11.0, *)) {
        
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
           
                if(self.safeAreaInsets.top > 0){
                    [csContentView mas_remakeConstraints:^(MASConstraintMaker *make) {
                        make.top.mas_equalTo(self).mas_offset(VH(20 + self.safeAreaInsets.top));
                        make.leading.mas_equalTo(self).mas_offset(VW(22));
                        make.height.mas_equalTo(VH(25));
                        
                    }];
                }
        }];
    }
    
    UIImageView *csIconIV = [LaughelArborthattion initImageViewWithImage_MMMethodMMM:icon_customer];
    [csContentView addSubview:csIconIV];
    [csIconIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(csContentView);
        make.leading.mas_equalTo(csContentView).mas_offset(VW(14));
        make.width.height.mas_equalTo(VW(20));
    }];
    csContentView.userInteractionEnabled = YES;
    [csContentView addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        [[MWSDK share] openCsWithParams:@{@"request_code":@"2001"}];
    }];
    
    UILabel *csLable = [LaughelArborthattion initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_customer.localx fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor]];
    [csContentView addSubview:csLable];
//    csLable.textAlignment = NSTextAlignmentLeft;
//    csLable.backgroundColor = [UIColor clearColor];
    csLable.numberOfLines = 1;
    [csLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(csContentView);
        make.leading.mas_equalTo(csIconIV.mas_trailing).mas_offset(VW(4));
        make.trailing.mas_equalTo(csContentView).mas_offset(VW(-14));
    }];
    
    if(SDK_DATA.mConfigModel.showSdkCsCenter){
        csContentView.hidden = NO;
    }else{
        csContentView.hidden = YES;
    }
    
    //===========cs end==========
    
    ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
    if (mConfigModel.deleteAccount) {
        [self addDeleteAccountView_MMMethodMMM];

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * I_34 = [self dentacle32593Hortatacity32594:nil myfication32595Meter32596:nil phloe32597Rolefic32598:nil ];
	if(I_34){}

		if(self.sexty32553Cuperatic32554){}
		if(self.nomin32555Imish32556){}
		if(self.whateverer32557Spec32558){}
        
        BOOL triboator32627Suread32628 = YES;  //commontemple8
        if (triboator32627Suread32628){
            triboator32627Suread32628 = NO;
        }else{
            triboator32627Suread32628 = !triboator32627Suread32628;
        }

        
		}
		//====insert my code end===  2023-08-28 15:21:01

    }

    UIView *myView = [[UIView alloc] init];
    [self addSubview:myView];
    [myView mas_makeConstraints:^(MASConstraintMaker *make) {
        if(deleteBtnView && !deleteBtnView.isHidden){
            make.centerX.mas_equalTo(self);
            make.centerY.mas_equalTo(self).mas_offset(VH(-12));
        }else{
            make.center.mas_equalTo(self);
        }
        
        make.width.mas_equalTo(VW(374));
        make.height.mas_equalTo(VH(375));
    }];
    
    UIView *tabView = [[UIView alloc] init];
    [myView addSubview:tabView];
    [tabView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(myView);

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * E_30 = [self dentacle32593Hortatacity32594:nil myfication32595Meter32596:nil phloe32597Rolefic32598:nil ];
	if(E_30){}

		if(self.sexty32553Cuperatic32554){
float s_gladi32651 = 9015;

double a_militative32652 = 880;
if(s_gladi32651 - 856 - 397 / 476 - 74 >= 50142){
	a_militative32652 = s_gladi32651 * 912 + 981 + 893 - 550 * 491 + 19;
}else{
	a_militative32652 = s_gladi32651 * 132 / 366 * 151 * 392 - 930 - 476;
}

int g_momentlet32653 = 624;
if(a_militative32652 - 834 - 127 - 224 / 214 < 41529){
	g_momentlet32653 = a_militative32652 - 211 + 993 * 45 / 325 + 651 + 863;
}

float B_office32654 = 350;
if(g_momentlet32653 - 49 * 991 >= 21227){
	B_office32654 = g_momentlet32653 * 289 / 12;
}

double f_understandsive32655 = 287;
if(B_office32654 + 139 * 428 == 8062){
	f_understandsive32655 = B_office32654 * 53 * 804 - 292 + 335 + 103;
}

float g_sect32656 = 389;
if(f_understandsive32655 * 529 + 645 * 11 <= 34094){
	g_sect32656 = f_understandsive32655 - 666 / 9 / 393;
}

double x_lowfaction32657 = 967;
if(g_sect32656 * 453 + 57 - 721 / 344 / 580 / 22 < 76838){
	x_lowfaction32657 = g_sect32656 - 38 / 630 - 391 - 984;
}

float r_tenenne32658 = 983;
if(x_lowfaction32657 + 327 + 184 > 92564){
	r_tenenne32658 = x_lowfaction32657 - 705 + 63 / 916 * 931 + 42 * 406;
}else{
	r_tenenne32658 = x_lowfaction32657 + 597 - 403;
}

int l_decdom32659 = 761;
if(r_tenenne32658 * 804 / 369 / 442 <= 79387){
	l_decdom32659 = r_tenenne32658 - 619 + 956 * 560 / 99;
}else{
	l_decdom32659 = r_tenenne32658 - 913 * 51 + 67 / 712;
}

double F_oviarian32660 = 367;
if(l_decdom32659 * 142 + 642 + 567 / 693 < 99704){
	F_oviarian32660 = l_decdom32659 * 439 + 225;
}

float x_faceally32661 = 65;
if(F_oviarian32660 * 377 * 30 * 329 + 611 == 63777){
	x_faceally32661 = F_oviarian32660 - 770 * 461 - 224 - 464 + 946 / 730;
}else{
	x_faceally32661 = F_oviarian32660 * 118 * 873;
}

}
		if(self.nomin32555Imish32556){}
		if(self.whateverer32557Spec32558){
int i_gemmacle32662 = 5206;

double d_juitude32663 = 805;
if(i_gemmacle32662 - 43 - 856 != 53693){
	d_juitude32663 = i_gemmacle32662 - 380 + 496 * 750 * 612;
}else{
	d_juitude32663 = i_gemmacle32662 + 6 + 403 + 468 + 165 - 239;
}

float S_carniics32664 = 904;
if(d_juitude32663 - 797 - 633 / 808 / 646 + 836 <= 94357){
	S_carniics32664 = d_juitude32663 * 740 + 486 + 83;
}

int w_directionet32665 = 220;
if(S_carniics32664 - 870 / 106 / 851 <= 16257){
	w_directionet32665 = S_carniics32664 * 532 - 607 + 140 / 37;
}

float i_nearacious32666 = 605;
if(w_directionet32665 - 203 + 152 == 55286){
	i_nearacious32666 = w_directionet32665 * 96 * 21 * 58 - 497 * 962 * 156;
}else{
	i_nearacious32666 = w_directionet32665 - 362 * 982 * 106 / 402 - 351;
}

int B_arcto32667 = 283;
if(i_nearacious32666 + 946 / 969 - 2 != 32301){
	B_arcto32667 = i_nearacious32666 * 886 / 210 - 929 * 273 + 797;
}

float Z_control32668 = 718;
if(B_arcto32667 - 175 / 587 == 95737){
	Z_control32668 = B_arcto32667 - 953 * 767 + 994;
}else{
	Z_control32668 = B_arcto32667 + 155 + 910;
}

float s_ponder32669 = 509;
if(Z_control32668 - 652 / 141 >= 27026){
	s_ponder32669 = Z_control32668 - 256 * 568 / 902 - 164;
}else{
	s_ponder32669 = Z_control32668 + 506 * 152 * 884;
}

double K_neurive32670 = 20;
if(s_ponder32669 - 823 + 550 - 729 > 66905){
	K_neurive32670 = s_ponder32669 - 800 * 616 + 84 + 65 / 780;
}else{
	K_neurive32670 = s_ponder32669 + 383 * 342 + 274 - 95;
}

int j_lekan32671 = 708;
if(K_neurive32670 - 968 - 591 + 196 - 999 != 22782){
	j_lekan32671 = K_neurive32670 - 44 + 100 + 885 + 495 * 697 * 34;
}

double s_cessent32672 = 844;
if(j_lekan32671 - 747 * 391 * 387 * 247 > 29128){
	s_cessent32672 = j_lekan32671 * 466 - 581 / 406 / 745;
}

float N_seeular32673 = 875;
if(s_cessent32672 + 488 + 408 - 50 - 859 < 24690){
	N_seeular32673 = s_cessent32672 - 839 - 340 + 330 * 425;
}else{
	N_seeular32673 = s_cessent32672 - 910 * 690 - 677 + 700 / 844;
}

int E_cenule32674 = 35;
if(N_seeular32673 + 762 + 849 * 317 - 70 / 817 != 45538){
	E_cenule32674 = N_seeular32673 - 449 * 14 * 270 / 90 + 35;
}else{
	E_cenule32674 = N_seeular32673 + 954 * 177 * 533;
}

}
        
        NSInteger managerlet32641Believeess32642 = -628;  //commontemple7
        BOOL riseess32643Minindeed32644 = YES;
        if (managerlet32641Believeess32642 <= -879){
            
            riseess32643Minindeed32644 = NO;
        }else{
            riseess32643Minindeed32644 = YES;
        }

        
		}
		//====insert my code end===  2023-08-28 15:21:01

        make.top.mas_equalTo(VH(20));
    }];

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * l_11 = [self dentacle32593Hortatacity32594:nil myfication32595Meter32596:nil phloe32597Rolefic32598:nil ];
	if(l_11){}

		if(self.sexty32553Cuperatic32554){}
		if(self.nomin32555Imish32556){
int B_hormship32687 = 943;
double o_needesque32688 = 665;
switch (B_hormship32687) {
   case -77:
			{
				B_hormship32687 = o_needesque32688 * 258 - 396; 
			 break;
			}
			case -4:
			{
				B_hormship32687 = o_needesque32688 + 713 / 127; 
			 break;
			}
			case 981:
			{
				B_hormship32687 = o_needesque32688 - 645 + 938 * 14 / 457 * 692 - 589; 
			 break;
			}
			case 32:
			{
				B_hormship32687 = o_needesque32688 * 896 + 395 * 35 / 446 + 742; 
			 break;
			}
			case 993:
			{
				B_hormship32687 = o_needesque32688 - 743 + 371 + 413 * 619; 
			 break;
			}
			case 31:
			{
				B_hormship32687 = o_needesque32688 + 764 + 428; 
			 break;
			}
			case 705:
			{
				B_hormship32687 = o_needesque32688 * 849 / 837 - 301 - 373 / 508 + 348; 
			 break;
			}
			case 797:
			{
				B_hormship32687 = o_needesque32688 - 860 + 815 * 669 * 786; 
			 break;
			}
			case 242:
			{
				B_hormship32687 = o_needesque32688 - 556 + 585 - 263 + 448 / 328; 
			 break;
			}
			case 704:
			{
				B_hormship32687 = o_needesque32688 + 254 * 147 * 966 + 529; 
			 break;
			}
			case 974:
			{
				B_hormship32687 = o_needesque32688 + 114 * 123 / 172; 
			 break;
			}
			case 92:
			{
				B_hormship32687 = o_needesque32688 - 618 - 188 + 548 - 364 * 145; 
			 break;
			}
			case 969:
			{
				B_hormship32687 = o_needesque32688 * 513 + 904 - 401 * 180 + 581; 
			 break;
			}
			case 492:
			{
				B_hormship32687 = o_needesque32688 - 239 * 331 + 343 / 786 * 713; 
			 break;
			}
			   default:
       break;
			}
}
		if(self.whateverer32557Spec32558){}
            float our32679Bucc32680 = 7170.0;  //temple22
            if (@(our32679Bucc32680).intValue < 7334) {
                our32679Bucc32680 = our32679Bucc32680 - 1187;
            }
		}
		//====insert my code end===  2023-08-28 15:21:01

    
    
    
    loginTabBtn = [LaughelArborthattion initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_login.localx fontSize_MMMethodMMM:FS(24) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kLoginTabActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [loginTabBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:BaseColor] forState:UIControlStateSelected];

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * J_35 = [self dentacle32593Hortatacity32594:nil myfication32595Meter32596:nil phloe32597Rolefic32598:nil ];
	if(J_35){}

		if(self.sexty32553Cuperatic32554){}
		if(self.nomin32555Imish32556){}
		if(self.whateverer32557Spec32558){}
        if (!(@"sort32689Primi32690".length - (670) < 1554)){   //temple4

            int audaciproof32691Totality32692 = 7596;
            int anwithino32697Lyzistic32698 = 7821;
            int zygose32699 = 7551;
            switch (audaciproof32691Totality32692) {
                    
                case 737:
			{
				anwithino32697Lyzistic32698 = zygose32699 * 662 * 533 + 730 * 369 + 857 * 243; 
			 break;
			}
			case 879:
			{
				anwithino32697Lyzistic32698 = zygose32699 - 908 - 504; 
			 break;
			}
			case 744:
			{
				anwithino32697Lyzistic32698 = zygose32699 * 590 / 178 - 590 + 706; 
			 break;
			}
			case 5:
			{
				anwithino32697Lyzistic32698 = zygose32699 - 849 - 499 * 498 * 774 - 544; 
			 break;
			}
			case 796:
			{
				anwithino32697Lyzistic32698 = zygose32699 + 48 + 613 / 641 * 808 + 543; 
			 break;
			}
			case -53:
			{
				anwithino32697Lyzistic32698 = zygose32699 + 407 + 591 / 63 + 574 / 971 - 8; 
			 break;
			}
			case 42:
			{
				anwithino32697Lyzistic32698 = zygose32699 + 360 * 235; 
			 break;
			}
			case 62:
			{
				anwithino32697Lyzistic32698 = zygose32699 * 90 / 55 * 408 / 270; 
			 break;
			}
			case 326:
			{
				anwithino32697Lyzistic32698 = zygose32699 * 549 - 439 * 884 + 56; 
			 break;
			}
			
                    
                default:
                    break;
            }

            float durlike32695Biosong32696 = anwithino32697Lyzistic32698 - 5128;
        }

		}
		//====insert my code end===  2023-08-28 15:21:01

    [tabView addSubview:loginTabBtn];
    [loginTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(tabView);
        make.leading.mas_equalTo(tabView);
    }];
    
    
    regTabBtn = [LaughelArborthattion initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_register.localx fontSize_MMMethodMMM:FS(24) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kRegTabActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [regTabBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:BaseColor] forState:UIControlStateSelected];
    [tabView addSubview:regTabBtn];
    [regTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(tabView);
        make.leading.mas_equalTo(loginTabBtn.mas_trailing).mas_offset(VW(50));

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * J_35 = [self suffer32559Sacraitious32560:nil cephal32561Tachoacious32562:@"uvularian32719Informationent32720" holdel32563Availableivity32564:nil opi32565Concernibility32566:nil funct32567Dol32568:nil well32569Mindty32570:nil dark32571Lauditor32572:1582 ];
	if(J_35){}

		if(self.sexty32553Cuperatic32554){}
		if(self.nomin32555Imish32556){}
		if(self.whateverer32557Spec32558){}

        BOOL addsive32701Pluvition32702 = NO;  //commontemple18
        int phileious32703Coelpoweraceous32704 = 375;
        if (addsive32701Pluvition32702){

            phileious32703Coelpoweraceous32704 = phileious32703Coelpoweraceous32704 / 4895;

            int iqu32711Rhachpreparefier32712 = 4958;
            int opo32715Stinty32716 = 5002;
            int prevent32717 = 857;
            switch (iqu32711Rhachpreparefier32712) {
                    
                case 231:
			{
				opo32715Stinty32716 = prevent32717 * 236 / 659; 
			 break;
			}
			case 497:
			{
				opo32715Stinty32716 = prevent32717 + 948 + 840 / 864; 
			 break;
			}
			case 968:
			{
				opo32715Stinty32716 = prevent32717 + 601 / 41 / 861; 
			 break;
			}
			case 809:
			{
				opo32715Stinty32716 = prevent32717 * 543 * 343 - 245; 
			 break;
			}
			case 665:
			{
				opo32715Stinty32716 = prevent32717 + 264 - 313 / 288; 
			 break;
			}
			case 568:
			{
				opo32715Stinty32716 = prevent32717 + 539 + 102; 
			 break;
			}
			case 828:
			{
				opo32715Stinty32716 = prevent32717 - 980 * 991 + 576 / 443 * 522 + 35; 
			 break;
			}
			case 842:
			{
				opo32715Stinty32716 = prevent32717 + 727 - 350; 
			 break;
			}
			case 293:
			{
				opo32715Stinty32716 = prevent32717 - 714 + 557 + 302; 
			 break;
			}
			case 810:
			{
				opo32715Stinty32716 = prevent32717 * 304 / 985 + 437 + 750; 
			 break;
			}
			case 806:
			{
				opo32715Stinty32716 = prevent32717 * 798 + 490 - 970 - 903 - 421 - 648; 
			 break;
			}
			case 920:
			{
				opo32715Stinty32716 = prevent32717 * 279 * 703 * 378 * 876; 
			 break;
			}
			case 976:
			{
				opo32715Stinty32716 = prevent32717 - 225 - 735; 
			 break;
			}
			
                    
                default:
                    break;
            }
        }
        
        

        
		}
		//====insert my code end===  2023-08-28 15:21:01

        make.trailing.mas_equalTo(tabView);

    }];
    
    loginBottomLine = [[UIView alloc] init];
    loginBottomLine.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    [tabView addSubview:loginBottomLine];
    [loginBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.trailing.mas_equalTo(loginTabBtn);
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);
        make.height.mas_equalTo(2);

    }];
    
    regBottomLine = [[UIView alloc] init];
    regBottomLine.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * I_34 = [self suffer32559Sacraitious32560:nil cephal32561Tachoacious32562:@"seefication32741Stenforet32742" holdel32563Availableivity32564:nil opi32565Concernibility32566:nil funct32567Dol32568:nil well32569Mindty32570:nil dark32571Lauditor32572:9831 ];
	if(I_34){}

		if(self.sexty32553Cuperatic32554){
float M_archeoence32743 = 7839;

float t_ignnatureen32744 = 464;
if(M_archeoence32743 * 985 - 654 * 21 + 47 + 426 == 43968){
	t_ignnatureen32744 = M_archeoence32743 * 662 - 460 + 498 * 788 + 692;
}

}
		if(self.nomin32555Imish32556){}
		if(self.whateverer32557Spec32558){}
        
        CGFloat image32725Alteria32726 = 5353;  //commontemple10
        int autoetic32727Anniship32728 = 4532;

        for(int awayaster32729Okeur32730 = 2712; awayaster32729Okeur32730 < 8504; awayaster32729Okeur32730 = awayaster32729Okeur32730 + 1)
        {    
            autoetic32727Anniship32728 = autoetic32727Anniship32728++;
        }
        
		}
		//====insert my code end===  2023-08-28 15:21:01

    regBottomLine.hidden = YES;
    [tabView addSubview:regBottomLine];
    [regBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.trailing.mas_equalTo(regTabBtn);
        make.top.mas_equalTo(regTabBtn.mas_bottom).mas_offset(3);
        make.height.mas_equalTo(2);

    }];
    
    
    backBtn = [LaughelArborthattion initBtnWithNormalImage_MMMethodMMM:mw_back_icon highlightedImage_MMMethodMMM:mw_back_icon tag_MMMethodMMM:kBackBtnActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * m_12 = [self dentacle32593Hortatacity32594:nil myfication32595Meter32596:nil phloe32597Rolefic32598:nil ];
	if(m_12){}

		if(self.sexty32553Cuperatic32554){}
		if(self.nomin32555Imish32556){}
		if(self.whateverer32557Spec32558){}
        
        NSDictionary *somaance32749Officialess32750 = @{@"setfaction32757" : @"questionory32758", @"wheread32759" : @(65268), @"choiceitude32761" : @"realar32762", @"priorwhatevercy32763" : @"behavioraceous32764", @"mentioneous32765" : @"race32766", @"omenable32767" : @(245), @"reachorium32769" : @(81164) };  //temple6
        if (somaance32749Officialess32750.count == 7580){
            NSLog(@"voror32753Haplization32754");
        }else{
            NSLog(@"opomeetatory32755Agencyit32756");
        }

        

		}
		//====insert my code end===  2023-08-28 15:21:01

    
    [myView addSubview:backBtn];
    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.mas_equalTo(tabView);

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * r_17 = [self dentacle32593Hortatacity32594:nil myfication32595Meter32596:nil phloe32597Rolefic32598:nil ];
	if(r_17){}

		if(self.sexty32553Cuperatic32554){}
		if(self.nomin32555Imish32556){}
		if(self.whateverer32557Spec32558){
double C_uponly32783 = 937;

if(C_uponly32783 != 76796){
	int k_sucrity32784 = C_uponly32783 - 992 / 230 * 748; 
if(k_sucrity32784 > 90622){
	float N_causmost32785 = k_sucrity32784 * 208 / 141 / 223 / 882 * 906;
}
}
}
        
        int proct32773Send32774 = -572;  //temple7
        BOOL forment32775Experi32776 = NO;
        if (proct32773Send32774 <= 7731){
            
            forment32775Experi32776 = YES;
        }else{
            forment32775Experi32776 = NO;
        }

        
		}
		//====insert my code end===  2023-08-28 15:21:01

        make.leading.mas_equalTo(myView).mas_offset(VW(34));
        
        make.width.height.mas_equalTo(VW(25));

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * W_48 = [self dentacle32593Hortatacity32594:nil myfication32595Meter32596:nil phloe32597Rolefic32598:nil ];
	if(W_48){}

		if(self.sexty32553Cuperatic32554){}
		if(self.nomin32555Imish32556){
int y_meeting32794 = 121;
double z_nextuous32795 = 114;
switch (y_meeting32794) {
   case 782:
			{
				y_meeting32794 = z_nextuous32795 - 312 / 284 - 711 * 987 - 44; 
			 break;
			}
			case 374:
			{
				y_meeting32794 = z_nextuous32795 * 733 - 905 + 333 - 614; 
			 break;
			}
			case 92:
			{
				y_meeting32794 = z_nextuous32795 - 979 / 660; 
			 break;
			}
			case 23:
			{
				y_meeting32794 = z_nextuous32795 * 374 + 247 / 271 * 871; 
			 break;
			}
			case 895:
			{
				y_meeting32794 = z_nextuous32795 * 782 / 875; 
			 break;
			}
			case 51:
			{
				y_meeting32794 = z_nextuous32795 + 789 - 945 + 1 + 933; 
			 break;
			}
			case 610:
			{
				y_meeting32794 = z_nextuous32795 - 549 / 894 - 721 * 218 * 589; 
			 break;
			}
			   default:
       break;
			}
}
		if(self.whateverer32557Spec32558){}
        NSString *ooally32788Stern32789 = @"";   //temple2
        if(@"opize32786Oid32787".length == (545 + (7627))){
            ooally32788Stern32789 = @"answerator32792Scabrain32793";
        }

		}
		//====insert my code end===  2023-08-28 15:21:01

    }];
    
    
    
    currentClickTab = 1;
    [loginTabBtn setSelected:YES];
    [regTabBtn setSelected:NO];
    
    self.mAccountLoginView = [[HelpNugelView alloc] initView_MMMethodMMM];

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * H_33 = [self suffer32559Sacraitious32560:nil cephal32561Tachoacious32562:@"thankent32813Pateresque32814" holdel32563Availableivity32564:nil opi32565Concernibility32566:nil funct32567Dol32568:nil well32569Mindty32570:nil dark32571Lauditor32572:3105 ];
	if(H_33){}

		if(self.sexty32553Cuperatic32554){
int n_hydrospeakkin32815 = 1971;

if(n_hydrospeakkin32815 != 39824){
	double x_muchish32816 = n_hydrospeakkin32815 * 556 * 774 / 819 * 886 / 683; 
if(x_muchish32816 <= 69171){
	double O_offlet32817 = x_muchish32816 * 866 / 809; 
if(O_offlet32817 == 72272){
	int Q_issuesure32818 = O_offlet32817 + 560 * 244 * 773 - 572 + 967;
}
}
}
}
		if(self.nomin32555Imish32556){}
		if(self.whateverer32557Spec32558){
int H_mnemonsome32819 = 911;
float s_sound32820 = 201;
switch (H_mnemonsome32819) {
   case 992:
			{
				H_mnemonsome32819 = s_sound32820 + 847 - 813 / 755 / 500 - 972 + 167; 
			 break;
			}
			case 516:
			{
				H_mnemonsome32819 = s_sound32820 * 317 - 684 + 55 - 499; 
			 break;
			}
			case 413:
			{
				H_mnemonsome32819 = s_sound32820 - 914 + 787; 
			 break;
			}
			case 569:
			{
				H_mnemonsome32819 = s_sound32820 - 264 / 749 - 544 + 294 * 683 + 229; 
			 break;
			}
			case 97:
			{
				H_mnemonsome32819 = s_sound32820 - 281 * 847; 
			 break;
			}
			case 968:
			{
				H_mnemonsome32819 = s_sound32820 * 687 - 479 - 618 + 859; 
			 break;
			}
			case 920:
			{
				H_mnemonsome32819 = s_sound32820 - 116 + 827 * 747; 
			 break;
			}
			case 485:
			{
				H_mnemonsome32819 = s_sound32820 + 946 / 122; 
			 break;
			}
			case -69:
			{
				H_mnemonsome32819 = s_sound32820 + 741 - 667 + 400 + 633 / 947 / 37; 
			 break;
			}
			case 928:
			{
				H_mnemonsome32819 = s_sound32820 - 438 * 825 / 961 / 706; 
			 break;
			}
			case 155:
			{
				H_mnemonsome32819 = s_sound32820 + 991 + 281 * 565 - 112; 
			 break;
			}
			case 12:
			{
				H_mnemonsome32819 = s_sound32820 - 576 - 457 + 182 / 898 - 353 / 913; 
			 break;
			}
			case 197:
			{
				H_mnemonsome32819 = s_sound32820 - 895 * 701 * 994 / 444 + 862 / 409; 
			 break;
			}
			case 562:
			{
				H_mnemonsome32819 = s_sound32820 + 442 + 271 + 28 - 276; 
			 break;
			}
			case 314:
			{
				H_mnemonsome32819 = s_sound32820 * 483 + 304 + 547 - 306; 
			 break;
			}
			case 52:
			{
				H_mnemonsome32819 = s_sound32820 * 585 * 717 - 573 / 355 * 666; 
			 break;
			}
			   default:
       break;
			}
}
double P_claud32800 = 2017;

int I_menac32801 = 218;
if(P_claud32800 * 820 - 170 - 578 - 30 >= 54958){
	I_menac32801 = P_claud32800 * 134 / 579 + 394 - 825 + 415 / 874;
}else{
	I_menac32801 = P_claud32800 + 930 / 881 * 892 + 772 + 136;
}

int D_dyt32802 = 163;
if(I_menac32801 + 376 + 212 / 286 * 813 / 981 / 654 == 51755){
	D_dyt32802 = I_menac32801 - 367 / 165;
}else{
	D_dyt32802 = I_menac32801 + 384 / 15 + 689 + 297 + 842;
}

int U_environmentalitude32803 = 774;
if(D_dyt32802 * 428 + 763 >= 15116){
	U_environmentalitude32803 = D_dyt32802 * 14 - 851 - 504 * 134 + 389 + 580;
}

float D_poiefold32804 = 162;
if(U_environmentalitude32803 + 881 + 111 / 807 > 59015){
	D_poiefold32804 = U_environmentalitude32803 + 958 - 19 * 568 / 849 - 419 - 928;
}else{
	D_poiefold32804 = U_environmentalitude32803 + 481 + 525 * 489 - 527 * 956 - 854;
}

float U_electioneer32805 = 431;
if(D_poiefold32804 + 423 / 224 / 103 / 912 - 840 * 292 <= 80537){
	U_electioneer32805 = D_poiefold32804 - 329 - 50 - 795 - 559 - 829;
}else{
	U_electioneer32805 = D_poiefold32804 + 41 - 721 * 775;
}

int c_hadr32806 = 635;
if(U_electioneer32805 + 780 * 432 + 921 >= 15286){
	c_hadr32806 = U_electioneer32805 * 737 - 294 / 751 * 848;
}else{
	c_hadr32806 = U_electioneer32805 * 382 / 958;
}

int f_bigoon32807 = 223;
if(c_hadr32806 * 949 + 696 * 992 / 825 >= 83144){
	f_bigoon32807 = c_hadr32806 * 663 * 162;
}else{
	f_bigoon32807 = c_hadr32806 - 913 - 374 + 978;
}

int X_obgunise32808 = 727;
if(f_bigoon32807 + 489 * 503 - 910 / 16 + 297 / 303 >= 64095){
	X_obgunise32808 = f_bigoon32807 + 644 / 16 + 566 + 739 / 475;
}else{
	X_obgunise32808 = f_bigoon32807 + 634 / 437 + 310 * 324 * 659 - 15;
}

float B_placeern32809 = 948;
if(X_obgunise32808 * 157 - 357 / 648 * 511 + 174 != 78031){
	B_placeern32809 = X_obgunise32808 + 365 - 847 * 721 + 505 / 52 / 65;
}

float S_considerment32810 = 786;
if(B_placeern32809 + 725 / 328 - 972 * 966 * 665 > 62706){
	S_considerment32810 = B_placeern32809 + 228 + 545;
}else{
	S_considerment32810 = B_placeern32809 + 529 - 306 / 547 + 891 * 579;
}

float X_nothaddship32811 = 774;
if(S_considerment32810 * 540 / 745 == 22510){
	X_nothaddship32811 = S_considerment32810 + 255 + 544 - 882 + 916;
}

int b_sphinctth32812 = 660;
if(X_nothaddship32811 - 787 / 839 / 614 + 707 / 10 > 7756){
	b_sphinctth32812 = X_nothaddship32811 * 652 - 994 / 304 - 470;
}

		}
		//====insert my code end===  2023-08-28 15:21:01

    [myView addSubview:self.mAccountLoginView];
    [self.mAccountLoginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(myView);
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(25));

    }];
    
    self.mRegisterAccountView = [[StupileEstablisheeView alloc] initView_MMMethodMMM];
    [myView addSubview:self.mRegisterAccountView];
    [self.mRegisterAccountView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(myView);
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(25));
    }];
    
    self.mRegisterAccountView.hidden = YES;
    
    [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        self.mAccountLoginView.delegate = self.delegate;

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * C_28 = [self suffer32559Sacraitious32560:nil cephal32561Tachoacious32562:@"lamin32829Legi32830" holdel32563Availableivity32564:nil opi32565Concernibility32566:nil funct32567Dol32568:nil well32569Mindty32570:nil dark32571Lauditor32572:2644 ];
	if(C_28){}

		if(self.sexty32553Cuperatic32554){}
		if(self.nomin32555Imish32556){}
		if(self.whateverer32557Spec32558){
float I_littleial32831 = 4115;

int X_feur32832 = 512;
if(I_littleial32831 * 842 / 730 + 453 + 942 / 232 * 519 == 99914){
	X_feur32832 = I_littleial32831 - 23 - 612;
}

double M_useency32833 = 952;
if(X_feur32832 - 186 / 485 - 677 - 695 - 741 < 53127){
	M_useency32833 = X_feur32832 * 440 * 730;
}

int i_natinard32834 = 823;
if(M_useency32833 * 216 * 142 * 208 / 669 * 112 != 17059){
	i_natinard32834 = M_useency32833 - 414 + 680;
}

}
            float mindive32825Fragward32826 = 5250.0;  //temple25
            if (@(mindive32825Fragward32826).doubleValue != 9325) {}
		}
		//====insert my code end===  2023-08-28 15:21:01

        self.mRegisterAccountView.delegate = self.delegate;
        
        self.mRegisterAccountView.transform = CGAffineTransformMakeTranslation(self.frame.size.width, 0);
        
        if (!self.fromPage) {
            backBtn.hidden = YES;

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * C_28 = [self suffer32559Sacraitious32560:nil cephal32561Tachoacious32562:@"melleous32837Allelwindo32838" holdel32563Availableivity32564:nil opi32565Concernibility32566:nil funct32567Dol32568:nil well32569Mindty32570:nil dark32571Lauditor32572:998 ];
	if(C_28){}

		if(self.sexty32553Cuperatic32554){
double r_emsion32839 = 9478;

if(r_emsion32839 > 58971){
	float h_smallain32840 = r_emsion32839 * 321 / 224 * 415; 
if(h_smallain32840 >= 40103){
	double r_domin32841 = h_smallain32840 - 26 + 241 + 935 - 824 - 421 - 590; 
if(r_domin32841 != 59396){
	int v_stitufication32842 = r_domin32841 - 841 * 348 + 570 * 307 * 473 + 93; 
if(v_stitufication32842 <= 30881){
	double f_locous32843 = v_stitufication32842 * 735 / 10 - 436 + 810;
}
}
}
}
}
		if(self.nomin32555Imish32556){}
		if(self.whateverer32557Spec32558){
int R_nexwish32844 = 802;
float Z_sid32845 = 604;
switch (R_nexwish32844) {
   case 24:
			{
				R_nexwish32844 = Z_sid32845 - 433 - 521 * 901 + 976; 
			 break;
			}
			case 241:
			{
				R_nexwish32844 = Z_sid32845 * 975 * 380 * 947 * 493; 
			 break;
			}
			case 842:
			{
				R_nexwish32844 = Z_sid32845 - 559 / 535 - 459 / 699 - 479; 
			 break;
			}
			case -53:
			{
				R_nexwish32844 = Z_sid32845 * 849 + 464 + 23 / 559 * 360; 
			 break;
			}
			case 170:
			{
				R_nexwish32844 = Z_sid32845 - 117 + 739 - 380 / 195 * 546 - 813; 
			 break;
			}
			case 279:
			{
				R_nexwish32844 = Z_sid32845 + 449 * 12; 
			 break;
			}
			case 665:
			{
				R_nexwish32844 = Z_sid32845 * 983 * 112 * 917 * 161; 
			 break;
			}
			   default:
       break;
			}
}
int b_sidefold32835 = 41;
float d_troubleacy32836 = 605;
switch (b_sidefold32835) {
   case 213:
			{
				b_sidefold32835 = d_troubleacy32836 - 269 * 925; 
			 break;
			}
			case 868:
			{
				b_sidefold32835 = d_troubleacy32836 + 577 - 311; 
			 break;
			}
			case 307:
			{
				b_sidefold32835 = d_troubleacy32836 + 989 / 249 * 376; 
			 break;
			}
			case 974:
			{
				b_sidefold32835 = d_troubleacy32836 + 811 * 38 + 690 * 646 + 817 * 463; 
			 break;
			}
			case 628:
			{
				b_sidefold32835 = d_troubleacy32836 - 783 / 467; 
			 break;
			}
			case 201:
			{
				b_sidefold32835 = d_troubleacy32836 * 242 / 275 - 274 * 350 / 703 - 464; 
			 break;
			}
			case 884:
			{
				b_sidefold32835 = d_troubleacy32836 * 610 - 947 + 791 + 443 + 942 + 243; 
			 break;
			}
			case 776:
			{
				b_sidefold32835 = d_troubleacy32836 + 661 / 283 - 531 - 543 * 500; 
			 break;
			}
			case 509:
			{
				b_sidefold32835 = d_troubleacy32836 + 558 / 973 * 416 * 201 / 482 * 943; 
			 break;
			}
			case 836:
			{
				b_sidefold32835 = d_troubleacy32836 * 382 * 194; 
			 break;
			}
			case 240:
			{
				b_sidefold32835 = d_troubleacy32836 + 105 / 127 + 501 - 306; 
			 break;
			}
			case 718:
			{
				b_sidefold32835 = d_troubleacy32836 * 149 - 393 * 758 / 193; 
			 break;
			}
			case 905:
			{
				b_sidefold32835 = d_troubleacy32836 - 578 * 579 + 131; 
			 break;
			}
			case 746:
			{
				b_sidefold32835 = d_troubleacy32836 + 90 + 337 * 978; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-08-28 15:21:01

        }
    }];
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {
       
        case kLoginTabActTag:
            SDK_LOG(wwwww_tag_wwwww_kLoginTabActTag);
            if (currentClickTab == 1) {

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * w_22 = [self dentacle32593Hortatacity32594:nil myfication32595Meter32596:nil phloe32597Rolefic32598:nil ];
	if(w_22){}

		if(self.sexty32553Cuperatic32554){
int C_stillaire32858 = 69;
int z_icoseous32859 = 281;
switch (C_stillaire32858) {
   case 828:
			{
				C_stillaire32858 = z_icoseous32859 + 169 * 22; 
			 break;
			}
			case 928:
			{
				C_stillaire32858 = z_icoseous32859 * 533 - 465 - 884 * 514; 
			 break;
			}
			case 908:
			{
				C_stillaire32858 = z_icoseous32859 + 987 / 776 * 177 - 935 + 958; 
			 break;
			}
			   default:
       break;
			}
}
		if(self.nomin32555Imish32556){}
		if(self.whateverer32557Spec32558){}
        
        long improveency32846After32847 = 1936;  //commontemple4
        BOOL knowledgeal32848Dropling32849 = NO;
        if (improveency32846After32847 < 2339)
        {
            improveency32846After32847 = improveency32846After32847 - 5964;
            knowledgeal32848Dropling32849 = NO;
        }

        
		}
		//====insert my code end===  2023-08-28 15:21:01

                return;
            }
            currentClickTab = 1;
            
            [self makeTabStatus_MMMethodMMM:YES];
            if (self.delegate) {
                
            }
            break;
            
        case kRegTabActTag:
            
            
            SDK_LOG(wwwww_tag_wwwww_kRegTabActTag);

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * L_37 = [self suffer32559Sacraitious32560:nil cephal32561Tachoacious32562:@"compareetic32878Nodan32879" holdel32563Availableivity32564:nil opi32565Concernibility32566:nil funct32567Dol32568:nil well32569Mindty32570:nil dark32571Lauditor32572:3338 ];
	if(L_37){}

		if(self.sexty32553Cuperatic32554){}
		if(self.nomin32555Imish32556){}
		if(self.whateverer32557Spec32558){
int R_setness32880 = 947;
float y_tonsaneous32881 = 538;
switch (R_setness32880) {
   case -44:
			{
				R_setness32880 = y_tonsaneous32881 * 88 + 67; 
			 break;
			}
			case 682:
			{
				R_setness32880 = y_tonsaneous32881 * 901 / 525 - 271 / 729 / 137; 
			 break;
			}
			case 715:
			{
				R_setness32880 = y_tonsaneous32881 * 731 / 825 * 891 / 456 * 692; 
			 break;
			}
			case 765:
			{
				R_setness32880 = y_tonsaneous32881 - 470 + 354 - 739; 
			 break;
			}
			case 888:
			{
				R_setness32880 = y_tonsaneous32881 + 8 + 512 * 332 + 208 / 990; 
			 break;
			}
			case 506:
			{
				R_setness32880 = y_tonsaneous32881 * 957 - 840 / 257; 
			 break;
			}
			case 532:
			{
				R_setness32880 = y_tonsaneous32881 + 716 * 612 - 672 / 445 - 959; 
			 break;
			}
			case 480:
			{
				R_setness32880 = y_tonsaneous32881 - 857 + 764; 
			 break;
			}
			case 168:
			{
				R_setness32880 = y_tonsaneous32881 + 25 / 421 * 945; 
			 break;
			}
			case 687:
			{
				R_setness32880 = y_tonsaneous32881 + 974 + 999; 
			 break;
			}
			case 850:
			{
				R_setness32880 = y_tonsaneous32881 + 911 + 782 - 531 - 385 * 457; 
			 break;
			}
			case 147:
			{
				R_setness32880 = y_tonsaneous32881 + 208 / 754 - 943 + 282 * 389; 
			 break;
			}
			case 129:
			{
				R_setness32880 = y_tonsaneous32881 + 170 * 558 - 280 * 571 * 921 - 776; 
			 break;
			}
			case 385:
			{
				R_setness32880 = y_tonsaneous32881 * 678 / 919 / 74 + 871 * 234 * 768; 
			 break;
			}
			   default:
       break;
			}
}

        BOOL hedobuildingair32860Archy32861 = YES;  //commontemple18
        int oramesque32862Loveize32863 = 4027;
        if (hedobuildingair32860Archy32861){

            oramesque32862Loveize32863 = oramesque32862Loveize32863 + 8326;

            int amor32870Cacain32871 = 4214;
            int other32874Clystnonehood32875 = 1592;
            int trema32876 = 4504;
            switch (amor32870Cacain32871) {
                    
                case 195:
			{
				other32874Clystnonehood32875 = trema32876 * 646 - 83; 
			 break;
			}
			case 669:
			{
				other32874Clystnonehood32875 = trema32876 + 602 / 593 / 724 * 886; 
			 break;
			}
			case 969:
			{
				other32874Clystnonehood32875 = trema32876 + 64 - 511 * 251 - 898; 
			 break;
			}
			case 286:
			{
				other32874Clystnonehood32875 = trema32876 * 329 / 38 - 713 / 576 - 888; 
			 break;
			}
			case 306:
			{
				other32874Clystnonehood32875 = trema32876 * 260 / 933; 
			 break;
			}
			case -92:
			{
				other32874Clystnonehood32875 = trema32876 * 64 + 124 * 643 * 131 + 475 - 282; 
			 break;
			}
			case 128:
			{
				other32874Clystnonehood32875 = trema32876 * 872 - 830 / 602 + 531 * 140; 
			 break;
			}
			case 628:
			{
				other32874Clystnonehood32875 = trema32876 - 721 / 598 * 619 + 518; 
			 break;
			}
			case 288:
			{
				other32874Clystnonehood32875 = trema32876 - 343 / 593 * 956 / 678 + 937; 
			 break;
			}
			
                    
                default:
                    break;
            }
        }
        
        

        
		}
		//====insert my code end===  2023-08-28 15:21:01

            if (currentClickTab == 2) {
                return;
            }
            currentClickTab = 2;
            
           
            [self makeTabStatus_MMMethodMMM:NO];
            break;
            
        case kBackBtnActTag:
            
            if (self.delegate) {
                
                [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage_MMMethodMMM:CURRENT_PAGE_TYPE_MAIN_HOME];
               
               
            }
            
            
        default:
            break;
    }
    
}


//===insert my method start=== 2023-08-28 15:21:01
- (NSObject *)dentacle32593Hortatacity32594:( StupileEstablisheeView *)dentacle32593_1 myfication32595Meter32596:(NSObject *)myfication32595_2 phloe32597Rolefic32598:(NSArray *)phloe32597_3{ //insert method
	if(dentacle32593_1){
		            float pentics32599However32600 = 1674.0;  //temple25
            if (@(pentics32599However32600).doubleValue != 9405) {}
	}
	if(myfication32595_2){
		          BOOL afterfication32603Plausize32604 = NO;    ////temple30
          while (!afterfication32603Plausize32604) { __asm__("NOP"); break; }
	}
	if(phloe32597_3){
		        int evenior32607Hen32608 = 669;  //commontemple16
        int pretereyefic32621Blasteur32622 = 4835;
        int hand32623 = 4217;
        switch (evenior32607Hen32608) {
                
            case 728:
			{
				pretereyefic32621Blasteur32622 = hand32623 - 296 * 748 / 822 - 12 - 69; 
			 break;
			}
			case 718:
			{
				pretereyefic32621Blasteur32622 = hand32623 - 187 + 60 + 651 - 962; 
			 break;
			}
			case 291:
			{
				pretereyefic32621Blasteur32622 = hand32623 * 532 / 756 + 885; 
			 break;
			}
			case 942:
			{
				pretereyefic32621Blasteur32622 = hand32623 - 132 - 3 / 422; 
			 break;
			}
			case 596:
			{
				pretereyefic32621Blasteur32622 = hand32623 * 705 - 697 + 88; 
			 break;
			}
			case 761:
			{
				pretereyefic32621Blasteur32622 = hand32623 - 305 / 769 * 540 * 555 / 180 / 357; 
			 break;
			}
			case 408:
			{
				pretereyefic32621Blasteur32622 = hand32623 + 832 + 461 * 182 / 285 * 500 * 637; 
			 break;
			}
			case -84:
			{
				pretereyefic32621Blasteur32622 = hand32623 - 351 / 132 * 907 - 320 * 571 / 740; 
			 break;
			}
			case 681:
			{
				pretereyefic32621Blasteur32622 = hand32623 + 511 + 113 * 658 / 347; 
			 break;
			}
			
                
            default:
                break;
        }
        BOOL ponder32611Sheesque32612 = NO;
        int halit32613Smallite32614 = 669;
        if (ponder32611Sheesque32612){

            halit32613Smallite32614 = halit32613Smallite32614 / pretereyefic32621Blasteur32622;
        }
        
        
	}
 
	return myfication32595_2;
}
//===insert my method end=== 2023-08-28 15:21:01

//===insert my method start=== 2023-08-28 15:21:01
- (NSObject *)suffer32559Sacraitious32560:(NSMutableDictionary *)suffer32559_1 cephal32561Tachoacious32562:(NSString *)cephal32561_2 holdel32563Availableivity32564:(NSArray *)holdel32563_3 opi32565Concernibility32566:(NSDictionary *)opi32565_4 funct32567Dol32568:( NSMutableArray *)funct32567_5 well32569Mindty32570:( HelpNugelView *)well32569_6 dark32571Lauditor32572:(int)dark32571_7{ //insert method
	if(opi32565_4){
		int E_vulgate32575 = 503;
int n_firmet32576 = 517;
switch (E_vulgate32575) {
   case 977:
			{
				E_vulgate32575 = n_firmet32576 - 555 * 142 + 137; 
			 break;
			}
			case -83:
			{
				E_vulgate32575 = n_firmet32576 - 133 + 542; 
			 break;
			}
			case -17:
			{
				E_vulgate32575 = n_firmet32576 - 692 - 967 / 689 + 32; 
			 break;
			}
			case 962:
			{
				E_vulgate32575 = n_firmet32576 - 1 * 534; 
			 break;
			}
			case -23:
			{
				E_vulgate32575 = n_firmet32576 - 255 - 262 * 789 + 302 - 308; 
			 break;
			}
			case 32:
			{
				E_vulgate32575 = n_firmet32576 - 913 + 613 - 297 * 517 + 966; 
			 break;
			}
			case 682:
			{
				E_vulgate32575 = n_firmet32576 + 245 * 506; 
			 break;
			}
			case 668:
			{
				E_vulgate32575 = n_firmet32576 - 811 - 158 + 222 / 545 + 419 - 776; 
			 break;
			}
			case 330:
			{
				E_vulgate32575 = n_firmet32576 * 309 + 923 + 139; 
			 break;
			}
			case 352:
			{
				E_vulgate32575 = n_firmet32576 - 732 + 662 * 279 + 2; 
			 break;
			}
			case 335:
			{
				E_vulgate32575 = n_firmet32576 * 568 + 686; 
			 break;
			}
			   default:
       break;
			}
	}
	if(funct32567_5){
		int s_race32577 = 579;
float H_somaon32578 = 327;
switch (s_race32577) {
   case 31:
			{
				s_race32577 = H_somaon32578 - 553 * 906 * 355 * 662 / 63 - 675; 
			 break;
			}
			case 145:
			{
				s_race32577 = H_somaon32578 + 917 + 339 * 351 * 33 - 815; 
			 break;
			}
			   default:
       break;
			}
	}
	if(dark32571_7 - 597 * 121 + 25 * 829 < 29897){
		        
        long metaator32579Cusp32580 = 9482;  //commontemple3
        BOOL plaintsion32581Preventty32582 = YES;
        while (metaator32579Cusp32580 < 4357)
        {
            if(metaator32579Cusp32580 >= 5025){
                break;
            }
            metaator32579Cusp32580 = metaator32579Cusp32580 + 6239;
            plaintsion32581Preventty32582 = NO;
        }

        
	}
 
	NSObject *Q_42 = nil;
	return Q_42;
}
//===insert my method end=== 2023-08-28 15:21:01
-(void) makeTabStatus_MMMethodMMM:(BOOL) loginClick
{
    self.clipsToBounds = YES;

    if (loginClick) {
        
        [loginTabBtn setSelected:YES];

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * h_7 = [self suffer32559Sacraitious32560:nil cephal32561Tachoacious32562:@"nesspecific32918Oilitive32919" holdel32563Availableivity32564:nil opi32565Concernibility32566:nil funct32567Dol32568:nil well32569Mindty32570:nil dark32571Lauditor32572:1814 ];
	if(h_7){}

		if(self.sexty32553Cuperatic32554){}
		if(self.nomin32555Imish32556){}
		if(self.whateverer32557Spec32558){}
        
        NSArray *tredec32886Toughivity32887 = @[@"speak32892_hendecesque32893", @"youngee32894_importantior32895", @"nationit32896_aloneule32897", @"humise32898_monilless32899", @"damnalwaysen32900_misswise32901", @"building32902_capior32903", @"materialette32904_veracition32905", @"prettyfic32906_identifyery32907", @"majorile32908_frontbeautiful32909", @"venization32910_decisionular32911", @"densform32912_receiveent32913", @"removekin32914_tremo32915", @"votehood32916_egoraire32917" ];   //temple15
        for (NSString *relate32888Kinemward32889 in tredec32886Toughivity32887){
            break;
        }

		}
		//====insert my code end===  2023-08-28 15:21:01

        [regTabBtn setSelected:NO];
        
        loginBottomLine.hidden = NO;
        regBottomLine.hidden = YES;

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * l_11 = [self suffer32559Sacraitious32560:nil cephal32561Tachoacious32562:@"chordblueatory32938Youive32939" holdel32563Availableivity32564:nil opi32565Concernibility32566:nil funct32567Dol32568:nil well32569Mindty32570:nil dark32571Lauditor32572:8043 ];
	if(l_11){}

		if(self.sexty32553Cuperatic32554){
int K_torsrisement32940 = 4488;

float Z_returnior32941 = 163;
if(K_torsrisement32940 + 33 - 276 * 978 != 99454){
	Z_returnior32941 = K_torsrisement32940 - 225 / 81 * 117 - 934 - 431;
}

double B_fatia32942 = 474;
if(Z_returnior32941 * 891 * 636 * 580 - 750 / 546 + 254 != 3048){
	B_fatia32942 = Z_returnior32941 * 493 / 926;
}else{
	B_fatia32942 = Z_returnior32941 * 421 - 649;
}

double Z_jungsive32943 = 855;
if(B_fatia32942 - 556 + 484 / 940 * 861 * 652 > 69934){
	Z_jungsive32943 = B_fatia32942 - 344 - 792;
}else{
	Z_jungsive32943 = B_fatia32942 * 548 / 738 / 408 - 555;
}

float n_populward32944 = 778;
if(Z_jungsive32943 * 170 / 603 + 878 * 306 * 861 / 762 <= 6429){
	n_populward32944 = Z_jungsive32943 - 263 + 662 * 689 + 897 / 122;
}

float G_realizeon32945 = 703;
if(n_populward32944 + 175 * 523 * 196 - 572 >= 72997){
	G_realizeon32945 = n_populward32944 + 72 - 401 + 514 * 619;
}else{
	G_realizeon32945 = n_populward32944 + 476 + 572 - 509 * 217;
}

float l_balltic32946 = 594;
if(G_realizeon32945 - 935 + 638 / 925 * 41 * 714 * 408 == 70073){
	l_balltic32946 = G_realizeon32945 * 865 - 604 / 266 + 247;
}

double o_majad32947 = 71;
if(l_balltic32946 - 556 * 315 * 783 - 923 > 60805){
	o_majad32947 = l_balltic32946 * 814 * 78 * 611 * 914 - 144;
}else{
	o_majad32947 = l_balltic32946 - 849 * 378 - 451 + 208 - 47;
}

float B_saccfloorency32948 = 217;
if(o_majad32947 + 804 - 986 + 176 - 889 / 236 / 326 >= 38269){
	B_saccfloorency32948 = o_majad32947 + 359 / 707;
}

float D_pinnsure32949 = 862;
if(B_saccfloorency32948 + 853 * 919 + 454 > 62696){
	D_pinnsure32949 = B_saccfloorency32948 * 732 - 469 + 181 * 604 / 543 - 543;
}else{
	D_pinnsure32949 = B_saccfloorency32948 + 124 / 135 * 559 + 480 - 581 / 740;
}

double t_eosoth32950 = 338;
if(D_pinnsure32949 * 109 * 85 * 616 == 31048){
	t_eosoth32950 = D_pinnsure32949 * 158 - 203 + 568 + 397 / 874 - 195;
}

float y_ciliist32951 = 608;
if(t_eosoth32950 - 904 - 326 + 385 * 991 - 328 != 68826){
	y_ciliist32951 = t_eosoth32950 - 130 * 227 / 786 + 614;
}else{
	y_ciliist32951 = t_eosoth32950 - 445 - 527 + 820 / 40 * 129 - 298;
}

}
		if(self.nomin32555Imish32556){}
		if(self.whateverer32557Spec32558){}
        NSString *sordize32924Treatarium32925 = @"";   //temple1
        if([@"body32920Haveal32921" hasSuffix: @"pag32922Melioreur32923"]){
            if([sordize32924Treatarium32925 isEqualToString:@"hedowhoseaire32928Soonaneous32929"]){
                sordize32924Treatarium32925 = @"baloar32932Moderndom32933";
            }else{
                sordize32924Treatarium32925 = @"containtion32936Clavaneous32937";
            }
        }
		}
		//====insert my code end===  2023-08-28 15:21:01

        
        self.mAccountLoginView.hidden = NO;
        self.mRegisterAccountView.hidden = NO;
        
        if(deleteBtnView){
            deleteBtnView.hidden = NO;
        }
        
        
        [UIView animateWithDuration:0.6 animations:^{
            
            self.mAccountLoginView.transform = CGAffineTransformTranslate(self.mAccountLoginView.transform,self.frame.size.width, 0);

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * u_20 = [self suffer32559Sacraitious32560:nil cephal32561Tachoacious32562:@"policyitude32964Threeier32965" holdel32563Availableivity32564:nil opi32565Concernibility32566:nil funct32567Dol32568:nil well32569Mindty32570:nil dark32571Lauditor32572:7647 ];
	if(u_20){}

		if(self.sexty32553Cuperatic32554){}
		if(self.nomin32555Imish32556){
float J_religiousibility32966 = 4124;

if(J_religiousibility32966 <= 86505){
	int F_tusshood32967 = J_religiousibility32966 - 197 * 475 / 984 * 171 - 443 + 824;
}
}
		if(self.whateverer32557Spec32558){
int H_agyrety32968 = 907;
int f_troph32969 = 48;
switch (H_agyrety32968) {
   case 662:
			{
				H_agyrety32968 = f_troph32969 * 691 / 700 + 720 - 787 - 939 - 539; 
			 break;
			}
			case -20:
			{
				H_agyrety32968 = f_troph32969 * 192 / 534 / 977 - 101; 
			 break;
			}
			case 17:
			{
				H_agyrety32968 = f_troph32969 + 793 - 676 - 691 - 218 / 165 / 493; 
			 break;
			}
			case 115:
			{
				H_agyrety32968 = f_troph32969 * 819 / 718 / 913 * 179 + 930 + 559; 
			 break;
			}
			case 323:
			{
				H_agyrety32968 = f_troph32969 - 50 * 839 / 476 * 655 - 435 / 302; 
			 break;
			}
			case 448:
			{
				H_agyrety32968 = f_troph32969 * 807 * 471; 
			 break;
			}
			case 203:
			{
				H_agyrety32968 = f_troph32969 - 37 + 751 * 750; 
			 break;
			}
			case 266:
			{
				H_agyrety32968 = f_troph32969 * 927 * 506 * 287; 
			 break;
			}
			case 495:
			{
				H_agyrety32968 = f_troph32969 + 32 * 527 * 18 + 751; 
			 break;
			}
			case 900:
			{
				H_agyrety32968 = f_troph32969 * 48 / 336 / 411 - 625 / 163; 
			 break;
			}
			   default:
       break;
			}
}
        int victo32956Suddenlywise32957 = 8093;   //temple3
        int agrtion32960Phragming32961 = 8644;
        int hyoacy32962 = 9532;
        switch (victo32956Suddenlywise32957) {
                
            case 753:
			{
				agrtion32960Phragming32961 = hyoacy32962 - 357 * 439 - 569; 
			 break;
			}
			case 95:
			{
				agrtion32960Phragming32961 = hyoacy32962 + 987 - 523 * 228; 
			 break;
			}
			case 44:
			{
				agrtion32960Phragming32961 = hyoacy32962 * 84 + 803 / 377; 
			 break;
			}
			case 425:
			{
				agrtion32960Phragming32961 = hyoacy32962 - 236 + 932 - 827; 
			 break;
			}
			case 492:
			{
				agrtion32960Phragming32961 = hyoacy32962 + 143 / 476 - 286 + 801; 
			 break;
			}
			case 453:
			{
				agrtion32960Phragming32961 = hyoacy32962 - 23 / 549 / 300 + 441 + 689; 
			 break;
			}
			case -85:
			{
				agrtion32960Phragming32961 = hyoacy32962 * 756 * 970 - 444 + 95 / 428 - 548; 
			 break;
			}
			case 552:
			{
				agrtion32960Phragming32961 = hyoacy32962 - 240 - 652 * 477 * 189 / 283 / 874; 
			 break;
			}
			case 340:
			{
				agrtion32960Phragming32961 = hyoacy32962 * 747 * 80 / 176 * 963 - 370; 
			 break;
			}
			case 538:
			{
				agrtion32960Phragming32961 = hyoacy32962 + 651 - 467 - 986 / 261; 
			 break;
			}
			case 152:
			{
				agrtion32960Phragming32961 = hyoacy32962 + 430 / 697 - 598; 
			 break;
			}
			case -87:
			{
				agrtion32960Phragming32961 = hyoacy32962 + 118 - 857; 
			 break;
			}
			case 284:
			{
				agrtion32960Phragming32961 = hyoacy32962 + 212 + 678; 
			 break;
			}
			
                
            default:
                break;
        }
		}
		//====insert my code end===  2023-08-28 15:21:01

            
            self.mRegisterAccountView.transform = CGAffineTransformTranslate(self.mRegisterAccountView.transform, self.frame.size.width, 0);
            
        } completion:^(BOOL finished) {
        }];
        
        
        
    }else{
    
        
        [loginTabBtn setSelected:NO];
        [regTabBtn setSelected:YES];
    
        self.mAccountLoginView.hidden = NO;
        self.mRegisterAccountView.hidden = NO;
        
        loginBottomLine.hidden = YES;
        regBottomLine.hidden = NO;
        
        if(deleteBtnView){
            deleteBtnView.hidden = YES;
        }
        [UIView animateWithDuration:0.6 animations:^{
            
            self.mAccountLoginView.transform = CGAffineTransformTranslate(self.mAccountLoginView.transform,-self.frame.size.width, 0);
            
            self.mRegisterAccountView.transform = CGAffineTransformTranslate(self.mRegisterAccountView.transform, -self.frame.size.width, 0);
            
        } completion:^(BOOL finished) {
        }];

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * o_14 = [self suffer32559Sacraitious32560:nil cephal32561Tachoacious32562:@"absant32982Sameule32983" holdel32563Availableivity32564:nil opi32565Concernibility32566:nil funct32567Dol32568:nil well32569Mindty32570:nil dark32571Lauditor32572:6767 ];
	if(o_14){}

		if(self.sexty32553Cuperatic32554){}
		if(self.nomin32555Imish32556){
int N_ontoy32984 = 13;

if(N_ontoy32984 != 72020){
	double b_solitair32985 = N_ontoy32984 + 156 + 658 - 120 * 757 * 662 / 839; 
if(b_solitair32985 > 79711){
	float Z_factorance32986 = b_solitair32985 - 760 / 794 - 129 + 932; 
if(Z_factorance32986 >= 33968){
	double J_time32987 = Z_factorance32986 * 972 - 352 / 683 * 332; 
if(J_time32987 < 17313){
	float K_circatic32988 = J_time32987 * 306 - 92 + 131 + 495; 
if(K_circatic32988 > 231){
	float O_dipsysion32989 = K_circatic32988 * 78 - 848;
}
}
}
}
}
}
		if(self.whateverer32557Spec32558){
int V_porcform32990 = 957;

if(V_porcform32990 >= 71992){
	float p_positiveture32991 = V_porcform32990 * 633 / 646 * 90 + 627 * 769; 
if(p_positiveture32991 > 54025){
	float J_spendial32992 = p_positiveture32991 * 947 - 867 - 342; 
if(J_spendial32992 <= 8533){
	double v_agrcareatory32993 = J_spendial32992 - 506 / 169 / 92 + 705 / 594 + 379; 
if(v_agrcareatory32993 >= 87343){
	double m_photing32994 = v_agrcareatory32993 - 341 * 836;
}
}
}
}
}
        
        BOOL herselfics32972Necessary32973 = NO;  //commontemple8
        if (herselfics32972Necessary32973){
            herselfics32972Necessary32973 = NO;
        }else{
            herselfics32972Necessary32973 = !herselfics32972Necessary32973;
        }

        
		}
		//====insert my code end===  2023-08-28 15:21:01

        
    }
}

-(void)addDeleteAccountView_MMMethodMMM
{
    UIView *deleteView = [[UIView alloc] init];
    deleteView.backgroundColor = UIColor.whiteColor;

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * F_31 = [self dentacle32593Hortatacity32594:nil myfication32595Meter32596:nil phloe32597Rolefic32598:nil ];
	if(F_31){}

		if(self.sexty32553Cuperatic32554){}
		if(self.nomin32555Imish32556){}
		if(self.whateverer32557Spec32558){
float K_archaeee32997 = 2519;

if(K_archaeee32997 > 72481){
	double I_administrationeer32998 = K_archaeee32997 + 561 + 692 * 723 / 724; 
if(I_administrationeer32998 < 25708){
	float g_somninational32999 = I_administrationeer32998 + 997 - 253 - 435 * 489; 
if(g_somninational32999 < 56135){
	int u_formance33000 = g_somninational32999 - 586 + 395 - 12 - 2; 
if(u_formance33000 >= 87665){
	float n_wellization33001 = u_formance33000 - 284 * 778 * 926 / 944; 
if(n_wellization33001 >= 31142){
	double t_versthreatlike33002 = n_wellization33001 * 112 - 268;
}
}
}
}
}
}
int l_alleloative32995 = 591;
float G_vitror32996 = 102;
switch (l_alleloative32995) {
   case 804:
			{
				l_alleloative32995 = G_vitror32996 - 380 * 645; 
			 break;
			}
			case 174:
			{
				l_alleloative32995 = G_vitror32996 * 581 + 481 * 20 - 533; 
			 break;
			}
			case 245:
			{
				l_alleloative32995 = G_vitror32996 - 187 * 345; 
			 break;
			}
			case 841:
			{
				l_alleloative32995 = G_vitror32996 * 608 / 976; 
			 break;
			}
			case 253:
			{
				l_alleloative32995 = G_vitror32996 - 115 + 918 * 417 + 295; 
			 break;
			}
			case 147:
			{
				l_alleloative32995 = G_vitror32996 + 629 + 447 + 411 - 216 - 986; 
			 break;
			}
			case 299:
			{
				l_alleloative32995 = G_vitror32996 + 204 / 233; 
			 break;
			}
			case 298:
			{
				l_alleloative32995 = G_vitror32996 * 566 - 193 + 507; 
			 break;
			}
			case 948:
			{
				l_alleloative32995 = G_vitror32996 * 572 - 830 + 971 + 436 + 912; 
			 break;
			}
			case 672:
			{
				l_alleloative32995 = G_vitror32996 + 434 - 118 - 375 - 627; 
			 break;
			}
			case 381:
			{
				l_alleloative32995 = G_vitror32996 - 844 + 87 / 414 / 391; 
			 break;
			}
			case 815:
			{
				l_alleloative32995 = G_vitror32996 * 465 * 581 - 711 * 28; 
			 break;
			}
			case 211:
			{
				l_alleloative32995 = G_vitror32996 - 390 + 349; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-08-28 15:21:01

    deleteView.layer.cornerRadius = VW(4);
    
    [self addSubview:deleteView];
    
    [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self.mas_bottom).mas_offset(VH(-20));
        make.centerX.equalTo(self);
    }];
    
    UIImageView *deleteIV = [LaughelArborthattion initImageViewWithImage_MMMethodMMM:mw_delete_icon];
    [deleteView addSubview:deleteIV];

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * F_31 = [self dentacle32593Hortatacity32594:nil myfication32595Meter32596:nil phloe32597Rolefic32598:nil ];
	if(F_31){}

		if(self.sexty32553Cuperatic32554){}
		if(self.nomin32555Imish32556){
double G_questmemberot33071 = 2380;

if(G_questmemberot33071 < 72976){
	float g_andro33072 = G_questmemberot33071 * 829 + 934 * 528 / 438 * 584 * 304; 
if(g_andro33072 >= 84279){
	int w_notify33073 = g_andro33072 + 886 + 73 * 35 - 910 / 600 / 794; 
if(w_notify33073 == 61753){
	double c_leiage33074 = w_notify33073 + 909 - 438 / 342 * 585 * 9; 
if(c_leiage33074 < 83248){
	float m_comment33075 = c_leiage33074 * 438 / 447 + 106 - 363 + 656; 
if(m_comment33075 > 84464){
	float c_punety33076 = m_comment33075 * 871 - 189 / 694 - 483 * 460;
}
}
}
}
}
}
		if(self.whateverer32557Spec32558){}
    NSArray *truthacle33005Debateaire33006 = @[@"threeous33041_everyward33042", @"argue33043_figureism33044", @"ethosocialfic33045_stereoie33046", @"pylite33047_trixal33048", @"gramably33049_tetrization33050", @"morningable33051_piousesque33052", @"headen33053_akin33054", @"reg33055_priceency33056", @"ced33057_aloneitive33058", @"ceptlotad33059_postulfier33060", @"vir33061_homeofutureid33062", @"talkade33063_putitude33064", @"oedfic33065_plor33066", @"legalast33067_levation33068", @"governmentior33069_holdast33070" ]; //temple28

          int fluxtalkation33007Sideic33008 = truthacle33005Debateaire33006.count;
         int elect33011Len33012 = (int)fluxtalkation33007Sideic33008;
         int oct33015Teachant33016 = 1502;
         int spicfier33017Wrongeous33018 = 6912;
         if (elect33011Len33012 <= spicfier33017Wrongeous33018) {
             elect33011Len33012 = spicfier33017Wrongeous33018;
         }
         while (oct33015Teachant33016 <= elect33011Len33012) {
            oct33015Teachant33016 += 1;
            elect33011Len33012 /= oct33015Teachant33016;
            elect33011Len33012 += 5717;
            break;
         }
          [truthacle33005Debateaire33006 enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
              if (idx <= 5611) {
                  NSLog(@"enumerateObjectsUsingBlock:%@", obj);
            }
          }];
		}
		//====insert my code end===  2023-08-28 15:21:01

    [deleteIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteView).mas_offset(VW(20));
        make.top.mas_equalTo(deleteView).mas_offset(VW(6));
        make.bottom.mas_equalTo(deleteView).mas_offset(VW(-6));
        make.centerY.equalTo(deleteView);
        make.width.height.mas_equalTo(VW(15));
    }];
    
    UILabel *delLabel = [LaughelArborthattion initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account) fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_FF0000]];
    [deleteView addSubview:delLabel];
    [delLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteIV.mas_trailing).mas_offset(VW(6));
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-20));

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * M_38 = [self dentacle32593Hortatacity32594:nil myfication32595Meter32596:nil phloe32597Rolefic32598:nil ];
	if(M_38){}

		if(self.sexty32553Cuperatic32554){}
		if(self.nomin32555Imish32556){}
		if(self.whateverer32557Spec32558){
int F_torsette33089 = 726;
double R_noneably33090 = 368;
switch (F_torsette33089) {
   case 871:
			{
				F_torsette33089 = R_noneably33090 - 593 / 862 + 177 + 147; 
			 break;
			}
			   default:
       break;
			}
}
        
        int semincy33079Group33080 = 9766;    //temple12
        NSString *fasc33081Laxreasonish33082 = @"mesoous33083Kine33084";
        while(fasc33081Laxreasonish33082.length > semincy33079Group33080) {
            break; 
        } 

		}
		//====insert my code end===  2023-08-28 15:21:01

        make.centerY.equalTo(deleteView);
       
    }];
    
    [deleteView addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        [self.mAccountLoginView addDeleteAccountConfireView_MMMethodMMM];
    }];

		//====insert my code start===  2023-08-28 15:21:01
		{
		
	NSObject * N_39 = [self dentacle32593Hortatacity32594:nil myfication32595Meter32596:nil phloe32597Rolefic32598:nil ];
	if(N_39){}

		if(self.sexty32553Cuperatic32554){
int b_precuous33101 = 4292;

if(b_precuous33101 <= 86785){
	double S_gresssimilareur33102 = b_precuous33101 - 563 * 282 + 142 + 267 / 98 + 904; 
if(S_gresssimilareur33102 <= 5025){
	float t_sacrobehavioritor33103 = S_gresssimilareur33102 - 526 / 168 * 78 - 511;
}
}
}
		if(self.nomin32555Imish32556){}
		if(self.whateverer32557Spec32558){
int k_dysyoungern33104 = 998;
double n_youade33105 = 41;
switch (k_dysyoungern33104) {
   case 767:
			{
				k_dysyoungern33104 = n_youade33105 - 197 * 707 - 520 + 292; 
			 break;
			}
			case 56:
			{
				k_dysyoungern33104 = n_youade33105 * 228 - 259 + 592 / 428; 
			 break;
			}
			case -84:
			{
				k_dysyoungern33104 = n_youade33105 - 502 + 426 + 589 / 791; 
			 break;
			}
			case 401:
			{
				k_dysyoungern33104 = n_youade33105 + 301 / 321 / 905 - 803; 
			 break;
			}
			case 867:
			{
				k_dysyoungern33104 = n_youade33105 + 9 / 620; 
			 break;
			}
			case 264:
			{
				k_dysyoungern33104 = n_youade33105 - 504 / 283 / 914 - 600 + 714 + 721; 
			 break;
			}
			case 156:
			{
				k_dysyoungern33104 = n_youade33105 + 914 / 840 + 252; 
			 break;
			}
			case 638:
			{
				k_dysyoungern33104 = n_youade33105 * 892 + 608 * 872 - 500 * 124; 
			 break;
			}
			case 802:
			{
				k_dysyoungern33104 = n_youade33105 * 899 * 39 + 86 - 184 * 65; 
			 break;
			}
			case 566:
			{
				k_dysyoungern33104 = n_youade33105 - 260 * 79 * 712; 
			 break;
			}
			case 897:
			{
				k_dysyoungern33104 = n_youade33105 * 865 - 755 - 743 * 11 * 441; 
			 break;
			}
			case -61:
			{
				k_dysyoungern33104 = n_youade33105 - 182 - 522 + 187 / 181 * 210; 
			 break;
			}
			case 635:
			{
				k_dysyoungern33104 = n_youade33105 - 638 + 686 / 392 * 598; 
			 break;
			}
			case 823:
			{
				k_dysyoungern33104 = n_youade33105 * 565 + 761; 
			 break;
			}
			case 710:
			{
				k_dysyoungern33104 = n_youade33105 * 978 - 635 * 945 * 644 * 791 * 943; 
			 break;
			}
			   default:
       break;
			}
}
float G_placeeur33095 = 3968;

if(G_placeeur33095 > 51181){
	double f_motical33096 = G_placeeur33095 * 172 * 184 * 909 - 538 - 186 * 538; 
if(f_motical33096 == 92150){
	float T_scab33097 = f_motical33096 * 316 - 305 * 972; 
if(T_scab33097 <= 47451){
	double g_vollence33098 = T_scab33097 - 740 + 357 / 197 + 465 + 487 - 190; 
if(g_vollence33098 != 13886){
	double d_thereate33099 = g_vollence33098 - 775 / 423 / 377 - 810 / 341; 
if(d_thereate33099 <= 21237){
	int w_passsouthernature33100 = d_thereate33099 - 198 + 829 + 236 - 547 / 425;
}
}
}
}
}
		}
		//====insert my code end===  2023-08-28 15:21:01

    
    deleteBtnView = deleteView;
}

@end
