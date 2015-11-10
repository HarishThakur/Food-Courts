//
//  FoodMenuInfo.h
//  Food Courts
//
//  Created by Harish Singh on 04/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  Properties set for Food Menu and Sub Menu
 */
@interface FoodMenuInfo : NSObject

@property (strong,nonatomic) NSString *menuList;
@property (strong,nonatomic) NSString *menuImage;

@property (strong,nonatomic) NSString *staters;
@property (strong,nonatomic) NSString *mainCourse;
@property (strong,nonatomic) NSString *beverages;

@end
