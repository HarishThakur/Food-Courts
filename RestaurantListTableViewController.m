//
//  RestaurantListTableViewController.m
//  Food Courts
//
//  Created by Harish Singh on 04/11/15.
//  Copyright (c) 2015 Sourcebits Technologies. All rights reserved.
//

#import "RestaurantListTableViewController.h"

@interface RestaurantListTableViewController () {
    //int currentRow;
}
@property (nonatomic, strong) NSMutableArray *restaurantData;
@end

@implementation RestaurantListTableViewController

#pragma mark - viewDidLoad
/**
 *  Initialized the controllers
 *  Registered nib for CustomTableViewCell
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    _restaurantDetail = [[RestaurantDetail alloc]init];
    _restaurantInfo = [[RestaurantInfo alloc]init];
    _restaurantData = _restaurantDetail.getRestaurantInfo;
    [self.restaurantListTableview registerClass:[CustomTableViewCell class] forCellReuseIdentifier:@"CustomTableViewCell"];
    self.navigationItem.title=NSLocalizedString(@"List of Restaurants",nil);
    [self.restaurantListTableview registerNib:[UINib nibWithNibName:NSStringFromClass([CustomTableViewCell class]) bundle:nil] forCellReuseIdentifier:@"CustomTableViewCell"];
    self.restaurantListTableview.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
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
    return [_restaurantData count];
}

#pragma mark - Table view cellForRowAtIndexPath
/**
 *  Method to return CustomTableViewCell with restuarant names and images
 *
 *  @param tableView UITableViewCell
 *  @param indexPath returns the row of table view
 *
 *  @return CustomTableViewCell
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    _restaurantInfo = [_restaurantData objectAtIndex:indexPath.row];
    CustomTableViewCell *cell = [self.restaurantListTableview dequeueReusableCellWithIdentifier:@"CustomTableViewCell" forIndexPath:indexPath];
    cell.labelForRestaurantName.text = _restaurantInfo.restaurantName;
    cell.imageForRestaurant.image = [UIImage imageNamed:_restaurantInfo.restaurantImage];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

#pragma mark - Table view didSelectRowAtIndexPath
/**
 *  Method to push this view to FoodMenuTableViewController
 *
 *  @param tableView UITableView
 *  @param indexPath returns the row that is clicked of table view
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    FoodMenuTableViewController *vc = [[FoodMenuTableViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
