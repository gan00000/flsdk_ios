//
//  ResourcesConfigViewController.h
//  EfunPlistEncrypt
//
//  Created by czf on 20/5/15.
//  Copyright (c) 2015年 Efun. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ResourcesConfigViewController : NSViewController<NSComboBoxDataSource, NSComboBoxDelegate>

- (void)setupWithGameCode:(NSString *)gameCode;
@end
