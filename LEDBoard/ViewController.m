//
//  ViewController.m
//  LEDBoard
//
//  Created by SDT-1 on 2014. 1. 22..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    BOOL _isRed;
    NSTimer *_timer;
}
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UIButton *btn1;

@end

@implementation ViewController


- (IBAction)btn1:(id)sender
{
    if (_timer == nil) {
        _timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(changeColor:) userInfo:nil repeats:YES];
    } else {
        [_timer invalidate];
        _timer = nil;
    }
}

- (void)changeColor:(NSTimer *)timer {
    if (_isRed) {
        self.label.textColor = [UIColor blueColor];
        _isRed = NO;
    } else {
        self.label.textColor = [UIColor redColor];
        _isRed = YES;
    }
}
- (void)red
{
    
    [self.label reloadInputViews];
    NSLog(@"레드");
    
}

- (void)blue
{
    
    [self.label reloadInputViews];
    NSLog(@"블루");
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
