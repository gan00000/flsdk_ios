//
//  SvnLogController.m
//  EfunPlistEncrypt
//
//  Created by czf on 11/5/15.
//  Copyright (c) 2015年 Efun. All rights reserved.
//

#import "SvnLogController.h"

#import "SvnTask.h"
#import "InfoData.h"

extern NSString * kSvnLogNotification;

@interface SvnLogController ()
@property (strong,nonatomic) NSString *svnLogStr;

@property (unsafe_unretained) IBOutlet NSTextView *svnLogTextView;

@end

@implementation SvnLogController
@synthesize svnLogStr;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
        
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onSvnLog:) name:kSvnLogNotification object:nil];
}

- (void)viewWillDisappear{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)onSvnLog:(NSNotification *)notif
{
    if (self.svnLogTextView) {
        self.svnLogTextView.editable = YES;
        
        NSString *tmpStr = notif.object;
        [self.svnLogTextView insertText:tmpStr];
        
        self.svnLogTextView.editable = NO;
    }
}

@end
