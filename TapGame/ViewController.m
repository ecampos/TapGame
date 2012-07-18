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

@implementation ViewController
@synthesize buttonOne;
@synthesize buttonTwo;
@synthesize buttonThree;
@synthesize buttonFour;
@synthesize buttonStart;
@synthesize buttonStop;
@synthesize lableLevel;

-(IBAction)pushButtonOne:(id)sender{
    lableLevel.text =@"One";
}
-(IBAction)pushButtonTwo:(id)sender{
    lableLevel.text =@"Two";    
}
-(IBAction)pushButtonThree:(id)sender{
    lableLevel.text =@"Three";
}
-(IBAction)pushButtonFour:(id)sender{
    lableLevel.text =@"four";
}
-(IBAction)pushButtonStart:(id)sender{
    lableLevel.text =@"start";
}
-(IBAction)pushButtonStop:(id)sender{
    lableLevel.text =nil;
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
