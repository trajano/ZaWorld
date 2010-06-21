    //
    //  ZaWorldGrid.m
    //  ZaWorld
    //
    //  Created by Archimedes Trajano on 2010-06-21.
    //  Copyright 2010 trajano.net. All rights reserved.
    //

#import "ZaWorldGrid.h"


@implementation ZaWorldGrid
@synthesize location, itemColor, backgroundColor;

- (void)setItemPropertiesToDefault:sender

{
    
    [self setLocation:NSMakePoint(0.0,0.0)];
    
    [self setItemColor:[NSColor redColor]];
    
    [self setBackgroundColor:[NSColor whiteColor]];
    
}
- (NSRect)calculatedItemBounds

{
    
    NSRect calculatedRect;
    
    
    
        // calculate the bounds of the draggable item
    
        // relative to the location
    
    calculatedRect.origin=location;
    
    
    
        // the example assumes that the width and height
    
        // are fixed values
    
    calculatedRect.size.width=60.0;
    
    calculatedRect.size.height=200.0;
    
    
    
    return calculatedRect;
    
}

- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
            // Initialization code here.
        [self setItemPropertiesToDefault:self];
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
        // Drawing code here.
        // erase the background by drawing white
    
    [[NSColor whiteColor] set];
    
    [NSBezierPath fillRect:dirtyRect];
    
    
    
        // set the current color for the draggable item
    
    [[self itemColor] set];
    
    
    
        // draw the draggable item
    
    [NSBezierPath fillRect:[self calculatedItemBounds]];
}

@end
