
#import "AdLogger.h"
#import "SdkHeader.h"
#import "SDKRequest.h"

@implementation AdLogger

+(NSString *)archivedStateSearch{
     float genericMoved = 6049.0;
     double thirdBegan = 3695.0;
    NSMutableString *inconsistency = [NSMutableString string];
         int _j_48 = (int)genericMoved;
     switch (_j_48) {
          case 49: {
          _j_48 /= 6;
             break;

     }
          case 13: {
          _j_48 *= 32;
          int b_63 = 0;
     int x_1 = 0;
     if (_j_48 > x_1) {
         _j_48 = x_1;

     }
     for (int e_27 = 0; e_27 < _j_48; e_27++) {
         b_63 += e_27;
          _j_48 -= e_27;
         break;

     }
             break;

     }
          case 80: {
          _j_48 += 52;
             break;

     }
          case 9: {
          _j_48 -= 63;
             break;

     }
          case 53: {
          _j_48 += 17;
          int d_66 = 1;
     int f_85 = 0;
     if (_j_48 > f_85) {
         _j_48 = f_85;
     }
     while (d_66 < _j_48) {
         d_66 += 1;
          _j_48 -= d_66;
         break;
     }
             break;

     }
          case 42: {
          _j_48 -= 59;
          _j_48 *= 55;
             break;

     }
          case 78: {
          _j_48 -= 88;
          int q_49 = 0;
     for (int e_73 = _j_48; e_73 >= _j_48 - 1; e_73--) {
         q_49 += e_73;
     int i_23 = q_49;
          switch (i_23) {
          case 86: {
          i_23 += 70;
          i_23 /= 27;
             break;

     }
          case 8: {
          i_23 -= 74;
                  break;

     }
          case 70: {
          i_23 += 19;
             break;

     }
          case 84: {
                  break;

     }
          case 98: {
                  break;

     }
          case 6: {
                  break;

     }
          case 47: {
                  break;

     }
     default:
         break;

     }
         break;

     }
             break;

     }
     default:
         break;

     }
         int tmp_a_40 = (int)thirdBegan;
     switch (tmp_a_40) {
          case 40: {
          tmp_a_40 -= 87;
          tmp_a_40 -= 74;
             break;

     }
          case 93: {
          tmp_a_40 -= 31;
          tmp_a_40 /= 13;
             break;

     }
          case 51: {
          tmp_a_40 /= 88;
          int a_49 = 0;
     int w_99 = 0;
     if (tmp_a_40 > w_99) {
         tmp_a_40 = w_99;

     }
     for (int i_11 = 1; i_11 <= tmp_a_40; i_11++) {
         a_49 += i_11;
          if (i_11 > 0) {
          tmp_a_40 -=  i_11;

     }
          tmp_a_40 += 55;
         break;

     }
             break;

     }
          case 69: {
          tmp_a_40 -= 3;
          int r_90 = 1;
     int q_17 = 0;
     if (tmp_a_40 > q_17) {
         tmp_a_40 = q_17;
     }
     while (r_90 < tmp_a_40) {
         r_90 += 1;
     int i_35 = r_90;
          switch (i_35) {
          case 81: {
          i_35 /= 82;
             break;

     }
          case 47: {
          i_35 *= 62;
             break;

     }
          case 17: {
          i_35 *= 44;
          i_35 /= 13;
             break;

     }
          case 39: {
          i_35 /= 8;
                  break;

     }
          case 79: {
          i_35 /= 65;
          i_35 += 25;
             break;

     }
     default:
         break;

     }
         break;
     }
             break;

     }
          case 16: {
          tmp_a_40 -= 17;
          if (tmp_a_40 != 282) {
          tmp_a_40 *= 2;
     }
             break;

     }
     default:
         break;

     }

    return inconsistency;

}






+ (void)logWithEventName_MMMethodMMM:(NSString *)eventName parameters_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues
{

         {
    [self archivedStateSearch];

}

    [self logWithEventName_MMMethodMMM:eventName parameters_MMMethodMMM:eventValues type_MMMethodMMM:(AdType_All)];
            NSArray * beganw = [NSArray arrayWithObjects:@(795), @(489), @(707), nil];
             if (beganw.count > 113) {}
}


+ (void)logWithEventName_MMMethodMMM:(NSString *)eventName parameters_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type
{

    
    NSString *userId = @"";
            int rrorl = 8134;
             while (@(rrorl).doubleValue <= 27) { break; }
    NSString *roleName = @"";
            int backgroundC = 1216;
             if (@(backgroundC).integerValue > 13) {}
    NSString *roleId = @"";
    if (SDK_DATA.mLoginResponse && SDK_DATA.mLoginResponse.data && SDK_DATA.mLoginResponse.data.userId) {
        userId = SDK_DATA.mLoginResponse.data.userId ?: @"";
    }
    if (SDK_DATA.gameUserModel) {
        roleId = SDK_DATA.gameUserModel.roleID ?: @"";
            NSString * implI = @"production";
             if (implI.length > 192) {}
        roleName = SDK_DATA.gameUserModel.roleName ?: @"";
    }
    
    NSDictionary *comDic = nil;
    @try {
        comDic = @{
            wwwww_tag_wwwww_userId      : userId,
            wwwww_tag_wwwww_time        :[SUtil getTimeStamp_MMMethodMMM],
            wwwww_tag_wwwww_role_name    :roleName,
            wwwww_tag_wwwww_role_id      :roleId,
            wwwww_tag_wwwww_idfa             :     [[SUtil getIdfa_MMMethodMMM]       lowercaseString]? : @"",
            wwwww_tag_wwwww_uniqueId         :     [[SUtil getGamaUUID_MMMethodMMM] lowercaseString]? : @"",
            wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
        };
        
    } @catch (NSException *exception) {
    }
    NSMutableDictionary *eventV = [NSMutableDictionary dictionaryWithDictionary:comDic];
    if (eventValues) {
        [eventV addEntriesFromDictionary:eventValues];
    }
    
    [AdDelegate logEventWithEventName_MMMethodMMM:eventName eventValues_MMMethodMMM:eventV type_MMMethodMMM:type];
            NSString * downx = @"literary";
}


+ (void)logServerWithEventName_Install_MMMethodMMM
{


    if ([SdkUtil isReportEventName_MMMethodMMM:SDK_LOG_EVENT_INSTALL]) {
        return;
    }
    [SDKRequest reportSdkEventWithEventName_MMMethodMMM:SDK_LOG_EVENT_INSTALL successBlock_MMMethodMMM:^(id responseData) {
        [SdkUtil saveReportEventName_MMMethodMMM:SDK_LOG_EVENT_INSTALL];
    } errorBlock_MMMethodMMM:^(BJError *error) {
        
    }];
            NSDictionary * handleQ = [NSDictionary dictionaryWithObjectsAndKeys:@"undeserved",@(588), nil];
             if (handleQ.count > 141) {}
}
@end
