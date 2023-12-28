

#ifndef CComHeader_h
#define CComHeader_h


#define SDK_LOG(format, ...) (NSLog)((@"DYSDK:%@"), [NSString stringWithFormat:(format), ##__VA_ARGS__])

#define kWeakSelf __weak typeof(self) weakSelf = self;

#define  kBlockSelf  __block typeof(self) blockSelf = self;

#define SCREEN_WIDTH     [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT    [[UIScreen mainScreen] bounds].size.height
#define IS_PORTRAIT       ([[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationPortrait || [[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationPortraitUpsideDown)

#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)

#define STRING_COMBIN(note,content)   ([NSString stringWithFormat:@"%@%@",note,content])
#define STRING_CLASS_COMBIN(content)  ([NSString stringWithFormat:@"-%s-:%@",object_getClassName(self),content])
#define STR_FORMAT(format, ...) [NSString stringWithFormat:(format), ##__VA_ARGS__]


typedef void (^CCallBack)(NSString* msg, NSInteger m, NSDictionary *dic);

typedef void (^ItemViewClickHander)(NSInteger);

typedef void(^CCallBack2)(void);


#endif 
