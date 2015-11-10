//
//  SecondViewController.h
//  Food Courts
//
//  Created by Harish Singh on 04/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Property set for label to dhoew food menu 
 */
@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *labelToShowFoodItem;
@property (strong,nonatomic) NSString *foodItemName;

@end

