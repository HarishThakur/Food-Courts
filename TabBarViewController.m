//
//  TabBarViewController.m
//  Food Courts
//
//  Created by Harish Singh on 05/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import "TabBarViewController.h"
#import "RestaurantListTableViewController.h"

@interface TabBarViewController () {
    NSArray *mainArray;
    NSMutableArray *tempArray;
}

@end

@implementation TabBarViewController

/**
 *  Method to set delegate
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate=self;
    [self setViewControllers:[NSArray arrayWithObjects:self.viewControllers[0], nil]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  Method to pop the root view controller
 */
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    if (tabBarController.selectedIndex==0) {
        
        UINavigationController *navController = (UINavigationController*)viewController;
        [navController popToRootViewControllerAnimated:YES];
    }
}

@end
