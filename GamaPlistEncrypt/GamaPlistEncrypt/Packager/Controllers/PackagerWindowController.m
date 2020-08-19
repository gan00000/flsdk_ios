//
//  PackagerWindowController.m
//  EfunPlistEncrypt
//
//  Created by czf on 24/4/15.
//  Copyright (c) 2015 Efun. All rights reserved.
//

#import "PackagerWindowController.h"

@interface PackagerWindowController ()
@end

static PackagerWindowController *_instance = nil;
@implementation PackagerWindowController

+ (PackagerWindowController *)defaultPackgerWinVC
{
    NSAssert(_instance != nil, @"DEBUG");
    return _instance;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = self;
    });
    
    return self;
}

- (void)windowDidLoad
{
}

+ (void)presentViewContorllerForm:(NSViewController *)fVc toViewControllerClassName:(NSString *)className andConfigDestination:(void(^)(NSViewController * desVC))handler
{
    dispatch_async(dispatch_get_main_queue(), ^{
        NSStoryboard *tmpStoryBoard = [NSStoryboard storyboardWithName:@"Packager" bundle:nil];
        NSViewController *tmpToVC = [tmpStoryBoard instantiateControllerWithIdentifier:className];
        
        if (handler) {
            handler(tmpToVC);
        }
        
        [fVc presentViewControllerAsSheet:tmpToVC];
    });
}

+ (void)presentProcessingViewControllerForm:(NSViewController *)fVC andProcessingHandler:(void(^)(void))handler
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self presentViewContorllerForm:fVC
              toViewControllerClassName:[ProcessingViewController className]
                   andConfigDestination:nil];
        
        if (handler) {
            handler();
        }
    });
}

+ (void)closeProcessViewControllerIfExist
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{//wait for the Process
        [[NSNotificationCenter defaultCenter] postNotificationName:kProcessingOverNotification object:nil];
    });
}

@end
