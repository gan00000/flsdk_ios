//
//

#import "GamaLoginViewModel.h"
#import "GamaCentreInfo.h"
#import "GamaThirdFunctionPort.h"
#import "GamaFacebookPort.h"
#import "GamaRequestor.h"
#import "GamaBaseSDK.h"
#import "GamaLoginFuncionPort.h"
#import "GamaInterfaceSDK.h"
#import "GamaAdPort.h"
#import "GamaAdInterface.h"
#import "GamaCommonHeader.h"
#import "SDImageCache.h"
#import "HelloHeader.h"

static NSString *loginEvent        =   GAMESWORD_EVENT_LOGIN;
static NSString *registerEvent     =   GAMESWORD_EVENT_REGISTER;

@interface GamaLoginViewModel()

@property (copy, nonatomic) completion completion;

@end

@implementation GamaLoginViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        // login failed
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(gama_handleLoginNotification:)
                                                     name:GAMA_LOGIN_FAIL_IN object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(gama_handleLoginNotification:)
                                                     name:GAMA_THIRD_LOGIN_FAIL object:nil];
        // Facebook工程还会发出此通知，故需监听
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(gama_handleLoginNotification:)
                                                     name:GAMA_FACEBOOK_LOGIN_FAIL object:nil];
        
        // login success
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(gama_handleLoginNotification:)
                                                     name:GAMA_LOGIN_SUCCESS_IN object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(gama_handleLoginNotification:)
                                                     name:GAMA_THIRD_LOGIN_SUCCESS object:nil];
        
        // register result
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(gama_handleLoginNotification:)
                                                     name:GAMA_REGISTER_FAIL_IN object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(gama_handleLoginNotification:)
                                                     name:GAMA_REGISTER_SUCCESS_IN object:nil];
    }
    return self;
}

+ (instancetype)model
{
    static GamaLoginViewModel *model = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        model = [[GamaLoginViewModel alloc] init];
        model.sdkLanguage = SDKConReaderGetString(@"gameLanguage");
        if (![SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]) {
            model.vfConfig = YES;
        }
        [model getConfigFile];
    });
    return model;
}

#pragma mark 请求开关
- (void)getConfigFile{
    //https://config.gamesword.com/gottw/base/V1/config.json
    NSURLCache *URLCache = [[NSURLCache alloc] initWithMemoryCapacity:4 * 1024 * 1024
                                                          diskCapacity:20 * 1024 * 1024
                                                              diskPath:nil];
    [NSURLCache setSharedURLCache:URLCache];
    NSString *configRequest = [NSString stringWithFormat:@"https://config.gamesword.com/%@/base/V1/config.json",SDKConReaderGetString(SDK_GAME_CODE)];
    [GamaRequestor requestByNSURLRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:configRequest]]
                       ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
        if (!error) {
            if ([resultJsonDic[@"vfcodeSch"][@"open"] isEqualToString:@"0"]) {
                GamaLoginViewModel.model.vfConfig = NO;
            }
            if (resultJsonDic[@"smsMsg"]) {
                GamaLoginViewModel.model.bindViewPrompt = resultJsonDic[@"smsMsg"];
            }
        }
        
    }];
}

- (void)gama_handleLoginNotification:(NSNotification *)notification
{
    // 将通知转换为Block
    NSError *error = nil;
    if ([notification.name isEqualToString:GAMA_LOGIN_FAIL_IN]) {
        error = [NSError errorWithDomain:@" login failed" code:2222 userInfo:nil];
    }
    if ([notification.name isEqualToString:GAMA_THIRD_LOGIN_FAIL]) {
        error = [NSError errorWithDomain:@" third failed" code:2223 userInfo:nil];
    }
    if ([notification.name isEqualToString:GAMA_FACEBOOK_LOGIN_FAIL]) {
        error = [NSError errorWithDomain:@" facebook failed" code:2224 userInfo:nil];
    }
    if ([notification.name isEqualToString:GAMA_REGISTER_FAIL_IN]) {
        error = [NSError errorWithDomain:@" register failed" code:2225 userInfo:nil];
    }
    
    if (!error) { // 注册或登录成功
        
        //        将登陆成功后服务端返回的信息保存，在登录成功以后请求服务端时将该字段返回给服务端
        NSMutableDictionary * returnServerDic = [notification.userInfo mutableCopy];
        //        去除服务端不需要的部分
        [returnServerDic removeObjectsForKeys:@[@"code",@"message"]];
        returnServerDic[@"freeRegisterName"] ? [returnServerDic removeObjectsForKeys:@[@"freeRegisterName",@"freeRegisterPwd"]]: nil;

        // 重新组织登录结果
        __block NSMutableDictionary *userLoginSuccessInfo = notification.userInfo.mutableCopy;
        userLoginSuccessInfo[@"loginState"] = @"normal";
        if ([notification.name isEqualToString:GAMA_REGISTER_SUCCESS_IN]) {
            userLoginSuccessInfo[@"loginState"] = @"register";
        }
        
        if ([SdkUserInfoModel shareInfoModel].thirdId) {
            userLoginSuccessInfo[@"thirdId"] = [SdkUserInfoModel shareInfoModel].thirdId;
        }
        
        NSString *loginTypeStr = [SdkUserInfoModel shareInfoModel].loginTypeStr;
        if (loginTypeStr) {
            userLoginSuccessInfo[@"loginTypeStr"] = loginTypeStr;
            if (![loginTypeStr isEqualToString:_SDK_PLAT_SELF]) {
                NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
                if (![userDefaults boolForKey:loginTypeStr]) { // 本地没有纪录姑且表示第三方账号已注册
                    userLoginSuccessInfo[@"loginState"] = @"register";
                    [userDefaults setBool:YES forKey:loginTypeStr];
                    [userDefaults synchronize];
                }
            }
        }
        
        NSString *userId = !notification.userInfo[@"userId"] ? @"" :notification.userInfo[@"userId"];

        // 广告统计
        // facebook &appflyer & firebase统计；登陆、注册

        [userLoginSuccessInfo[@"loginState"] isEqualToString:@"register"] ?
        [GamaAdInterface allEventReportWithEventName:registerEvent parameters:@{@"userId":userId}] :
        [GamaAdInterface allEventReportWithEventName:loginEvent parameters:@{@"userId":userId}];
        
        //兼容旧的返回fb id的形式（避免忘记让原厂更改为新格式）
        if ([loginTypeStr isEqualToString:@"fb"]) {
            userLoginSuccessInfo[@"fb"] = [SdkUserInfoModel shareInfoModel].thirdId;
            NSDictionary *result = [NSDictionary dictionaryWithDictionary:[GamaFacebookPort fetchFbProfile]];
//            userLoginSuccessInfo[@"gender"] = result[@"gender"];
            result[@"gender"] ? userLoginSuccessInfo[@"gender"] = result[@"gender"] : nil;
            result[@"birthday"] ? userLoginSuccessInfo[@"birthday"] = result[@"birthday"] : nil;
            result[@"name"] ? userLoginSuccessInfo[@"name"] = result[@"name"] : nil;
            result[@"iconUrl"] ? userLoginSuccessInfo[@"iconUrl"] = result[@"iconUrl"] : nil;

//            userLoginSuccessInfo[@"birthday"] = result[@"birthday"]?:@"";
//            userLoginSuccessInfo[@"name"] = result[@"name"]?:@"";
//            userLoginSuccessInfo[@"iconUrl"] = result[@"picture"][@"data"][@"url"]?:@"";
            
        }
        
        //若在免注册登录成功的通知中的userInfo包含status且为1-达到需提示次数或0-已绑定过时，则当作登录失败，将登录信息完全返回给外部，供外部作对应的逻辑操作
        NSString *status = [NSString stringWithFormat:@"%@",notification.userInfo[@"status"]];  //是否要加非空判断
        if ([status isEqualToString:@"1"] || [status isEqualToString:@"0"]) {
            
            //自行监听 GAMA_THIRD_LOGIN_SUCCESS ，或通过以下block内  完成地区逻辑
            
            !self.completion ? : self.completion(notification.userInfo,error);
            return;
        }
        
//        //增加gama2 登入 demo code
//        if (loginTypeStr) {
//            userLoginSuccessInfo[@"loginTypeStr"] = loginTypeStr;
//            if ([loginTypeStr isEqualToString:@"gama"]) {
//                [GamaThirdFunctionPort thirdLoginWithThirdId:userId
//                                               andThirdPlate:@"gmb"
//                                                     andApps:@""
//                                            andBusinessToken:nil
//                                      andThirdAdditionParams:nil 
//                                               andDomainName:SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME)
//                                               andOtherBlock:^{
//                                                   //gama2 Server register success
//                                               }];
//                
//            }
//        }
        
        
//        GamaAnnouncement *annoucement = [[GamaAnnouncement alloc] initWithCompleter:^{
//            [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_NOTIFICATION_SUCCESS_LOGIN
//                                                                object:nil
//                                                              userInfo:userLoginSuccessInfo];
//            if ([appTopViewController.view viewWithTag:10000213]) {
//                [[appTopViewController.view viewWithTag:10000213] removeFromSuperview];
//            }
//        }];
//        annoucement.frame = appTopViewController.view.frame;
//        annoucement.tag = 10000213;
//        [appTopViewController.view addSubview:annoucement];
//        [userLoginSuccessInfo release];

    } else {
        !_completion ? : _completion(notification.userInfo,error);
    }
}

- (void)dealloc
{
    [_sdkLanguage release];_sdkLanguage = nil;
    Block_release(_completion);_completion = nil;
    [super dealloc];
}

@end
