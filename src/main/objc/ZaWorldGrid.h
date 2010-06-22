//
//  ZaWorldGrid.h
//  ZaWorld
//
//  Created by Archimedes Trajano on 2010-06-21.
//  Copyright 2010 trajano.net. All rights reserved.
//

#import <Cocoa/Cocoa.h>

/**
 * This is a generic Grid view that allows for a grid layout of sprites.  I
 * may eventually redo this to support animation so there would most likely be a
 * "next" view.
 *
 * A grid will contain the data for an entire floor.  The model has its coordinate
 * system in the cartetian coordinate system and it it do a tranform so that the bottom left is drawn.
 * It will draw the entire area for now.
 */

@interface ZaWorldGrid : NSView {
    NSPoint location;
    NSColor *itemColor;

    /**
     * This is the background color of the grid.
     */
    NSColor *backgroundColor;
    
    /**
     * This is the color of the grid, may be null, but only if gridVisible is 
     * false.
     */
    NSColor *gridColor;
    
    /**
     * If this property is true, then the grid will be displayed.
     */
    BOOL gridVisible;
}
@property(readwrite) NSPoint location;
@property(assign) NSColor *itemColor;
@property(assign) NSColor *backgroundColor;
@property(assign) NSColor *gridColor;
@property(readwrite) BOOL gridVisible;

@end
