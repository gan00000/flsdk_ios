//
//  ProcessingViewController.h
//  EfunPlistEncrypt
//
//  Created by czf on 19/5/15.
//  Copyright (c) 2015年 Efun. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "PackagerManager.h"

static NSString *kProcessingOverNotification = @"ProcessingOverNotification";
@interface ProcessingViewController : NSViewController<PackagerManagerInfo>

@end
