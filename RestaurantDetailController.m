//
//  RestaurantDetailController.m
//  Food Courts
//
//  Created by Harish Singh on 04/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import "RestaurantDetailController.h"


@implementation RestaurantDetailController

/**
 *  initialized array for list of Restaurants and list of food menu
 *
 *  @return self
 */
-(id) init {
    _arrayForRestaurantDetails = [[NSMutableArray alloc]init];
    _arrayForFoodMenu = [[NSMutableArray alloc]init];
    
    return self;
}

#pragma mark - get list of Restaurant
/**
 *  Method to get list of Restaurant names and images
 *
 *  @return array of Restaurant names and images
 */
-(NSMutableArray *)getRestaurantInfo {
    for(int i = 1; i <= 8; i++) {
        _restaurantInfo = [[RestaurantInfo alloc]init];
        if (i==1) {
            _restaurantInfo.restaurantName = NSLocalizedString(@"KFC", nil); // [NSString stringWithFormat:@"KFC"];
            _restaurantInfo.restaurantImage = [NSString stringWithFormat:@"KFC_logo.png"];
            [_arrayForRestaurantDetails addObject:_restaurantInfo];
        }
        else if (i==2) {
            _restaurantInfo.restaurantName = NSLocalizedString(@"McDonalods", nil); //  [NSString stringWithFormat:@"McDonalods"];
            _restaurantInfo.restaurantImage = [NSString stringWithFormat:@"mcD_logo.png"];
            [_arrayForRestaurantDetails addObject:_restaurantInfo];
        }
        else if (i==3) {
            _restaurantInfo.restaurantName = NSLocalizedString(@"Dominos", nil); // [NSString stringWithFormat:@"Dominos"];
            _restaurantInfo.restaurantImage = [NSString stringWithFormat:@"dominos_logo.png"];
            [_arrayForRestaurantDetails addObject:_restaurantInfo];
        }
        else if (i==4) {
            _restaurantInfo.restaurantName = NSLocalizedString(@"Subway", nil); // [NSString stringWithFormat:@"Subway"];
            _restaurantInfo.restaurantImage = [NSString stringWithFormat:@"subway_logo.png"];
            [_arrayForRestaurantDetails addObject:_restaurantInfo];
        }
        else if (i==5) {
            _restaurantInfo.restaurantName = NSLocalizedString(@"Biryani Pot", nil); // [NSString stringWithFormat:@"Biryani Pot"];
            _restaurantInfo.restaurantImage = [NSString stringWithFormat:@"biryaniPot_logo.png"];
            [_arrayForRestaurantDetails addObject:_restaurantInfo];
        }
        else if (i==6) {
            _restaurantInfo.restaurantName = NSLocalizedString(@"Mast Kalander", nil); // [NSString stringWithFormat:@"Mast Kalander"];
            _restaurantInfo.restaurantImage = [NSString stringWithFormat:@"mastKalander_logo.png"];
            [_arrayForRestaurantDetails addObject:_restaurantInfo];
        }
        else if (i==7) {
            _restaurantInfo.restaurantName = NSLocalizedString(@"The Village", nil); // [NSString stringWithFormat:@"The Village"];
            _restaurantInfo.restaurantImage = [NSString stringWithFormat:@"village_logo.png"];
            [_arrayForRestaurantDetails addObject:_restaurantInfo];
        }
        else if (i==8) {
            _restaurantInfo.restaurantName = NSLocalizedString(@"Empire Restaurant", nil); // [NSString stringWithFormat:@"Empire Restaurant"];
            _restaurantInfo.restaurantImage = [NSString stringWithFormat:@"empireRestaurant_logo.png"];
            [_arrayForRestaurantDetails addObject:_restaurantInfo];
        }
    }
    return _arrayForRestaurantDetails;
}

#pragma mark - get list of Food Menu
/**
 *  Method to get list of Food Menu and images
 *
 *  @return array of Food Menu and images
 */
-(NSMutableArray *)getFoodMenu {
    for (int i = 1; i<=3; i++) {
        _foodMenu = [[FoodMenuInfo alloc]init];
        if (i==1) {
            _foodMenu.menuList = NSLocalizedString(@"Starters", nil); // [NSString stringWithFormat:@"Starters"];
            _foodMenu.menuImage = [NSString stringWithFormat:@"starters_logo.png"];
            [_arrayForFoodMenu addObject:_foodMenu];
        }
        else if (i==2) {
            _foodMenu.menuList = NSLocalizedString(@"Main Course", nil); // [NSString stringWithFormat:@"Main Course"];
            _foodMenu.menuImage = [NSString stringWithFormat:@"mainCourse_logo.png"];
            [_arrayForFoodMenu addObject:_foodMenu];
        }
        else if (i==3) {
            _foodMenu.menuList = NSLocalizedString(@"Beverages", nil); // [NSString stringWithFormat:@"Beverages"];
            _foodMenu.menuImage = [NSString stringWithFormat:@"beverages_logo.png"];
            [_arrayForFoodMenu addObject:_foodMenu];
        }
    }
    return _arrayForFoodMenu;
}

#pragma mark - get list of Food sub Menu - Starter
/**
 *  Method to get list of Food sub Menu - Starter
 *
 *  @return array of Food sub Menu - Starter
 */
-(NSMutableArray *)getStartersMenu {
    _arrayForFoodSubMenu = [[NSMutableArray alloc]init];
    for (int i = 1; i<=7; i++) {
        _foodMenu = [[FoodMenuInfo alloc]init];
        if (i==1) {
            _foodMenu.staters = NSLocalizedString(@"French Fries", nil); // [NSString stringWithFormat:@"French Fries"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==2) {
            _foodMenu.staters = NSLocalizedString(@"Paneer Tikka", nil); // [NSString stringWithFormat:@"Paneer Tikka"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==3) {
            _foodMenu.staters = NSLocalizedString(@"Chicken Snacker", nil); // [NSString stringWithFormat:@"Chicken Snacker"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if(i==4) {
            _foodMenu.staters = NSLocalizedString(@"Crispy Chicken", nil); // [NSString stringWithFormat:@"Crispy Chicken"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==5) {
            _foodMenu.staters = NSLocalizedString(@"Grilled Chicken", nil); // [NSString stringWithFormat:@"Grilled Chicken"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        } else if (i==6) {
            _foodMenu.staters = NSLocalizedString(@"Chicken Tandoori", nil); // [NSString stringWithFormat:@"Chicken Tandoori"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==7) {
            _foodMenu.staters = NSLocalizedString(@"Chilly Paneer", nil); // [NSString stringWithFormat:@"Chilly Paneer"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
    }
    return _arrayForFoodSubMenu;
}

#pragma mark - get list of Food sub Menu - Main Course
/**
 *  Method to get list of Food sub Menu - Main Course
 *
 *  @return array of Food sub Menu - Main Course
 */
-(NSMutableArray *)getMainCourseMenu {
    _arrayForFoodSubMenu = [[NSMutableArray alloc]init];
    for (int i = 1; i<=7; i++) {
        _foodMenu = [[FoodMenuInfo alloc]init];
        if (i==1) {
            _foodMenu.mainCourse = NSLocalizedString(@"Fried Rice", nil); // [NSString stringWithFormat:@"Fried Rice"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==2) {
            _foodMenu.mainCourse = NSLocalizedString(@"Pulaw", nil); // [NSString stringWithFormat:@"Pulaw"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==3) {
            _foodMenu.mainCourse = NSLocalizedString(@"Daal Tadka", nil); // [NSString stringWithFormat:@"Daal Tadka"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if(i==4) {
            _foodMenu.mainCourse = NSLocalizedString(@"Punjabi Chicken", nil); // [NSString stringWithFormat:@"Punjabi Chicken"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==5) {
            _foodMenu.mainCourse = NSLocalizedString(@"Aalu Gobhi", nil); // [NSString stringWithFormat:@"Aalu Gobhi"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        } else if (i==6) {
            _foodMenu.mainCourse = NSLocalizedString(@"Tandoori Roti", nil); // [NSString stringWithFormat:@"Tandoori Roti"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==7) {
            _foodMenu.mainCourse = NSLocalizedString(@"Phulka", nil); // [NSString stringWithFormat:@"Phulka"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
    }
    return _arrayForFoodSubMenu;
}

#pragma mark - get list of Food sub Menu - Beverages
/**
 *  Method to get list of Food sub Menu - Beverages
 *
 *  @return array of Food sub Menu - Beverages
 */
-(NSMutableArray *)getBeveragesMenu {
    _arrayForFoodSubMenu = [[NSMutableArray alloc]init];
    for (int i = 1; i<=5; i++) {
        _foodMenu = [[FoodMenuInfo alloc]init];
        if (i==1) {
            _foodMenu.beverages = NSLocalizedString(@"Cold Drinks", nil); // [NSString stringWithFormat:@"Cold Drinks"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==2) {
            _foodMenu.beverages = NSLocalizedString(@"Masala Cold Drink", nil); // [NSString stringWithFormat:@"Masala Cold Drink"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==3) {
            _foodMenu.beverages = NSLocalizedString(@"Lassi", nil); // [NSString stringWithFormat:@"Lassi"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if(i==4) {
            _foodMenu.beverages = NSLocalizedString(@"Butter Milk", nil); // [NSString stringWithFormat:@"Butter Milk"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==5) {
            _foodMenu.beverages = NSLocalizedString(@"Jaljeera", nil); // [NSString stringWithFormat:@"Jaljeera"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
    }
    return _arrayForFoodSubMenu;
}

@end
