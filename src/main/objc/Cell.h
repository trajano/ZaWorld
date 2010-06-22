//
//  Cell.h
//  ZaWorld
//
//  Created by Archimedes Trajano on 2010-06-22.
//  Copyright 2010 trajano.net. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Cell : NSObject {
    int col;
    int row;
    
}
@property(readonly) int col;
@property(readonly) int row;

-(id)initWithCol: (int)col andRow: (int)row;

@end
