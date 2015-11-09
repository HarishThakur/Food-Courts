//
//  CustomTableViewCell.h
//  Food Courts
//
//  Created by Harish Singh on 04/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageForRestaurant;
@property (weak, nonatomic) IBOutlet UILabel *labelForRestaurantName;

@end
