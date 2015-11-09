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

- (void)viewDidLoad {
    [super viewDidLoad];
    _restaurantDetailController = [[RestaurantDetailController alloc]init];
    //_arrayForFoodSubMenu = [[NSMutableArray alloc]init];
    if (_rowIndex == 0) {
        self.navigationItem.title = @"Starters";
        _arrayForFoodSubMenu = _restaurantDetailController.getStartersMenu;
    }
    if (_rowIndex == 1) {
        self.navigationItem.title = @"Main Course";
        _arrayForFoodSubMenu = _restaurantDetailController.getMainCourseMenu;
    }
    if (_rowIndex == 2) {
        self.navigationItem.title = @"Beverages";
        _arrayForFoodSubMenu = _restaurantDetailController.getBeveragesMenu;
    }
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  
//    vc.setFlag = [NSNumber numberWithInt:1];
    //[self.navigationController popViewController: animated:YES];
    //[self performSegueWithIdentifier:@"showFoodMenu" sender:self];
//    [self.tabBarController setViewControllers:[NSArray arrayWithObjects:self.tabBarController.viewControllers[0],secondViewController, nil]];
    
//    UINavigationController *restaurantNavigationController=(UINavigationController *)self.tabBarController.viewControllers[0];
//        RestaurantListTableViewController *restaurantListViewController=restaurantNavigationController.viewControllers[0];
//    restaurantListViewController.selectedDishtab=YES;
//    [self.tabBarController setViewControllers:self.tabBarController.ma]
    _foodMenu = [_arrayForFoodSubMenu objectAtIndex:indexPath.row];
    UIStoryboard *mainstoryboard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SecondViewController  *secondVc = [mainstoryboard instantiateViewControllerWithIdentifier:@"SecondViewContoller"];
    if (_rowIndex == 0)
        secondVc.foodItemName = _foodMenu.staters;
    if (_rowIndex == 1)
        secondVc.foodItemName = _foodMenu.mainCourse;
    if (_rowIndex == 2)
        secondVc.foodItemName = _foodMenu.beverages;
    [self.tabBarController setViewControllers:[NSArray arrayWithObjects:self.tabBarController.viewControllers[0], secondVc,nil]];
    self.tabBarController.selectedViewController=secondVc;
    
//    [self.navigationController popToRootViewControllerAnimated:YES];
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
