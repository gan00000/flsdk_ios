//
//  ProcessingViewController.m
//  EfunPlistEncrypt
//
//  Created by czf on 19/5/15.
//  Copyright (c) 2015年 Efun. All rights reserved.
//

#import "ProcessingViewController.h"

@interface ProcessingViewController ()
@property (unsafe_unretained) IBOutlet NSTextView *processingTextView;

@end

@implementation ProcessingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    [PackagerManager defaultPackagerManager].packageInfoDelegate = self;
    
    [self _addLoadingTextWithString:@"\n\nProcessing...\n"];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_closeCurrentViewController) name:kProcessingOverNotification object:nil];
}

- (void)_addLoadingTextWithString:(NSString *)str
{
    NSString *tmpStr = [NSString stringWithFormat:@"%@\n", str];
    
    _processingTextView.editable = YES;
    [_processingTextView insertText:tmpStr];
    _processingTextView.editable = NO;
}

- (void)_closeCurrentViewController
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [self dismissController:self];
}

#pragma mark -delegate
- (void)packagingInfo:(NSString *)packInfo
{
    [self _addLoadingTextWithString:packInfo];
}

- (void)packageDone
{
    if (_processingTextView) {
        // this will only call when package Done
        [self _closeCurrentViewController];
    }
}

@end
