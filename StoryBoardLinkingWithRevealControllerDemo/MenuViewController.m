//
//  MenuViewController.m
//  StoryBoardLinkingWithRevealControllerDemo
//
//  Created by Christian Mittendorf on 03.12.13.
//  Copyright (c) 2013 Christian Mittendorf. All rights reserved.
//

#import "MenuViewController.h"

#import <RBStoryboardLink/RBStoryboardLink.h>
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
            vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Menu Item 1"];
            break;
        case 1:
            vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Menu Item 1"];
            break;
        case 2:
            vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Menu Item 1"];
            break;
        default:
            break;
    }

    if (vc) {
        if ([vc isKindOfClass:[RBStoryboardLink class]]) {
            UIViewController *topViewController = [(RBStoryboardLink *)vc scene];
            if ([topViewController isKindOfClass:[UINavigationController class]]) {
                topViewController = [(UINavigationController *)vc topViewController];
                topViewController.title = [NSString stringWithFormat:@"Menu Item %ld", (long)indexPath.row + 1];
            }
        }

        [self.revealViewController setFrontViewController:vc animated:YES];
    }
}

@end
