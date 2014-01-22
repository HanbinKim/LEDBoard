//
//  ViewController.m
//  LEDBoard
//
//  Created by SDT-1 on 2014. 1. 22..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
{
    BOOL _isRed;
    NSTimer *_timer;
    float x;
    BOOL _isLeft;
    NSTimer *_timer2;
    BOOL _onoff;
    UIColor *color;
    int x1;
    int y1;
}
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UIView *colorView;

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UISwitch *btn1;
@property (strong, nonatomic) IBOutlet UISwitch *btn2;
@property (strong, nonatomic) IBOutlet UIButton *colorbtn;

@end

@implementation ViewController


- (IBAction) colorSelect:(id)sender
{
    self.colorView.hidden =NO;
}
- (IBAction) red:(id)sender
{
    self.colorView.hidden =YES;
    color = [UIColor redColor];
    self.colorbtn.backgroundColor = [UIColor redColor];
}
- (IBAction) blue:(id)sender
{
    self.colorView.hidden =YES;
    color = [UIColor blueColor];
    self.colorbtn.backgroundColor = [UIColor blueColor];
}
- (IBAction) brown:(id)sender
{
    self.colorView.hidden =YES;
    color = [UIColor brownColor];
    self.colorbtn.backgroundColor = [UIColor brownColor];
}
- (IBAction) cyan:(id)sender
{
    self.colorView.hidden =YES;
    color = [UIColor cyanColor];
    self.colorbtn.backgroundColor = [UIColor cyanColor];
}
- (IBAction) green:(id)sender
{
    self.colorView.hidden =YES;
    color = [UIColor greenColor];
    self.colorbtn.backgroundColor = [UIColor greenColor];
}
- (IBAction) purple:(id)sender
{
    self.colorView.hidden =YES;
    color = [UIColor purpleColor];
    self.colorbtn.backgroundColor = [UIColor purpleColor];
}
- (IBAction) orange:(id)sender
{
    self.colorView.hidden =YES;
    color = [UIColor orangeColor];
    self.colorbtn.backgroundColor = [UIColor orangeColor];
}
- (IBAction) yellow:(id)sender
{
    self.colorView.hidden =YES;
    color = [UIColor yellowColor];
    self.colorbtn.backgroundColor = [UIColor yellowColor];
}

- (IBAction) white:(id)sender
{
    self.colorView.hidden =YES;
    color = [UIColor whiteColor];
    self.colorbtn.backgroundColor = [UIColor whiteColor];
}




- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(_onoff==nil)
    {

        self.btn1.hidden=YES;
        self.btn2.hidden=YES;
        self.colorbtn.hidden=YES;
        _onoff =YES;
    }
    else
    {
        self.btn1.hidden=NO;
        self.btn2.hidden=NO;
        _onoff=nil;
        self.colorbtn.hidden=NO;
    }
    
}

- (IBAction)btn1:(id)sender
{
    if (_timer == nil) {
        _timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(changeColor:) userInfo:nil repeats:YES];
        self.textField.hidden=YES;
    } else {
        [_timer invalidate];
        _timer = nil;
        self.textField.hidden=NO;
        self.label.text = @"Text";
    }
}

- (IBAction)moveOnOff:(id)sender
{
    BOOL isOn = ((UISwitch *)sender).on;
    if(isOn)
    {
        _timer2 = [NSTimer scheduledTimerWithTimeInterval:1+(x/400) target:self selector:@selector(moveText:) userInfo:nil repeats:YES];
    }
    else
    {
        [_timer2 invalidate];
        self.label.center=CGPointMake(x1, y1);

    }

    
}

- (void)changeColor:(NSTimer *)timer {
    if (_isRed) {
        self.label.textColor = [UIColor grayColor];
        _isRed = NO;
    } else {
        self.label.textColor = color;
        _isRed = YES;
    }
}

- (void)moveText:(NSTimer *)timer
{
    if(_isLeft)
    {
    [UIView animateWithDuration:3 animations:^()
     {
         self.label.center = CGPointMake(-x/2, 160);
     }];
        _isLeft = NO;
    }
    else{
    [UIView animateWithDuration:0 animations:^()
     {
         self.label.center = CGPointMake(x/2+600, 160);
     }
     ];
        _isLeft = YES;
    }
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    self.label.text=self.textField.text;
    [self.label sizeToFit];
    [self.textField resignFirstResponder];
    x = self.label.frame.size.width;
    x1 = self.label.center.x;
    y1 = self.label.center.y;
    return YES;

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.textField.delegate=self;
    self.colorView.hidden=YES;
    color = [UIColor redColor];

    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
