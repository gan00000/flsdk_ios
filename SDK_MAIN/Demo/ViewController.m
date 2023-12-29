//
//

#import "ViewController.h"
#import "UserModel.h"
#import "IAP_ViewController.h"
#import "ResHeader.h"
#import "DYSDK.h"

#import "FearicalVoracwise.h"


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
@synthesize buttonsTable = _buttonsTable;

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
    
    /*********************************************
     SDK测试项目
     ***********************************************/
//    self.btnsDic = @{@"0": @"登入",
//                     @"12": @"切换账号",
//                     @"1": @"保存/更新角色信息（进入游戏得到角色信息后调用）",
//                     @"2": @"充值com.fzzh.tw.1usd",
//                     @"3": @"充值com.fzzh.tw.2usd",
//                     @"4": @"事件追踪",
//                     @"5": @"fb分享url",
//                     @"6": @"显示手机绑定页面",
//                     @"7": @"显示账号升级页面",
//                     @"8": @"line分享",
//                     @"9": @"客服",
//                     @"10": @"本地定时通知",
//                     @"11": @"本地定期通知",
//    };
//
//    self.keyArray = self.btnsDic.allKeys;
//    self.valueArray = self.btnsDic.allValues;
    self.valueArray = @[@"登入",
                        @"切换账号",
                          @"保存/更新角色信息（进入游戏得到角色信息后调用）",
//                          @"充值com.fzzh.tw.1usd",
//                          @"充值com.fzzh.tw.2usd",
//                          @"事件追踪",
//                          @"fb分享url",
//                          @"显示手机绑定页面",
//                          @"显示账号升级页面",
//                          @"line分享",
//                          @"客服",
//                          @"本地定时通知",
//                          @"本地定期通知",
//                            @"显示社群banner",
                          ];
    
//    self.keyArray = @[@0, @12, @1,@2,@3,@4,@5,@6,@7,@8,@9,@10,@11,@13];
    self.keyArray = @[@0, @12, @1];
    
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
    
    NSLog(@"getBundleVersion=%@", [CollectionDoloroant getBundleVersion_MMMethodMMM]? : @"");
    NSLog(@"getBundleShortVersionString=%@", [CollectionDoloroant getBundleShortVersionString_MMMethodMMM]? : @"");
    
}



#pragma mark - TableView DataSource and Delegate Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.valueArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *indetity = @"cell";
    
    UITableViewCell *cell= [tableView dequeueReusableCellWithIdentifier:indetity];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:indetity];
    }
    
    cell.textLabel.text = [self.valueArray objectAtIndex:indexPath.row];
    
    return cell ;
}


//点击选中表格行
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    int index = [self.keyArray[indexPath.row] intValue];
    switch (index) {
            
            /*********************************************
             登入
             *********************************************/
        case 0:
        {
            [[DYSDK share] dyLoginWithBlock:^(DYUserData *loginData) {
                NSString * userId = loginData.userId;
                NSString * accessToken = loginData.accessToken;
                NSString * timestamp = loginData.timestamp;
                BOOL isBind = loginData.isBind; //是否绑定账号
                BOOL isBindPhone = loginData.isBindPhone;//是否绑定手机
                NSString *telephone = loginData.telephone;//绑定的手机号码
                
                //[GamaUtils gamaToastWithMsg:[NSString stringWithFormat:@"userId:%@, accessToken:%@, timestamp:%@", userId, accessToken, timestamp]];
                [FearicalVoracwise showAlertWithMessage_MMMethodMMM:[NSString stringWithFormat:@"userId:%@, accessToken:%@, timestamp:%@", userId, accessToken, timestamp]];
                NSLog(@"userId:%@, accessToken:%@, timestamp:%@", userId, accessToken, timestamp);
            }];
            

        }
            break;
            
        case 12:
        {
            [[DYSDK share] dySwitchLoginWithBlock:^(DYUserData *loginData) {
                NSString * userId = loginData.userId;
                NSString * accessToken = loginData.accessToken;
                NSString * timestamp = loginData.timestamp;
                BOOL isBind = loginData.isBind; //是否绑定账号
                BOOL isBindPhone = loginData.isBindPhone;//是否绑定手机
                NSString *telephone = loginData.telephone;//绑定的手机号码
                
                //[GamaUtils gamaToastWithMsg:[NSString stringWithFormat:@"userId:%@, accessToken:%@, timestamp:%@", userId, accessToken, timestamp]];
                [FearicalVoracwise showAlertWithMessage_MMMethodMMM:[NSString stringWithFormat:@"userId:%@, accessToken:%@, timestamp:%@", userId, accessToken, timestamp]];
                NSLog(@"userId:%@, accessToken:%@, timestamp:%@", userId, accessToken, timestamp);
            }];
            

        }
            break;
            
            /*********************************************
             保存角色信息
             *********************************************/
        case 1:
        {
            
            [[DYSDK share] dySetRoleInfoWithRoleId:@"22006992996306" roleName:@"顶顶顶顶休息下" roleLevel:@"1" roleVipLevel:@"1" serverCode:@"999" serverName:@"xxxx"];
            
            
        }
            break;
            
            /*********************************************
             显示商店页
             *********************************************/
        case 2:
        {
//            com.fzzh.tw.1usd
//            com.fzzh.tw.2usd
            
            NSString *aProductID = @"com_wanxi_mxwvn_4p";
            [self pay:aProductID];
        }
            break;
            /*********************************************
             网页充值
             *********************************************/
        case 3:
        {
//            [[MWSDK share] showActView];
        }
            break;
        case 4:
            [[DYSDK share] dyTrackWithEventName:AD_EVENT_CHECK_UPDATE];
            break;

        case 5:{
            
            [[DYSDK share] shareWithTag:@"#萬靈召喚師" message:@"2022首款卡牌大作【萬靈召喚師】，爆笑來襲！從東方文明到西方文明的羈絆，從神族到魔族的對抗，一段奇妙的神仙冒險之旅就此展開！" url:@"https://share.leyouye.com/aedzj/1.html" successBlock:^(BOOL success, NSDictionary * _Nullable result) {
                
                if (success) {
                    [FearicalVoracwise showAlertWithMessage_MMMethodMMM:@"分享成功"];
                }else{
                    [FearicalVoracwise showAlertWithMessage_MMMethodMMM:@"分享失败"];
                }
            }];
            
        }
            break;
        case 6:{
//            [[MWSDK share] showBindPhoneViewWithBlock:^(BOOL success, id  _Nullable result) {
//
//                if (success) {
//                    NSLog(@"绑定手机成功");
//                    NSString *tel = [NSString stringWithFormat:@"%@",result]; //绑定的手机号码 格式：区号-号码
//                }else{
//                    NSLog(@"绑定手机失败");
//                }
//
//            }];
            
//            NSString *areaCode = @"";//区号，不用添加”+“
//            NSString *telephone = @"";//号码
//            [[MWSDK share] requestVfCodeWithAreaCode:areaCode telephone:telephone  Block:^(BOOL success, id  _Nullable result) {
//                if (success){
//                    //请求验证码成功，result=nil
//                }else{
//                    //请求验证码失败，msg错误提示
//                    NSString *msg = [NSString stringWithFormat:@"%@",result];
//                }
//            }];
            
//            NSString *vfCode = @"";//验证码
//            [[MWSDK share] requestBindPhoneAreaCode:areaCode telephone:telephone vfCode:vfCode Block:^(BOOL success, id  _Nullable result) {
//                if (success) {
//                    NSLog(@"绑定手机成功");
//                    NSString *tel = [NSString stringWithFormat:@"%@",result]; //绑定的手机号码 格式：区号-号码
//                }else{
//                    NSLog(@"绑定手机失败");
//                }
//
//            }];
            
//            NSString *account = @"";//账号
//            NSString *pwd = @"";//密码
//            [[MWSDK share] requestUpgradeWithAccount:account password:(NSString *)pwd Block:^(BOOL success, id  _Nullable result) {
//                if (success) {
//                    NSLog(@"账号升级成功");
//                    LoginData *data = (LoginData*)result;
//                }else{
//                    NSLog(@"账号升级失败");
//                }
//            }];
            
        }
            break;
        case 7:{
            [[DYSDK share] dyBindAccountWithBlock:^(BOOL success, id  _Nullable result) {
                
                if (success) {
                    NSLog(@"账号升级成功");
                    DYUserData *data = (DYUserData*)result;
                }else{
                    NSLog(@"账号升级失败");
                }
                
            }];
            
        }
            break;
        case 8:{
            [[DYSDK share] shareLineWithContent:@"2022首款卡牌大作【萬靈召喚師】，爆笑來襲！從東方文明到西方文明 https://share.leyouye.com/aedzj/1.html" block:^(BOOL success, id  _Nullable result) {
                NSLog(@"shareLineWithContent finish");
            }];
            
        }
            break;
        case 9:{
//            [[MWSDK share] openCs];
        }
            break;
        case 10:{
            [self addLocalNotificationForTimeInterval];
        }
            break;
        case 11:{
            [self addLocalNotificationForDateComponents];
        }
        case 13:{
//            [[MWSDK share] showSocialView];
        }
            break;

       
    }
}


- (void)pay:(NSString *)aProductID {
    
    NSString *cpOrderId = [CollectionDoloroant getTimeStamp_MMMethodMMM];//游戏订单ID
    NSString *extra = [NSString stringWithFormat:@"extra%@",cpOrderId];
    
    [[DYSDK share] dyPayWithRoleId:@"22006992996306" roleName:@"哈哈下" roleLevel:@"100" roleVipLevel:@"0" serverCode:@"999" serverName:@"无敌服" productId:aProductID cpOrderId:cpOrderId extra:extra completionHandler:^(SDK_PAY_STATUS status, DYPayData *mPayData) {
        NSLog(@"pay finish");
        
        switch (status) {
            case SDK_PAY_STATUS_SUCCESS:
                
                [FearicalVoracwise showAlertWithMessage_MMMethodMMM:@"充值成功"];
                break;
                
            case SDK_PAY_STATUS_FAIL:
                [FearicalVoracwise showAlertWithMessage_MMMethodMMM:@"充值失败"];
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
    
//    [[MWSDK share] addLocalNotificationWithTitle:@"我是定时通知" subtitle:@"我是副title" body:@"定时通知内容" trigger:trigger notifyId:@"notifyId_1"];
 
}

- (void)addLocalNotificationForDateComponents{
    
    //如果想重复可以使用这个,按日期
    // 周一早上 8：00 上班
    NSDateComponents *components = [[NSDateComponents alloc] init];
    // 注意，weekday默认是从周日开始   Sunday == 1, Saturday == 7
    components.weekday = 3;
    components.hour = 12;
    components.minute = 50;
    UNCalendarNotificationTrigger *calendarTrigger = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    
//    [[MWSDK share] addLocalNotificationWithTitle:@"我是定期通知" subtitle:@"哈哈哈" body:@"啦啦啦游戏" trigger:calendarTrigger notifyId:@"notifyId_2"];
   
}


@end
