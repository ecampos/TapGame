//
//  ViewController.m
//  TapGame
//
//  Created by Emanuel Campos on 18.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end
NSString *replay;
@implementation ViewController
@synthesize buttonOne;
@synthesize buttonTwo;
@synthesize buttonThree;
@synthesize buttonFour;
@synthesize buttonStart;
@synthesize buttonStop;
@synthesize lableLevel;


-(IBAction)pushButtonOne:(id)sender{
    if (replay == nil){
        replay =@"One";} else{
            NSString *foo =@",One";
          replay = [NSString stringWithFormat:@"%@%@",replay, foo];
        }
}
-(IBAction)pushButtonTwo:(id)sender{
    if (replay == nil){
        replay =@"Two";} else{
            NSString *foo =@",Two";
            replay = [NSString stringWithFormat:@"%@%@",replay, foo];
        }
}
-(IBAction)pushButtonThree:(id)sender{
    if (replay == nil){
        replay =@"Three";} else{
            NSString *foo =@",Three";
            replay = [NSString stringWithFormat:@"%@%@",replay, foo];
        }    
}
-(IBAction)pushButtonFour:(id)sender{
    if (replay == nil){
        replay =@"Four";} else{
            NSString *foo =@",Four";
            replay = [NSString stringWithFormat:@"%@%@",replay, foo];
        }
}
-(IBAction)pushButtonStart:(id)sender{
    lableLevel.text =replay;
}
-(IBAction)pushButtonStop:(id)sender{
    lableLevel.text =nil;
    replay =nil;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setButtonOne:nil];
    [self setButtonTwo:nil];
    [self setButtonThree:nil];
    [self setButtonFour:nil];
    [self setButtonStart:nil];
    [self setButtonStop:nil];
    [self setLableLevel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
