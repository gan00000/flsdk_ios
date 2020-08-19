//
//  SPPFAccountManagerView.h
//  SPSDK_iOS
//
//  Created by sunn on 2017/8/16.
//  Copyright © 2017年 starpy. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSInteger, PlatformAccountType)
{
    Account_Starpy = 0,
    Account_Non_Starpy,
};

@interface GamaPFAccountManagerView : UIView

- (instancetype)initWithFrame:(CGRect)frame accountType:(PlatformAccountType)type;

@end
