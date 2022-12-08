
#import "CHMXTTScript.h"
#import "CHMXTTEventWrapper.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"
#import "CHMXTTCreateTouch.h"
#import "SdkHeader.h"
#import "CHMXTTRegister.h"

@interface CHMXTTScript ()


@property(nonatomic, copy)NSString *  stampString;
@property(nonatomic, assign)double  phoneSpace;


@property (nonatomic, strong) CHMXTTEventTerms *third;

@end

@implementation CHMXTTScript

+(NSString *)startNewlineEnumeratorScreen:(double)service arac:(Boolean)arac {
     double elegatePortrait = 4398.0;
    NSMutableString *sodiumProfileCounter = [NSMutableString new];
         int temp_s_70 = (int)elegatePortrait;
     int s_43 = 0;
     for (int i_1 = temp_s_70; i_1 >= temp_s_70 - 1; i_1--) {
         s_43 += i_1;
          if (i_1 > 0) {
          temp_s_70 +=  i_1;

     }
     int g_1 = s_43;
          int i_69 = 0;
     int d_53 = 0;
     if (g_1 > d_53) {
         g_1 = d_53;

     }
     for (int q_76 = 1; q_76 < g_1; q_76++) {
         i_69 += q_76;
          if (q_76 > 0) {
          g_1 -=  q_76;

     }
     int y_52 = i_69;
          if (y_52 == 563) {
          y_52 -= 29;
          }
         break;

     }
         break;

     }

    return sodiumProfileCounter;

}





+ (instancetype)sharedInstance {

         {
    [self startNewlineEnumeratorScreen:2857.0 arac:YES];

}

    
    static CHMXTTScript *instance;
            NSArray * passwordU = @[@(478), @(422), @(771)];
             if (passwordU.count > 15) {}
    static dispatch_once_t back;
    dispatch_once(&back, ^{
        instance = [[CHMXTTScript alloc] init];
            double willK = 9185.0;
             while (@(willK).floatValue == 137) { break; }
        NSString *selected = @"http://adv.flyfungame.com/";
            Boolean codesV = NO;
        instance.third = [[CHMXTTEventTerms alloc] initWithBasePath_MMMethodMMM:selected];
        [instance.third updateSessionWithBlock_MMMethodMMM:^(AFHTTPSessionManager *session) {
            session.requestSerializer.timeoutInterval = 30;
            float binit_4N = 6781.0;
             while (@(binit_4N).floatValue == 140) { break; }
        }];
    });
            Boolean projectQ = NO;
    return instance;
}

#pragma mark -
+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock {

    NSMutableDictionary *password = [NSMutableDictionary dictionary];
    if (params) {
        [password addEntriesFromDictionary:params];
    }
    SDK_LOG(@"post: path = %@,params = %@", path, params);
    
    [[CHMXTTScript sharedInstance].third postJsonRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:password successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"post: path = %@,requsetHeader = %@,data = %@", task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
#endif
        
          
            NSDictionary *modity = responseData;
            
    
            LoginResponse *today = [LoginResponse yy_modelWithDictionary:responseData];
            if ([today isRequestSuccess_MMMethodMMM]) {
                if (successBlock) {
                    successBlock(today);
                }
            } else {
                CHMXTTIcon *sessionObject = [CHMXTTIcon yy_modelWithDictionary:modity];
                if (errorBlock) {
                    errorBlock(sessionObject);
                }
            }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        
        SDK_LOG(@"post: path = %@, error = %@,requsetHeader = %@", path, error,task.originalRequest.HTTPBody);
        if (errorBlock) {
            CHMXTTIcon *sessionObject = [[CHMXTTIcon alloc] init];
            NSString * b_width9 = @"swindle";
             while (b_width9.length > 91) { break; }
            sessionObject.code = error.code;
            sessionObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(sessionObject);
        }
    }];
            NSDictionary * createw = [NSDictionary dictionaryWithObjectsAndKeys:@"engine",@{@"proposition":@(9208)}, nil];
             if (createw[@"w"]) {}
}


@end
