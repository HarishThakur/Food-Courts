//
//  RestaurantDetailController.h
//  Food Courts
//
//  Created by Harish Singh on 04/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RestaurantInfo.h"
#import "FoodMenuInfo.h"

/**
 *  Properties set for List of restaurant, food menu and sub menu
 *  Method declaration to getRestaurantInfo,getFoodMenu and getFoodSubMenu
 */
@interface RestaurantDetailController : NSObject

@property (strong,nonatomic) NSMutableArray *arrayForRestaurantDetails;
@property (strong,nonatomic) NSMutableArray *arrayForFoodMenu;
@property (strong,nonatomic) NSMutableArray *arrayForFoodSubMenu;
@property RestaurantInfo *restaurantInfo;
@property FoodMenuInfo *foodMenu;
-(NSMutableArray *)getRestaurantInfo;
-(NSMutableArray *)getFoodMenu;
-(NSMutableArray *)getStartersMenu;
-(NSMutableArray *)getMainCourseMenu;
-(NSMutableArray *)getBeveragesMenu;

@end
