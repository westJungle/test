//
//  TableViewController.m
//  project_t
//
//  Created by 徐晨淼 on 2017/9/7.
//  Copyright © 2017年 Christian. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "TableViewCell_2.h"
#import "TableViewCell_3.h"
#import "TableViewCell_4.h"
#import "TableViewCell_5.h"
@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[TableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.tableView registerClass:[TableViewCell_2 class] forCellReuseIdentifier:@"cell2"];
    [self.tableView registerClass:[TableViewCell_3 class] forCellReuseIdentifier:@"cell3"];
    [self.tableView registerClass:[TableViewCell_4 class] forCellReuseIdentifier:@"cell4"];
    [self.tableView registerClass:[TableViewCell_5 class] forCellReuseIdentifier:@"cell5"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        
        TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        
        return cell;
    } if (indexPath.row == 1) {
        
        TableViewCell_2 *cell2 = [tableView dequeueReusableCellWithIdentifier:@"cell2"];
        return cell2;
    } if (indexPath.row ==2) {
        
        TableViewCell_3 *cell = [tableView dequeueReusableCellWithIdentifier:@"cell3"];
        
        return cell;
    } if (indexPath.row == 3) {
        
        TableViewCell_4 *cell = [tableView dequeueReusableCellWithIdentifier:@"cell4"];
        
        return cell;
    } if (indexPath.row == 4) {
        
        TableViewCell_5 *cell = [tableView dequeueReusableCellWithIdentifier:@"cell5"];
        
        return cell;
    }
    
    
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row==0) {
        
        return HEIGHTX(355);
        
    } if (indexPath.row == 1) {
        
        return HEIGHTX(370);
        
    } if (indexPath.row == 2 || indexPath.row == 3) {
        
        return HEIGHTX(560);
        
    } if (indexPath.row == 4) {
        
        return HEIGHTX(635);
    }
    
    
    return 0;
}

- (instancetype)initWithStyle:(UITableViewStyle)style {
    
     return [super initWithStyle:UITableViewStyleGrouped];
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
