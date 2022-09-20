#IOS SDK接入说明

1. [工程配置](#99)
2. [App Info.plist配置](#100)
3. [AppDelegate调用](#1)
4. [设置角色信息](#5)
5. [登录接口](#6)
6. [充值接口](#7)
7. [事件追踪接口](#8)
8. [应用内评分接口](#9)
9. [fb分享接口](#10)
10. [line分享接口](#11)
10. [获取手机验证码接口](#12)
11. [请求绑定手机接口](#13)
12. [请求升级账号接口](#14)
13. [客服接口](#15)
14. [添加本地推送接口](#16)

----------------

* <h2 id="99">工程配置</h2> 
*  **添加sdk提供的 SDK_Frameworks 中库文件**
*	**系统库导入**

	SystemConfiguration.framework、WebKit.framework、JavaScriptCore.framework、CoreTelephony.framework、MobileCoreServices.framework、SafariServices.framework、CoreData.framework、CoreGraphics.framework、CoreFoundation.framework、QuartzCore.framework、Security.framework、Accelerate.framework、iAd.framework、AdSupport.framework、AdServices.framework、ApptrackingTransparency.framework、AuthenticationServices.framework
	
* **添加Sign in with Apple**

	在 Targets -> Signing&Capabilities 下，添加Sign in with Apple、Push Notifications.
	
* **创建objcetc swift的桥接文件**, 即直接创建一个swift文件按xcode提示即可


* <h2 id="100">App Info.plist配置</h2> 


*  **添加如下配置**

	```
	<key>CFBundleDevelopmentRegion</key>
	<string>zh_TW</string>
	
	添加UrlType
	<key>CFBundleURLTypes</key>
	<array>
		<dict>
			<key>CFBundleTypeRole</key>
			<string>Editor</string>
			<key>CFBundleURLName</key>
			<string></string>
			<key>CFBundleURLSchemes</key>
			<array>
				<string>此值对接时候提供</string>
				<string>此值对接时候提供</string>
				<string>line3rdp.$(PRODUCT_BUNDLE_IDENTIFIER)</string>
			</array>
		</dict>
		<dict>
			<key>CFBundleTypeRole</key>
			<string>Editor</string>
			<key>CFBundleURLSchemes</key>
			<array>
				
				<string>此值对接时候提供</string>
			</array>
		</dict>
	</array>
	
	fb配置
	<key>FacebookAppID</key>
	<string>此值对接时候提供</string>
	<key>FacebookClientToken</key>
	<string>此值对接时候提供</string>
	<key>FacebookDisplayName</key>
	<string>${PRODUCT_NAME}</string>
	<key>LSApplicationQueriesSchemes</key>
	<array>
		<string>fbapi</string>
		<string>fbauth2</string>
		<string>fb-messenger-api</string>
		<string>fbshareextension</string>
		<string>lineauth2</string>
		<string>line</string>
	</array>
	line配置
	<dict>
		<key>ChannelID</key>
		<string>此值对接时候提供</string>
	</dict>
	
	其他
	<key>NSAppTransportSecurity</key>
	<dict>
		<key>NSAllowsArbitraryLoads</key>
		<true/>
	</dict>
	<key>NSUserTrackingUsageDescription</key>
	<string>我們需要使用您的廣告追蹤許可權來優化您的使用體驗</string>
	
	```

 ------------------------------

<h2 id="101">SDK api说明</h2>
以下为sdk api使用示例,具体可查看SDK demo 

* <h3 id="1">AppDelegate调用</h3>
 
 ```

	- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
	{  
	    //启动调用
	    [[MWSDK share] application:application didFinishLaunchingWithOptions:launchOptions];
	    
	    return YES;
	} 
	
	// 支持 ios 8 及以上
	- (BOOL)application:(UIApplication *)application
	            openURL:(NSURL *)url
	  sourceApplication:(NSString *)sourceApplication
	         annotation:(id)annotation
	{
	    /*********************************************
	     处理程式被第三方app启动
	     *********************************************/
	    return [[MWSDK share] application:application
	                      openURL:url
	            sourceApplication:sourceApplication
	                   annotation:annotation];
	}
	
	// 支持 ios9 及以上
	- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options
	{
	    //处理程式被第三方app启动
	    return [[MWSDK share] application:app
	                      openURL:url
	                      options:options];
	} 


 ```
 
* <h3 id="5">设置角色信息</h3> 
	每次登录完成获取到角色信息的时候调用

 ```
/// 每次登录或者切换账号的时候获得角色信息的时候调用
/// @param roleId 角色id，必传
/// @param roleName 角色名称，必传
/// @param roleLevel 等色等级，没有传@""
/// @param roleVipLevel 等色vip等级，没有传@""
/// @param serverCode 伺服器id，必传
/// @param serverName 伺服器名称，没有传@""
- (void)setRoleInfoWithRoleId:(NSString *)roleId
           roleName:(NSString *)roleName
          roleLevel:(NSString *)roleLevel
       roleVipLevel:(NSString *)roleVipLevel
         serverCode:(NSString *)serverCode
         serverName:(NSString *)serverName;
         
         
 ```

* <h3 id="6">登录接口</h3>  

 ```
 
 /// 登录接口
/// @param cmopleteHandler 登录回调block
- (void)sdkLoginWithHandler:(SDKLoginBlock)cmopleteHandler;

	sample:
	
	[[MWSDK share] sdkLoginWithHandler:^(LoginData *loginData) {
	                NSString * userId = loginData.userId;//获得用户uid
	                NSString * accessToken = loginData.accessToken;
	                NSString * timestamp = loginData.timestamp;
	                
	                NSLog(@"userId:%@, accessToken:%@, timestamp:%@", userId, accessToken, timestamp);
	            }];
            

 ```


* <h3 id="7">充值接口</h3>

 ```
 
	/// 充值接口
	/// @param roleId 角色id，必传
	/// @param roleName 角色名称，必传
	/// @param roleLevel 等色等级，没有传@""
	/// @param roleVipLevel 等色vip等级，没有传@""
	/// @param serverCode 伺服器id，必传
	/// @param serverName  伺服器名称，没有传@""
	/// @param productId 商品id,必传
	/// @param cpOrderId 厂商订单号，必传，该值通过服务端接口返回给厂商
	/// @param extra 预留值，可选，该值通过服务端接口返回给厂商
	/// @param handler 充值回调，成功是否成功请以服务端回调为准
	- (void)payWithRoleId:(NSString *)roleId
	   roleName:(NSString *)roleName
	  roleLevel:(NSString *)roleLevel
	roleVipLevel:(NSString *)roleVipLevel
	 serverCode:(NSString *)serverCode
	 serverName:(NSString *)serverName
	  productId:(NSString *)productId
	  cpOrderId:(NSString *)cpOrderId
	      extra:(NSString *)extra
	completionHandler:(SDKPayBlock) handler;
	
	
	sample:
	
	NSString *cpOrderId = [self getTimeStamp];//游戏orderId
    NSString *extra = [NSString stringWithFormat:@"extra%@",cpOrderId];
    
    [[MWSDK share] payWithRoleId:@"22006992996306" roleName:@"哈哈下" roleLevel:@"100" roleVipLevel:@"0" serverCode:@"999" serverName:@"无敌服" productId:aProductID cpOrderId:cpOrderId extra:extra completionHandler:^(SDK_PAY_STATUS status, PayData *mPayData) {
        NSLog(@"pay finish");
        
        switch (status) {
            case SDK_PAY_STATUS_SUCCESS:
                NSLog(@"充值成功");
                break;
                
            case SDK_PAY_STATUS_FAIL:
                NSLog(@"充值失败");
                break;
                
            default:
                break;
        }
    }];
             
 ```
 
* <h3 id="8">事件追踪接口</h3>

 ```
 
	
	/// 事件追踪
	/// @param name 事件名称
	- (void)trackEventWithEventName:(NSString *)name;

	
	游戏接入需要对下列几个事件进行埋点：
	AD_EVENT_CHECK_UPDATE  检查更新
	AD_EVENT_CHECK_RESOURCES  检查游戏资源
	AD_EVENT_SELECT_SERVER  选择伺服器
	AD_EVENT_CREATE_ROLE  创建角色
	AD_EVENT_START_GUIDE  开始新手引导
	AD_EVENT_COMPLETE_GUIDE  完成新手引导
	
	sample:
		
	[[MWSDK share] trackEventWithEventName:AD_EVENT_CHECK_UPDATE];
             
 ```
 
* <h3 id="9">应用内评分接口</h3>

 ```
 
	- (void)requestStoreReview;
             
 ```
 
* <h3 id="10">fb分享接口</h3>

 ```
 
	/// fb分享接口
/// @param hashTag  话题
/// @param message  引文
/// @param url  分享的url
/// @param shareBlock 分享的回调
-(void)shareWithTag:(NSString *)hashTag message:(NSString *)message url:(NSString *)url successBlock:(ShareBlock)shareBlock;
	
	sample:
		
	[[MWSDK share] shareWithTag:@"#萬靈召喚師" message:@"2022首款卡牌大作【萬靈召喚師】，爆笑來襲！從東方文明到西方文明的羈絆，從神族到魔族的對抗，一段奇妙的神仙冒險之旅就此展開！" url:@"https://share.leyouye.com/aedzj/1.html" successBlock:^(BOOL success, NSDictionary * _Nullable result) {
                
        if (success) {
            //分享成功
        }else{
            //分享失败
        }
    }];
             
 ```
 
* <h3 id="11">line分享接口</h3>

 ```
 ///content 分享的内容
 - (void)shareLineWithContent:(NSString *)content block:(MWBlock) bMWBlock
 
 sample:
	[[MWSDK share] shareLineWithContent:@"2022首款卡牌大作【萬靈召喚師】，爆笑來襲！從東方文明到西方文明 https://share.leyouye.com/aedzj/1.html" block:^(BOOL success, id  _Nullable result) {
                NSLog(@"shareLineWithContent finish");
            }];
             
 ```
 
* <h3 id="12">获取手机验证码接口</h3>

 ```
 ///areaCode 手机区号
 ///telephone 手机号码
 - (void)requestVfCodeWithAreaCode:(NSString *)areaCode telephone:(NSString *)telephone Block:(MWBlock)mMWBlock;
             
 ```
 
* <h3 id="13">请求绑定手机接口</h3>

 ```
 ///areaCode 手机区号
 ///telephone 手机号码
 ///vfCode 验证码
 - (void)requestBindPhoneAreaCode:(NSString *)areaCode telephone:(NSString *)telephone vfCode:(NSString *)vfCode Block:(MWBlock)mMWBlock;
             
 ```

* <h3 id="14">请求升级账号接口</h3>

 ```
 ///account 账号
 ///password 密码
- (void)requestUpgradeWithAccount:(NSString *)account password:(NSString *)password Block:(MWBlock)mMWBlock;
             
 ```
 
* <h3 id="15">客服接口</h3>

 ```
 - (void)openCs;
             
 ```
 
* <h3 id="16">添加本地推送接口</h3>

 ```
 /// <#Description#>  添加本地推送通知
/// @param title 标题
/// @param subtitle 副标题
/// @param body 通知内容
/// @param trigger 通知的触发条件
/// @param notifyId  通知标识 id，用于更新、删除
- (void)addLocalNotificationWithTitle:(NSString *)title subtitle:(NSString *)subtitle body:(NSString *)body trigger:(nullable UNNotificationTrigger *)trigger notifyId:(NSString *)notifyId;

	simple:

	// 多少秒后发送,可以将固定的日期转化为时间
    NSTimeInterval time = [[NSDate dateWithTimeIntervalSinceNow:10] timeIntervalSinceNow];
    // repeats，是否重复，如果重复的话时间必须大于60s，要不会报错
    UNTimeIntervalNotificationTrigger *trigger = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:time repeats:NO];
    
    [[MWSDK share] addLocalNotificationWithTitle:@"我是定时通知" subtitle:@"我是副title" body:@"定时通知内容" trigger:trigger notifyId:@"notifyId_1"];
    
    或者：
    
    //如果想重复可以使用这个,按日期
    // 周一早上 8：00 上班
    NSDateComponents *components = [[NSDateComponents alloc] init];
    // 注意，weekday默认是从周日开始
    components.weekday = 3;
    components.hour = 12;
    components.minute = 50;
    UNCalendarNotificationTrigger *calendarTrigger = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    
    [[MWSDK share] addLocalNotificationWithTitle:@"我是定期通知" subtitle:@"哈哈哈" body:@"啦啦啦游戏" trigger:calendarTrigger notifyId:@"notifyId_2"];
             
 ```




