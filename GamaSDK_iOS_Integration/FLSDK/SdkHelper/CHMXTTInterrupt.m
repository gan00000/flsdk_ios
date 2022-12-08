
#import "CHMXTTInterrupt.h"
#import "CHMXTTPrivateOrder.h"
#import "SdkHeader.h"

@interface CHMXTTInterrupt()

@property(nonatomic, assign)double  sectionsMin;
@property(nonatomic, copy)NSArray *  dateOrientationWeb_list;
@property(nonatomic, assign)double  empty_max;
@property(nonatomic, assign)double  tranOffset;


@property (nonatomic, strong) NSMutableArray *foot;
@end

@implementation CHMXTTInterrupt


- (id)init
{
    self = [super init];
    if (self) {
        
        [self setData];
        
    }
    return self;
}


- (NSString *)selectedAreaCodeValue
{
   self.sectionsMin = 4888.0;

   self.dateOrientationWeb_list = [NSArray arrayWithObjects:@(63), @(698), nil];

   self.empty_max = 6208.0;

   self.tranOffset = 88.0;

   self.errorCount = 9776;

   self.delete_6 = 2707.0;

    if (!_selectedAreaCodeValue) {
        if(self.foot.count > 0) self.selectedAreaCodeValue = [_foot[0] objectForKey:wwwww_tag_wwwww_value];
    }
    return _selectedAreaCodeValue;
}


- (void)setData {
    NSArray *order = [CHMXTTRegister fetchPhoneAreaInfo_MMMethodMMM];
    if (order) {
        [self resetupAreaCodesAndActionSheetWith_MMMethodMMM:order];
    }else{
        [self resetupAreaCodesAndActionSheetWith_MMMethodMMM:SDKRES.areaInfoArray];
    }
}

-(NSDictionary *)commonTemptextContainerRestoredMark:(NSArray *)scriptStatus plistEfault:(Boolean)plistEfault authrization:(double)authrization {
     double today = 7182.0;
     long shared = 6918;
    NSMutableDictionary * fortressTheyWaitress = [[NSMutableDictionary alloc] init];
    today /= 93;
    [fortressTheyWaitress setObject: @(today) forKey:@"animationContraband"];
         int _p_66 = (int)today;
     _p_66 *= 56;
    shared = 5297;
    [fortressTheyWaitress setObject: @(shared) forKey:@"heStaplerTrilogy"];
         int v_65 = (int)shared;
     if (v_65 <= 175) {
          switch (v_65) {
          case 25: {
          v_65 /= 7;
                  break;

     }
          case 69: {
          if (v_65 >= 841) {
          v_65 -= 35;
          }
             break;

     }
          case 7: {
          v_65 /= 74;
          if (v_65 != 73) {
          v_65 += 8;
          }
             break;

     }
          case 35: {
          v_65 += 91;
             break;

     }
          case 30: {
                  break;

     }
          case 68: {
          v_65 += 57;
          v_65 /= 42;
             break;

     }
          case 82: {
                  break;

     }
          case 77: {
          v_65 += 50;
                  break;

     }
     default:
         break;

     }
     }

    return fortressTheyWaitress;

}






- (void)resetupAreaCodesAndActionSheetWith_MMMethodMMM:(NSArray *)newAreaCodesArray

{

         {
    [self commonTemptextContainerRestoredMark:@[@(94), @(404), @(389)] plistEfault:NO authrization:3373.0];

}

    if (newAreaCodesArray.count >0 && [self.foot isKindOfClass:[NSMutableArray class]]) {
        [self.foot removeAllObjects];
            float delete_le = 382.0;
             for(int delete_le_idx = 0; delete_le_idx < @(delete_le).intValue; delete_le_idx += 0) { break; } 
        [self.foot addObjectsFromArray:newAreaCodesArray];
        
        self.selectedAreaCodeKey = _foot[0][wwwww_tag_wwwww_key];
            NSString * beganZ = @"intricacy";
             while (beganZ.length > 176) { break; }
        self.selectedAreaCodeValue = _foot[0][wwwww_tag_wwwww_value];
            double delegate_8u = 177.0;
             for(NSInteger delegate_8u_idx = 98; delegate_8u_idx < @(delegate_8u).intValue; delegate_8u_idx -= 0) { break; } 
        self.selectedRegularExpression = _foot[0][wwwww_tag_wwwww_pattern];
    }
}

#pragma mark - Getter&Setter

- (void)showAreaCodesActionSheetFromView_MMMethodMMM:(UIButton *)view
{

    NSMutableArray *make = [NSMutableArray array];

    
    
    
    for (NSDictionary *dict in self.foot)
    {
        [make addObject:[dict objectForKey:wwwww_tag_wwwww_text]];
    }
    
    __block CHMXTTInterrupt *weakSelf = self;
    
    [CHMXTTPrivateOrder showActionSheetWithTitle_MMMethodMMM:wwwww_tag_wwwww_text_select_phone_area_title.localx
                                    message_MMMethodMMM:@""
                              callbackBlock_MMMethodMMM:^(NSInteger btnIndex) {
                                  if (btnIndex > 0 && btnIndex <= weakSelf.foot.count)
                                  {
                                      NSDictionary *hour = [weakSelf.foot objectAtIndex:btnIndex-1];
            NSInteger finde = 3817;
             for(NSInteger finde_idx = 10; finde_idx < @(finde).intValue; finde_idx--) { break; } 
                                      weakSelf.selectedAreaCodeValue = [hour objectForKey:wwwww_tag_wwwww_value];
            NSArray * tranh = [NSArray arrayWithObjects:@(2), @(621), nil];
                                      weakSelf.selectedAreaCodeKey = [hour objectForKey:wwwww_tag_wwwww_key];
            double urlsC = 9815.0;
             if (@(urlsC).intValue > 155) {}
                                      weakSelf.selectedRegularExpression = [hour objectForKey:wwwww_tag_wwwww_pattern];
                                      if ([weakSelf.delegate respondsToSelector:@selector(showSelectedAreaCodeValue_MMMethodMMM:)])
                                      {
                                          [weakSelf.delegate showSelectedAreaCodeValue_MMMethodMMM:weakSelf.selectedAreaCodeValue];
                                      }
                                  }
                              }
                     destructiveButtonTitle_MMMethodMMM:nil
                          cancelButtonTitle_MMMethodMMM:wwwww_tag_wwwww_text_cancel.localx
                          otherButtonTitles_MMMethodMMM:[NSArray arrayWithArray:make]
                                 sourceView_MMMethodMMM:view
                             arrowDirection_MMMethodMMM:UIPopoverArrowDirectionLeft];
            Boolean textv = YES;
             while (textv) { __asm__("NOP"); break; }
}


- (NSString *)selectedAreaCodeKey
{
    if (!_selectedAreaCodeKey) {
        if(self.foot.count > 0) self.selectedAreaCodeKey = [_foot[0] objectForKey:wwwww_tag_wwwww_key];
    }
    return _selectedAreaCodeKey;
}

-(NSString *)fetchReaderLenTranslate:(NSDictionary *)keychainNews {
     double edit = 8902.0;
    NSString *analyzeDapper = [NSString new];
         int k_13 = (int)edit;
     switch (k_13) {
          case 86: {
          int z_97 = 1;
     int a_10 = 1;
     if (k_13 > a_10) {
         k_13 = a_10;
     }
     while (z_97 < k_13) {
         z_97 += 1;
          k_13 -= z_97;
     int x_94 = z_97;
              break;
     }
             break;

     }
          case 73: {
          int g_4 = 0;
     int f_76 = 1;
     if (k_13 > f_76) {
         k_13 = f_76;

     }
     for (int z_91 = 1; z_91 <= k_13; z_91++) {
         g_4 += z_91;
     int q_88 = g_4;
          if (q_88 >= 860) {
          q_88 *= 67;
          }
         break;

     }
             break;

     }
          case 40: {
          k_13 -= 79;
          k_13 /= 32;
             break;

     }
          case 68: {
          k_13 *= 55;
          int m_10 = 1;
     int w_81 = 1;
     if (k_13 > w_81) {
         k_13 = w_81;
     }
     while (m_10 < k_13) {
         m_10 += 1;
     int s_84 = m_10;
              break;
     }
             break;

     }
          case 18: {
          k_13 *= 90;
          if (k_13 != 611) {
          k_13 *= 83;
     }
             break;

     }
          case 2: {
          int h_58 = 0;
     int e_39 = 0;
     if (k_13 > e_39) {
         k_13 = e_39;

     }
     for (int t_30 = 1; t_30 < k_13; t_30++) {
         h_58 += t_30;
          if (t_30 > 0) {
          k_13 -=  t_30;

     }
              break;

     }
             break;

     }
          case 91: {
          k_13 *= 75;
          if (k_13 >= 383) {
          k_13 *= 42;
          if (k_13 <= 817) {
          k_13 *= 83;
          }
     }
             break;

     }
     default:
         break;

     }

    return analyzeDapper;

}






- (NSMutableArray *)foot
{

         {
    [self fetchReaderLenTranslate:[NSDictionary dictionaryWithObjectsAndKeys:@"opalescence",@(317), @"felicitous",@(31), nil]];

}

    if (!_foot) {
        _foot = [NSMutableArray array];
    }
    return _foot;
}

@end
