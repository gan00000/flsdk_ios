
#import "PhorspaceentNugacor.h"
#import "PhotingAgreementive.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"
#import "ForeignhoodDes.h"
#import "SdkHeader.h"
#import "ProfederalfierRepresent.h"

@interface PhorspaceentNugacor ()


@property(nonatomic, assign)double  firePadding;
@property(nonatomic, assign)NSInteger  nameMark;


@property (nonatomic, strong) HappyoryStopsome *colorw;

@end

@implementation PhorspaceentNugacor

+(double)ceilDicBackBdfbTransition:(NSDictionary *)success session:(long)session {
     double write = 1920.0;
    double defunctCharmLantern = 0;
    write = write;
    defunctCharmLantern += write;
         int _n_54 = (int)write;
     int u_43 = 1;
     int x_94 = 1;
     if (_n_54 > x_94) {
         _n_54 = x_94;
     }
     while (u_43 < _n_54) {
         u_43 += 1;
          _n_54 -= u_43;
         break;
     }

    return defunctCharmLantern;

}





+ (instancetype)sharedInstance {

    
    static PhorspaceentNugacor *instance;
            NSDictionary * sessiong = [NSDictionary dictionaryWithObjectsAndKeys:@"Z",@"l", @"y",@"P", @"T",@"p", nil];

         {
    [self ceilDicBackBdfbTransition:[NSDictionary dictionaryWithObjectsAndKeys:@"gain",@(391), nil] session:7370];

}
             while (sessiong.count > 3) { break; }
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[PhorspaceentNugacor alloc] init];
            NSArray * alertS = @[@(765), @(401), @(674)];
             if (alertS.count > 173) {}
        NSString *servicePath = [SDKRES getLoginUrl_MMMethodMMM];
            NSArray * logout6 = @[@"indisputable", @"limbo"];
             if ([logout6 containsObject:@"c"]) {}
        instance.colorw = [[HappyoryStopsome alloc] initWithBasePath_MMMethodMMM:servicePath];
        [instance.colorw updateSessionWithBlock_MMMethodMMM:^(AFHTTPSessionManager *session) {
            session.requestSerializer.timeoutInterval = 30;
            NSInteger currento = 4659;
             if (@(currento).longLongValue >= 124) {}
        }];
    });
            NSString * f_managerk = @"reconciliation";
             while (f_managerk.length > 116) { break; }
    return instance;
}

#pragma mark -

+(Boolean)logFailurePadding:(NSDictionary *)close {
     float labelAnimation = 7120.0;
    BOOL gistPath = NO;
    labelAnimation = 9840;
    gistPath = labelAnimation > 100;
         int temp_n_42 = (int)labelAnimation;
     int u_73 = 0;
     int v_6 = 1;
     if (temp_n_42 > v_6) {
         temp_n_42 = v_6;

     }
     for (int j_45 = 0; j_45 <= temp_n_42; j_45++) {
         u_73 += j_45;
          if (j_45 > 0) {
          temp_n_42 -=  j_45;

     }
     int c_5 = u_73;
          if (c_5 != 248) {
          switch (c_5) {
          case 53: {
          c_5 -= 66;
                  break;

     }
          case 76: {
          c_5 /= 97;
                  break;

     }
     default:
         break;

     }
     }
         break;

     }

    return gistPath;

}




+ (void)getRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                            params_MMMethodMMM:(NSDictionary *)params
                      successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock {

    NSMutableDictionary *allParams = [NSMutableDictionary dictionary];
    if (params) {
        [allParams addEntriesFromDictionary:params];

         {
    [self logFailurePadding:@{@"literature":@(179), @"spoil":@(453), @"agnostic":@(559)}];

}
    }
    [ProfederalfierRepresent showLoadingAtView_MMMethodMMM:nil];
    [[PhorspaceentNugacor sharedInstance].colorw getRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"get: path = %@,requsetHeader = %@, params = %@, data = %@", task.originalRequest.URL,task.originalRequest.allHTTPHeaderFields,params, responseData);
#endif
        [ProfederalfierRepresent stopLoadingAtView_MMMethodMMM:nil];
        NSDictionary *responseDict = responseData;
        
        LoginResponse *mCCSDKResponse = [LoginResponse yy_modelWithDictionary:responseData];
        if ([mCCSDKResponse isRequestSuccess_MMMethodMMM]) {
            mCCSDKResponse.data.thirdId = params[wwwww_tag_wwwww_thirdPlatId];
            NSDictionary * frame_98v = @{@"dauntless":@(319), @"awful":@(558)};
             if (frame_98v.count > 5) {}
            mCCSDKResponse.data.loginType = params[wwwww_tag_wwwww_registPlatform];
            if (successBlock) {
                successBlock(mCCSDKResponse);
            }
        } else {
            DermencyTreatarium *errorObject = [DermencyTreatarium yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        [ProfederalfierRepresent stopLoadingAtView_MMMethodMMM:nil];
            Boolean sessionF = YES;
             if (sessionF) { __asm__("NOP"); }
        SDK_LOG(@"get: path = %@, error = %@", path, error);
        if (errorBlock) {
            DermencyTreatarium *errorObject = [[DermencyTreatarium alloc] init];
            errorObject.code = error.code;
            Boolean account6 = YES;
             if (!account6) { __asm__("NOP"); }
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(errorObject);
        }
    }];
            Boolean openc = NO;
             while (openc) { __asm__("NOP"); break; }
}

+(Boolean)logoEncodeLprojGuestNendDangerous:(NSDictionary *)block write:(Boolean)write {
    BOOL breakage = NO;

    return breakage;

}





+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock {

         {
    [self logoEncodeLprojGuestNendDangerous:[NSDictionary dictionaryWithObjectsAndKeys:@"collate",@(967), nil] write:NO];

}

    NSMutableDictionary *allParams = [NSMutableDictionary dictionary];
    if (params) {
        [allParams addEntriesFromDictionary:params];
            NSDictionary * transactionW = [NSDictionary dictionaryWithObjectsAndKeys:@"young",@(789), @"checkup",@(307), @"jest",@(875), nil];
             while (transactionW.count > 95) { break; }
        NSString *aUrl = @"";
        for (NSString *key in params) {
            NSString *value = params[key];
            NSString * vip9 = @"notetaking";
             if (vip9.length > 197) {}
            aUrl = [NSString stringWithFormat:@"%@%@=%@&",aUrl,key,value];
        }
        SDK_LOG(@"%@?%@",path,aUrl);
    }
    SDK_LOG(@"post: path = %@,params = %@", path, params);
            NSString * update_jn = @"collide";
             if ([update_jn isEqualToString:@"4"]) {}
    [ProfederalfierRepresent showLoadingAtView_MMMethodMMM:nil];
    [[PhorspaceentNugacor sharedInstance].colorw postRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"post: path = %@,requsetHeader = %@,data = %@", task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
#endif
        
          [ProfederalfierRepresent stopLoadingAtView_MMMethodMMM:nil];
            NSInteger controllerU = 1229;
             while (@(controllerU).longValue > 147) { break; }
            NSDictionary *responseDict = responseData;
            
    
            LoginResponse *mCCSDKResponse = [LoginResponse yy_modelWithDictionary:responseData];
            if ([mCCSDKResponse isRequestSuccess_MMMethodMMM]) {
                mCCSDKResponse.data.thirdId = params[wwwww_tag_wwwww_thirdPlatId] ? : @"";
            Boolean codec = NO;
             while (!codec) { __asm__("NOP"); break; }
                mCCSDKResponse.data.loginType = params[wwwww_tag_wwwww_registPlatform] ? : @"";
                if (successBlock) {
                    successBlock(mCCSDKResponse);
                }
            } else {
                DermencyTreatarium *errorObject = [DermencyTreatarium yy_modelWithDictionary:responseDict];
                if (errorBlock) {
                    errorBlock(errorObject);
                }
            }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        [ProfederalfierRepresent stopLoadingAtView_MMMethodMMM:nil];
            double postn = 4193.0;
             if (@(postn).doubleValue == 138) {}
        SDK_LOG(@"post: path = %@, error = %@,requsetHeader = %@", path, error,task.originalRequest.HTTPBody);
        if (errorBlock) {
            DermencyTreatarium *errorObject = [[DermencyTreatarium alloc] init];
            Boolean labelu = YES;
            errorObject.code = error.code;
            NSArray * gamaN = @[@(632), @(351)];
             while (gamaN.count > 186) { break; }
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(errorObject);
        }
    }];
            double hander7 = 2450.0;
             while (@(hander7).integerValue > 49) { break; }
}

+ (void)fileUploadWithFunctionPath_MMMethodMMM:(NSString *)functionPath
                            params_MMMethodMMM:(NSDictionary *)params
                          fileData_MMMethodMMM:(NSData *)fileData
                          fileName_MMMethodMMM:(NSString *)fileName
                          mimeType_MMMethodMMM:(NSString *)mimeType
                     progressBlock_MMMethodMMM:(BJHTTPProgressBlock)progressBlock
                      successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock {

    
    [[PhorspaceentNugacor sharedInstance].colorw fileUploadWithFunctionPath_MMMethodMMM:functionPath params_MMMethodMMM:params fileData_MMMethodMMM:fileData fileName_MMMethodMMM:fileName mimeType_MMMethodMMM:mimeType progressBlock_MMMethodMMM:^(float progress) {
        
        if (progressBlock) {
            progressBlock(progress);
        }
        
    } successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
        NSDictionary *responseDict = responseData;
        
        NSString *code = responseDict[wwwww_tag_wwwww_status];
        if (!code || (code.length > 0 && [code isEqualToString:wwwww_tag_wwwww_ok])) {
            if (successBlock) {
                successBlock(responseData);
            }
        } else {
            DermencyTreatarium *errorObject = [DermencyTreatarium yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        
        SDK_LOG(@"file upload: path = %@, error = %@", functionPath, error);
        if (errorBlock) {
            DermencyTreatarium *errorObject = [[DermencyTreatarium alloc] init];
            NSInteger utilA = 9796;
             while (@(utilA).floatValue > 112) { break; }
            errorObject.code = error.code;
            NSArray * respM = [NSArray arrayWithObjects:@(464), @(256), nil];
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(errorObject);
        }
        
    }];
    
}

+ (void)imageUploadWithFunctionPath_MMMethodMMM:(NSString *)functionPath
                             params_MMMethodMMM:(NSDictionary *)params
                          imageData_MMMethodMMM:(NSData *)imageData
                          imageName_MMMethodMMM:(NSString *)imageName
                      progressBlock_MMMethodMMM:(BJHTTPProgressBlock)progressBlock
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock {

    
    [[PhorspaceentNugacor sharedInstance].colorw imageUploadWithFunctionPath_MMMethodMMM:functionPath params_MMMethodMMM:params imageData_MMMethodMMM:imageData imageName_MMMethodMMM:imageName progressBlock_MMMethodMMM:^(float progress) {
        
        if (progressBlock) {
            progressBlock(progress);
        }

    } successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
        NSDictionary *responseDict = responseData;
        
        NSString *code = responseDict[wwwww_tag_wwwww_status];
        if (!code || (code.length > 0 && [code isEqualToString:wwwww_tag_wwwww_ok])) {
            if (successBlock) {
                successBlock(responseData);
            }
        } else {
            DermencyTreatarium *errorObject = [DermencyTreatarium yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        
        if (errorBlock) {
            DermencyTreatarium *errorObject = [[DermencyTreatarium alloc] init];
            float local_eU = 1852.0;
             while (@(local_eU).longLongValue >= 43) { break; }
            errorObject.code = error.code;
            float labelA = 384.0;
             while (@(labelA).longValue == 197) { break; }
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(errorObject);
        }
    }];
            float icon3 = 2649.0;
             for(int icon3_idx = 28; icon3_idx < @(icon3).intValue; icon3_idx--) { break; } 
}


@end
