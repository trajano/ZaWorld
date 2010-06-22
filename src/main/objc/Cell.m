//
//  Cell.m
//  ZaWorld
//
//  Created by Archimedes Trajano on 2010-06-22.
//  Copyright 2010 trajano.net. All rights reserved.
//

#import "Cell.h"


@implementation Cell
@synthesize col, row;

- (id) initWithCol:(int)inCol andRow:(int)inRow {
    self = [super init];
    if (self) {
        col = inCol;
        row = inRow;
    }
    return self;
}

@end
