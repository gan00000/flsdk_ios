//
//  SPSecondContentView.h
//  SPSDK_iOS
//
//  Created by sunn on 2017/8/10.
//  Copyright © 2017年 starpy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HelloHeader.h"
#import "GamaPlatformDataModel.h"
#import "HelloPlatform.h"
#import <WebKit/WebKit.h>

typedef NS_OPTIONS(NSUInteger, SecondPartMode)
{
    SecondPartMode_Banner = 0,
    SecondPartMode_Webview = 1,
    SecondPartMode_CollectionView = 2,
    SecondPartMode_Cutomlization = 3,
    SecondPartMode_Unknow,
    
};

@interface SecondPartContentView : UIView <UITableViewDelegate,UITableViewDataSource, UICollectionViewDelegate,UICollectionViewDataSource,WKUIDelegate>

- (instancetype)initWithFrame:(CGRect)frame mode:(FloatItems)mode dataModel:(GamaPlatformDataModel *)dataModel;


@end
