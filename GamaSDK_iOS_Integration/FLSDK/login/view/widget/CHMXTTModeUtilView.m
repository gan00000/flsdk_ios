
#import "CHMXTTModeUtilView.h"
#import "CHMXTTHourCell.h"
#import "CHMXTTRegister.h"


static  NSString *AccountListViewCellID = @"AccountListViewCellID";

@interface CHMXTTModeUtilView()<UITableViewDelegate, UITableViewDataSource>
@property(nonatomic, assign)int  value_idx;
@property(nonatomic, assign)float  color_size;




    
@end

@implementation CHMXTTModeUtilView{
    
    
    
}

-(UILabel *)insertFatuOccurrencesLabel:(NSArray *)dataArea firebase:(float)firebase guestSuccess:(NSArray *)guestSuccess {
     double roleValues = 3456.0;
     double createThird = 349.0;
    UILabel * veraciousAttach = [[UILabel alloc] initWithFrame:CGRectZero];
         int v_67 = (int)roleValues;
     v_67 *= 12;
         int h_45 = (int)createThird;
     int f_60 = 1;
     int k_75 = 0;
     if (h_45 > k_75) {
         h_45 = k_75;
     }
     while (f_60 <= h_45) {
         f_60 += 1;
     int c_41 = f_60;
          switch (c_41) {
          case 76: {
          if (c_41 > 104) {
          }
             break;

     }
          case 80: {
          c_41 += 61;
                  break;

     }
     default:
         break;

     }
         break;
     }
    veraciousAttach.frame = CGRectMake(314, 57, 0, 0);
    veraciousAttach.alpha = 0.7;
    veraciousAttach.backgroundColor = [UIColor colorWithRed:161 / 255.0 green:15 / 255.0 blue:218 / 255.0 alpha:0.3];
    veraciousAttach.textAlignment = NSTextAlignmentLeft;
    veraciousAttach.font = [UIFont systemFontOfSize:17];
    veraciousAttach.text = @"";
    veraciousAttach.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];

    return veraciousAttach;

}







- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{

         {
UILabel * obeseMaintain = [self insertFatuOccurrencesLabel:@[@(7200)] firebase:1927.0 guestSuccess:[NSArray arrayWithObjects:[NSArray arrayWithObjects:@(611), @(152), @(996), nil], nil]];

      int obeseMaintain_tag = obeseMaintain.tag;
     int h_22 = (int)obeseMaintain_tag;
     int t_90 = 1;
     int q_8 = 0;
     if (h_22 > q_8) {
         h_22 = q_8;
     }
     while (t_90 <= h_22) {
         t_90 += 1;
          h_22 -= t_90;
     int e_99 = t_90;
          int y_50 = 0;
     int l_97 = 0;
     if (e_99 > l_97) {
         e_99 = l_97;

     }
     for (int g_90 = 0; g_90 < e_99; g_90++) {
         y_50 += g_90;
     int a_60 = y_50;
              break;

     }
         break;
     }
      [self addSubview: obeseMaintain];


}

    if (!self.accountDataList) {
        return 0;
    }
    return self.accountDataList.count;
}

-(Boolean)setHorizontalSession:(long)beginFinish adapt:(NSDictionary *)adapt {
     double coreCommon = 2657.0;
    BOOL earn = NO;
    coreCommon = 1925;
    earn = coreCommon > 80;
         int c_97 = (int)coreCommon;
     c_97 -= 73;

    return earn;

}






- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

         {
Boolean replicaIneffectiveness = [self setHorizontalSession:7032 adapt:@{@"unconscionable":@(383)}];

      if (replicaIneffectiveness) {
          NSLog(@"ok");
      }


}
 
    
    AccountModel *named = self.accountDataList[indexPath.row];
            NSString * m_image9 = @"actually";
             if ([m_image9 isEqualToString:@"X"]) {}
    CHMXTTHourCell *todayCell = [tableView dequeueReusableCellWithIdentifier:AccountListViewCellID forIndexPath:indexPath];
    
    NSString *helper = named.userId;
            NSArray * gesturec = [NSArray arrayWithObjects:@(130), @(253), nil];
             while (gesturec.count > 112) { break; }
    NSString *time_yo = mw_smail_icon;
    
    if ([named.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        helper = named.account;
            float private_pdD = 3703.0;
             while (@(private_pdD).intValue == 92) { break; }
        time_yo = mw_smail_icon;
        
    }else if ([named.loginType isEqualToString:LOGIN_TYPE_FB]){
        time_yo = fb_smail_icon;
       
    }else if ([named.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        time_yo = google_smail_icon;
        
    }else if ([named.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        time_yo = guest_smail_icon;
        
    }else if ([named.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        time_yo = apple_smail_icon;
    }else if ([named.loginType isEqualToString:LOGIN_TYPE_LINE]){
        time_yo = line_smail_icon;
    }
    todayCell.accountUILabel.text = helper;
            double purchasec = 1540.0;
             for(int purchasec_idx = 37; purchasec_idx < @(purchasec).intValue; purchasec_idx--) { break; } 
    todayCell.iconImageView.image = [UIImage res_imageNamed_MMMethodMMM:time_yo];
    
    kWeakSelf
    todayCell.mItemViewClickHander = ^(NSInteger tag) {
                
        if (tag == kMoreAccountDeleteActTag) {
            [[CHMXTTEfault share] removeAccountByUserId_MMMethodMMM:named.userId];
            
            [self.accountDataList removeAllObjects];
            Boolean textH = NO;
             while (textH) { __asm__("NOP"); break; }
            [self.accountDataList addObjectsFromArray:[[CHMXTTEfault share] getAccountModels_MMMethodMMM]];
            
            [tableView reloadData];
            
            if (self.mAccountModelClickHander) {
                self.mAccountModelClickHander(YES, named, self.accountDataList);
            }
            
        }
    };
            NSDictionary * freex = [NSDictionary dictionaryWithObjectsAndKeys:@"grown",@(198), @"smell",@(716), nil];
             if (freex.count > 105) {}
    return todayCell;
}




- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{

    return 1;
}


#pragma mark tableview deletage

-(UIButton *)sourceUnarchiverOpenAnimationsHandledNendButton{
     double writePreferred = 5113.0;
     double boardPost = 8744.0;
     Boolean debug = NO;
    UIButton * prop = [UIButton new];
    [prop setTitle:@"file" forState:UIControlStateNormal];
    [prop setBackgroundImage:[UIImage imageNamed:@"session"] forState:UIControlStateNormal];
    prop.titleLabel.font = [UIFont systemFontOfSize:20];
    [prop setImage:[UIImage imageNamed:@"requestArea"] forState:UIControlStateNormal];
    prop.backgroundColor = [UIColor colorWithRed:181 / 255.0 green:4 / 255.0 blue:127 / 255.0 alpha:1.0];
    prop.alpha = 0.2;
    prop.frame = CGRectMake(175, 256, 0, 0);
         int temp_a_33 = (int)writePreferred;
     int l_94 = 0;
     int y_26 = 0;
     if (temp_a_33 > y_26) {
         temp_a_33 = y_26;

     }
     for (int d_65 = 0; d_65 <= temp_a_33; d_65++) {
         l_94 += d_65;
          if (d_65 > 0) {
          temp_a_33 -=  d_65;

     }
     int y_94 = l_94;
          switch (y_94) {
          case 12: {
          y_94 *= 65;
          y_94 /= 42;
             break;

     }
          case 17: {
          y_94 /= 39;
                  break;

     }
          case 72: {
          y_94 -= 44;
                  break;

     }
          case 29: {
                  break;

     }
          case 63: {
          y_94 *= 95;
             break;

     }
          case 48: {
          y_94 += 90;
                  break;

     }
          case 83: {
          y_94 /= 48;
             break;

     }
          case 100: {
                  break;

     }
          case 24: {
          y_94 -= 32;
          y_94 *= 68;
             break;

     }
     default:
         break;

     }
         break;

     }
         int tmp_u_68 = (int)boardPost;
     int m_3 = 0;
     for (int d_5 = tmp_u_68; d_5 > tmp_u_68 - 1; d_5--) {
         m_3 += d_5;
          if (d_5 > 0) {
          tmp_u_68 +=  d_5;

     }
          tmp_u_68 -= 99;
         break;

     }

    
    CGRect propFrame = prop.frame;
    propFrame.size = CGSizeMake(131, 218);
    prop.frame = propFrame;
    if (prop.alpha > 0.0) {
         prop.alpha = 0.0;
    }
    if (prop.isHidden) {
         prop.hidden = false;
    }
    if (!prop.isUserInteractionEnabled) {
         prop.userInteractionEnabled = true;
    }

    return prop;

}





-(void)addView_MMMethodMMM{

         {
UIButton * astral = [self sourceUnarchiverOpenAnimationsHandledNendButton];

      [self addSubview: astral];
      int astral_tag = astral.tag;
     int v_12 = (int)astral_tag;
     int q_97 = 1;
     int d_38 = 0;
     if (v_12 > d_38) {
         v_12 = d_38;
     }
     while (q_97 < v_12) {
         q_97 += 1;
          v_12 -= q_97;
     int e_54 = q_97;
          int e_69 = 1;
     int q_91 = 0;
     if (e_54 > q_91) {
         e_54 = q_91;
     }
     while (e_69 <= e_54) {
         e_69 += 1;
          e_54 -= e_69;
     int p_50 = e_69;
              break;
     }
         break;
     }


}

    [self addAccountListTableView_MMMethodMMM];
            NSInteger orderK = 5334;
             for(int orderK_idx = 55; orderK_idx < @(orderK).intValue; orderK_idx -= 6) { break; } 
}

-(UIImageView *)statueDaysDequeueModelsDeviceHiddenImageView:(NSArray *)perssionHttp securityDate:(NSString *)securityDate model:(double)model {
     NSString * mode = @"computerization";
     UIView * socialLable = [UIView new];
     NSString * seed = @"sensible";
     UIImageView * config = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"revival"]];
    UIImageView * eclogue = [[UIImageView alloc] init];
    eclogue.image = [UIImage imageNamed:@"callback"];
    eclogue.contentMode = UIViewContentModeScaleAspectFit;
    eclogue.animationRepeatCount = 9;
    eclogue.alpha = 0.1;
    eclogue.backgroundColor = [UIColor colorWithRed:178 / 255.0 green:127 / 255.0 blue:247 / 255.0 alpha:0.1];
    eclogue.frame = CGRectMake(305, 254, 0, 0);
    socialLable.alpha = 0.4;
    socialLable.backgroundColor = [UIColor colorWithRed:30 / 255.0 green:172 / 255.0 blue:149 / 255.0 alpha:0.7];
    socialLable.frame = CGRectMake(283, 57, 0, 0);
    
    CGRect socialLableFrame = socialLable.frame;
    socialLableFrame.size = CGSizeMake(86, 231);
    socialLable.frame = socialLableFrame;
    if (socialLable.alpha > 0.0) {
         socialLable.alpha = 0.0;
    }
    if (socialLable.isHidden) {
         socialLable.hidden = false;
    }
    if (!socialLable.isUserInteractionEnabled) {
         socialLable.userInteractionEnabled = true;
    }

    config.frame = CGRectMake(116, 212, 0, 0);
    config.alpha = 0.6;
    config.backgroundColor = [UIColor colorWithRed:70 / 255.0 green:89 / 255.0 blue:252 / 255.0 alpha:0.4];
    config.image = [UIImage imageNamed:@"line"];
    config.contentMode = UIViewContentModeScaleAspectFit;
    config.animationRepeatCount = 10;
    
    CGRect configFrame = config.frame;
    configFrame.size = CGSizeMake(260, 152);
    config.frame = configFrame;
    if (config.isHidden) {
         config.hidden = false;
    }
    if (config.alpha > 0.0) {
         config.alpha = 0.0;
    }
    if (!config.isUserInteractionEnabled) {
         config.userInteractionEnabled = true;
    }


    
    CGRect eclogueFrame = eclogue.frame;
    eclogueFrame.size = CGSizeMake(115, 153);
    eclogue.frame = eclogueFrame;
    if (eclogue.alpha > 0.0) {
         eclogue.alpha = 0.0;
    }
    if (eclogue.isHidden) {
         eclogue.hidden = false;
    }
    if (!eclogue.isUserInteractionEnabled) {
         eclogue.userInteractionEnabled = true;
    }

    return eclogue;

}






- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

         {
UIImageView * increment = [self statueDaysDequeueModelsDeviceHiddenImageView:@[@(334), @(752)] securityDate:@"westerner" model:4681.0];

      int increment_tag = increment.tag;
     int temp_w_45 = (int)increment_tag;
     temp_w_45 /= 2;
      [self addSubview: increment];


}
 
    return 40;
}

-(NSDictionary *)offGestureScrollContextAdvertiserFacebook:(Boolean)imp terms:(long)terms {
    NSMutableDictionary * happinessAfraidSwallow = [NSMutableDictionary dictionary];

    return happinessAfraidSwallow;

}






- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

         {
NSDictionary * gridironLioness = [self offGestureScrollContextAdvertiserFacebook:YES terms:1427];

      int gridironLioness_len = gridironLioness.count;
     int x_43 = (int)gridironLioness_len;
     int u_4 = 1;
     int m_49 = 1;
     if (x_43 > m_49) {
         x_43 = m_49;
     }
     while (u_4 <= x_43) {
         u_4 += 1;
          x_43 *= u_4;
         break;
     }
      [gridironLioness enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"v_bounds"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];


}
 
    SDK_LOG(@"didSelectRowAtIndexPath %ld", indexPath.row);
            double s_managerT = 5210.0;
             while (@(s_managerT).floatValue >= 89) { break; }
    AccountModel *namedM = self.accountDataList[indexPath.row];
    if (self.mAccountModelClickHander) {
        self.mAccountModelClickHander(NO,namedM, self.accountDataList);
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addView_MMMethodMMM];
    }
    return self;
}

- (void)addAccountListTableView_MMMethodMMM
{

    

    
    _accountListTableView = [[UITableView alloc] init];
            int conf0 = 7582;
             if (@(conf0).longLongValue >= 14) {}
    _accountListTableView.backgroundColor = [UIColor whiteColor];
            NSString * cellV = @"ingrained";
             if (cellV.length > 33) {}
    _accountListTableView.delegate = self;
            Boolean selectedz = NO;
             while (selectedz) { __asm__("NOP"); break; }
    _accountListTableView.dataSource = self;
            int reportE = 5079;
             if (@(reportE).doubleValue > 39) {}
    _accountListTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    
    
    
    
    [_accountListTableView registerClass:[CHMXTTHourCell class] forCellReuseIdentifier:AccountListViewCellID];
    [self addSubview:_accountListTableView];
    [_accountListTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self);
        
    }];
}

@end
