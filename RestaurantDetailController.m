//
//  RestaurantDetailController.m
//  Food Courts
//
//  Created by Harish Singh on 04/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import "RestaurantDetailController.h"


@implementation RestaurantDetailController

-(id) init {
    _arrayForRestaurantDetails = [[NSMutableArray alloc]init];
    _arrayForFoodMenu = [[NSMutableArray alloc]init];
    
    return self;
}

-(NSMutableArray *)getRestaurantInfo {
    for(int i = 1; i <= 8; i++) {
        _restaurantInfo = [[RestaurantInfo alloc]init];
        if (i==1) {
            _restaurantInfo.restaurantName = [NSString stringWithFormat:@"KFC"];
            _restaurantInfo.restaurantImage = [NSString stringWithFormat:@"KFC_logo.png"];
            [_arrayForRestaurantDetails addObject:_restaurantInfo];
        }
        else if (i==2) {
            _restaurantInfo.restaurantName = [NSString stringWithFormat:@"McDonalods"];
            _restaurantInfo.restaurantImage = [NSString stringWithFormat:@"mcD_logo.png"];
            [_arrayForRestaurantDetails addObject:_restaurantInfo];
        }
        else if (i==3) {
            _restaurantInfo.restaurantName = [NSString stringWithFormat:@"Dominos"];
            _restaurantInfo.restaurantImage = [NSString stringWithFormat:@"dominos_logo.png"];
            [_arrayForRestaurantDetails addObject:_restaurantInfo];
        }
        else if (i==4) {
            _restaurantInfo.restaurantName = [NSString stringWithFormat:@"Subway"];
            _restaurantInfo.restaurantImage = [NSString stringWithFormat:@"subway_logo.png"];
            [_arrayForRestaurantDetails addObject:_restaurantInfo];
        }
        else if (i==5) {
            _restaurantInfo.restaurantName = [NSString stringWithFormat:@"Biryani Pot"];
            _restaurantInfo.restaurantImage = [NSString stringWithFormat:@"biryaniPot_logo.png"];
            [_arrayForRestaurantDetails addObject:_restaurantInfo];
        }
        else if (i==6) {
            _restaurantInfo.restaurantName = [NSString stringWithFormat:@"Mast Kalander"];
            _restaurantInfo.restaurantImage = [NSString stringWithFormat:@"mastKalander_logo.png"];
            [_arrayForRestaurantDetails addObject:_restaurantInfo];
        }
        else if (i==7) {
            _restaurantInfo.restaurantName = [NSString stringWithFormat:@"The Village"];
            _restaurantInfo.restaurantImage = [NSString stringWithFormat:@"village_logo.png"];
            [_arrayForRestaurantDetails addObject:_restaurantInfo];
        }
        else if (i==8) {
            _restaurantInfo.restaurantName = [NSString stringWithFormat:@"Empire Restaurant"];
            _restaurantInfo.restaurantImage = [NSString stringWithFormat:@"empireRestaurant_logo.png"];
            [_arrayForRestaurantDetails addObject:_restaurantInfo];
        }
    }
    return _arrayForRestaurantDetails;
}

-(NSMutableArray *)getFoodMenu {
    for (int i = 1; i<=3; i++) {
        _foodMenu = [[FoodMenuInfo alloc]init];
        if (i==1) {
            _foodMenu.menuList = [NSString stringWithFormat:@"Starters"];
            _foodMenu.menuImage = [NSString stringWithFormat:@"starters_logo.png"];
            [_arrayForFoodMenu addObject:_foodMenu];
        }
        else if (i==2) {
            _foodMenu.menuList = [NSString stringWithFormat:@"Main Course"];
            _foodMenu.menuImage = [NSString stringWithFormat:@"mainCourse_logo.png"];
            [_arrayForFoodMenu addObject:_foodMenu];
        }
        else if (i==3) {
            _foodMenu.menuList = [NSString stringWithFormat:@"Beverages"];
            _foodMenu.menuImage = [NSString stringWithFormat:@"beverages_logo.png"];
            [_arrayForFoodMenu addObject:_foodMenu];
        }
    }
    return _arrayForFoodMenu;
}

-(NSMutableArray *)getStartersMenu {
    _arrayForFoodSubMenu = [[NSMutableArray alloc]init];
    for (int i = 1; i<=7; i++) {
        _foodMenu = [[FoodMenuInfo alloc]init];
        if (i==1) {
            _foodMenu.staters = [NSString stringWithFormat:@"French Fries"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==2) {
            _foodMenu.staters = [NSString stringWithFormat:@"Paneer Tikka"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==3) {
            _foodMenu.staters = [NSString stringWithFormat:@"Chicken Snacker"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if(i==4) {
            _foodMenu.staters = [NSString stringWithFormat:@"Crispy Chicken"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==5) {
            _foodMenu.staters = [NSString stringWithFormat:@"Grilled Chicken"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        } else if (i==6) {
            _foodMenu.staters = [NSString stringWithFormat:@"Chicken Tandoori"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==7) {
            _foodMenu.staters = [NSString stringWithFormat:@"Chilly Paneer"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
    }
    return _arrayForFoodSubMenu;
}

-(NSMutableArray *)getMainCourseMenu {
    _arrayForFoodSubMenu = [[NSMutableArray alloc]init];
    for (int i = 1; i<=7; i++) {
        _foodMenu = [[FoodMenuInfo alloc]init];
        if (i==1) {
            _foodMenu.mainCourse = [NSString stringWithFormat:@"Fried Rice"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==2) {
            _foodMenu.mainCourse = [NSString stringWithFormat:@"Pulaw"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==3) {
            _foodMenu.mainCourse = [NSString stringWithFormat:@"Daal Tadka"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if(i==4) {
            _foodMenu.mainCourse = [NSString stringWithFormat:@"Punjabi Chicken"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==5) {
            _foodMenu.mainCourse = [NSString stringWithFormat:@"Aalu Gobhi"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        } else if (i==6) {
            _foodMenu.mainCourse = [NSString stringWithFormat:@"Tandoori Roti"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==7) {
            _foodMenu.mainCourse = [NSString stringWithFormat:@"Phulka"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
    }
    return _arrayForFoodSubMenu;
}

-(NSMutableArray *)getBeveragesMenu {
    _arrayForFoodSubMenu = [[NSMutableArray alloc]init];
    for (int i = 1; i<=5; i++) {
        _foodMenu = [[FoodMenuInfo alloc]init];
        if (i==1) {
            _foodMenu.beverages = [NSString stringWithFormat:@"Cold Drinks"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==2) {
            _foodMenu.beverages = [NSString stringWithFormat:@"Masala Cold Drink"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==3) {
            _foodMenu.beverages = [NSString stringWithFormat:@"Lassi"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if(i==4) {
            _foodMenu.beverages = [NSString stringWithFormat:@"Butter Milk"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
        else if (i==5) {
            _foodMenu.beverages = [NSString stringWithFormat:@"Jaljeera"];
            [_arrayForFoodSubMenu addObject:_foodMenu];
        }
    }
    return _arrayForFoodSubMenu;
}

@end
