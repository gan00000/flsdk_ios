//
//

#import "ViewController.h"
#import "UserModel.h"
#import "IAP_ViewController.h"
#import "ResHeader.h"
#import "MWSDK.h"
#import "Social_ViewController.h"
#import "GamaWebViewController.h"

#import "AlertUtil.h"

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
//    [_buttonsTable release];
//    [_buttonsArray release];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
//    [super dealloc];
}




- (NSString *)fetchVerficationID{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *verificationID = [defaults stringForKey:@"authVerificationID"];
    return verificationID;
}


- (void)viewDidLoad
{
    [super viewDidLoad];

    
    // iOS 获取设备当前语言的代码
    NSString *preferredLanguage = [[[NSBundle mainBundle] preferredLocalizations] firstObject];
    // iOS 获取设备当前地区的代码
    NSString *localeIdentifier = [[NSLocale currentLocale] objectForKey:NSLocaleIdentifier];
    
    _tData = [[NSMutableData alloc] init];
    
    [self.view setBackgroundColor:[UIColor clearColor]];
    
    self.buttonsTable = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    _buttonsTable.delegate = self;
    _buttonsTable.dataSource = self;
    [self.view addSubview:_buttonsTable];

    /*********************************************
     SDK测试项目
     ***********************************************/
    self.buttonsArray = @[@"登入",
                          @"保存/更新角色信息（进入游戏得到角色信息后调用）",
                          @"充值com.fzzh.tw.1usd",
                          @"充值com.fzzh.tw.2usd",
                          @"事件追踪",
//                          @"打开网址客服",
//                          @"打开公告",
//                          @"事件上报",
                     
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
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:indetity];
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
            [[MWSDK share] sdkLoginWithHandler:^(LoginData *loginData) {
                NSString * userId = loginData.userId;
                NSString * accessToken = loginData.accessToken;
                NSString * timestamp = loginData.timestamp;
                //[GamaUtils gamaToastWithMsg:[NSString stringWithFormat:@"userId:%@, accessToken:%@, timestamp:%@", userId, accessToken, timestamp]];
                [AlertUtil showAlertWithMessage:[NSString stringWithFormat:@"userId:%@, accessToken:%@, timestamp:%@", userId, accessToken, timestamp]];
                NSLog(@"userId:%@, accessToken:%@, timestamp:%@", userId, accessToken, timestamp);
            }];
            

        }
            break;
            
            /*********************************************
             保存角色信息
             *********************************************/
        case 1:
        {
            
            [[MWSDK share] setRoleInfoWithRoleId:@"22006992996306" roleName:@"顶顶顶顶休息下" roleLevel:@"1" roleVipLevel:@"1" serverCode:@"999" serverName:@"xxxx"];
            
            
        }
            break;
            
            /*********************************************
             显示商店页
             *********************************************/
        case 2:
        {
//            com.fzzh.tw.1usd
//            com.fzzh.tw.2usd
            
            NSString *aProductID = @"com.fzzh.tw.1usd";
            [self pay:aProductID];
        }
            break;
            /*********************************************
             网页充值
             *********************************************/
        case 3:
        {
//            [[FLSDK share] pay:(SDK_PAY_TYPE_WEB) productId:@"" cpOrderId:@"" extra:@""];
            NSString *aProductID = @"com.fzzh.tw.2usd";
            [self pay:aProductID];
        }
            break;
        case 4:
            [[MWSDK share] trackEventWithEventName:AD_EVENT_CHECK_UPDATE];
            break;

        case 5:{
            [[MWSDK share] openCs];
        }
            break;
        case 6:{
//            [[FLSDK share] openWebPage:nil];
        }
            break;
        case 7:{
        }
            break;

  

       
    }
}


- (void)pay:(NSString *)aProductID {
    
    NSString *cpOrderId = [SUtil getTimeStamp];//游戏订单ID
    NSString *extra = [NSString stringWithFormat:@"extra%@",cpOrderId];
    
    [[MWSDK share] payWithRoleId:@"22006992996306" roleName:@"哈哈下" roleLevel:@"100" roleVipLevel:@"0" serverCode:@"999" serverName:@"无敌服" productId:aProductID cpOrderId:cpOrderId extra:extra completionHandler:^(SDK_PAY_STATUS status, PayData *mPayData) {
        NSLog(@"pay finish");
        
        switch (status) {
            case SDK_PAY_STATUS_SUCCESS:
                
                [AlertUtil showAlertWithMessage:@"充值成功"];
                break;
                
            case SDK_PAY_STATUS_FAIL:
                [AlertUtil showAlertWithMessage:@"充值失败"];
                break;
                
            default:
                break;
        }
    }];
}

@end
