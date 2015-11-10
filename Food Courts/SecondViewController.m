//
//  SecondViewController.m
//  Food Courts
//
//  Created by Harish Singh on 04/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import "SecondViewController.h"
#import "Triangle.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet Triangle *smileyView;

@end

@implementation SecondViewController

/**
 *  Method to show the selected dish and initialize the tap gesture
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    _labelToShowFoodItem.text = _foodItemName;
    UITapGestureRecognizer *singleFingerTap =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handleSingleTap:)];
    [self.view addGestureRecognizer:singleFingerTap];
}

/**
 *  Method to fade the view on button click
*/
- (IBAction)handleSingleTap:(UITapGestureRecognizer *)sender {
    self.smileyView.alpha = self.smileyView.alpha - 0.2;
    //self.smileyView.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
