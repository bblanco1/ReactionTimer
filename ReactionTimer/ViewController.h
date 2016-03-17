//
//  ViewController.h
//  ReactionTimer
//
//  Created by Brian Blanco on 8/15/15.
//  Copyright © 2015 Brian Blanco. All rights reserved.
//

#import <UIKit/UIKit.h>

int count;

@interface ViewController : UIViewController

{
    IBOutlet UIButton *buttonStart;
    IBOutlet UIButton *buttonStop;
    IBOutlet UIButton *buttonReset;
    IBOutlet UIButton *buttonDoubleClicked;
    IBOutlet UILabel *timerLabel;
    
    NSTimer *countTimer;
}

-(IBAction)start:(id)sender;

-(IBAction)stop:(id)sender;

-(IBAction)reset:(id)sender;

-(IBAction)startCountingClicked: (id)sender;

-(void)startCounting;



@end

