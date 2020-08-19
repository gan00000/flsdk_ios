//
//  HelloProtocol.h
//
//
//  Created by Sunny on 17/2/6.
//  Copyright © 2017年 starpy. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "HelloHeader.h"

typedef NS_OPTIONS(NSUInteger, HelloProtocolMode)
{
    HelloProtocol_Agreement ,
    HelloProtocol_Adwalls ,
    HelloProtocol_CustomService ,
    HelloProtocol_SpaceMode,
    HelloProtocol_Space_CustomService,
    HelloProtocol_Space_Special,
    HelloProtocol_Space_Webview,
};

@interface HelloProtocolViewController : UIViewController


/**
 顯示正常網頁

 @param mode 網頁類型
 @param optionUrl 網頁地址，可選
 @return 對象
 */
- (instancetype)initWithProtocolMode:(HelloProtocolMode)mode optionUrl:(NSString *)optionUrl;


/**
 顯示第三方儲值網頁

 @param mode 網頁類型
 @param optionDic 儲值時傳入的參數
 @return 對象
 */
- (instancetype)initWithProtocolMode:(HelloProtocolMode)mode optionParams:(NSDictionary *)optionDic;

/**
 打開webView的連接
 
 @param webPageUrl 打開的連接
 */
- (void)openWebPage:(NSString *)webPageUrl;

@end
