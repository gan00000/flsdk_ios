//
//  AutoLoginView.h
//
//
//  Created by sunn on 2017/3/11.
//  Copyright © 2017年 sunn. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSInteger, AutoLoginType)
{
    AutoLogin_Gama = 1,
    AutoLogin_FB,
    AutoLogin_Mac,
    AutoLogin_GC,
    AutoLogin_Twitter,
    AutoLogin_Apple,
};

@interface AutoLoginView : UIView

- (instancetype)initwithType:(AutoLoginType)type;

@end
