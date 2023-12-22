//
//  GamaAppleLogin.m
//  GamaSDK_iOS
//
//  Created by coke on 2019/10/21.
//  Copyright © 2019 Gama. All rights reserved.
//

#import "SAppleLogin.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import "SUtil.h"
#import "AlertUtil.h"

@interface SAppleLogin()<ASAuthorizationControllerPresentationContextProviding,ASAuthorizationControllerDelegate>
@property (copy, atomic) AppleLoginSuccess impSuccess_MMMPRO;
@property (copy, atomic) AppleLoginError impError_MMMPRO;
@end

//sign in with apple 工具类设成全局变量，或使用单例类，如果使用局部变量，和IAP工具类一样苹果的回调不会执行。
@implementation SAppleLogin
{
    UIView *presentView;
}
@synthesize appleLoginId = _appleLoginId;

+ (instancetype)share{
    
    static SAppleLogin *_sAppleLogin = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sAppleLogin = [[SAppleLogin alloc] init];
    });
    
    return _sAppleLogin;
}

#pragma mark - Actions

//! 处理授权
- (void)handleAuthrization:(UIView *_Nullable)mView{
    
    presentView = mView;
    
    if (@available(iOS 13.0, *)) {
        // A mechanism for generating requests to authenticate users based on their Apple ID.
        // 基于用户的Apple ID授权用户，生成用户授权请求的一种机制
        ASAuthorizationAppleIDProvider *appleIDProvider = [ASAuthorizationAppleIDProvider new];
        // Creates a new Apple ID authorization request.
        // 创建新的AppleID 授权请求
        ASAuthorizationAppleIDRequest *request = appleIDProvider.createRequest;
        // The contact information to be requested from the user during authentication.
        // 在用户授权期间请求的联系信息
        request.requestedScopes = @[ASAuthorizationScopeFullName, ASAuthorizationScopeEmail];
        // A controller that manages authorization requests created by a provider.
        // 由ASAuthorizationAppleIDProvider创建的授权请求 管理授权请求的控制器
        ASAuthorizationController *controller = [[ASAuthorizationController alloc] initWithAuthorizationRequests:@[request]];
        // A delegate that the authorization controller informs about the success or failure of an authorization attempt.
        // 设置授权控制器通知授权请求的成功与失败的代理
        controller.delegate = self;
        // A delegate that provides a display context in which the system can present an authorization interface to the user.
        // 设置提供 展示上下文的代理，在这个上下文中 系统可以展示授权界面给用户
        controller.presentationContextProvider = self;
        // starts the authorization flows named during controller initialization.
        // 在控制器初始化期间启动授权流
        [controller performRequests];
    }
}


#pragma mark - Delegate

//! 授权成功地回调
- (void)authorizationController:(ASAuthorizationController *)controller didCompleteWithAuthorization:(ASAuthorization *)authorization  API_AVAILABLE(ios(13.0)){    //system_method

    NSLog(@"%s", __FUNCTION__);
    NSLog(@"%@", controller);
    NSLog(@"%@", authorization);
    NSLog(@"authorization.credential：%@", authorization.credential);

    NSMutableString *mStr = [NSMutableString string];
//    mStr = [_appleIDInfoTextView.text mutableCopy];

    if ([authorization.credential isKindOfClass:[ASAuthorizationAppleIDCredential class]]) {
        // 用户登录使用ASAuthorizationAppleIDCredential
        ASAuthorizationAppleIDCredential *appleIDCredential = authorization.credential;
        NSData *authorCode = appleIDCredential.authorizationCode;
        NSString *authorCodeStr = [[NSString alloc] initWithData:authorCode encoding:NSUTF8StringEncoding];
        NSString *user = appleIDCredential.user;
        NSString *token = [[NSString alloc] initWithData:appleIDCredential.identityToken encoding:NSUTF8StringEncoding];
        //  需要使用钥匙串的方式保存用户的唯一信息 这里暂且处于测试阶段 是否的NSUserDefaults
        [[NSUserDefaults standardUserDefaults] setValue:user forKey:wwwww_tag_wwwww_GamaAppleCurrentIdentifier];//QiShareCurrentIdentifier
        [mStr appendString:user?:@""];
        NSString *familyName = appleIDCredential.fullName.familyName;
        [mStr appendString:familyName?:@""];
        NSString *givenName = appleIDCredential.fullName.givenName;
        [mStr appendString:givenName?:@""];
        NSString *email = appleIDCredential.email;
        [mStr appendString:email?:@""];
        NSLog(@"mStr：%@", mStr);
        [mStr appendString:@"\n"];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self saveAppleLastLoginSuccessWithInformation_MMMethodMMM:@{wwwww_tag_wwwww_appleThirdID:user?:@"",wwwww_tag_wwwww_appleToken:token?:@"",wwwww_tag_wwwww_authorizationCode:authorCodeStr?:@""}];
            self.impSuccess_MMMPRO(@{wwwww_tag_wwwww_appleThirdID:user?:@"",wwwww_tag_wwwww_appleToken:token?:@"",wwwww_tag_wwwww_authorizationCode:authorCodeStr?:@""});
        });
    } else if ([authorization.credential isKindOfClass:[ASPasswordCredential class]]) {
        // 用户登录使用现有的密码凭证
        ASPasswordCredential *passwordCredential = authorization.credential;
        // 密码凭证对象的用户标识 用户的唯一标识
        NSString *user = passwordCredential.user;
        // 密码凭证对象的密码
        NSString *password = passwordCredential.password;
        [mStr appendString:user?:@""];
        [mStr appendString:password?:@""];
        [mStr appendString:@"\n"];
        NSLog(@"mStr：%@", mStr);
        dispatch_async(dispatch_get_main_queue(), ^{
            [self saveAppleLastLoginSuccessWithInformation_MMMethodMMM:@{wwwww_tag_wwwww_appleThirdID:user?:@"",wwwww_tag_wwwww_appleVerfication:password?:@""}];
            self.impSuccess_MMMPRO(@{wwwww_tag_wwwww_appleThirdID:user?:@"",wwwww_tag_wwwww_appleVerfication:password?:@""});
        });

    } else {
        NSLog(wwwww_tag_wwwww_macrsmallenne_radi);
        mStr = [wwwww_tag_wwwww_follow_hibatic mutableCopy];
        NSError *error = nil;
        dispatch_async(dispatch_get_main_queue(), ^{
            self.impError_MMMPRO(error);
        });
        [AlertUtil showAlertWithMessage_MMMethodMMM:mStr];

    }
}

//! 授权失败的回调
- (void)authorizationController:(ASAuthorizationController *)controller didCompleteWithError:(NSError *)error  API_AVAILABLE(ios(13.0)){    //system_method

    NSLog(@"%s", __FUNCTION__);
    NSLog(@"错误信息：%@", error);
    NSString *errorMsg = nil;
    self.impError_MMMPRO(error);
    switch (error.code) {
        case ASAuthorizationErrorCanceled:
//            errorMsg = GetString(wwwww_tag_wwwww_GAMA_APPLE_DEAUTHORIZATION_FAILED_TEXT);
            break;
        case ASAuthorizationErrorFailed:
//            errorMsg = GetString(wwwww_tag_wwwww_GAMA_APPLE_AUTHRIZATION_REQUEST_FAILED_TEXT);
            break;
        case ASAuthorizationErrorInvalidResponse:
//            errorMsg = GetString(wwwww_tag_wwwww_GAMA_APPLE_AUTHRIZATION_INVALID);
            break;
        case ASAuthorizationErrorNotHandled:
//            errorMsg = GetString(wwwww_tag_wwwww_GAMA_APPLE_PROCESS_AUTHOROZATION_FAILED);
            break;
        case ASAuthorizationErrorUnknown:
//            errorMsg = GetString(wwwww_tag_wwwww_GAMA_APPLE_RETURN_UNKNOWN_REASON);
            break;
    }

//    NSMutableString *mStr = [NSMutableString string];
//    [mStr appendString:errorMsg];
//    [mStr appendString:@"\n"];
//    [AlertUtil showAlertWithMessage_MMMethodMMM:mStr];
//
//
//    if (errorMsg) {
//        return;
//    }

//    if (error.localizedDescription) {
//        NSMutableString *mStr = [NSMutableString string];
//        [mStr appendString:error.localizedDescription];
//        [mStr appendString:@"\n"];
//        [AlertUtil showAlertWithMessage_MMMethodMMM:mStr];
//
//    }
//    NSLog(@"controller requests：%@", controller.authorizationRequests);
    /* // 取消授权的时候也会调用这里
     ((ASAuthorizationAppleIDRequest *)(controller.authorizationRequests[0])).requestedScopes
     <__NSArrayI 0x2821e2520>(
     full_name,
     email
     )
     */
}


//! Tells the delegate from which window it should present content to the user.
//! 告诉代理应该在哪个window 展示内容给用户
- (ASPresentationAnchor)presentationAnchorForAuthorizationController:(ASAuthorizationController *)controller API_AVAILABLE(ios(13.0)){  //system_method

    NSLog(@"调用展示window方法：%s", __FUNCTION__);
    // 返回window
    if (presentView) {
        return presentView.window;
    }
    return appTopViewController.view.window;
}

//- (void)viewDidAppear_MMMethodMMM:(BOOL)animated {
//    [super viewDidAppear_MMMethodMMM:animated];
//
//    [self perfomExistingAccountSetupFlows_MMMethodMMM];
//}

//! Prompts the user if an existing iCloud Keychain credential or Apple ID credential is found.
//! 如果存在iCloud Keychain 凭证或者AppleID 凭证提示用户
- (void)perfomExistingAccountSetupFlows_MMMethodMMM {
    if (@available(iOS 13.0, *)) {
        // A mechanism for generating requests to authenticate users based on their Apple ID.
        // 基于用户的Apple ID授权用户，生成用户授权请求的一种机制
        ASAuthorizationAppleIDProvider *appleIDProvider = [ASAuthorizationAppleIDProvider new];
        // An OpenID authorization request that relies on the user’s Apple ID.
        // 授权请求依赖于用于的AppleID
        ASAuthorizationAppleIDRequest *authAppleIDRequest = [appleIDProvider createRequest];
        // A mechanism for generating requests to perform keychain credential sharing.
        // 为了执行钥匙串凭证分享生成请求的一种机制
        ASAuthorizationPasswordRequest *passwordRequest = [[ASAuthorizationPasswordProvider new] createRequest];

        NSMutableArray <ASAuthorizationRequest *>* mArr = [NSMutableArray arrayWithCapacity:2];
        if (authAppleIDRequest) {
            [mArr addObject:authAppleIDRequest];
        }
        if (passwordRequest) {
            [mArr addObject:passwordRequest];
        }
        // ASAuthorizationRequest：A base class for different kinds of authorization requests.
        // ASAuthorizationRequest：对于不同种类授权请求的基类
        NSArray <ASAuthorizationRequest *>* requests = [mArr copy];

        // A controller that manages authorization requests created by a provider.
        // 由ASAuthorizationAppleIDProvider创建的授权请求 管理授权请求的控制器
        // Creates a controller from a collection of authorization requests.
        // 从一系列授权请求中创建授权控制器
        ASAuthorizationController *authorizationController = [[ASAuthorizationController alloc] initWithAuthorizationRequests:requests];
        // A delegate that the authorization controller informs about the success or failure of an authorization attempt.
        // 设置授权控制器通知授权请求的成功与失败的代理
        authorizationController.delegate = self;
        // A delegate that provides a display context in which the system can present an authorization interface to the user.
        // 设置提供 展示上下文的代理，在这个上下文中 系统可以展示授权界面给用户
        authorizationController.presentationContextProvider = self;
        // starts the authorization flows named during controller initialization.
        // 在控制器初始化期间启动授权流
        [authorizationController performRequests];
    }
}

//! 添加苹果登录的状态通知
- (void)observeAppleSignInState_MMMethodMMM {
    if (@available(iOS 13.0, *)) {
        NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
        [center addObserver:self selector:@selector(handleSignInWithAppleStateChanged_MMMethodMMM:) name:ASAuthorizationAppleIDProviderCredentialRevokedNotification object:nil];
    }
}

//! 观察SignInWithApple状态改变
- (void)handleSignInWithAppleStateChanged_MMMethodMMM:(id)noti {

    NSLog(@"%s", __FUNCTION__);
    NSLog(@"%@", noti);
}

#pragma mark - Private functions
//! 观察授权状态
- (void)observeAuthticationState_MMMethodMMM {

    if (@available(iOS 13.0, *)) {
        // A mechanism for generating requests to authenticate users based on their Apple ID.
        // 基于用户的Apple ID 生成授权用户请求的机制
        ASAuthorizationAppleIDProvider *appleIDProvider = [ASAuthorizationAppleIDProvider new];
        // 注意 存储用户标识信息需要使用钥匙串来存储 这里笔者简单期间 使用NSUserDefaults 做的简单示例
        NSString *userIdentifier = [[NSUserDefaults standardUserDefaults] valueForKey:wwwww_tag_wwwww_GamaCurrentIdentifier];

        if (userIdentifier) {
            NSString* __block errorMsg = nil;
            //Returns the credential state for the given user in a completion handler.
            // 在回调中返回用户的授权状态
            [appleIDProvider getCredentialStateForUserID:userIdentifier completion:^(ASAuthorizationAppleIDProviderCredentialState credentialState, NSError * _Nullable error) {
                switch (credentialState) {
                        // 苹果证书的授权状态
                    case ASAuthorizationAppleIDProviderCredentialRevoked:
                        // 苹果授权凭证失效
                        errorMsg = wwwww_tag_wwwww_ceptsive_primath;
                        break;
                    case ASAuthorizationAppleIDProviderCredentialAuthorized:
                        // 苹果授权凭证状态良好
                        errorMsg = wwwww_tag_wwwww_them_wife;
                        break;
                    case ASAuthorizationAppleIDProviderCredentialNotFound:
                        // 未发现苹果授权凭证
                        errorMsg = wwwww_tag_wwwww_hoplify_interary;
                        // 可以引导用户重新登录
                        break;
                }
                dispatch_async(dispatch_get_main_queue(), ^{
                    NSLog(wwwww_tag_wwwww_successfulen_perical);
                    NSLog(@"%@", errorMsg);
                });
            }];

        }
    }
}



-(void)makeAppleCallbackSuccessBlock_MMMethodMMM:(AppleLoginSuccess)successBlock
                                andErrorBlock_MMMethodMMM:(AppleLoginError)errorBlock
{
//    SAppleLogin *temp = [[SAppleLogin alloc] init];
    self.impSuccess_MMMPRO = successBlock;
    self.impError_MMMPRO = errorBlock;
    
}


- (void)autoLoginAppleAccountWithInformation_MMMethodMMM{
    NSDictionary *tempDic = [self fetchAppleLoginInfo_MMMethodMMM];
    NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:tempDic];
    NSString *appleID = [tempMutableDic[wwwww_tag_wwwww_appleThirdID] copy];
    [tempMutableDic removeObjectForKey:wwwww_tag_wwwww_appleThirdID];
//    [GamaThirdFunctionPort thirdLoginWithThirdId:appleID
//                                  andThirdPlate_MMMethodMMM:wwwww_tag_wwwww_apple
//                                        andApps:@""
//                               andBusinessToken:nil
//                         andThirdAdditionParams:tempMutableDic
//                                  andDomainName:GetConfigString(GAMA_LOGIN_DOMAIN_NAME)
//                                  andOtherBlock:^{
//                                      //gama2 Server register success
//                                  }];
}

- (void)saveAppleLastLoginSuccessWithInformation_MMMethodMMM:(NSDictionary*)info{
    [[NSUserDefaults standardUserDefaults] setObject:info forKey:wwwww_tag_wwwww_GameswordAppleTmp];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSDictionary *)fetchAppleLoginInfo_MMMethodMMM
{
    NSDictionary *infoDic = [[NSUserDefaults standardUserDefaults] objectForKey:wwwww_tag_wwwww_GameswordAppleTmp];
    return infoDic;
}
@end
