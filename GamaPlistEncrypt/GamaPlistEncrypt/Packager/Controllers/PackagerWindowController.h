//
//

#import <Cocoa/Cocoa.h>

#import "ProcessingViewController.h"

#import "SvnLoginViweController.h"
#import "StartViewController.h"
#import "EditModeController.h"
#import "SvnLogController.h"
#import "ResourcesEditorViewController.h"
#import "ResourcesConfigViewController.h"

#import "NSString+StringAdditions.h"

#import "InfoData.h"

#import "PackagerManager.h"

#import <AppKit/AppKit.h>

@interface PackagerWindowController : NSWindowController

+ (void)presentViewContorllerForm:(NSViewController *)fVc toViewControllerClassName:(NSString *)className andConfigDestination:(void(^)(NSViewController *desVC))handler;

+ (void)presentProcessingViewControllerForm:(NSViewController *)fVC andProcessingHandler:(void(^)(void))handler;

+ (void)closeProcessViewControllerIfExist;

@end
