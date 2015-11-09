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

//static BOOL setFlagForCart;

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    mainArray = [NSArray arrayWithArray:self.viewControllers];
//    UINavigationController *restaurantNavigationController=(UINavigationController *)self.viewControllers[0];
//
//    RestaurantListTableViewController *restaurantListViewController=restaurantNavigationController.viewControllers[0];
////    _restaurantTVC = [[RestaurantListTableViewController alloc]init];
//    if(restaurantListViewController.selectedDishtab == NO) {
//        //_setFlagForCart = 0;
//        tempArray = [ NSMutableArray arrayWithArray:mainArray ];
//        [tempArray removeObjectAtIndex:1];
//        [self setViewControllers:tempArray];
//    }
    [self setViewControllers:[NSArray arrayWithObjects:self.viewControllers[0], nil]];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear {
   
}

-(void)viewDidAppear {
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
