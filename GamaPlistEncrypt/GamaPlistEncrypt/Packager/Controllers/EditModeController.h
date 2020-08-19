//
//  EditModeController.h
//  EfunPlistEncrypt
//
//  Created by czf on 27/4/15.
//  Copyright (c) 2015 Efun. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface EditModeController : NSViewController<NSTableViewDelegate,NSTableViewDataSource>

- (void)setupWithEditModeIsLoadOldGameCodeConfig:(BOOL) isOldGameCodeConfig
                                     andGameCode:(NSString *)gameCode;

@end
