//
//  ViewController.m
//  StoryBoardLinkingWithRevealControllerDemo
//
//  Created by Christian Mittendorf on 02.12.13.
//  Copyright (c) 2013 Christian Mittendorf. All rights reserved.
//

#import "ViewController.h"
#import <SWRevealViewController/SWRevealViewController.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
