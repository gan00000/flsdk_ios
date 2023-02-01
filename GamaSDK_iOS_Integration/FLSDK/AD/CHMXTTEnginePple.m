
#import "CHMXTTEnginePple.h"
#import "SdkHeader.h"
#import "CHMXTTChangeTimer.h"

@implementation CHMXTTEnginePple

+(NSString *)unarchiveSectionReloadAccontUpdata:(NSInteger)rateFirebase {
     int ninitialize = 8449;
     float file = 606.0;
    NSMutableString *gesture = [NSMutableString new];
         int _z_39 = (int)ninitialize;
     if (_z_39 == 271) {
          _z_39 /= 85;
          switch (_z_39) {
          case 67: {
                  break;

     }
          case 39: {
          _z_39 += 26;
          _z_39 *= 4;
             break;

     }
          case 35: {
                  break;

     }
          case 87: {
                  break;

     }
          case 58: {
                  break;

     }
          case 46: {
          _z_39 += 47;
                  break;

     }
          case 8: {
          _z_39 /= 1;
          if (_z_39 <= 145) {
          _z_39 /= 93;
     }
             break;

     }
          case 63: {
          if (_z_39 == 945) {
          _z_39 /= 10;
          }
             break;

     }
          case 99: {
          if (_z_39 == 148) {
          _z_39 -= 99;
          }
             break;

     }
          case 50: {
          _z_39 /= 19;
             break;

     }
     default:
         break;

     }
     }
         int j_30 = (int)file;
     switch (j_30) {
          case 61: {
          j_30 /= 28;
          j_30 *= 99;
             break;

     }
          case 68: {
          int s_23 = 1;
     int j_94 = 0;
     if (j_30 > j_94) {
         j_30 = j_94;
     }
     while (s_23 < j_30) {
         s_23 += 1;
          j_30 -= s_23;
     int l_64 = s_23;
              break;
     }
             break;

     }
          case 28: {
          j_30 -= 13;
          int f_4 = 1;
     int k_89 = 1;
     if (j_30 > k_89) {
         j_30 = k_89;
     }
     while (f_4 <= j_30) {
         f_4 += 1;
     int u_11 = f_4;
              break;
     }
             break;

     }
          case 99: {
          j_30 += 10;
          j_30 /= 46;
             break;

     }
          case 87: {
          j_30 *= 78;
             break;

     }
          case 14: {
          j_30 *= 97;
          if (j_30 > 480) {
          }
             break;

     }
          case 25: {
          j_30 /= 33;
          int u_14 = 0;
     int y_65 = 1;
     if (j_30 > y_65) {
         j_30 = y_65;

     }
     for (int p_77 = 1; p_77 < j_30; p_77++) {
         u_14 += p_77;
     int e_1 = u_14;
              break;

     }
             break;

     }
     default:
         break;

     }

    return gesture;

}






+ (void)logWithEventName_MMMethodMMM:(NSString *)eventName parameters_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type
{

    
    NSString *userId = @"";
            double n_titles = 8553.0;

         {
    [self unarchiveSectionReloadAccontUpdata:4271];

}
             if (@(n_titles).longLongValue > 142) {}
    NSString *roleName = @"";
            double bindr = 5634.0;
             while (@(bindr).floatValue <= 181) { break; }
    NSString *roleId = @"";
    if (SDK_DATA.mLoginResponse && SDK_DATA.mLoginResponse.data && SDK_DATA.mLoginResponse.data.userId) {
        userId = SDK_DATA.mLoginResponse.data.userId ?: @"";
    }
    if (SDK_DATA.gameUserModel) {
        roleId = SDK_DATA.gameUserModel.roleID ?: @"";
            double tipsV = 7209.0;
             if (@(tipsV).integerValue > 190) {}
        roleName = SDK_DATA.gameUserModel.roleName ?: @"";
    }
    
    NSDictionary *comDic = nil;
    @try {
        comDic = @{
            wwwww_tag_wwwww_userId      : userId,
            wwwww_tag_wwwww_time        :[CHMXTTBlock getTimeStamp_MMMethodMMM],
            wwwww_tag_wwwww_role_name    :roleName,
            wwwww_tag_wwwww_role_id      :roleId,
            wwwww_tag_wwwww_idfa             :     [[CHMXTTBlock getIdfa_MMMethodMMM]       lowercaseString]? : @"",
            wwwww_tag_wwwww_uniqueId         :     [[CHMXTTBlock getGamaUUID_MMMethodMMM] lowercaseString]? : @"",
            wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
        };
        
    } @catch (NSException *exception) {
    }
    NSMutableDictionary *eventV = [NSMutableDictionary dictionaryWithDictionary:comDic];
    if (eventValues) {
        [eventV addEntriesFromDictionary:eventValues];
    }
    
    [CHMXTTColor logEventWithEventName_MMMethodMMM:eventName eventValues_MMMethodMMM:eventV type_MMMethodMMM:type];
            NSArray * interruptm = @[@(849), @(244)];
}


+ (void)logServerWithEventName_Install_MMMethodMMM
{


    if ([CHMXTTRegister isReportEventName_MMMethodMMM:SDK_LOG_EVENT_INSTALL]) {
        return;
    }
    [CHMXTTChangeTimer reportSdkEventWithEventName_MMMethodMMM:SDK_LOG_EVENT_INSTALL successBlock_MMMethodMMM:^(id responseData) {
        [CHMXTTRegister saveReportEventName_MMMethodMMM:SDK_LOG_EVENT_INSTALL];
    } errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
        
    }];
            float timerj = 6950.0;
             for(int timerj_idx = 0; timerj_idx < @(timerj).intValue; timerj_idx++) { break; } 
}


+ (void)logServerWithEventName_MMMethodMMM:(NSString *)eventName
{
    
    if ([CHMXTTRegister isReportEventName_MMMethodMMM:eventName]) {
        SDK_LOG(@"send event to sever exist, eventName=%@",eventName);
        return;
    }
    SDK_LOG(@"send event to sever, eventName=%@",eventName);
    [CHMXTTChangeTimer reportSdkEventWithEventName_MMMethodMMM:eventName successBlock_MMMethodMMM:^(id responseData) {
        [CHMXTTRegister saveReportEventName_MMMethodMMM:eventName];
        SDK_LOG(@"send event to sever success, eventName=%@",eventName);
    } errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
        
    }];
}


+ (void)logWithEventName_MMMethodMMM:(NSString *)eventName parameters_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues
{

    [self logWithEventName_MMMethodMMM:eventName parameters_MMMethodMMM:eventValues type_MMMethodMMM:(AdType_All)];
            NSString * infog = @"portray";
}
@end
