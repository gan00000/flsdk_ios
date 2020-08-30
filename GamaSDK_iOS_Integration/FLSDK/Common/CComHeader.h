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
#define SDK_LOG(format, ...) (NSLog)((@"FL_SDK:%@"), [NSString stringWithFormat:(format), ##__VA_ARGS__])

#define kWeakSelf __weak typeof(self) weakSelf = self;

#endif /* CComHeader_h */
