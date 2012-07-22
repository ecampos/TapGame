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
@implementation ViewController
NSNumber *inputInt;
NSMutableArray *inputArray;
NSMutableArray *randomArray;
@synthesize buttonZero;
@synthesize buttonOne;
@synthesize buttonTwo;
@synthesize buttonThree;
@synthesize buttonStart;
@synthesize buttonStop;
@synthesize lableLevel;


-(IBAction)pushButtonZero:(id)sender{ //upper left button is pushed
    inputInt = [NSNumber numberWithInt:0];
    inputArray = [[NSMutableArray alloc] init];
    if(randomArray.count ==0){
        lableLevel.text=@"Start the Game first";
        [inputArray removeAllObjects];
        [randomArray removeAllObjects];
    } else {
        [inputArray insertObject:inputInt atIndex:inputArray.count ];
        if (inputArray.count != randomArray.count &&[inputInt isEqualToNumber:[randomArray objectAtIndex: inputArray.count]]) {
            lableLevel.text =@"good";
        } else {
            lableLevel.text =@"sorry you lost";
            [inputArray removeAllObjects];
            [randomArray removeAllObjects];
        } 
        
    }
    
}

-(IBAction)pushButtonOne:(id)sender{ //upper right button is pushed
    inputInt = [NSNumber numberWithInt:1];
    inputArray = [[NSMutableArray alloc] init];
    if(randomArray.count ==0){
        lableLevel.text=@"Start the Game first";
        [inputArray removeAllObjects];
        [randomArray removeAllObjects];
    } else {
        [inputArray insertObject:inputInt atIndex:inputArray.count ];
        if (inputArray.count != randomArray.count &&[inputInt isEqualToNumber:[randomArray objectAtIndex: inputArray.count]]) {
            lableLevel.text =@"good";
        } else {
            lableLevel.text =@"sorry you lost";
            [inputArray removeAllObjects];
            [randomArray removeAllObjects];
        } 
        
    }
    
}

-(IBAction)pushButtonTwo:(id)sender{ //lower left button is pushed
    inputInt = [NSNumber numberWithInt:2];
    inputArray = [[NSMutableArray alloc] init];
    if(randomArray.count ==0){
        lableLevel.text=@"Start the Game first";
        [inputArray removeAllObjects];
        [randomArray removeAllObjects];
    } else {
        [inputArray insertObject:inputInt atIndex:inputArray.count ];
        if (inputArray.count != randomArray.count &&[inputInt isEqualToNumber:[randomArray objectAtIndex: inputArray.count]]) {
            lableLevel.text =@"good";
        } else {
            lableLevel.text =@"sorry you lost";
            [inputArray removeAllObjects];
            [randomArray removeAllObjects];
        } 
        
    }
    
}

-(IBAction)pushButtonThree:(id)sender{ //lower right button is pushed
    inputInt = [NSNumber numberWithInt:3];
    inputArray = [[NSMutableArray alloc] init];
    if(randomArray.count ==0){
        lableLevel.text=@"Start the Game first";
        [inputArray removeAllObjects];
        [randomArray removeAllObjects];
    } else {
        [inputArray insertObject:inputInt atIndex:inputArray.count ];
        if (inputArray.count != randomArray.count &&[inputInt isEqualToNumber:[randomArray objectAtIndex: inputArray.count]]) {
            lableLevel.text =@"good";
        } else {
            lableLevel.text =@"sorry you lost";
            [inputArray removeAllObjects];
            [randomArray removeAllObjects];
        } 
        
    }
    
}

-(IBAction)pushButtonStart:(id)sender{ //start button is pushed
    if (lableLevel.text == @"Start the Game first") {
        lableLevel.text =nil;
    } else{
    NSNumber *counter =[NSNumber numberWithInt:randomArray.count];
    NSNumber *zero = [NSNumber numberWithInt:0];
    NSNumber *one =[NSNumber numberWithInt:1];
    NSNumber *two = [NSNumber numberWithInt:2];
    NSNumber *randomInt= [NSNumber numberWithInt:arc4random() %4];
       
    if ([counter isEqualToNumber:zero]) {
        randomArray = [[NSMutableArray alloc] init];
        [randomArray addObject:randomInt];
            
    } else {
        [randomArray addObject:randomInt];
        }
        

        for (int i=0;  i<= randomArray.count; i++) {
            NSNumber *checker = [NSNumber numberWithInt:i];
           checker = [randomArray objectAtIndex:i];
            if ([checker isEqualToNumber:zero]) {
            [buttonZero setTitle:@"TAP!" forState:UIControlStateNormal];
                [buttonZero setTitle:@"TAP!" forState:UIControlStateNormal];
                sleep(.1);
                } else if ([checker isEqualToNumber:one]){
                    [buttonOne setTitle:@"TAP!" forState:UIControlStateNormal];
                    sleep(.1);
                
                } else if ([checker isEqualToNumber:two]){
                    [buttonTwo setTitle:@"TAP!" forState:UIControlStateNormal];
                    sleep(.1);
            } else {
                [buttonThree setTitle:@"TAP!" forState:UIControlStateNormal];
                sleep(.1);

            }
    
            [self resetAllButtons];
        }

    }
}


-(IBAction)pushButtonStop:(id)sender{ //stop button is pushed
    lableLevel.text =nil;
    [self resetAllArrays];
    [self resetAllButtons];

}
-(IBAction)resetAllButtons{ //helper method to reset all button captions 
    [buttonZero setTitle:nil forState:UIControlStateNormal];
    [buttonOne setTitle:nil forState:UIControlStateNormal];
    [buttonTwo setTitle:nil forState:UIControlStateNormal];
    [buttonThree setTitle:nil forState:UIControlStateNormal];
}
-(IBAction)resetAllArrays{ //helper method to clar all arrays
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
    [self setButtonZero:nil];
    [self setButtonOne:nil];
    [self setButtonTwo:nil];
    [self setButtonThree:nil];
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
