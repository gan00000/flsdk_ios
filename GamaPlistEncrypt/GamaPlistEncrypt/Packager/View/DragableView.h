//
//  DragableView.h
//  EfunPlistEncrypt
//
//  Created by czf on 29/4/15.
//  Copyright (c) 2015 Efun. All rights reserved.
//

#import <Cocoa/Cocoa.h>

typedef void(^DragFileHandler)(NSString *fileName);

@interface DragableView : NSView

- (void)setupInvoke:(DragFileHandler)invokeHandler;

@end
