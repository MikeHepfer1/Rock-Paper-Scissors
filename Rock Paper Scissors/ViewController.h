//
//  ViewController.h
//  Rock Paper Scissors
//
//  Created by iD Student on 6/25/13.
//  Copyright (c) 2013 Mike Hepfer. All rights reserved.
//

#import <UIKit/UIKit.h>

int playerMove;
int AIMove;




@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *player;
@property (weak, nonatomic) IBOutlet UIImageView *computer;

@end
