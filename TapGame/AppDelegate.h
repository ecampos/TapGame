//
//  AppDelegate.h
//  TapGame
//
//  Created by Emanuel Campos on 18.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    IBOutlet UIButton *buttonOne;
    IBOutlet UIButton *buttonTwo;
    IBOutlet UIButton *buttonThree;
    IBOutlet UIButton *buttonFour;
    IBOutlet UIButton *buttonStart;
    IBOutlet UIButton *buttonStop;
    IBOutlet UILabel *labelLevel;
}


@property (strong, nonatomic) UIWindow *window;
@property (retain, nonatomic) UIButton *buttonOne;
@property (retain, nonatomic) UIButton *buttonTwo;
@property (retain, nonatomic) UIButton *buttonThree;
@property (retain, nonatomic) UIButton *buttonFour;
@property (retain, nonatomic) UIButton *buttonStart;
@property (retain, nonatomic) UIButton *buttonStop;
@property (retain, nonatomic) UILabel *labelLevel;

-(IBAction)pushButtonOne:(id)sender;
-(IBAction)pushButtonTwo:(id)sender;
-(IBAction)pushButtonThree:(id)sender;
-(IBAction)pushButtonFour:(id)sender;
-(IBAction)pushButtonStart:(id)sender;
-(IBAction)pushButtonStop:(id)sender;
//-(IBAction)setLabelLevel:(UILabel *)labelLevel;
@end
