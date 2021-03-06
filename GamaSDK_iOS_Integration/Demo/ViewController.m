//
//

#import "ViewController.h"
#import "UserModel.h"
#import "IAP_ViewController.h"
#import "GamaCentreInfo.h"
#import "GamaCommonHeader.h"
#import "FLSDK.h"
#import "Social_ViewController.h"
#import "GamaWebViewController.h"
#import "GamaThirdFunction.h"
#pragma add age System test
#import "HelloHeader.h"
//#import "KRAgeSystemView.h"
#pragma end
#import <AdSupport/AdSupport.h>
#import "GamaAdPort.h"
#import "Firebase.h"

@interface ViewController () <UITextFieldDelegate,NSURLConnectionDelegate, NSURLSessionDelegate>
{
    NSString *inputText;
    UIView *textView;
    UITextField *m_textField;
    
    UIView *phoneBindingInputView;
    UITextField *m_textField_serverCode;
    UITextField *m_textField_roleID;
    
    NSMutableData *_tData;
}
@end

@implementation ViewController
@synthesize buttonsTable = _buttonsTable, buttonsArray = _buttonsArray;

- (void)dealloc
{
    [_buttonsTable release];
    [_buttonsArray release];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [super dealloc];
}




- (NSString *)fetchVerficationID{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *verificationID = [defaults stringForKey:@"authVerificationID"];
    return verificationID;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSString *idfaStr = nil;
    if ([ASIdentifierManager sharedManager].isAdvertisingTrackingEnabled) {
        idfaStr = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    } else {
        idfaStr = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    }

    // iOS 获取设备当前语言的代码
    NSString *preferredLanguage = [[[NSBundle mainBundle] preferredLocalizations] firstObject];
    // iOS 获取设备当前地区的代码
    NSString *localeIdentifier = [[NSLocale currentLocale] objectForKey:NSLocaleIdentifier];
    
    NSLog(@"idfa = %@",idfaStr);
    
    _tData = [[NSMutableData alloc] init];
    
    [self.view setBackgroundColor:[UIColor clearColor]];
    
    self.buttonsTable = [[[UITableView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)] autorelease];
    _buttonsTable.delegate = self;
    _buttonsTable.dataSource = self;
    [self.view addSubview:_buttonsTable];

    /*********************************************
     SDK测试项目
     ***********************************************/
    self.buttonsArray = @[@"登入",
                          @"保存/更新角色信息（进入游戏得到角色信息后调用）",
                          @"充值",
                          @"第三方充值",
                          @"分享",
                          @"打开网址客服",
                          @"打开公告",
                          @"事件上报",
                     
                          ];
    
    /*********************************************
     添加Notification 让客服端监听通知
     *********************************************/
    
  
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(userSharingResult:) name:GAMA_SHARE_RESULT object:nil];
//
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(gamaPhchaSesuccessFul:) name:GAMA_PAY_SUCCUESS object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(gamaPhchaFail:) name:GAMA_PAY_FAIL object:nil];
//
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(gamaPuchessing:) name:GAMA_PAY_PUCHESSING object:nil];
}


- (void)gamaPhchaSesuccessFul:(NSNotification *)notification {
    
}

- (void)gamaPhchaFail:(NSNotification *)notification {
    
}

- (void)gamaPuchessing:(NSNotification *)notification {
    
}


- (void)userSharingResult:(NSNotification *)notification
{
    /*********************************************
     社群分享后得到的结果
     *  code = -1000 为失败
     *  code = 1000 为成功
     *********************************************/
    NSDictionary * userInfo= notification.userInfo;
    NSLog(@"user info = %@",userInfo);
    NSString *code = [userInfo objectForKey:@"code"];
    NSString *message = [userInfo objectForKey:@"message"];
    NSLog(@"FB分享发布调用后的结果: code:%@, message:%@",code,message);
    
}

#pragma mark - TableView DataSource and Delegate Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _buttonsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *indetity = @"cell";
    
    UITableViewCell *cell= [tableView dequeueReusableCellWithIdentifier:indetity];
    if (cell == nil)
    {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:indetity] autorelease];
    }
    
    cell.textLabel.text = [_buttonsArray objectAtIndex:indexPath.row];
    
    return cell ;
}

//点击选中表格行
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
            
            /*********************************************
             登入
             *********************************************/
        case 0:
        {
            [[FLSDK share] sdkLoginWithHandler:^(LoginData *loginData) {
                NSString * userId = loginData.userId;
                NSString * accessToken = loginData.accessToken;
                NSString * timestamp = loginData.timestamp;
                //[GamaUtils gamaToastWithMsg:[NSString stringWithFormat:@"userId:%@, accessToken:%@, timestamp:%@", userId, accessToken, timestamp]];
                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"userId:%@, accessToken:%@, timestamp:%@", userId, accessToken, timestamp]];
                NSLog(@"userId:%@, accessToken:%@, timestamp:%@", userId, accessToken, timestamp);
            }];

        }
            break;
            
            /*********************************************
             保存角色信息
             *********************************************/
        case 1:
        {
            
            [[FLSDK share] setRoleInfo:@"22006992996306" roleName:@"顶顶顶顶休息下" roleLevel:@"1" roleVipLevel:@"1" serverCode:@"999" serverName:@"xxxx"];
            
            
        }
            break;
            
            /*********************************************
             显示商店页
             *********************************************/
        case 2:
        {
//            IAP_ViewController *iapView = [[IAP_ViewController alloc] init];
//            [self presentViewController:iapView animated:YES completion:nil];
//            [iapView release];
            NSString *aProductID = @"com.flyfun.lyj.340";
            NSString *cpOrderId = @"2e9fde2765c34b9a89f2de7934a887a0";//游戏订单ID
            NSString *extra = @"2e9fde2765c34b9a89f2de7934a887a0";
            
            [[FLSDK share] pay:(SDK_PAY_TYPE_APPLE) productId:aProductID cpOrderId:cpOrderId extra:extra completionHandler:^(SDK_PAY_STATUS status, NSDictionary *result) {
                NSLog(@"pay finish");
            }];
        }
            break;
            /*********************************************
             网页充值
             *********************************************/
        case 3:
        {
            [[FLSDK share] pay:(SDK_PAY_TYPE_WEB) productId:@"" cpOrderId:@"" extra:@""];

        }
            break;
        case 4:
//            [[FLSDK share] share:@{
//                                            GAMA_PRM_SHARE_CONTENT_URL:@"http://mtd.starb168.com/invite/fbShare.html?gameCode=mthxtw&adsPlatForm=star_invite&advertiser=share&campaign=44252%7C%7CS%7C%7C1001%7C%7CS%7C%7C20210011000004",
//                                            }];
            break;

        case 5:{
            [[FLSDK share] openCs];
        }
            break;
        case 6:{
            [[FLSDK share] openWebPage:nil];
        }
            break;
        case 7:{
            [[FLSDK share] trackEvent:SDKEventReportAllChannel eventName:@"test" eventPar:nil];
        }
            break;

  

       
    }
}

@end
