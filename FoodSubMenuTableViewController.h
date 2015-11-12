//
//  FoodSubMenuTableViewController.h
//  Food Courts
//
//  Created by Harish Singh on 05/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FoodMenuInfo.h"
#import "RestaurantDetail.h"
#import "TabBarViewController.h"
#import "RestaurantListTableViewController.h"

/**
 *  Properties set for table view, restaurantDetailController and FoodMenuInfo
 */
@interface FoodSubMenuTableViewController : UITableViewController

@property FoodMenuInfo *foodMenu;
@property RestaurantDetail *restaurantDetail;
@property (strong, nonatomic) IBOutlet UITableView *foodSubMenuTableViewController;
@property int rowIndex;

@end
