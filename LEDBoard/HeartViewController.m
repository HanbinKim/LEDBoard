//
//  HeartViewController.m
//  LEDBoard
//
//  Created by SDT-1 on 2014. 1. 22..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "HeartViewController.h"

@interface HeartViewController ()
@property (strong, nonatomic) IBOutlet UIView *view3;

@end

@implementation HeartViewController{
    NSTimer *_timer;
    BOOL _isRed;
}


- (void)neonOn
{
    UIImage *neonOn = [UIImage imageNamed:@"02.png"];
    UIImageView *image =[[UIImageView alloc]init];
    [image setImage:neonOn];
    [self.view addSubview:image];
    for(int i=8; i>1;i--)
    {
        image = [[UIImageView alloc]initWithFrame:CGRectMake(240, i*30, 30, 30)];
        [image setImage:neonOn];
        [self.view addSubview:image];
    }
    for(int i=9; i>2;i--)
    {
        image = [[UIImageView alloc]initWithFrame:CGRectMake(270, i*30, 30, 30)];
        [image setImage:neonOn];
        [self.view addSubview:image];
    }
    for(int i=9; i>3;i--)
    {
        image = [[UIImageView alloc]initWithFrame:CGRectMake(300, i*30, 30, 30)];
        [image setImage:neonOn];
        [self.view addSubview:image];
    }
    for(int i=9; i>4;i--)
    {
        image = [[UIImageView alloc]initWithFrame:CGRectMake(330, i*30, 30, 30)];
        [image setImage:neonOn];
        [self.view addSubview:image];
    }
    for(int i=8; i>5;i--)
    {
        image = [[UIImageView alloc]initWithFrame:CGRectMake(360, i*30, 30, 30)];
        [image setImage:neonOn];
        [self.view addSubview:image];
    }
    for(int i=9; i>2;i--)
    {
        image = [[UIImageView alloc]initWithFrame:CGRectMake(210, i*30, 30, 30)];
        [image setImage:neonOn];
        [self.view addSubview:image];
    }
    for(int i=9; i>3;i--)
    {
        image = [[UIImageView alloc]initWithFrame:CGRectMake(180, i*30, 30, 30)];
        [image setImage:neonOn];
        [self.view addSubview:image];
    }
    for(int i=9; i>4;i--)
    {
        image = [[UIImageView alloc]initWithFrame:CGRectMake(150, i*30, 30, 30)];
        [image setImage:neonOn];
        [self.view addSubview:image];
    }
    for(int i=8; i>5;i--)
    {
        image = [[UIImageView alloc]initWithFrame:CGRectMake(120, i*30, 30, 30)];
        [image setImage:neonOn];
        [self.view addSubview:image];
    }

    
}

- (void)neonOff
{
    UIImage *neonOn = [UIImage imageNamed:@"06.png"];
    UIImageView *image =[[UIImageView alloc]init];
    [image setImage:neonOn];
    [self.view addSubview:image];
    for(int i=8; i>1;i--)
    {
        image = [[UIImageView alloc]initWithFrame:CGRectMake(240, i*30, 30, 30)];
        [image setImage:neonOn];
        [self.view addSubview:image];
    }
    for(int i=9; i>2;i--)
    {
        image = [[UIImageView alloc]initWithFrame:CGRectMake(270, i*30, 30, 30)];
        [image setImage:neonOn];
        [self.view addSubview:image];
    }
    for(int i=9; i>3;i--)
    {
        image = [[UIImageView alloc]initWithFrame:CGRectMake(300, i*30, 30, 30)];
        [image setImage:neonOn];
        [self.view addSubview:image];
    }
    for(int i=9; i>4;i--)
    {
        image = [[UIImageView alloc]initWithFrame:CGRectMake(330, i*30, 30, 30)];
        [image setImage:neonOn];
        [self.view addSubview:image];
    }
    for(int i=8; i>5;i--)
    {
        image = [[UIImageView alloc]initWithFrame:CGRectMake(360, i*30, 30, 30)];
        [image setImage:neonOn];
        [self.view addSubview:image];
    }
    for(int i=9; i>2;i--)
    {
        image = [[UIImageView alloc]initWithFrame:CGRectMake(210, i*30, 30, 30)];
        [image setImage:neonOn];
        [self.view addSubview:image];
    }
    for(int i=9; i>3;i--)
    {
        image = [[UIImageView alloc]initWithFrame:CGRectMake(180, i*30, 30, 30)];
        [image setImage:neonOn];
        [self.view addSubview:image];
    }
    for(int i=9; i>4;i--)
    {
        image = [[UIImageView alloc]initWithFrame:CGRectMake(150, i*30, 30, 30)];
        [image setImage:neonOn];
        [self.view addSubview:image];
    }
    for(int i=8; i>5;i--)
    {
        image = [[UIImageView alloc]initWithFrame:CGRectMake(120, i*30, 30, 30)];
        [image setImage:neonOn];
        [self.view addSubview:image];
    }
    
}
- (IBAction)btn1:(id)sender
{
    if (_timer == nil) {
        _timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(changeColor:) userInfo:nil repeats:YES];
    } else {
        [_timer invalidate];
        _timer = nil;
        
    }
}



- (void)changeColor:(NSTimer *)timer {
    if (_isRed) {
        [self neonOn];
        _isRed = NO;
    } else {
        [self neonOff];
        _isRed = YES;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
