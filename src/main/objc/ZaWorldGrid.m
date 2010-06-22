//
//  ZaWorldGrid.m
//  ZaWorld
//
//  Created by Archimedes Trajano on 2010-06-21.
//  Copyright 2010 trajano.net. All rights reserved.
//

#import "ZaWorldGrid.h"


@implementation ZaWorldGrid
@synthesize location, itemColor, backgroundColor, gridColor, gridVisible;

- (void)setItemPropertiesToDefault:sender {
    [self setItemColor:[NSColor redColor]];
    [self setBackgroundColor:[NSColor grayColor]];
    [self setGridColor: [NSColor blackColor]];
}

- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
        [self setItemPropertiesToDefault:self];
        
        // Set the size of the object to a large size.
        NSSize mapSize;
        mapSize.width = 1000;
        mapSize.height = 1000;
        [self setFrameSize: mapSize];
    }
    return self;
}

- (void)drawRect:(NSRect)rect {
    // Drawing code here.
    int width = [self frame].size.width;
    int height = [self frame].size.height ;
    
    int i = 0 ;
    int GRIDSIZE= 10;
    
    // Set the color in the current graphics context for future draw operations
    [gridColor setStroke];
    
    
    // Create our drawing path
    
    NSBezierPath* drawingPath = [NSBezierPath bezierPath];
    //  [drawingPath setLineWidth:0.1];
    // Draw a grid
    // first the vertical lines
    for( i = 0 ; i <= width ; i=i+GRIDSIZE ) { 
        // see http://www.cocoabuilder.com/archive/cocoa/53752-how-to-draw-1-pixel-line.html
        // for the reason why I had to add 0.5
        [drawingPath moveToPoint:NSMakePoint(i + 0.5, 0)]; 
        [drawingPath lineToPoint:NSMakePoint(i + 0.5, height)]; 
    } // then the horizontal lines
    for( i = 0 ; i <= height ; i=i+GRIDSIZE ) {
        [drawingPath moveToPoint:NSMakePoint(0, i + 0.5)];
        [drawingPath lineToPoint:NSMakePoint(width, i + 0.5)]; 
    }
    // TODO transform to shift the map if it is smaller than the rect that was passed in.
    // actually draw the grid
    [drawingPath stroke];
    
}

@end
