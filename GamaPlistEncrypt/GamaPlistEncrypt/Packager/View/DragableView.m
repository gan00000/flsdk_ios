//
//  DragableView.m
//  EfunPlistEncrypt
//
//  Created by czf on 29/4/15.
//  Copyright (c) 2015 Efun. All rights reserved.
//

#import "DragableView.h"

@interface DragableView ()

@property (strong,atomic)DragFileHandler handler;

@end

@implementation DragableView

- (void)awakeFromNib
{
    [self registerForDraggedTypes:@[NSFilenamesPboardType]];
}

- (BOOL)performDragOperation:(id <NSDraggingInfo>)sender
{
    NSPasteboard *pboard = [sender draggingPasteboard];
    
    if ( [[pboard types] containsObject:NSURLPboardType] ) {
        NSArray *files = [pboard propertyListForType:NSFilenamesPboardType];
        if (files.count <= 0) {
            return NO;
        }
        NSString *tmpStr = [files objectAtIndex:0];
        
        if (_handler) {
            _handler(tmpStr);
        }
    }
    return YES;
}

- (NSDragOperation)draggingEntered:(id <NSDraggingInfo>)sender {
    
//    if (!self.isEnabled) return NSDragOperationNone;
    
    NSPasteboard *pboard;
    NSDragOperation sourceDragMask;
    
    sourceDragMask = [sender draggingSourceOperationMask];
    pboard = [sender draggingPasteboard];
    
    if ( [[pboard types] containsObject:NSColorPboardType] ) {
        if (sourceDragMask & NSDragOperationCopy) {
            return NSDragOperationCopy;
        }
    }
    if ( [[pboard types] containsObject:NSFilenamesPboardType] ) {
        if (sourceDragMask & NSDragOperationCopy) {
            return NSDragOperationCopy;
        }
    }
    
    return NSDragOperationNone;
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (void)setupInvoke:(void(^)(NSString *fileName))invokeHandler
{
    self.handler = invokeHandler;
}

@end
