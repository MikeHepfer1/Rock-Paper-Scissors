//
//  ViewController.m
//  Rock Paper Scissors
//
//  Created by iD Student on 6/25/13.
//  Copyright (c) 2013 Mike Hepfer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

#define rock 0
#define paper 1
#define scissors 2

#define player 10
#define AI 20
#define tie 30

@end

@implementation ViewController

@synthesize scoreBoard;

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


- (IBAction)rockButton:(id)sender
{
    _player.image = [UIImage imageNamed:@"rock.png"];
}
- (IBAction)paperButton:(id)sender
{
    _player.image = [UIImage imageNamed:@"paper.jpeg"];

}
- (IBAction)scissorsButton:(id)sender
{
    _player.image = [UIImage imageNamed:@"scissors.jpeg"];

}

- (IBAction)playerMove:(id)sender
{
    playerMove = [sender tag];
    [self playGame];
}
-(void)AIMove
{
    AIMove = arc4random()%3;
    NSLog(@"%d", AIMove);
}
-(void)playGame
{
    [self AIMove];
    if(playerMove == AIMove)
    {
        [scoreBoard setText:[NSString stringWithFormat:@"tie" ]];
        winner = tie;
    }
    else{
//          Player
        if(playerMove == rock)
        {
            if(AIMove == scissors)
                {
                    _computer.image = [UIImage imageNamed:@"scissors.jpeg"];
                    winner = player;
                }
            else if(AIMove == paper)
                {
                    _computer.image = [UIImage imageNamed:@"paper.jpeg"];
                    winner = AI;
                }
        }
        else if(playerMove == paper)
        {
            if(AIMove == rock)
                {
                    _computer.image = [UIImage imageNamed:@"rock.png"];
                    winner = player;
                }
            else if(AIMove == scissors)
                {
                    _computer.image = [UIImage imageNamed:@"scissors.jpeg"];
                    winner = AI;
                }
        }
        else if(playerMove == scissors)
        {
            if(AIMove == paper)
            {
                _computer.image = [UIImage imageNamed:@"paper.jpeg"];
                winner = player;
            }
            else if(AIMove == rock)
                {
                    _player.image = [UIImage imageNamed:@"rock.png"];
                    winner = AI;
                }

        }
    //          AI
//        else if(playerMove == rock)
//        {
//            if(AIMove == paper)
//            {
//                _computer.image = [UIImage imageNamed:@"paper.jpeg"];
//                winner = AI;
//            }
//        }
//        else if(playerMove == scissors)
//        {
//            if(AIMove == rock)
//            {
//                _player.image = [UIImage imageNamed:@"rock.png"];
//                winner = AI;
//            }
//        }
//        else if(playerMove == paper)
//        {
//            if(AIMove == scissors)
//            {
//                _computer.image = [UIImage imageNamed:@"scissors.jpeg"];
//                winner = AI;
//            }
//        }

        if((winner = player))
            {
                [scoreBoard setText:[NSString stringWithFormat:@"Player Wins!" ]];
            }
        if((winner = AI))
            {
                [scoreBoard setText:[NSString stringWithFormat:@"Player Loses!" ]];
            }
    }
}



@end

