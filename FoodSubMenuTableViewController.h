//
//  FoodSubMenuTableViewController.h
//  Food Courts
//
//  Created by Harish Singh on 05/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FoodMenuInfo.h"
#import "RestaurantDetailController.h"
#import "TabBarViewController.h"
#import "RestaurantListTableViewController.h"

@interface FoodSubMenuTableViewController : UITableViewController

@property FoodMenuInfo *foodMenu;
@property RestaurantDetailController *restaurantDetailController;
@property (strong, nonatomic) IBOutlet UITableView *foodSubMenuTableViewController;
@property int rowIndex;

@end
