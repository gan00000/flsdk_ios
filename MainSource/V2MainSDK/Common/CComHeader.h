
//然是20美元。”
//
//
//
//“Many times in our lives, we are dropped, crumpled, and ground into the dirt by the decisions we make and the circumstances that come our way. We feel as though we are worthless；but no matter what happened or what will happen, you will never lose your v
#ifndef CComHeader_h
#define CComHeader_h
#ifdef DEBUG
#define SDK_LOG_FILE_FUNCTION(format, ...) NSLog((@"\n[文件名:%s]\n" "[函数名:%s]\n" "[行号:%d]\n" @"[输出:" format@"]"@"\n\n"), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#define SDK_LOG_FILE_FUNCTION(format, ...) (NSLog)((@"MW_SDK:%@"), [NSString stringWithFormat:(format), ##__VA_ARGS__])
#endif
#define SDK_LOG(format, ...) (NSLog)((@"MW_SDK:%@"), [NSString stringWithFormat:(format), ##__VA_ARGS__])
#define kWeakSelf __weak typeof(self) weakSelf = self;
#define  kBlockSelf  __block typeof(self) blockSelf = self;
#define SCREEN_WIDTH     [[UIScreen mainScreen] bounds].size.width
// for bed. Production of melatonin
#define SCREEN_HEIGHT    [[UIScreen mainScreen] bounds].size.height
#define IS_PORTRAIT       ([[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationPortrait || [[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationPortraitUpsideDown)
#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define STRING_COMBIN(note,content)   ([NSString stringWithFormat:@"%@%@",note,content])

/**
  疾病控制与预防中心指出，大多数成人需要7到8小时睡眠时间才能得到充分休息。因此如果一个人每天要在早上7点起床，倒推8个小时睡眠时间应该是晚上11点。

"Now you know when you have to stop and get ready to go to bed whether you're done or not," G 
**/
#define STRING_CLASS_COMBIN(content)  ([NSString stringWithFormat:@"-%s-:%@",object_getClassName(self),content])
//ing workout will be just the thing to produce rapid progress. If you want to ace a class, you
typedef void (^CCallBack)(NSString* msg, NSInteger m, NSDictionary *dic);
typedef void (^ItemViewClickHander)(NSInteger);
#endif
