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

- (void)viewDidLoad {
    [super viewDidLoad];
    _selectedDishtab=NO;
    _restaurantDetailController = [[RestaurantDetailController alloc]init];
    _restaurantInfo = [[RestaurantInfo alloc]init];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    _restaurantData = _restaurantDetailController.getRestaurantInfo;
    [self.restaurantListTableview registerClass:[CustomTableViewCell class] forCellReuseIdentifier:@"CustomTableViewCell"];
    
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


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    _restaurantInfo = [_restaurantData objectAtIndex:indexPath.row];
    CustomTableViewCell *cell = [self.restaurantListTableview dequeueReusableCellWithIdentifier:@"CustomTableViewCell" forIndexPath:indexPath];
    cell.labelForRestaurantName.text = _restaurantInfo.restaurantName;
    cell.imageForRestaurant.image = [UIImage imageNamed:_restaurantInfo.restaurantImage];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    FoodMenuTableViewController *vc = [[FoodMenuTableViewController alloc] init];
    //currentRow = (int)indexPath.row;
    [self.navigationController pushViewController:vc animated:YES];
    //[self performSegueWithIdentifier:@"showFoodMenu" sender:self];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
