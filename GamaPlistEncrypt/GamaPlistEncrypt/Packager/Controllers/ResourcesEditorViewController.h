//
//  ResourcesEditorViewController.h
//  EfunPlistEncrypt
//
//  Created by czf on 20/5/15.
//  Copyright (c) 2015年 Efun. All rights reserved.
//

#import <Cocoa/Cocoa.h>

static NSString *kResEditorCloseNotification = @"ResEditorCloseNotification";
@interface ResourcesEditorViewController : NSViewController

- (void)setupWithCurrentResName:(NSString *)curResName;

@end
