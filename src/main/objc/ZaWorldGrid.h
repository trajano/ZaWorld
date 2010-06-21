//
//  ZaWorldGrid.h
//  ZaWorld
//
//  Created by Archimedes Trajano on 2010-06-21.
//  Copyright 2010 trajano.net. All rights reserved.
//

#import <Cocoa/Cocoa.h>

/**
 * This is a generic Grid view that allows for a grid layout of sprites.  I may eventually redo this 
 * to support animation so there would most likely be a "next" view.
 */

@interface ZaWorldGrid : NSView {
    NSPoint location;
    NSColor *itemColor;
    NSColor *backgroundColor;
}
@property(readwrite) NSPoint location;
@property(assign) NSColor *itemColor;
@property(assign) NSColor *backgroundColor;

@end
