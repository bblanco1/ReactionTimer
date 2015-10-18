//
//  ViewController.m
//  ReactionTimer
//
//  Created by Brian Blanco on 8/15/15.
//  Copyright © 2015 Brian Blanco. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)start:(id)sender {
    
    count = arc4random_uniform(51);
    countTimer = [NSTimer scheduledTimerWithTimeInterval:0.04 target:self selector:@selector(startCounting) userInfo:nil repeats:YES];
    
}

-(IBAction)stop:(id)sender {
    
    [countTimer invalidate];
    if (count == 0) {
        
        timerLabel.text = [NSString stringWithFormat:@"Okay.. you got it"];
        NSLog(@"Pressed");
        
    } else if (count > 0) {
        timerLabel.text = [NSString stringWithFormat:@"What's the rush?"];
    }
    
}

-(IBAction)reset:(id)sender {
    
    [countTimer invalidate];
    count = arc4random_uniform(51);
    timerLabel.text = [NSString stringWithFormat:@"%i", count];
    NSLog(@"Pressed");
    
}


-(void)startCounting {
    
    count = count - 1;
    
    
    timerLabel.text = [NSString stringWithFormat:@"%i", count];
    
    if (count == -1) {
        [countTimer invalidate];
        timerLabel.text = [NSString stringWithFormat:@"Too slow"];

    }
    
}
@end
