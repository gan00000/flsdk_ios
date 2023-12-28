//
//  CComHeader.h
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/16.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#ifndef CComHeader_h
#define CComHeader_h

//#ifdef DEBUG // 开发
//#define SDK_LOG_FILE_FUNCTION(format, ...) NSLog((wwwww_tag_wwwww_languagement_pludeathproof "[函数名:%s]\n" "[行号:%d]\n" wwwww_tag_wwwww_shoulderarian_newspaperism format@"]"@"\n\n"), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__);
//#else // 发布
//#define SDK_LOG_FILE_FUNCTION(format, ...) (NSLog)((wwwww_tag_wwwww_suf_wholehood), [NSString stringWithFormat:(format), ##__VA_ARGS__])
//#endif

#define SDK_LOG(format, ...) (NSLog)((wwwww_tag_wwwww_hoursive_scindile), [NSString stringWithFormat:(format), ##__VA_ARGS__])

#define kWeakSelf __weak typeof(self) weakSelf = self;

#define  kBlockSelf  __block typeof(self) blockSelf = self;

#define SCREEN_WIDTH     [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT    [[UIScreen mainScreen] bounds].size.height
#define IS_PORTRAIT       ([[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationPortrait || [[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationPortraitUpsideDown)

#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)

#define STRING_COMBIN(note,content)   ([NSString stringWithFormat:wwwww_tag_wwwww_bat_bacair,note,content])
#define STRING_CLASS_COMBIN(content)  ([NSString stringWithFormat:wwwww_tag_wwwww_last_aesthetature,object_getClassName(self),content])
#define STR_FORMAT(format, ...) [NSString stringWithFormat:(format), ##__VA_ARGS__]


typedef void (^CCallBack)(NSString* msg, NSInteger m, NSDictionary *dic);

typedef void (^ItemViewClickHander)(NSInteger);

typedef void(^CCallBack2)(void);


#endif /* CComHeader_h */
