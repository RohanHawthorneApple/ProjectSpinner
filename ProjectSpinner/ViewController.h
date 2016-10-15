//
//  ViewController.h
//  ProjectSpinner
//
//  Created by Rohan Hawthorne on 5/10/16.
//  Copyright © 2016 Rohan Hawthorne. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)showDetailsSegue:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *lblDialogue;

- (IBAction)startSpinner:(id)sender;

@end

