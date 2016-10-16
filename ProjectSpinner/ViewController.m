//
//  ViewController.m
//  ProjectSpinner
//
//  Created by Rohan Hawthorne on 5/10/16.
//  Copyright © 2016 Rohan Hawthorne. All rights reserved.
//

#import "ViewController.h"
#import <SpriteKit/SpriteKit.h>
#import "SpinnerScene.h"
#import "Choices.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // add Sprite Stuff
    // add me to git
    SKView *spriteView = (SKView *) self.view;
    spriteView.showsDrawCount = YES;
    spriteView.showsNodeCount = YES;
    spriteView.showsFPS = YES;
    
}

- (void)viewWillAppear:(BOOL)animated
{
    SpinnerScene* spinner = [[SpinnerScene alloc] initWithSize:CGSizeMake(768,1024)];
    SKView *spriteView = (SKView *) self.view;
    [spriteView presentScene: spinner];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)Spin:(id)sender {
}

- (IBAction)ConfigureChoices:(id)sender {
    Choices *choicesVC = [[Choices alloc] init];
    
    // fill vc with choices
    
    // segue
    [self presentViewController:choicesVC animated:YES completion:nil];
}
@end
