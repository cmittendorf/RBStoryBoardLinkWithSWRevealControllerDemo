//
//  MenuViewController.m
//  StoryBoardLinkingWithRevealControllerDemo
//
//  Created by Christian Mittendorf on 03.12.13.
//  Copyright (c) 2013 Christian Mittendorf. All rights reserved.
//

#import "MenuViewController.h"

#import <SWRevealViewController/SWRevealViewController.h>

@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *vc = nil;
    switch (indexPath.row) {
        case 0:
            vc = [self.storyboard instantiateViewControllerWithIdentifier:@"withAdjustments"];
            break;
        case 1:
            vc = [self.storyboard instantiateViewControllerWithIdentifier:@"withoutAdjustments"];
            break;
        default:
            break;
    }

    if (vc) {
        [self.revealViewController setFrontViewController:vc animated:YES];
    }
}

@end
