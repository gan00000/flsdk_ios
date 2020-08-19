//
//  AppDelegate.m
//

#import "AppDelegate.h"
#import "GamaEnDeFunc.h"

#import "PackagerWindowController.h"

#import "TaskHelper.h"

#import "PackagerXCodeEdit.h"

@interface AppDelegate () {
    NSString *_filepath;
}

@property (weak) IBOutlet NSTextField *txtFilePath;
@property (weak) IBOutlet NSMatrix *radioCrypt;
- (IBAction)btnGo:(NSButton *)sender;
- (IBAction)btnBrowse:(NSButton *)sender;

@property (weak) IBOutlet NSWindow *window;

@property (strong) PackagerWindowController *packagerWindowController;

@end

@implementation AppDelegate
@synthesize packagerWindowController;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.window.delegate = self;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag
{
    if (flag) {
        return NO;
    } else {
        [self.window makeKeyAndOrderFront:self];
        return YES;
    }
}

// 根据选择的文件，加密或解密文件，并输出
- (IBAction)btnGo:(NSButton *)sender {
    NSInteger selected = self.radioCrypt.selectedRow;
    _filepath = self.txtFilePath.stringValue;
    
    if (_filepath == nil || [_filepath isEqualToString:@""]) {
        NSAlert *alert = [[NSAlert alloc] init];
        [alert setMessageText:@"please select valid file."];
        [alert runModal];
        return;
    } else if(![_filepath.pathExtension isEqualToString:@"plist"]) {
        NSAlert *alert = [[NSAlert alloc] init];
        [alert setMessageText:@"The type of the file you selected maybe wrong!"];
        [alert runModal];
        return;
    }
    @try {
        if (selected == 0) {
            //Encrypt
            [GamaEnDeFunc creatEncryptedPlistWithFilePath:_filepath];
        } else if (selected == 1) {
            //Decrypt
            [GamaEnDeFunc creatDecryptedPlistWithFilePath:_filepath];
        }
    }
    @catch (NSException *exception) {
        NSAlert *alert = [[NSAlert alloc] init];
        [alert setMessageText:exception.description];
        [alert runModal];
    }
    @finally {
        ;
    }
    
}
// 打开文件选择对话框
- (IBAction)btnBrowse:(NSButton *)sender {
    NSOpenPanel *openPanel = [[NSOpenPanel alloc] init];
    [openPanel setCanChooseFiles:YES];
    [openPanel setCanChooseDirectories:NO];
    [openPanel setAllowsMultipleSelection:NO];
    
    if ([openPanel runModal] == NSFileHandlingPanelOKButton) {
        NSURL *fileURL = [openPanel URL];
        [self.txtFilePath setStringValue:fileURL.path];
    }
}

- (IBAction)btnPackagePressed:(id)sender {
    [self.window close];
    
    NSStoryboard *tmpStoryBoard = [NSStoryboard storyboardWithName:@"Packager" bundle:nil];;
    
    packagerWindowController = [tmpStoryBoard instantiateControllerWithIdentifier:[PackagerWindowController className]];
    [packagerWindowController showWindow:self];
}


- (IBAction)onPressedHelp:(id)sender
{
}

@end
