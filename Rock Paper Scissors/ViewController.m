//
//  ViewController.m
//  Rock Paper Scissors
//
//  Created by iD Student on 6/25/13.
//  Copyright (c) 2013 Mike Hepfer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"Welcome %@/n To Rock, Paper, Scissors" ,@"Mike");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (IBAction)RockButton:(id)sender
//{
//    _player.image = [UIImage imageNamed:@"rock.png"];
//}
//
//- (IBAction)paperButton:(id)sender
//{
//    _player.image = [UIImage imageNamed:@"paper.jpeg"];
//}
//
//- (IBAction)scissorButton:(id)sender
//{
//    _player.image = [UIImage imageNamed:@"scissors.jpeg"];
//}


- (IBAction)playerMove:(id)sender
{
    playerMove = [sender tag];
}
-(void)AIMove
{
    AIMove = arc4random()%3;
}
-(void)playGame
{
    [self AIMove];
    
}


  
@end

