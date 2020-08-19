//
//  ViewController.m
//

#import "ViewController.h"
#import "GamaCDNConfig.h"
#import "Gama_CDNDownload.h"
#import "GamaSDK_DES3Util.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *context = @"shgHKHFKwewerKJSSNNIsjjZIwZAM9corFIW2ryTzcWI0Pou13eeLKjDkr7Zubcap5nNLWWY1xKX4ZqBJwKuCMrBRc4uPVIHct7EFxlcCgRpidsHHJKhjkjafbeudsahfaHKJSHJKFBKSBBjbkjbjbdskhfawe4889y8hdahfuhaiuhdbcbjkbkbvkjbkajsbdeweUUIHKB889ehuhuewhSHGHGH";
    
    NSString *keyPath=[NSHomeDirectory()stringByAppendingPathComponent:@"Library"];
    NSString *printFileName = @"gama_print_file.txt";
    NSString *printfPath = [keyPath stringByAppendingFormat:@"/Caches/%@",printFileName];
    [context writeToFile:printfPath atomically:NO encoding:NSUTF8StringEncoding error:nil];
    
//    [GamaCDNConfig startUpdatingConfigFormCDN];
    
//    [self testCDNConfig];
    [self testEncry];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testCDNConfig
{
    NSLog(@"cdn started");
    
    NSString *toDecryStr = [NSString stringWithFormat:@"%@",@"CrbvvNPVV6WprIWqPFlQtkLnPWa0mMBSRCYYgV80P7Y/mn2/lxEPpQ6GlNiLyhO0+8nHvbw5Z3H9iB1F80TIco9RW0LGPDZXHqqn4NyKF/7CQevotF89uP9zS1jPEdgUZb8HXroEb6+o1C9emFGtPe4yGq5Ipzkwcx1xIJ/gVGrtSsIJNvNP6ic12/qTVawYcDNlHstaDl3E7pNwqmnRQolAbDnTVN/Q3o8tei2UErYhTCcKMcDtVz4bTJFXbur3g340TH7jcdpFRPRtQULPUOkKDs4EYX7eFuQsK917Bb7PIVqh3sEdNkSP07uwSQ92Z1lu0TrMqvlE6oTYdoV+xvmql6h+DojImUDIKy9eAap0ZV/Sm/duqN0tlP8YClr6mXhplyiYqB3wLCoj/0Bl0j9CLbFqQwJgVSngGw+cnAxNLj/zeuumRzLpIgNAHrrsnfO8nIKiWaTUPyJUveB+KixTgtKhZv9OI7iMaZ8Rw9Ty+RzVoMQK3Hp1HmKMCkIp/N0CaYOR5LMmSKROvVy4Z7RQAdzkEb2DvHmafM0npM0EnwzOmJvkl5ZvXKypP9+Spi+aHXSwjOxmcCIsVb0eBfyWHzj0eeGN/ak6uFz9KSyL8y82OHoTD/WywTzljBsWrOkdkwU4bcbT4pk5XdUrVwWKnhBzf67ksbiqWWhGHhQF+UmK8cJkYGWhaSNTRUqXr0qh+drfBkMk3Z1Xuy2josVmoNE/ELcJHcikew42tKKS5fzs4sSEt4nI4x7THrwNLZ0Cu/z3HM7YlljXKQBxCg=="];
//    NSDictionary *finalDic = [SP_CDNDownload decryDomainStr:toDecryStr];
    NSString *decStr = [GamaSDK_DES3Util decrypt:toDecryStr];
    NSLog(@"final = %@",decStr);
}

+ (void)testEncry
{
    NSError *error = nil;
    
    NSDictionary *tDict = @{
                               @"S_ACT_Pre_Url"            : @"http://activity.starb168.com/",
                               @"S_ACT_Proj_Name"          : @"act_dynamic",
                               @"iapDomainName"            :    @"http://pay-tw.starb168.com/",
                               @"iapDomainNameInReserve"   :    @"http://pay-tw.starb168.com/",
                               @"loginDomainName"          :    @"http://login-tw.starb168.com/",
                               @"loginDomainNameInReserve" :    @"http://login-tw.starb168.com/",
                               @"questioinDomainName"       :   @"http://cs-tw.starb168.com/",
                               @"questioinDomainNameInReserve"       :   @"http://cs-tw.starb168.com/",
                               @"S_Login_password_Regularly"  : @"fafa",
                               @"S_Login_account_Regularly"   : @"afafa",
                               @"S_Is_Reload_Cfg"       :   @[],
                               @"Gama_FindPwd_Status"     :   @"YES",
                               @"Gama_Bind_Status"        :   @"YES",
                               @"loginAcquirePhoneVertifyCodeProName"   :   @"acquireVfCode",
                               @"loginBindPhoneOrEmailProName"          :   @"bindpe_phone_email",
                               @"loginUserBindInfoProName"              :   @"users_bind_info",
                               };
    
    NSDictionary *globalDict = @{
                                 @"S_Pay_Spa_Url"   : @"http://g-pay.starb168.com/",
                                 @"S_Pay_Pre_Url"   : @"http://g-pay.starb168.com/",
                                 @"S_Login_Spa_Url" : @"http://g-login.starb168.com/",
                                 @"S_Login_Pre_Url" : @"http://g-login.starb168.com/",
                                 @"S_CS_Spa_Url"    : @"http://g-cs.starb168.com/",
                                 @"S_CS_Pre_Url"    : @"http://g-cs.starb168.com/",
                                 @"S_Login_password_Regularly"  : @"fafa",
                                 @"S_Login_account_Regularly"   : @"afafa",
                                 @"S_Is_Reload_Cfg" : @[
                                                        ]
                                };
    
    // 亚马逊全球版
//    login.starpyse.com
//    game.starpyse.com
//    pay.starpyse.com
//    autocdn-paltslave.starpyse.com
//    exchange.starpyse.com
//    ads.starpyse.com
//    cs.starpyse.com
//    imcs.starpyse.com
//    activity.starpyse.com
//    img-upload.starpyse.com
//    img-download.starpyse.com
//    www.starpyse.com
//    manager.starpyse.com
//    tools.starpyse.com
    NSDictionary *AmazonGBDict = @{
                                   
                                    @"iapDomainName"                :   @"http://pay.starpyse.com/",
                                    @"iapDomainNameInReserve"       :   @"http://pay.starpyse.com/",
                                    @"loginDomainName"              :   @"http://login.starpyse.com/",
                                    @"loginDomainNameInReserve"     :   @"http://login.starpyse.com/",
                                    @"questioinDomainName"          :   @"http://cs.starpyse.com/",
                                    @"questioinDomainNameInReserve" :   @"http://cs.starpyse.com/",
                                     
                                    @"platformDomainName"           :   @"http://platform.starpyse.com/",
                                    @"tongbuDomainName"             :   @"http://platform.starpyse.com/",

                                    @"S_ACT_Pre_Url"                :   @"http://activity.starpyse.com/",
                                    @"S_ACT_Proj_Name"              :   @"act_dynamic",
                                    
//                                    @"S_Login_password_Regularly"   :   @"fafa",
//                                    @"S_Login_account_Regularly"    :   @"afafa",
                                    @"S_Is_Reload_Cfg"              :   @[],
//                                    @"SP_FindPwd_Status"            :   @"YES",
//                                    @"SP_Bind_Status"               :   @"YES",
                                    @"loginAcquirePhoneVertifyCodeProName"   :   @"acquireVfCode",
                                    @"loginBindPhoneOrEmailProName"          :   @"bindpe_phone_email",
                                    @"loginUserBindInfoProName"              :   @"users_bind_info",
                                };
    
//    NSDictionary *realDic = [[NSDictionary alloc] initWithDictionary:originDict];
    NSData *dicData = [NSJSONSerialization dataWithJSONObject:AmazonGBDict options:NSJSONWritingPrettyPrinted error:&error];
    if (error) {
        NSLog(@"err = %@",error);
        return;
    }
    NSString *jsonStr = [[NSString alloc] initWithData:dicData encoding:NSUTF8StringEncoding];
    if (error) {
        NSLog(@"json err = %@",error);
        return;
    }
    NSLog(@"json str = %@",jsonStr);
    jsonStr = [GamaSDK_DES3Util encrypt:jsonStr];
    NSLog(@"final = %@",jsonStr);
}




@end
