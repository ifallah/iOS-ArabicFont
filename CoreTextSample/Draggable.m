//
//  UIImage+Draggable.m
//  CoreTextSample
//
//  Created by Maher Ali on 6/27/12.
//  Copyright (c) 2012 News.me. All rights reserved.
//


#import "Draggable.h"
@implementation Draggable

- (void) touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event {
    // Retrieve the touch point
    CGPoint pt = [[touches anyObject] locationInView:self];
    startLocation = pt;
    [[self superview] bringSubviewToFront:self];
}
- (void) touchesMoved:(NSSet*)touches withEvent:(UIEvent*)event {
    // Move relative to the original touch point
    CGPoint pt = [[touches anyObject] locationInView:self];
    CGRect frame = [self frame];
    frame.origin.x += pt.x - startLocation.x;
    frame.origin.y += pt.y - startLocation.y;
    [self setFrame:frame];
}
@end