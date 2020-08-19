//
//  GamaLabel.h
//  GamaSDK_iOS
//
//  Created by sunn on 2017/8/25.
//  Copyright © 2017年 starpy. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, VerticalAlignment)
{
    VerticalAlignmentTop = 0, // default
    VerticalAlignmentMiddle,
    VerticalAlignmentBottom,
};

@interface GamaLabel : UILabel
{
    @private
    VerticalAlignment _spVerticalAlignment;
}

@property (nonatomic) VerticalAlignment gamaVerticalAlignment;

@end
