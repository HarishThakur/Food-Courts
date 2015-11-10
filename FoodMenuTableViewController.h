//
//  FoodMenuTableViewController.h
//  Food Courts
//
//  Created by Harish Singh on 04/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTableViewCell.h"
#import "FoodMenuInfo.h"
#import "RestaurantDetailController.h"
#import "FoodSubMenuTableViewController.h"

/**
 *  Properties set for table view, restaurantDetailController and FoodMenuInfo
 */
@interface FoodMenuTableViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UITableView *foodMenuTableView;
@property RestaurantDetailController *restaurantDetailController;
@property FoodMenuInfo *foodMenu;

@end
