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
//#define SDK_LOG(format, ...) NSLog((@"\n[文件名:%s]\n" "[函数名:%s]\n" "[行号:%d]\n" @"[输出:" format@"]"@"\n\n"), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__);
//#else // 发布
//#define SDK_LOG(format, ...) (NSLog)((@"FL_SDK:%@"), [NSString stringWithFormat:(format), ##__VA_ARGS__])
//#endif
#define SDK_LOG(format, ...) (NSLog)((@"MW_SDK:%@"), [NSString stringWithFormat:(format), ##__VA_ARGS__])

#define kWeakSelf __weak typeof(self) weakSelf = self;

#define  kBlockSelf  __block typeof(self) blockSelf = self;

#define SCREEN_WIDTH     [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT    [[UIScreen mainScreen] bounds].size.height
#define IS_PORTRAIT       ([[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationPortrait || [[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationPortraitUpsideDown)

#define STRING_COMBIN(note,content)   ([NSString stringWithFormat:@"%@%@",note,content])
#define STRING_CLASS_COMBIN(content)  ([NSString stringWithFormat:@"-%s-:%@",object_getClassName(self),content])



typedef void (^CCallBack)(NSString* msg, NSInteger m, NSDictionary *dic);

typedef void (^ItemViewClickHander)(NSInteger);


#endif /* CComHeader_h */
