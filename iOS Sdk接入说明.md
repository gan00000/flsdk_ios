#SDK接入说明

1. [工程配置](#99)
2. [App Info.plist配置](#100)
3. [AppDelegate调用](#1)
4. [设置角色信息](#5)
5. [登录接口](#6)
6. [充值接口](#7)

----------------

* <h2 id="99">工程配置</h2> 
*  **添加sdk提供的 SDK_Frameworks 中库文件**
*	**系统库导入**

	SystemConfiguration.framework、WebKit.framework、JavaScriptCore.framework、CoreTelephony.framework、MobileCoreServices.framework、SafariServices.framework、CoreData.framework、CoreGraphics.framework、CoreFoundation.framework、QuartzCore.framework、Security.framework、Accelerate.framework、iAd.framework、AdSupport.framework、AdServices.framework、ApptrackingTransparency.framework、AuthenticationServices.framework
	
* **添加Sign in with Apple**

	在 Targets -> Signing&Capabilities 下，添加Sign in with Apple
	
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



