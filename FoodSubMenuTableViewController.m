//
//  FoodSubMenuTableViewController.m
//  Food Courts
//
//  Created by Harish Singh on 05/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import "FoodSubMenuTableViewController.h"
#import "RestaurantListTableViewController.h"
#import "SecondViewController.h"

@interface FoodSubMenuTableViewController ()
@property (strong,nonatomic) NSMutableArray *arrayForFoodSubMenu;
@end

@implementation FoodSubMenuTableViewController

#pragma mark - viewDidLoad
/**
 *  initialized _restaurantDetailController
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    _restaurantDetailController = [[RestaurantDetailController alloc]init];
    if (_rowIndex == 0) {
        self.navigationItem.title = NSLocalizedString(@"Starters", @"");
        _arrayForFoodSubMenu = _restaurantDetailController.getStartersMenu;
    }
    if (_rowIndex == 1) {
        self.navigationItem.title = NSLocalizedString(@"Main Course", @"");
        _arrayForFoodSubMenu = _restaurantDetailController.getMainCourseMenu;
    }
    if (_rowIndex == 2) {
        self.navigationItem.title = NSLocalizedString(@"Beverages", @"");
        _arrayForFoodSubMenu = _restaurantDetailController.getBeveragesMenu;
    }
    self.foodSubMenuTableViewController.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_arrayForFoodSubMenu count];
}

#pragma mark - cellForRowAtIndexPath
/**
 *  Method to return TableViewCell with food sub menu menu
 *
 *  @param tableView UITableViewCell
 *  @param indexPath returns the row of table view
 *
 *  @return TableViewCell
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    _foodMenu = [_arrayForFoodSubMenu objectAtIndex:indexPath.row];
    UITableViewCell *cell = [self.foodSubMenuTableViewController dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    if (_rowIndex == 0)
        cell.textLabel.text = _foodMenu.staters;
    if (_rowIndex == 1)
        cell.textLabel.text = _foodMenu.mainCourse;
    if (_rowIndex == 2)
        cell.textLabel.text = _foodMenu.beverages;
    return cell;
}

#pragma mark - didSelectRowAtIndexPath
/**
 *  Method to push this view to SecondViewController 
 *
 *  @param tableView UITableView
 *  @param indexPath returns the row that is clicked of table view
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  
    _foodMenu = [_arrayForFoodSubMenu objectAtIndex:indexPath.row];

    UIStoryboard *mainstoryboard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SecondViewController  *secondVc = [mainstoryboard instantiateViewControllerWithIdentifier:@"SecondViewContoller"];
    if (_rowIndex == 0)
        secondVc.foodItemName = _foodMenu.staters;
    if (_rowIndex == 1)
        secondVc.foodItemName = _foodMenu.mainCourse;
    if (_rowIndex == 2)
        secondVc.foodItemName = _foodMenu.beverages;

  [self.tabBarController setViewControllers:[NSArray arrayWithObjects:self.tabBarController.viewControllers[0],secondVc,nil]];

    self.tabBarController.selectedViewController=secondVc;
}

@end
