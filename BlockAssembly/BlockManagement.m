//
//  BlockManagement.m
//  BlockAssembly
//
//  Created by Efim Polevoi on 28/12/2015.
//  Copyright © 2015 Efim Polevoi. All rights reserved.
//

#import "BlockManagement.h"

@implementation BlockManagement

@synthesize dictionary = _dictionary, MyBlock = _MyBlock;

/*
- (id)init {
    self = [super init];
    if (self) {
    }

    return self;
}
*/

- (void)initBlock {
    __block __unsafe_unretained BlockManagement* welf = self;
    self.MyBlock = ^{
        welf.dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"obj", @"key", nil];
    };
}

- (void)dealloc {
    //[_MyBlock release];
    [super dealloc];
}

@end
