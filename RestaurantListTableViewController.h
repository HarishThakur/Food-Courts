//
//  RestaurantListTableViewController.h
//  Food Courts
//
//  Created by Harish Singh on 04/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTableViewCell.h"
#import "RestaurantInfo.h"
#import "RestaurantDetailController.h"
#import "FoodMenuTableViewController.h"

@interface RestaurantListTableViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UITableView *restaurantListTableview;
@property RestaurantDetailController *restaurantDetailController;
@property RestaurantInfo *restaurantInfo;
@property (nonatomic, assign) BOOL selectedDishtab;
@end
