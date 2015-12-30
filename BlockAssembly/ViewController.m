//
//  ViewController.m
//  BlockAssembly
//
//  Created by Efim Polevoi on 06/12/2015.
//  Copyright © 2015 Efim Polevoi. All rights reserved.
//

#import "ViewController.h"
#import "BlockManagement.h"

@interface ViewController ()
@property (nonatomic,retain) BlockManagement *blockMngmt;
@end

@implementation ViewController

@synthesize blockMngmt = _blockMngmt;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onTouchDidReceived:(__unused id)sender {
    NSLog(@"touched");

    self.blockMngmt = [[[BlockManagement alloc] init] autorelease];
    [self.blockMngmt initBlock];
    [self.blockMngmt MyBlock];
    [_blockMngmt release];
}

@end
