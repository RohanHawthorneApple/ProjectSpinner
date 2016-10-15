//
//  ViewController.m
//  ProjectSpinner
//
//  Created by Rohan Hawthorne on 5/10/16.
//  Copyright © 2016 Rohan Hawthorne. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize lblDialogue;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [lblDialogue setText:@"Tap to spin, long press to change values"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)showDetailsSegue:(id)sender {
    [lblDialogue setText:@"Going to options..."];
    [self performSegueWithIdentifier:@"showOptions" sender:self];
}

- (IBAction)startSpinner:(id)sender {
    [lblDialogue setText:@"Come in spinner!"];
}
@end
