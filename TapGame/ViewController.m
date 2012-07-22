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
NSMutableArray *inputArray;
NSNumber *randomInt;
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
    NSNumber *inputInt = [NSNumber numberWithInt:1];
    
    if(inputArray.count == 0){
        
        inputArray = [[NSMutableArray alloc] init];
        [inputArray addObject:inputInt];
   
    } else {
        [inputArray insertObject:inputInt atIndex:inputArray.count ];
    }


}
-(IBAction)pushButtonTwo:(id)sender{
    NSNumber *inputInt = [NSNumber numberWithInt:2];
    if(inputArray.count == 0){
        inputArray = [[NSMutableArray alloc] init];
        [inputArray addObject:inputInt];
    } else {
        [inputArray insertObject:inputInt atIndex:inputArray.count ];
    }
}
-(IBAction)pushButtonThree:(id)sender{
    NSNumber *inputInt = [NSNumber numberWithInt:3];
    if(inputArray.count == 0){
        inputArray = [[NSMutableArray alloc] init];
        [inputArray addObject:inputInt];
    } else {
        [inputArray insertObject:inputInt atIndex:inputArray.count ];
    }
}
-(IBAction)pushButtonFour:(id)sender{
    NSNumber *inputInt = [NSNumber numberWithInt:4];
    if(inputArray.count == 0){
        inputArray = [[NSMutableArray alloc] init];
        [inputArray addObject:inputInt];
    } else {
        [inputArray insertObject:inputInt atIndex:inputArray.count ];
    }
}

-(IBAction)pushButtonStart:(id)sender{
        randomInt = [NSNumber numberWithInt:rand()];
    if (randomArray.count == 0) {
      randomArray = [[NSMutableArray alloc] init];
        [randomArray addObject:randomInt];
        lableLevel.text = @"hello";
    } else {
           
    [randomArray addObject:randomInt];
        lableLevel.text =@"goodbye";
        }
 /*   for (int i = 0; i > 100; i++) // <-- copied ALERT
    {
        NSNumber* number = [NSNumber numberWithInt:i]; 
        [randomArray addObject:number];
        NSLog(@"%i", i);

    }*/
}
-(IBAction)pushButtonStop:(id)sender{
    lableLevel.text =nil;
    [inputArray removeAllObjects];
    [randomArray removeAllObjects];
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
