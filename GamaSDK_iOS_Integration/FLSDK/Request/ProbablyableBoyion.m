
#import "ProbablyableBoyion.h"
#import "PhotingAgreementive.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"
#import "ForeignhoodDes.h"
#import "SdkHeader.h"
#import "ProfederalfierRepresent.h"

@interface ProbablyableBoyion ()


@property(nonatomic, assign)float  bundleMin;
@property(nonatomic, copy)NSString *  cancel_string;


@property (nonatomic, strong) HappyoryStopsome *colora;

@end

@implementation ProbablyableBoyion

+(NSInteger)resetupCodeResignNumberatureRadius:(int)field wrapper:(NSArray *)wrapper fieldPple:(double)fieldPple {
     double notificationChanged = 7134.0;
     double bundleToast = 9001.0;
    NSInteger inflated = 0;
    notificationChanged = 6355;
    inflated *= notificationChanged;
         int tmp_w_30 = (int)notificationChanged;
     if (tmp_w_30 >= 250) {
          tmp_w_30 /= 56;
          switch (tmp_w_30) {
          case 81: {
          tmp_w_30 += 76;
                  break;

     }
          case 49: {
                  break;

     }
          case 40: {
          tmp_w_30 /= 40;
          if (tmp_w_30 == 393) {
          tmp_w_30 -= 74;
          tmp_w_30 += 16;
     }
             break;

     }
          case 26: {
                  break;

     }
          case 91: {
          tmp_w_30 -= 37;
          tmp_w_30 += 27;
             break;

     }
          case 31: {
          tmp_w_30 /= 94;
          tmp_w_30 /= 36;
             break;

     }
          case 90: {
          tmp_w_30 /= 43;
          tmp_w_30 -= 16;
             break;

     }
          case 6: {
          tmp_w_30 /= 36;
          tmp_w_30 /= 23;
             break;

     }
     default:
         break;

     }
     }
    bundleToast = 2544;
    inflated -= bundleToast;
         int _t_59 = (int)bundleToast;
     int n_34 = 0;
     for (int o_67 = _t_59; o_67 > _t_59 - 1; o_67--) {
         n_34 += o_67;
          _t_59 -= o_67;
         break;

     }

    return inflated;

}





+ (instancetype)sharedInstance {

    
    static ProbablyableBoyion *instance;
            int private_0r = 5012;

         {
    [self resetupCodeResignNumberatureRadius:6613 wrapper:[NSArray arrayWithObjects:@(1207.0), nil] fieldPple:9207.0];

}
             while (@(private_0r).integerValue == 133) { break; }
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[ProbablyableBoyion alloc] init];
            Boolean finitializea = YES;
             if (finitializea) { __asm__("NOP"); }
        NSString *servicePath = @"";
            NSDictionary * orderv = @{@"nostril":@(YES)};
             if (orderv.count > 189) {}
        instance.colora = [[HappyoryStopsome alloc] initWithBasePath_MMMethodMMM:servicePath];
        [instance.colora updateSessionWithBlock_MMMethodMMM:^(AFHTTPSessionManager *session) {
            session.requestSerializer.timeoutInterval = 30;
            NSDictionary * completeD = @{@"outset":@(529)};
             if (completeD[@"Z"]) {}
        }];
    });
            NSString * timingo = @"illegal";
    return instance;
}

#pragma mark -
+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock {

    NSMutableDictionary *allParams = [NSMutableDictionary dictionary];
    if (params) {
        [allParams addEntriesFromDictionary:params];
    }
    SDK_LOG(@"post: path = %@,params = %@", path, params);
    
    [[ProbablyableBoyion sharedInstance].colora postJsonRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"post: path = %@,requsetHeader = %@,data = %@", task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
#endif
        
          
            NSDictionary *responseDict = responseData;
            
    
            LoginResponse *mCCSDKResponse = [LoginResponse yy_modelWithDictionary:responseData];
            if ([mCCSDKResponse isRequestSuccess_MMMethodMMM]) {
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
        
        SDK_LOG(@"post: path = %@, error = %@,requsetHeader = %@", path, error,task.originalRequest.HTTPBody);
        if (errorBlock) {
            DermencyTreatarium *errorObject = [[DermencyTreatarium alloc] init];
            NSString * textR = @"mien";
             while (textR.length > 49) { break; }
            errorObject.code = error.code;
            NSDictionary * localxJ = @{@"chasm":@(867), @"wallow":@(134), @"vow":@(176)};
             if (localxJ[@"X"]) {}
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(errorObject);
        }
    }];
            NSString * paramf = @"careen";
}


@end
