//
//  DetailViewController.h
//  ProjectSpinner
//
//  Created by Rohan Hawthorne on 13/10/16.
//  Copyright © 2016 Rohan Hawthorne. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textOption;
@property (strong, nonatomic) NSString *textOptionContents;
@end
