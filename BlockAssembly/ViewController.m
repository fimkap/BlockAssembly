//
//  ViewController.m
//  BlockAssembly
//
//  Created by Efim Polevoi on 06/12/2015.
//  Copyright © 2015 Efim Polevoi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,retain) NSDictionary *dictionary;
//@property (nonatomic,copy) void(^MyBlock)(void);
@end

@implementation ViewController

@synthesize dictionary/*, MyBlock*/;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*
    [self setMyBlock:^{
        self.dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"obj", @"key", nil];
        }];
        */
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    //__block ViewController *selfRef = self;
    //dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0), ^{
    //    selfRef.dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"obj", @"key", nil];
    //});
    //dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0), self.MyBlock);
    dispatch_time_t dispatchTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC));
    dispatch_after(dispatchTime, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        self.dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"obj", @"key", nil];
    });
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
}

@end
