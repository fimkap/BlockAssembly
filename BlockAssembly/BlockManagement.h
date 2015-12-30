//
//  BlockManagement.h
//  BlockAssembly
//
//  Created by Efim Polevoi on 28/12/2015.
//  Copyright © 2015 Efim Polevoi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlockManagement : NSObject
@property (nonatomic,retain) NSDictionary *dictionary;
@property (nonatomic,retain) void(^MyBlock)(void);
- (void)initBlock; 
@end
