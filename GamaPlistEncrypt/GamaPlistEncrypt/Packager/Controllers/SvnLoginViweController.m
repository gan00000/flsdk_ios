//
//  SvnLoginViweController.m
//  EfunPlistEncrypt
//
//  Created by czf on 22/7/15.
//  Copyright (c) 2015年 Efun. All rights reserved.
//

#import "SvnLoginViweController.h"
#import "PackagerWindowController.h"

extern NSString *kSvnUserName ;
extern NSString *kSvnPassword ;


@interface SvnLoginViweController ()
@property (weak) IBOutlet NSTextField *svnUserName;
@property (weak) IBOutlet NSTextField *svnPassword;

@end

static NSString * __svnUserNameKey__ = @"__svnUserNameKey__";
static NSString * __svnUserPassword__ = @"__svnUserPassword__";
@implementation SvnLoginViweController
- (void)viewWillAppear
{
    NSString *tmpUserName = nil, *tmpPassword = nil;
    tmpUserName = [[NSUserDefaults standardUserDefaults] objectForKey:__svnUserNameKey__];
    tmpPassword = [[NSUserDefaults standardUserDefaults] objectForKey:__svnUserPassword__];
    
    if (tmpUserName || tmpPassword) {
        self.svnUserName.stringValue = tmpUserName;
        self.svnPassword.stringValue = tmpPassword;
    }
}

- (IBAction)onPressedSvnLogin:(id)sender {
    
    NSString *tmpUserName = nil, *tmpPassword = nil;
    
    tmpUserName = self.svnUserName.stringValue;
    tmpPassword = self.svnPassword.stringValue;
    
    if (!tmpUserName || !tmpPassword
        || [tmpUserName isEqualToString:@""] || [tmpPassword isEqualToString:@""]) {
        [CoreHelper_Internal showAlertWithMessageText:@"Plseae INPUT with your svn account!!"];
        return;
    }
    
    kSvnUserName = tmpUserName.copy;
    kSvnPassword = tmpPassword.copy;
    
    [[NSUserDefaults standardUserDefaults] setValue:kSvnUserName forKey:__svnUserNameKey__];
    [[NSUserDefaults standardUserDefaults] setValue:kSvnPassword forKey:__svnUserPassword__];
    
    //OPEN TO START VIEW
    [PackagerWindowController presentViewContorllerForm:self
                              toViewControllerClassName:[StartViewController className]
                                   andConfigDestination:nil];
}

@end
