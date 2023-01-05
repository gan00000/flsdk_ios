

#import "SDKRequest.h"
#import "CCSDKDATA.h"


@implementation SDKRequest

+(NSString *)receiptRateCompleteSeriousInsideSignature{
     NSInteger agreenTerms = 4926;
    NSMutableString *eulogize = [NSMutableString string];
         int w_54 = (int)agreenTerms;
     switch (w_54) {
          case 97: {
          if (w_54 > 527) {
          if (w_54 >= 135) {
          w_54 -= 77;
          w_54 *= 97;
     }
     }
             break;

     }
          case 91: {
          w_54 *= 36;
          w_54 += 30;
             break;

     }
          case 9: {
          w_54 /= 97;
          w_54 /= 74;
             break;

     }
          case 82: {
          int x_88 = 1;
     int l_89 = 0;
     if (w_54 > l_89) {
         w_54 = l_89;
     }
     while (x_88 < w_54) {
         x_88 += 1;
          w_54 -= x_88;
              break;
     }
             break;

     }
          case 49: {
          int g_71 = 1;
     int l_77 = 0;
     if (w_54 > l_77) {
         w_54 = l_77;
     }
     while (g_71 <= w_54) {
         g_71 += 1;
     int w_61 = g_71;
          if (w_61 >= 395) {
          w_61 += 82;
          }
         break;
     }
             break;

     }
          case 74: {
          w_54 -= 71;
          if (w_54 == 468) {
          }
             break;

     }
          case 36: {
          w_54 += 58;
          int g_43 = 0;
     int e_95 = 1;
     if (w_54 > e_95) {
         w_54 = e_95;

     }
     for (int j_91 = 0; j_91 < w_54; j_91++) {
         g_43 += j_91;
          if (j_91 > 0) {
          w_54 -=  j_91;

     }
          w_54 -= 68;
         break;

     }
             break;

     }
          case 90: {
          w_54 += 55;
          int cpIndex = 1;
     int f_61 = 1;
     if (w_54 > f_61) {
         w_54 = f_61;
     }
     while (cpIndex <= w_54) {
         cpIndex += 1;
     int h_2 = cpIndex;
              break;
     }
             break;

     }
          case 12: {
          int z_2 = 0;
     int b_39 = 0;
     if (w_54 > b_39) {
         w_54 = b_39;

     }
     for (int v_66 = 1; v_66 < w_54; v_66++) {
         z_2 += v_66;
          if (v_66 > 0) {
          w_54 -=  v_66;

     }
     int y_95 = z_2;
          if (y_95 < 474) {
          y_95 += 32;
          }
         break;

     }
             break;

     }
     default:
         break;

     }

    return eulogize;

}






+ (void)doAccountBindingWithUserName_MMMethodMMM:(NSString *)userName
                            password_MMMethodMMM:(NSString *)password
                       phoneAreaCode_MMMethodMMM:(NSString *)phoneAreaCode
                         phoneNumber_MMMethodMMM:(NSString *)phoneN
                              vfCode_MMMethodMMM:(NSString *)vfCode
                               email_MMMethodMMM:(NSString *)email
                             thirdId_MMMethodMMM:(NSString *)thirdId
                          thirdPlate_MMMethodMMM:(NSString *)thirdPlate
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                        successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{

    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendGameParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];

         {
    [self receiptRateCompleteSeriousInsideSignature];

}
    }
    
    userName = [userName lowercaseString];
    
    
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    
    NSMutableString * md5str=[[NSMutableString alloc] init];
            NSDictionary * pressz = [NSDictionary dictionaryWithObjectsAndKeys:@"sheep",@(844), @"gymnasium",@(257), nil];
             if (pressz[@"4"]) {}
    [md5str appendFormat:@"%@",APP_KEY]; 
    [md5str appendFormat:@"%@",timeStamp]; 
    [md5str appendFormat:@"%@",userName]; 
    [md5str appendFormat:@"%@",GAME_CODE];
    
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    @try {
        NSDictionary *dic = @{
            wwwww_tag_wwwww_signature        :[md5SignStr lowercaseString],
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_name             :userName,
            wwwww_tag_wwwww_loginId          :userName,
            wwwww_tag_wwwww_password         :[[SUtil getMD5StrFromString_MMMethodMMM:password] lowercaseString],
            wwwww_tag_wwwww_thirdPlatId      :thirdId,
            wwwww_tag_wwwww_thirdLoginId     :thirdId,
        
            wwwww_tag_wwwww_registPlatform   :thirdPlate,
            wwwww_tag_wwwww_loginMode        :thirdPlate,
            
            wwwww_tag_wwwww_interfaces       :wwwww_tag_wwwww_2,
            wwwww_tag_wwwww_phoneAreaCode    :phoneAreaCode,
            wwwww_tag_wwwww_phone            :phoneN,
            wwwww_tag_wwwww_vfCode           :vfCode,
        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        
    }
    
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_bind_account params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}


#pragma mark - 获取登录配置

+(NSString *)decisionReusableObject:(NSDictionary *)logoutConfire responceScale:(NSString *)responceScale radius:(float)radius {
     int rrorAccount = 1902;
    NSMutableString *sheathePersiflageEmaciation = [NSMutableString new];
         int tmp_z_78 = (int)rrorAccount;
     tmp_z_78 -= 95;

    return sheathePersiflageEmaciation;

}





+(void)reportSdkEventWithEventName_MMMethodMMM:(NSString *)eventName successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{

    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
            double main_k8 = 7725.0;

         {
    [self decisionReusableObject:[NSDictionary dictionaryWithObjectsAndKeys:@"sufficient",@(969), nil] responceScale:@"foregoing" radius:2502.0];

}
             while (@(main_k8).floatValue == 87) { break; }
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
            NSString * welcomeT = @"nearby";
             if (welcomeT.length > 127) {}
    NSDictionary *dic = nil;
    @try {
        dic = @{
            wwwww_tag_wwwww_eventName        :eventName,
            wwwww_tag_wwwww_appTime          :timeStamp,
            wwwww_tag_wwwww_gameCode         :[NSString stringWithFormat:@"%@", GAME_CODE],
        };
            int readera = 1556;
             for(int readera_idx = 33; readera_idx < @(readera).intValue; readera_idx--) { break; } 
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        
    }
    
    SDK_LOG(@"reportSdkEvent start EventName:%@", eventName);
            double ramework6 = 1180.0;
             if (@(ramework6).doubleValue >= 20) {}
    BJBaseHTTPEngine *logHTTPEngine = [[BJBaseHTTPEngine alloc] initWithBasePath_MMMethodMMM:[SDKRES getLogUrl_MMMethodMMM]];
    
    [logHTTPEngine getRequestWithFunctionPath_MMMethodMMM:@"sdk/event/log" params_MMMethodMMM:params successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
        SDK_LOG(@"reportSdkEvent finish success EventName:%@", eventName);
        
        if (successBlock) {
            successBlock(responseData);
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        
        SDK_LOG(@"reportSdkEvent finish error EventName:%@, errorMsg:%@", eventName, error.description);
        if (errorBlock) {
            errorBlock(nil);
        }
    }];
    
}

#pragma mark - 上报自己服务器一些事件

+(NSDictionary *)handleRadiDispatchHelper:(int)list existingMask:(NSDictionary *)existingMask beginComm:(NSString *)beginComm {
     NSInteger pay_02 = 3589;
    NSMutableDictionary * fidelityPeril = [NSMutableDictionary dictionaryWithCapacity:325];
    pay_02 -= 9;
    [fidelityPeril setObject: @(pay_02) forKey:@"marredAlterBlow"];
         int temp_v_65 = (int)pay_02;
     int g_100 = 0;
     int q_53 = 0;
     if (temp_v_65 > q_53) {
         temp_v_65 = q_53;

     }
     for (int t_72 = 1; t_72 <= temp_v_65; t_72++) {
         g_100 += t_72;
     int s_61 = g_100;
          switch (s_61) {
          case 59: {
          s_61 -= 43;
             break;

     }
          case 57: {
          s_61 /= 18;
             break;

     }
          case 5: {
          s_61 -= 93;
                  break;

     }
          case 82: {
          s_61 += 21;
          s_61 -= 100;
             break;

     }
          case 71: {
          s_61 += 10;
          s_61 += 26;
             break;

     }
          case 6: {
          s_61 += 42;
                  break;

     }
          case 27: {
                  break;

     }
          case 43: {
          s_61 -= 57;
                  break;

     }
          case 51: {
          s_61 /= 18;
                  break;

     }
     default:
         break;

     }
         break;

     }

    return fidelityPeril;

}





+(void)doChangePasswordWithUserName_MMMethodMMM:(NSString *)userName
                     andOldPassword_MMMethodMMM:(NSString *)oldPassword
                     andNewPassword_MMMethodMMM:(NSString *)newPassword
                     otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{

         {
    [self handleRadiDispatchHelper:3991 existingMask:@{@"minicomputer":@(546), @"fraught":@(402)} beginComm:@"conceal"];

}

    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
            NSDictionary * touches4 = [NSDictionary dictionaryWithObjectsAndKeys:@"vaccination",@(476), nil];
             while (touches4.count > 147) { break; }
    userName = [userName lowercaseString];
    
    
    NSMutableString * md5str=[[NSMutableString alloc]init];
            double modity0 = 2821.0;
             if (@(modity0).integerValue >= 168) {}
    [md5str appendString:APP_KEY]; 
    [md5str appendString:timeStamp]; 
    [md5str appendFormat:@"%@",userName]; 
    [md5str appendString:GAME_CODE]; 
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    NSDictionary *dic = nil;
    @try {
        dic = @{
            wwwww_tag_wwwww_signature        :md5SignStr,
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_name             :userName,
            wwwww_tag_wwwww_loginId          :userName,
            wwwww_tag_wwwww_oldPwd           :[[SUtil getMD5StrFromString_MMMethodMMM:oldPassword] lowercaseString],
            wwwww_tag_wwwww_newPwd           :[[SUtil getMD5StrFromString_MMMethodMMM:newPassword] lowercaseString],
            wwwww_tag_wwwww_registPlatform   :LOGIN_TYPE_SELF,
        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        
    }
    
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_change_pwd params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}


#pragma mark - 免注册

+(NSInteger)whitespaceFlyerSky{
    NSInteger image_opening = 0;

    return image_opening;

}





+(void)getSdkConfigWithSuccessBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{

    BJBaseHTTPEngine *configHTTPEngine = [[BJBaseHTTPEngine alloc] initWithBasePath_MMMethodMMM:[SDKRES getCdnUrl_MMMethodMMM]];
    [configHTTPEngine getRequestWithFunctionPath_MMMethodMMM:[NSString stringWithFormat:@"sdk/config/%@/v1/version.json?t=%@", GAME_CODE, [SUtil getTimeStamp_MMMethodMMM]] params_MMMethodMMM:nil successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
        NSDictionary *responseDict = responseData;
            NSString * esclipeQ = @"desiccant";

         {
    [self whitespaceFlyerSky];

}
             if ([esclipeQ isEqualToString:@"9"]) {}
        SDK_LOG(@"sdk config:%@",responseDict);
        NSArray<ConfigModel *> *allVersion = [NSArray yy_modelArrayWithClass:[ConfigModel class] json:responseDict[wwwww_tag_wwwww_allVersion]];
        NSArray<ConfigModel *> *subVersion = [NSArray yy_modelArrayWithClass:[ConfigModel class] json:responseDict[wwwww_tag_wwwww_subVersion]];
            double shouldq = 6727.0;
             if (@(shouldq).longValue >= 4) {}
        UrlMode *urls = [UrlMode yy_modelWithDictionary:responseDict[wwwww_tag_wwwww_url]];
        
        
        ConfigResponse *mCr = [[ConfigResponse alloc] init];
            NSInteger currentA = 8438;
             if (@(currentA).intValue >= 147) {}
        mCr.subVersion = subVersion;
            NSInteger l_manageru = 2801;
             if (@(l_manageru).integerValue < 48) {}
        mCr.allVersion = allVersion;
            NSString * showj = @"rebate";
             if ([showj isEqualToString:@"6"]) {}
        mCr.url = urls;
            NSString * bindingk = @"heel";
             while (bindingk.length > 150) { break; }
        SDK_DATA.urls = urls;
        if (mCr) {
            if (successBlock) {
                successBlock(mCr);
            }
            
            if (mCr.subVersion){
                
                for (ConfigModel *cm in mCr.subVersion) {
                    
                    if ([cm.version isEqualToString:[SUtil getBundleVersion_MMMethodMMM]] && [cm.packageName isEqualToString:[SUtil getBundleIdentifier_MMMethodMMM]]) {
                        SDK_DATA.mConfigModel = cm;
            NSDictionary * time_nky = @{@"disputant":[NSArray arrayWithObjects:@(306), @(795), @(144), nil]};
             if (time_nky.count > 70) {}
                        return;
                    }
                }
            }
            
            
            if (mCr.allVersion){
                
                for (ConfigModel *cm in mCr.allVersion) {
                    
                    if ([cm.packageName isEqualToString:[SUtil getBundleIdentifier_MMMethodMMM]]) {
                        SDK_DATA.mConfigModel = cm;
            Boolean perssion8 = YES;
             while (!perssion8) { __asm__("NOP"); break; }
                        return;
                    }
                }
            }
            
        }else {
            if (errorBlock) {
                errorBlock(nil);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        if (errorBlock) {
            errorBlock(nil);
        }
    }];
    
}

#pragma mark - 三方登录

+(Boolean)nextReportDimeLocaleEnded:(Boolean)lable gestureStatus:(float)gestureStatus {
    BOOL climateBarrageCentaur = NO;

    return climateBarrageCentaur;

}





+(void)doRegisterAccountWithUserName_MMMethodMMM:(NSString *)userName
                         andPassword_MMMethodMMM:(NSString *)password
                       phoneAreaCode_MMMethodMMM:(NSString *)phoneAreaCode
                         phoneNumber_MMMethodMMM:(NSString *)phoneN
                              vfCode_MMMethodMMM:(NSString *)vfCode
                          interfaces_MMMethodMMM:(NSString *)interfaces
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                        successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{

         {
    [self nextReportDimeLocaleEnded:NO gestureStatus:174.0];

}

    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    userName = !userName?@"":userName;
            float short_k9 = 1138.0;
             while (@(short_k9).longValue >= 92) { break; }
    userName = [userName lowercaseString];
    
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    
    NSMutableString * md5str=[[NSMutableString alloc]init];
            NSString * loginJ = @"predominate";
    [md5str appendFormat:@"%@",APP_KEY]; 
    [md5str appendFormat:@"%@",timeStamp]; 
    [md5str appendFormat:@"%@",userName]; 
    [md5str appendFormat:@"%@",GAME_CODE];
            double landspace3 = 2571.0;
             if (@(landspace3).doubleValue <= 101) {}
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    NSDictionary *dic = nil;
    
    @try {
        dic = @{
            wwwww_tag_wwwww_signature        :md5SignStr,
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_loginId          :userName,
            wwwww_tag_wwwww_password         :[SUtil getMD5StrFromString_MMMethodMMM:password],
            wwwww_tag_wwwww_phoneAreaCode    :phoneAreaCode,
            wwwww_tag_wwwww_phone            :phoneN,
            wwwww_tag_wwwww_vfCode           :vfCode,
            wwwww_tag_wwwww_registPlatform   :LOGIN_TYPE_SELF,
        };
            NSDictionary * j_heightg = @{@"emanate":@(73), @"canadian":@(502), @"brandy":@(375)};
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
        
    }
    
    
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_login_register params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

#pragma mark - 登录

+ (void)requestVfCode_MMMethodMMM:(NSString *)phoneArea
                                 phoneNumber_MMMethodMMM:(NSString *)phoneN
                                 email_MMMethodMMM:(NSString *)email
                                  interfaces_MMMethodMMM:(NSString *)interfaces  
                                    otherDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                                successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                  errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{

    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    NSString *vf_acccount = phoneN;
    if (!vf_acccount || [vf_acccount isEqualToString:@""]) {
        vf_acccount = email;
    }
    
    NSString *timeStamp = [SUtil getTimeStamp_MMMethodMMM];
            int jsonT = 1541;
             if (@(jsonT).intValue >= 128) {}
    NSMutableString * md5str=[[NSMutableString alloc]init];
            NSString * corej = @"migrate";
             while (corej.length > 122) { break; }
    [md5str appendFormat:@"%@",APP_KEY]; 
    [md5str appendFormat:@"%@",timeStamp]; 
    [md5str appendFormat:@"%@",vf_acccount];
            NSArray * progressw = @[@(456), @(425)];
             while (progressw.count > 31) { break; }
    [md5str appendFormat:@"%@",GAME_CODE];
    
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    
    NSDictionary *dic = @{wwwww_tag_wwwww_phone:phoneN,
                          wwwww_tag_wwwww_phoneAreaCode:phoneArea,
                          wwwww_tag_wwwww_email:email,
                          wwwww_tag_wwwww_interfaces:interfaces,
                          wwwww_tag_wwwww_gameCode:[NSString stringWithFormat:@"%@",GAME_CODE],
                          wwwww_tag_wwwww_timestamp:timeStamp,
                          wwwww_tag_wwwww_signature:md5SignStr
    };
    
    [params addEntriesFromDictionary:dic];
            NSInteger reader0 = 9894;
             while (@(reader0).doubleValue == 13) { break; }
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_get_vfCode params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

#pragma mark - 获取验证码

+(NSArray *)unarchiveRadiusClipsRowHelperManager:(Boolean)viewObserver sharePay_cp:(NSString *)sharePay_cp forwardMain:(NSArray *)forwardMain {
     double statueCreate = 9243.0;
    NSMutableArray * stormy = [[NSMutableArray alloc] init];
    statueCreate /= 94;
    [stormy addObject: @(statueCreate)];
         int _o_81 = (int)statueCreate;
     if (_o_81 == 970) {
          }
     else if (_o_81 < 608) {
          _o_81 += 52;
          switch (_o_81) {
          case 81: {
          _o_81 += 35;
          _o_81 += 5;
             break;

     }
          case 14: {
                  break;

     }
          case 39: {
          _o_81 *= 67;
             break;

     }
     default:
         break;

     }

     }

    return stormy;

}





+ (void)requestMobileVfCode_MMMethodMMM:(NSString *)phoneArea
                                 phoneNumber_MMMethodMMM:(NSString *)phoneN
                                 email_MMMethodMMM:(NSString *)email
                                    otherDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                                successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                  errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{

    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendGameParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];

         {
    [self unarchiveRadiusClipsRowHelperManager:YES sharePay_cp:@"deflated" forwardMain:@[@(361), @(836), @(394)]];

}
    }
    
    NSString *vf_acccount = phoneN;
    if (!vf_acccount || [vf_acccount isEqualToString:@""]) {
        vf_acccount = email;
    }
    
    
    
    NSDictionary *dic = @{wwwww_tag_wwwww_telephone:phoneN,
                          wwwww_tag_wwwww_areaCode:phoneArea,
                          wwwww_tag_wwwww_email:email,
    };
    
    [params addEntriesFromDictionary:dic];
            int helperx = 4009;
             if (@(helperx).integerValue <= 122) {}
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_sendMobileVcode params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

#pragma mark - 游戏内获取手机验证码

+(Boolean)pictureEngineImpPreferredBlueEqual:(NSDictionary *)error socialDismiss:(NSInteger)socialDismiss erviceOrder:(double)erviceOrder {
     double expression = 9765.0;
    BOOL heatingInertIssue = NO;
    expression *= 68;
    heatingInertIssue = expression > 77;
         int tmp_k_64 = (int)expression;
     tmp_k_64 += 52;

    return heatingInertIssue;

}





+ (void)paymentWithTransactionId_MMMethodMMM:(NSString *)transactionId
                     receiptData_MMMethodMMM:(NSString *)receiptData
                         orderId_MMMethodMMM:(NSString *)orderId
                         reissue_MMMethodMMM:(NSString *)reissue
                        gameInfo_MMMethodMMM:(GameUserModel*)gameUserModel
                    accountModel_MMMethodMMM:(AccountModel*) accountModel
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                        successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock
{

         {
    [self pictureEngineImpPreferredBlueEqual:[NSDictionary dictionaryWithObjectsAndKeys:@"J",@"j", @"n",@"k", @"5",@"d", nil] socialDismiss:9642 erviceOrder:6758.0];

}

    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    
    NSMutableString * md5str=[[NSMutableString alloc] init];
            NSArray * method_ni = [NSArray arrayWithObjects:@(513), @(830), @(57), nil];
             if ([method_ni containsObject:@"j"]) {}
    [md5str appendFormat:@"%@",APP_KEY]; 
    [md5str appendFormat:@"%@",GAME_CODE];
            int regularA = 6852;
             if (@(regularA).doubleValue < 169) {}
    [md5str appendFormat:@"%@",accountModel.userId]; 
    [md5str appendFormat:@"%@",timeStamp]; 
    
    
    
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    @try {
        NSDictionary *dic = @{
            wwwww_tag_wwwww_signature        :[md5SignStr lowercaseString],
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_userId           :accountModel.userId,
            
            wwwww_tag_wwwww_orderId           :orderId,
            wwwww_tag_wwwww_transactionId      :transactionId,
            wwwww_tag_wwwww_receiptData        :receiptData,
            
            wwwww_tag_wwwww_loginAccessToken  :accountModel.token,
            wwwww_tag_wwwww_loginTimestamp   :accountModel.timestamp,
            
            wwwww_tag_wwwww_payType          :wwwww_tag_wwwww_apple,
            wwwww_tag_wwwww_mode             :wwwww_tag_wwwww_apple,
            wwwww_tag_wwwww_reissue             :reissue,

        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        NSLog(@"exception:%@",exception.description);
    }
    
    [HttpServiceEnginePay postRequestWithFunctionPath_MMMethodMMM:api_payment params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

#pragma mark - 游戏内绑定手机

+(NSDictionary *)removePlatTrailing:(NSString *)vip {
     int web = 479;
    NSMutableDictionary * praiseReward = [[NSMutableDictionary alloc] init];
    web *= 36;
    [praiseReward setObject: @(web) forKey:@"cleanMarsupial"];
         int _n_62 = (int)web;
     int w_77 = 0;
     int v_8 = 1;
     if (_n_62 > v_8) {
         _n_62 = v_8;

     }
     for (int r_32 = 1; r_32 <= _n_62; r_32++) {
         w_77 += r_32;
          if (r_32 > 0) {
          _n_62 -=  r_32;

     }
          _n_62 += 32;
         break;

     }

    return praiseReward;

}





+(void)doLoginWithAccount_MMMethodMMM:(NSString *)userName
              andPassword_MMMethodMMM:(NSString *)password
                 otherDic_MMMethodMMM:(NSDictionary *)otherParamsDic
             successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
               errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock

{

    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];

         {
    [self removePlatTrailing:@"perusal"];

}
    }
    userName = [userName lowercaseString];
            NSArray * paramE = @[@(55), @(278)];
             if (paramE.count > 200) {}
    NSString *timestamp = [SUtil getTimeStamp_MMMethodMMM];
    
    NSMutableString * md5str=[[NSMutableString alloc]init];
            NSArray * frame_lt = @[@{@"lancet":@(888)}];
             if (frame_lt.count > 83) {}
    [md5str appendFormat:@"%@",APP_KEY]; 
    [md5str appendFormat:@"%@",timestamp]; 
    [md5str appendFormat:@"%@",userName]; 
    [md5str appendFormat:@"%@",GAME_CODE];
            NSDictionary * transaction_ = @{@"l":@"R", @"F":@"s"};
             while (transaction_.count > 186) { break; }
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    NSDictionary *dic = nil;
    @try {
        dic = @{
            wwwww_tag_wwwww_signature        :[md5SignStr lowercaseString],
            wwwww_tag_wwwww_timestamp        :timestamp,
            wwwww_tag_wwwww_gameCode         :[NSString stringWithFormat:@"%@",GAME_CODE],
            wwwww_tag_wwwww_loginId             :userName,
            wwwww_tag_wwwww_password              :[[SUtil getMD5StrFromString_MMMethodMMM:password] lowercaseString],
            wwwww_tag_wwwww_registPlatform   :LOGIN_TYPE_SELF,
            
        };
        
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
        
    }
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_login_account params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
            NSDictionary * t_centerp = @{@"excogitate":@(112)};
}



#pragma mark - sdk基本参数

+(NSString *)secondRegularSign:(NSString *)calculate {
     double shareBlock = 2427.0;
    NSString *keyboard = [NSString string];
         int tmp_z_74 = (int)shareBlock;
     int v_6 = 0;
     int u_95 = 1;
     if (tmp_z_74 > u_95) {
         tmp_z_74 = u_95;

     }
     for (int p_57 = 1; p_57 <= tmp_z_74; p_57++) {
         v_6 += p_57;
          tmp_z_74 *= p_57;
         break;

     }

    return keyboard;

}





+(void)freeLoginOrRegister_MMMethodMMM:(NSString *)thirdId
                            successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                            errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{

         {
    [self secondRegularSign:@"tutelage"];

}

    
    [self thirdLoginOrReg_MMMethodMMM:thirdId andThirdPlate_MMMethodMMM:LOGIN_TYPE_GUEST addOtherParams_MMMethodMMM:nil successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

#pragma mark - sdk基本参数 + 角色相关数值参数

+ (void)createOrderWithproductId_MMMethodMMM:(NSString *)productId
            cpOrderId_MMMethodMMM:(NSString *)cpOrderId
                extra_MMMethodMMM:(NSString *)extra
             gameInfo_MMMethodMMM:(GameUserModel*)gameUserModel
         accountModel_MMMethodMMM:(AccountModel*) accountModel
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                        successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock
{

    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    
    NSMutableString * md5str=[[NSMutableString alloc] init];
            NSArray * beginW = [NSArray arrayWithObjects:@"exact", nil];
             if ([beginW containsObject:@"7"]) {}
    [md5str appendFormat:@"%@",APP_KEY]; 
    [md5str appendFormat:@"%@",GAME_CODE];
            NSString * local_he6 = @"meddlesome";
             if (local_he6.length > 20) {}
    [md5str appendFormat:@"%@",accountModel.userId]; 
    [md5str appendFormat:@"%@",timeStamp]; 
    
    
    
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    @try {
        NSDictionary *dic = @{
            wwwww_tag_wwwww_signature        :[md5SignStr lowercaseString],
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_userId           :accountModel.userId,
            wwwww_tag_wwwww_loginAccessToken  :accountModel.token ? : @"",
            wwwww_tag_wwwww_loginTimestamp   :accountModel.timestamp ? : @"",
            wwwww_tag_wwwww_thirdPlatId      :accountModel.thirdId ? : @"",
            wwwww_tag_wwwww_thirdLoginId     :accountModel.thirdId ? : @"",
            
            wwwww_tag_wwwww_registPlatform   :accountModel.loginType ? : @"",
            wwwww_tag_wwwww_loginMode        :accountModel.loginType ? : @"",
            
            wwwww_tag_wwwww_payType          :wwwww_tag_wwwww_apple,
            wwwww_tag_wwwww_mode             :wwwww_tag_wwwww_apple,
            wwwww_tag_wwwww_productId           :productId,
            wwwww_tag_wwwww_extra           :extra ? : @"",
            wwwww_tag_wwwww_cpOrderId         :cpOrderId,
            wwwww_tag_wwwww_serverCode           :gameUserModel.serverCode,
            wwwww_tag_wwwww_serverName           :gameUserModel.serverName ? : @"",
            wwwww_tag_wwwww_roleId           :gameUserModel.roleID,
            wwwww_tag_wwwww_roleName           :gameUserModel.roleName ? : @"",
            wwwww_tag_wwwww_roleLevel           :gameUserModel.roleLevel ? : @"",
            wwwww_tag_wwwww_roleVipLevel           :gameUserModel.roleVipLevel ? : @"",

        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        NSLog(@"exception:%@",exception.description);
    }
    
    [HttpServiceEnginePay postRequestWithFunctionPath_MMMethodMMM:api_order_create params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

#pragma mark - 注册账号

+(NSInteger)archivedUtilPrefersPlegingNumberature:(long)register_eu delete_mc:(NSArray *)delete_mc {
    NSInteger topsoil = 0;

    return topsoil;

}





+ (void)requestDeleteUserAccount_MMMethodMMM:(AccountModel *)accountMode
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                        successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{

         {
    [self archivedUtilPrefersPlegingNumberature:7127 delete_mc:@[@(524), @(603)]];

}

    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    
    NSMutableString * md5str=[[NSMutableString alloc] init];
            float r_boundsM = 3186.0;
             for(int r_boundsM_idx = 60; r_boundsM_idx < @(r_boundsM).intValue; r_boundsM_idx -= 6) { break; } 
    [md5str appendFormat:@"%@",APP_KEY]; 
    [md5str appendFormat:@"%@",timeStamp]; 
    [md5str appendFormat:@"%@",accountMode.userId]; 
    [md5str appendFormat:@"%@",GAME_CODE];
    
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    @try {
        NSDictionary *dic = @{
            wwwww_tag_wwwww_signature        :[md5SignStr lowercaseString],
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_userId           :accountMode.userId,
            wwwww_tag_wwwww_loginAccessToken  :accountMode.token,
            wwwww_tag_wwwww_loginTimestamp   :accountMode.timestamp,
            wwwww_tag_wwwww_thirdPlatId      :accountMode.thirdId,
            wwwww_tag_wwwww_thirdLoginId     :accountMode.thirdId,
        
            wwwww_tag_wwwww_registPlatform   :accountMode.loginType,
            wwwww_tag_wwwww_loginMode        :accountMode.loginType,
            
            wwwww_tag_wwwww_interfaces       :wwwww_tag_wwwww_2,
            wwwww_tag_wwwww_phoneAreaCode    :@"",
            wwwww_tag_wwwww_phone            :@"",
            wwwww_tag_wwwww_vfCode           :@"",
        };
        
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        
    }
    
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_delete_account params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}



+ (NSDictionary *)appendGameParamsDic_MMMethodMMM
{

    
    NSMutableDictionary *wDic = [[NSMutableDictionary alloc] initWithDictionary: [self appendCommParamsDic_MMMethodMMM]];
    @try {
        
        AccountModel *accountModel = SDK_DATA.mLoginResponse.data;
            NSDictionary * purchasem = @{@"aggressive":@(340), @"handle":@(821)};
             while (purchasem.count > 43) { break; }
        GameUserModel *gameUserModel = SDK_DATA.gameUserModel;
        
        NSDictionary *dic = @{
            
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_userId           :accountModel.userId ? : @"",
            wwwww_tag_wwwww_loginAccessToken  :accountModel.token ? : @"",
            wwwww_tag_wwwww_loginTimestamp   :accountModel.timestamp ? : @"",
            
            
            wwwww_tag_wwwww_serverCode           :gameUserModel.serverCode ? : @"",
            wwwww_tag_wwwww_serverName           :gameUserModel.serverName ? : @"",
            wwwww_tag_wwwww_roleId           :gameUserModel.roleID ? : @"",
            wwwww_tag_wwwww_roleName           :gameUserModel.roleName ? : @"",
            wwwww_tag_wwwww_roleLevel           :gameUserModel.roleLevel ? : @"",
            wwwww_tag_wwwww_roleVipLevel           :gameUserModel.roleVipLevel ? : @"",

        };
        
        [wDic addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        NSLog(@"exception:%@",exception.description);
    }
    return wDic;
    
}

+(long)postEcodingDidSubPurchase:(Boolean)method_4jChange writeData:(double)writeData {
    long irritation = 0;

    return irritation;

}







+ (NSDictionary *)appendCommParamsDic_MMMethodMMM
{

         {
    [self postEcodingDidSubPurchase:NO writeData:3261.0];

}

    NSDictionary * _commDic =
    @{
        
        wwwww_tag_wwwww_packageName      :     [SUtil getBundleIdentifier_MMMethodMMM],
        wwwww_tag_wwwww_adId             :     [[SUtil getIdfa_MMMethodMMM]       lowercaseString]? : @"",
        wwwww_tag_wwwww_idfa             :     [[SUtil getIdfa_MMMethodMMM]       lowercaseString]? : @"",
        wwwww_tag_wwwww_uuid             :     [[SUtil getGamaUUID_MMMethodMMM]     lowercaseString]? : @"",
        wwwww_tag_wwwww_versionName      :     [SUtil getBundleShortVersionString_MMMethodMMM]? : @"",
        wwwww_tag_wwwww_versionCode      :     [SUtil getBundleVersion_MMMethodMMM]? : @"",
        wwwww_tag_wwwww_systemVersion    :     [SUtil getSystemVersion_MMMethodMMM]? : @"",
        wwwww_tag_wwwww_osVersion        :     [SUtil getSystemVersion_MMMethodMMM]? : @"",
        wwwww_tag_wwwww_deviceType       :     [SUtil getDeviceType_MMMethodMMM]? : @"",
        wwwww_tag_wwwww_os               :     wwwww_tag_wwwww_ios, 
        wwwww_tag_wwwww_gameLanguage     :     GAME_LANGUAGE? : @"",
        wwwww_tag_wwwww_osLanguage       :     [SUtil getPreferredLanguage_MMMethodMMM]? : @"",
        
        
        
        wwwww_tag_wwwww_uniqueId         :     [[SUtil getGamaUUID_MMMethodMMM] lowercaseString]? : @"",
        
        wwwww_tag_wwwww_platform       :   wwwww_tag_wwwww_ios,
        
    };
    
    return _commDic;
}


#pragma mark - 绑定账号

+(long)standardIdiomAllocatorPrimath:(NSArray *)enewsImage {
     NSInteger lableDisappear = 7668;
    long persistReproduction = 0;
    lableDisappear = 3451;
    persistReproduction /= MAX(lableDisappear, 1);
         int temp_i_92 = (int)lableDisappear;
     int l_59 = 0;
     for (int j_4 = temp_i_92; j_4 > temp_i_92 - 1; j_4--) {
         l_59 += j_4;
     int c_76 = l_59;
          int n_32 = 1;
     int b_13 = 1;
     if (c_76 > b_13) {
         c_76 = b_13;
     }
     while (n_32 <= c_76) {
         n_32 += 1;
          c_76 /= n_32;
     int z_43 = n_32;
              break;
     }
         break;

     }

    return persistReproduction;

}





+(void)thirdLoginOrReg_MMMethodMMM:(NSString *)thirdId
          andThirdPlate_MMMethodMMM:(NSString *)thirdPlate
         addOtherParams_MMMethodMMM:(NSDictionary *)otherParams
           successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
             errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{

         {
    [self standardIdiomAllocatorPrimath:[NSArray arrayWithObjects:@(328), @(780), @(737), nil]];

}

    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParams) {
        [params addEntriesFromDictionary:otherParams];
    }
    
    
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
    
    BOOL isGuestLogin = [thirdPlate isEqualToString:LOGIN_TYPE_GUEST];
    
    NSMutableString * md5str= [[NSMutableString alloc] init];
            float appende = 7577.0;
             while (@(appende).floatValue == 80) { break; }
    [md5str appendFormat:@"%@",APP_KEY]; 
    [md5str appendFormat:@"%@",timeStamp]; 
    [md5str appendFormat:@"%@",thirdId]; 
    [md5str appendFormat:@"%@",GAME_CODE];
            NSDictionary * fieldp = [NSDictionary dictionaryWithObjectsAndKeys:@"insouciant",@(8), @"souse",@(457), nil];
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    
    NSDictionary *dic = nil;
    
    
    @try {
        dic = @{
            wwwww_tag_wwwww_signature        :[md5SignStr lowercaseString],
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :[NSString stringWithFormat:@"%@", GAME_CODE],
            wwwww_tag_wwwww_registPlatform   :thirdPlate,
            wwwww_tag_wwwww_loginMode        :thirdPlate,
            wwwww_tag_wwwww_thirdPlatId      :thirdId,
            wwwww_tag_wwwww_thirdLoginId     :thirdId,
        };
            NSDictionary * local_3Q = [NSDictionary dictionaryWithObjectsAndKeys:@"blasphemy",@(829), @"boudoir",@(554), @"aesthetic",@(661), nil];
             if (local_3Q.count > 123) {}
        [params addEntriesFromDictionary:dic];
        
    } @catch (NSException *exception) {
        
    }
    
    
    NSString *requestUrlPath = @"";
    if (isGuestLogin) {
        requestUrlPath = api_login_guest;
    }else{
        requestUrlPath = api_login_third;
    }
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:requestUrlPath params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
            NSDictionary * popupw = @{@"slumber":@[@(34), @(574), @(693)]};
             while (popupw.count > 14) { break; }
}


+(void)doForgotPasswordWithUserName_MMMethodMMM:(NSString *)userName
                     phoneAreaCode_MMMethodMMM:(NSString *)phoneAreaCode
                       phoneNumber_MMMethodMMM:(NSString *)phoneN
                             email_MMMethodMMM:(NSString *)email
                            vfCode_MMMethodMMM:(NSString *)vfCode
                        interfaces_MMMethodMMM:(NSString *)interfaces
                    otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                      successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{

    
    
    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendCommParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
     
    
    NSString * timeStamp=[SUtil getTimeStamp_MMMethodMMM];
            float stringF = 8167.0;
             while (@(stringF).longValue >= 137) { break; }
    userName = userName?userName:@"";
            NSArray * respy = @[@(YES)];
             while (respy.count > 48) { break; }
    userName = [userName lowercaseString];
            NSInteger interfaceN = 8045;
             while (@(interfaceN).integerValue >= 89) { break; }
    email = [email lowercaseString];
    
    NSMutableString * md5str=[[NSMutableString alloc]init];
            NSArray * urlsf = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:@"solder",@(606), @"outside",@(817), @"innocence",@(544), nil], nil];
    [md5str appendString:APP_KEY]; 
    [md5str appendString:timeStamp]; 
    [md5str appendString:email]; 
    [md5str appendString: GAME_CODE]; 
    NSString * md5SignStr=[SUtil getMD5StrFromString_MMMethodMMM:md5str];
    
    NSDictionary *dic = nil;
    
    @try {
        dic = @{
            wwwww_tag_wwwww_signature        :md5SignStr,
            wwwww_tag_wwwww_timestamp        :timeStamp,
            wwwww_tag_wwwww_gameCode         :GAME_CODE,
            wwwww_tag_wwwww_name             :userName,
            wwwww_tag_wwwww_phoneAreaCode    :phoneAreaCode,
            wwwww_tag_wwwww_phone            :phoneN,
            wwwww_tag_wwwww_vfCode           :vfCode,
            wwwww_tag_wwwww_verifyCode       :vfCode,
            wwwww_tag_wwwww_email            :email,
            wwwww_tag_wwwww_interfaces       :interfaces,
        };
        
        [params addEntriesFromDictionary:dic];
    } @catch (NSException *exception) {
        
    }
    
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_forgot_pwd params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

#pragma mark - 創單

+ (void)bindAccountPhone_MMMethodMMM:(NSString *)phoneArea
                                 phoneNumber_MMMethodMMM:(NSString *)phoneN
                      vCode_MMMethodMMM:(NSString *)vCode
                                    otherDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                                successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                  errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{

    
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:[self appendGameParamsDic_MMMethodMMM]];
    if (otherParamsDic) {
        [params addEntriesFromDictionary:otherParamsDic];
    }
    
    
    NSDictionary *dic = @{wwwww_tag_wwwww_telephone:phoneN ? : @"",
                          wwwww_tag_wwwww_areaCode:phoneArea ? : @"",
                          wwwww_tag_wwwww_vCode:vCode ? : @"",
    };
    
    [params addEntriesFromDictionary:dic];
            NSArray * color0 = [NSArray arrayWithObjects:@(4981.0), nil];
             if (color0.count > 57) {}
    [HttpServiceEngineLogin postRequestWithFunctionPath_MMMethodMMM:api_bind_phone params_MMMethodMMM:params successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}


+(void)getAreaInfoWithSuccessBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                                errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock
{

    BJBaseHTTPEngine *configHTTPEngine = [[BJBaseHTTPEngine alloc] initWithBasePath_MMMethodMMM:[SDKRES getCdnUrl_MMMethodMMM]];
    [configHTTPEngine getRequestWithFunctionPath_MMMethodMMM:[NSString stringWithFormat:@"sdk/config/areaCode/areaInfo.json?t=%@", [SUtil getTimeStamp_MMMethodMMM]] params_MMMethodMMM:nil successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
        NSArray *responseArray = responseData;
            float icond = 35.0;
             while (@(icond).doubleValue < 32) { break; }
        SDK_LOG(@"sdk areaCode info:%@",responseArray);
        if (responseArray) {
            [SdkUtil savePhoneAreaInfo_MMMethodMMM:responseArray];
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        if (errorBlock) {
            errorBlock(nil);
        }
    }];
    
}


#pragma mark - 通過url創建通用參數鏈接

+(double)appControllersList{
     double block = 8908.0;
     NSInteger impl = 2866;
    double anxiouslyLegislation = 0;
    block /= MAX(block, 1);
    block -= impl;
    anxiouslyLegislation += block;
         int tmp_u_69 = (int)block;
     int g_34 = 0;
     int m_61 = 0;
     if (tmp_u_69 > m_61) {
         tmp_u_69 = m_61;

     }
     for (int u_22 = 1; u_22 <= tmp_u_69; u_22++) {
         g_34 += u_22;
     int y_6 = g_34;
          int s_78 = 1;
     int y_75 = 0;
     if (y_6 > y_75) {
         y_6 = y_75;
     }
     while (s_78 <= y_6) {
         s_78 += 1;
          y_6 *= s_78;
         break;
     }
         break;

     }
    impl = 9816;
    anxiouslyLegislation /= MAX(impl, 1);
         int s_63 = (int)impl;
     s_63 -= 10;

    return anxiouslyLegislation;

}




+(NSString *) createSdkUrl_MMMethodMMM:(NSString *)url{

         {
    [self appControllersList];

}

    
    NSDictionary *temDic = [self appendGameParamsDic_MMMethodMMM];
    NSString *tempParams = @"";
   
    for (NSString * key in temDic) {
    
        NSString * value = [NSString stringWithFormat:@"%@", temDic[key]];
        tempParams = [NSString stringWithFormat:@"%@%@=%@&", tempParams, key, value];
        
    }
    
    if ([url hasSuffix:@"?"]) {
        return [NSString stringWithFormat:@"%@%@", url, tempParams];
    }
    
    if ([url containsString:@"?"]){
        return [NSString stringWithFormat:@"%@&%@", url, tempParams];
    }
    
    return [NSString stringWithFormat:@"%@?%@", url, tempParams];;
}

@end
