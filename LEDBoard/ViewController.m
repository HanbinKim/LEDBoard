//
//  ViewController.m
//  LEDBoard
//
//  Created by SDT-1 on 2014. 1. 22..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UIButton *btn1;

@end

@implementation ViewController


- (IBAction)btn1:(id)sender
{

    for(int i=0;i<100;i++)
    {

        [self performSelector:@selector(red) withObject:nil afterDelay:10.0];
        NSLog(@"레드셀렉터");
        self.label.textColor = [UIColor redColor];
        [self.label reloadInputViews];
        [self performSelector:@selector(blue) withObject:nil afterDelay:10.0];
        self.label.textColor = [UIColor blueColor];
        NSLog(@"블루셀렉터");
        [self.label reloadInputViews];
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
