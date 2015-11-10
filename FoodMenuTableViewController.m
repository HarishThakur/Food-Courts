//
//  FoodMenuTableViewController.m
//  Food Courts
//
//  Created by Harish Singh on 04/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import "FoodMenuTableViewController.h"

@interface FoodMenuTableViewController () {
    int currentRow;
}
@property (strong,nonatomic) NSMutableArray *foodMenuList;
@end

@implementation FoodMenuTableViewController

#pragma mark - viewDidLoad
/**
 *  Initialized the controllers
 *  Registered nib for CustomTableViewCell
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    _restaurantDetailController = [[RestaurantDetailController alloc]init];
    _foodMenuList = _restaurantDetailController.getFoodMenu;
    self.navigationItem.title = @"Food Menu";
    [self.foodMenuTableView registerClass:[CustomTableViewCell class] forCellReuseIdentifier:@"CustomTableViewCell"];
    self.navigationItem.title = NSLocalizedString(@"Food Menu",nil);
    [self.foodMenuTableView registerNib:[UINib nibWithNibName:NSStringFromClass([CustomTableViewCell class]) bundle:nil] forCellReuseIdentifier:@"CustomTableViewCell"];
    self.foodMenuTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [_foodMenuList count];
}

#pragma mark - cellForRowAtIndexPath
/**
 *  Method to return CustomTableViewCell with food menu and images
 *
 *  @param tableView UITableViewCell
 *  @param indexPath returns the row of table view
 *
 *  @return CustomTableViewCell
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    _foodMenu = [_foodMenuList objectAtIndex:indexPath.row];
    
    CustomTableViewCell *cell = [self.foodMenuTableView dequeueReusableCellWithIdentifier:@"CustomTableViewCell" forIndexPath:indexPath];
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomTableViewCell" owner:self options:nil];
        cell = (CustomTableViewCell *) [nib objectAtIndex:0];
    }

    cell.labelForRestaurantName.text = _foodMenu.menuList;
    cell.imageForRestaurant.image = [UIImage imageNamed:_foodMenu.menuImage];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

#pragma mark - didSelectRowAtIndexPath
/**
 *  Method to push this view to FoodSubMenuTableViewController and pass the rowIndex
 *
 *  @param tableView UITableView
 *  @param indexPath returns the row that is clicked of table view
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    FoodSubMenuTableViewController *vc = [[FoodSubMenuTableViewController alloc] init];
    currentRow = (int)indexPath.row;
    vc.rowIndex = currentRow;
    [self.navigationController pushViewController:vc animated:YES];
}


@end
