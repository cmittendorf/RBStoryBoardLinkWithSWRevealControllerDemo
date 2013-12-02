//
//  MyStoryboardLink.m
//  StoryBoardLinkingWithRevealControllerDemo
//
//  Created by Christian Mittendorf on 02.12.13.
//  Copyright (c) 2013 Christian Mittendorf. All rights reserved.
//

#import "MyStoryboardLink.h"

@interface MyStoryboardLink ()

@end

@implementation MyStoryboardLink

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIViewController * scene = self.scene;
//    [self addChildViewController:scene];
    [scene.view removeFromSuperview];
    [self.view addSubview:scene.view];
    [self.scene didMoveToParentViewController:self];
    
    scene.view.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSDictionary * views = @{
                             @"topGuide"    : self.topLayoutGuide,
                             @"bottomGuide" : self.bottomLayoutGuide,
                             @"view"        : scene.view,
                             };
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[view]|"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:views]];
}

@end
