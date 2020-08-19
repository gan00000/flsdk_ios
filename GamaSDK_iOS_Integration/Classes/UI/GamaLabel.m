//
//  GamaLabel.m
//  GamaSDK_iOS
//
//  Created by sunn on 2017/8/25.
//  Copyright © 2017年 starpy. All rights reserved.
//

#import "GamaLabel.h"

@implementation GamaLabel

@synthesize gamaVerticalAlignment;

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.gamaVerticalAlignment = VerticalAlignmentMiddle;
    }
    return self;
}

- (void)setSpVerticalAlignment:(VerticalAlignment)verticalAlignment
{
    gamaVerticalAlignment = verticalAlignment;
    [self setNeedsDisplay];
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines
{
    CGRect textRect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    switch (self.gamaVerticalAlignment) {
        case VerticalAlignmentTop:
            textRect.origin.y = bounds.origin.y;
            break;
        case VerticalAlignmentBottom:
            textRect.origin.y = bounds.origin.y + bounds.size.height - textRect.size.height;
            break;
        case VerticalAlignmentMiddle:
            // Fall through.
        default:
            textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) / 2.0;
    }
    return textRect;
}

-(void)drawTextInRect:(CGRect)requestedRect
{
    CGRect actualRect = [self textRectForBounds:requestedRect limitedToNumberOfLines:self.numberOfLines];
    [super drawTextInRect:actualRect];
}


@end
