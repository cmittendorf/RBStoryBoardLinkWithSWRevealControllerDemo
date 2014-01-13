//
//  MyNavigationController.m
//  StoryBoardLinkingWithRevealControllerDemo
//
//  Created by Christian Mittendorf on 13/01/14.
//  Copyright (c) 2014 Christian Mittendorf. All rights reserved.
//

#import "UINavigationController+RBStoryboardLink.h"

@implementation UINavigationController (RBStoryboardLink)

#pragma mark - RBStoryboardLinkSource

- (BOOL)needsTopLayoutGuide
{
    return NO;
}

- (BOOL)needsBottomLayoutGuide
{
    return NO;
}

@end
