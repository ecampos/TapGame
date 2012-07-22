//
//  ViewController.m
//  TapGame
//
//  Created by Emanuel Campos on 18.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#include <stdlib.h>
#import "ViewController.h"



@interface ViewController ()

@end
NSMutableArray *inputArray;
NSMutableArray *randomArray;
@implementation ViewController
@synthesize buttonOne;
@synthesize buttonTwo;
@synthesize buttonThree;
@synthesize buttonFour;
@synthesize buttonStart;
@synthesize buttonStop;
@synthesize lableLevel;


-(IBAction)pushButtonOne:(id)sender{
    NSNumber *inputInt = [NSNumber numberWithInt:0];
    
    if(inputArray.count == 0){
        
        inputArray = [[NSMutableArray alloc] init];
        [inputArray addObject:inputInt];
   
    } else {
        [inputArray insertObject:inputInt atIndex:inputArray.count ];
            }
}

-(IBAction)pushButtonTwo:(id)sender{
    NSNumber *inputInt = [NSNumber numberWithInt:1];
    if(inputArray.count == 0){
        inputArray = [[NSMutableArray alloc] init];
        [inputArray addObject:inputInt];
    } else {
        [inputArray insertObject:inputInt atIndex:inputArray.count ];
    }
}

-(IBAction)pushButtonThree:(id)sender{
    NSNumber *inputInt = [NSNumber numberWithInt:2];
    if(inputArray.count == 0){
        inputArray = [[NSMutableArray alloc] init];
        [inputArray addObject:inputInt];
    } else {
        [inputArray insertObject:inputInt atIndex:inputArray.count ];
    }
}

-(IBAction)pushButtonFour:(id)sender{
    NSNumber *inputInt = [NSNumber numberWithInt:3];
    if(inputArray.count == 0){
        inputArray = [[NSMutableArray alloc] init];
        [inputArray addObject:inputInt];
    } else {
        [inputArray insertObject:inputInt atIndex:inputArray.count ];
    }
}

-(IBAction)pushButtonStart:(id)sender{
    NSNumber *randomInt;
    NSNumber *zero;
    NSNumber *one;
    NSNumber *two;
    NSNumber *three;
    zero = [NSNumber numberWithInt:0];
    one =[NSNumber numberWithInt:1];
    two = [NSNumber numberWithInt:2];
    three = [NSNumber numberWithInt:3];
    
    randomInt = [NSNumber numberWithInt:arc4random() %4];
    if (randomArray.count == 0) {
        randomArray = [[NSMutableArray alloc] init];

 
        
        if([randomInt isEqualToNumber:zero]) {
            [buttonOne setTitle:@"TAP!" forState:UIControlStateNormal];
            [randomArray insertObject:randomInt atIndex:randomArray.count];
            randomInt = nil;
            sleep(.1);

        
        } else if ([randomInt isEqualToNumber:one]){
            [buttonTwo setTitle:@"TAP!" forState:UIControlStateNormal];
            [randomArray addObject:randomInt];
            randomInt=nil;
            sleep(.1);

           
        } else if ([randomInt isEqualToNumber:two]){
            [buttonThree setTitle:@"TAP!" forState:UIControlStateNormal];
            [randomArray addObject:randomInt];
            randomInt=nil;
            sleep(.1);

            
        } else {
            [buttonFour setTitle:@"TAP!" forState:UIControlStateNormal];
            [randomArray addObject:randomInt];
            randomInt=nil;
            sleep(.1);

        }
        
    } else {
        for (int i=0;  i>randomArray.count; i++) {
            [randomArray addObject:randomInt];
            [buttonStart setTitle:@"again!" forState:UIControlStateNormal];
        }
           
 
        }
   //$ [self resetAllButtons];
}
-(IBAction)pushButtonStop:(id)sender{
    lableLevel.text =nil;
    [inputArray removeAllObjects];
    [randomArray removeAllObjects];
    [self resetAllButtons];

}
-(IBAction)resetAllButtons{
[buttonOne setTitle:nil forState:UIControlStateNormal];
[buttonTwo setTitle:nil forState:UIControlStateNormal];
[buttonThree setTitle:nil forState:UIControlStateNormal];
[buttonFour setTitle:nil forState:UIControlStateNormal];
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
