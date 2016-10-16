//
//  SpinnerScene.m
//  ProjectSpinner
//
//  Created by Rohan Hawthorne on 5/10/16.
//  Copyright © 2016 Rohan Hawthorne. All rights reserved.
//

#import "SpinnerScene.h"

@interface SpinnerScene ()
@property BOOL contentCreated;
@end

@implementation SpinnerScene
// add me to git
- (SKShapeNode *)addChoices
{
    SKShapeNode *ball = [[SKShapeNode alloc] init];
    
    CGMutablePathRef myPath = CGPathCreateMutable();
    CGPathAddArc(myPath, NULL, 0,0, 15, 0, M_PI*2, YES);
    ball.path = myPath;
    
    ball.lineWidth = 1.0;
    ball.fillColor = [SKColor blueColor];
    ball.strokeColor = [SKColor whiteColor];
    ball.glowWidth = 0.5;
    ball.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame)-150);
    
    return ball;
}

- (SKShapeNode *)addSpinner
{
    SKShapeNode* triangle = [SKShapeNode node];
    UIBezierPath* path = [[UIBezierPath alloc] init];
    [path moveToPoint:CGPointMake(0.0, 0.0)];
    [path addLineToPoint:CGPointMake(100.0, 0.0)];
    [path addLineToPoint:CGPointMake(100.0, 100.0)];
    triangle.path = path.CGPath;
    triangle.lineWidth = 10.0;
    triangle.strokeColor = [UIColor greenColor];
    return triangle;
}

- (void)createSceneContents
{
    self.backgroundColor = [SKColor blueColor];
    self.scaleMode = SKSceneScaleModeAspectFit;
    [self addChild: [self addChoices]];
    
    SKShapeNode *spinner = [self addSpinner];
    spinner.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame)-150);
    [self addChild:spinner];
}

- (void)didMoveToView: (SKView *) view
{
    if (!self.contentCreated)
    {
        [self createSceneContents];
        self.contentCreated = YES;
    }
}

@end
