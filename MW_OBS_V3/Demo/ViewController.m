//
//

#import "ViewController.h"
#import "UserModel.h"
#import "IAP_ViewController.h"
#import "ResHeader.h"
#import <WLZHSSDK/WLZSHLib.h>

//#import "LanguitudeQuasstenddom.h"

#import <UserNotifications/UserNotifications.h>

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

    [WLZSHLib share].sdkBaseEncryptKey = @"com.mplay.wlzhs";
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
                          @"fb分享url",
                          @"显示手机绑定页面",
                          @"显示账号升级页面",
                          @"line分享",
                          @"客服",
                          @"本地定时通知",
                          @"本地定期通知",
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
            [[WLZSHLib share] sdkLoginWithHandler_WLFuncTag:^(WLoginModel *loginData) {
                NSString * userId = loginData.userId;
                NSString * accessToken = loginData.accessToken;
                NSString * timestamp = loginData.timestamp;
                BOOL isBind = loginData.isBind; //是否绑定账号
                BOOL isBindPhone = loginData.isBindPhone;//是否绑定手机
                NSString *telephone = loginData.telephone;//绑定的手机号码
                
                //[GamaUtils gamaToastWithMsg:[NSString stringWithFormat:@"userId:%@, accessToken:%@, timestamp:%@", userId, accessToken, timestamp]];
//                [AlertUtil showAlertWithMessage:[NSString stringWithFormat:@"userId:%@, accessToken:%@, timestamp:%@", userId, accessToken, timestamp]];
                NSLog(@"userId:%@, accessToken:%@, timestamp:%@", userId, accessToken, timestamp);
            }];
            

        }
            break;
            
            /*********************************************
             保存角色信息
             *********************************************/
        case 1:
        {
            
            [[WLZSHLib share] setRoleInfoWithRoleId_WLFuncTag:@"22006992996306" roleName_WLFuncTag:@"顶顶顶顶休息下" roleLevel_WLFuncTag:@"1" roleVipLevel_WLFuncTag:@"1" serverCode_WLFuncTag:@"999" serverName_WLFuncTag:@"xxxx"];
            
            
        }
            break;
            
            /*********************************************
             显示商店页
             *********************************************/
        case 2:
        {
//            com.fzzh.tw.1usd
//            com.fzzh.tw.2usd
            
            NSString *aProductID = @"com.mplay.wlzhs.1340";
            [self pay:aProductID];
        }
            break;
            /*********************************************
             网页充值
             *********************************************/
        case 3:
        {
//            [[FLSDK share] pay:(SDK_PAY_TYPE_WEB) productId:@"" cpOrderId:@"" extra:@""];
            NSString *aProductID = @"com.mplay.wlzhs.70";
            [self pay:aProductID];
        }
            break;
        case 4:
            [[WLZSHLib share] trackEventWithEventName_WLFuncTag:AD_EVENT_CHECK_UPDATE];
            break;

        case 5:{
            
            [[WLZSHLib share] shareWithTag_WLFuncTag:@"#萬靈召喚師" message_WLFuncTag:@"2022首款卡牌大作【萬靈召喚師】，爆笑來襲！從東方文明到西方文明的羈絆，從神族到魔族的對抗，一段奇妙的神仙冒險之旅就此展開！" url_WLFuncTag:@"https://share.leyouye.com/aedzj/1.html" successBlock_WLFuncTag:^(BOOL success, NSDictionary * _Nullable result) {
                
                if (success) {
//                    [AlertUtil showAlertWithMessage:@"分享成功"];
                }else{
//                    [AlertUtil showAlertWithMessage:@"分享失败"];
                }
            }];
            
        }
            break;
        case 6:{
            [[WLZSHLib share] showBindPhoneViewWithBlock_WLFuncTag:^(BOOL success, id  _Nullable result) {
                
                if (success) {
                    NSLog(@"绑定手机成功");
                    NSString *tel = [NSString stringWithFormat:@"%@",result]; //绑定的手机号码
                }else{
                    NSLog(@"绑定手机失败");
                }
                
            }];
        }
            break;
        case 7:{
            [[WLZSHLib share] showUpgradeAccountViewWithBlock_WLFuncTag:^(BOOL success, id  _Nullable result) {
                
                if (success) {
                    NSLog(@"账号升级成功");
                    WLoginModel *data = (WLoginModel*)result;
                }else{
                    NSLog(@"账号升级失败");
                }
                
            }];
            
        }
            break;
        case 8:{
            [[WLZSHLib share] shareLineWithContent_WLFuncTag:@"2022首款卡牌大作【萬靈召喚師】，爆笑來襲！從東方文明到西方文明 https://share.leyouye.com/aedzj/1.html" block_WLFuncTag:^(BOOL success, id  _Nullable result) {
                NSLog(@"shareLineWithContent finish");
            }];
            
        }
            break;
        case 9:{
            [[WLZSHLib share] openCs_WLFuncTag];
        }
            break;
        case 10:{
            [self addLocalNotificationForTimeInterval];
        }
            break;
        case 11:{
            [self addLocalNotificationForDateComponents];
        }
            break;

       
    }
}


- (void)pay:(NSString *)aProductID {
    
    NSString *cpOrderId = [FoeniveNow getTimeStamp];//游戏订单ID
    NSString *extra = [NSString stringWithFormat:@"extra%@",cpOrderId];
    
    [[WLZSHLib share] payWithRoleId_WLFuncTag:@"22006992996306" roleName_WLFuncTag:@"哈哈下" roleLevel_WLFuncTag:@"100" roleVipLevel_WLFuncTag:@"0" serverCode_WLFuncTag:@"999" serverName_WLFuncTag:@"无敌服" productId_WLFuncTag:aProductID cpOrderId_WLFuncTag:cpOrderId extra_WLFuncTag:extra completionHandler_WLFuncTag:^(SDK_PAY_STATUS status, WPayModel *mPayData) {
        NSLog(@"pay finish");
        
        switch (status) {
            case SDK_PAY_STATUS_SUCCESS:
                
//                [AlertUtil showAlertWithMessage:@"充值成功"];
                break;
                
            case SDK_PAY_STATUS_FAIL:
//                [AlertUtil showAlertWithMessage:@"充值失败"];
                break;
                
            default:
                break;
        }
    }];
}

- (void)addLocalNotificationForTimeInterval{
    
    // 多少秒后发送,可以将固定的日期转化为时间
    NSTimeInterval time = [[NSDate dateWithTimeIntervalSinceNow:10] timeIntervalSinceNow];
    // repeats，是否重复，如果重复的话时间必须大于60s，要不会报错
    UNTimeIntervalNotificationTrigger *trigger = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:time repeats:NO];
    
    [[WLZSHLib share] addLocalNotificationWithTitle_WLFuncTag:@"我是定时通知" subtitle_WLFuncTag:@"我是副title" body_WLFuncTag:@"定时通知内容" trigger_WLFuncTag:trigger notifyId_WLFuncTag:@"notifyId_1"];
 
}

- (void)addLocalNotificationForDateComponents{
    
    //如果想重复可以使用这个,按日期
    // 周一早上 8：00 上班
    NSDateComponents *components = [[NSDateComponents alloc] init];
    // 注意，weekday默认是从周日开始
    components.weekday = 3;
    components.hour = 12;
    components.minute = 50;
    UNCalendarNotificationTrigger *calendarTrigger = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    
    [[WLZSHLib share] addLocalNotificationWithTitle_WLFuncTag:@"我是定期通知" subtitle_WLFuncTag:@"哈哈哈" body_WLFuncTag:@"啦啦啦游戏" trigger_WLFuncTag:calendarTrigger notifyId_WLFuncTag:@"notifyId_2"];
   
}


@end
