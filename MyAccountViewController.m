//
//  MyAccountViewController.m
//  Leanbill
//
//  Created by eweba1-pc-87 on 01/06/17.
//  Copyright © 2017 eweba1-pc-87. All rights reserved.
//

#import "MyAccountViewController.h"
#import "MyAccountCell.h"
#import "MyProfileViewController.h"
#import "ChangePasswordViewController.h"
#import "ChangePinViewController.h"
#import "AddCardViewController.h"
#import "AboutUsViewController.h"
#import "AllHistoryViewController.h"

@interface MyAccountViewController ()
{
    NSMutableArray *AccountArray;

}

@end

@implementation MyAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    AccountArray =[[NSMutableArray alloc]initWithObjects:@"My Profile",@"History of My Venues",@"Payment Methods",@"My Referral Code",@"Change Your 4-Digit Pin",@"Change Password",@"About Us", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return AccountArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *simpleTableIdentifier = @"MyAccountCell";
    
    MyAccountCell *cell = (MyAccountCell *)[self.AccountTable dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"MyAccountCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.accountLbl.text =[AccountArray objectAtIndex:indexPath.row];
    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    switch (indexPath.row)
    {
        case 0:
        {
            MyProfileViewController * myProfile =[self.storyboard instantiateViewControllerWithIdentifier:@"MyProfileViewController"];
            [self.navigationController pushViewController:myProfile animated:YES];
            
            
            
        }
            break;
            
        case 1:
        {
            
            AllHistoryViewController *history =[self.storyboard instantiateViewControllerWithIdentifier:@"AllHistoryViewController"];
            [self.navigationController pushViewController:history animated:YES];
            
            
            
        }
            break;
            
        case 2:
        {
            
            AddCardViewController * addCard =[self.storyboard instantiateViewControllerWithIdentifier:@"AddCardViewController"];
            [self.navigationController pushViewController:addCard animated:YES];
            
            
        }
            break;
        case 3:
        {
            
           
            
            
        }
            break;
            
        case 4:
        {
            ChangePinViewController *changePIN =[self.storyboard instantiateViewControllerWithIdentifier:@"ChangePinViewController"];
            [self.navigationController pushViewController:changePIN animated:YES];
           
        }
            break;
            
        case 5:
        {
            ChangePasswordViewController *changePassword =[self.storyboard instantiateViewControllerWithIdentifier:@"ChangePasswordViewController"];
            [self.navigationController pushViewController:changePassword animated:YES];
            
            
        }
            break;
        case 6:
        {
            
            AboutUsViewController *aboutUs =[self.storyboard instantiateViewControllerWithIdentifier:@"AboutUsViewController"];
            [self.navigationController pushViewController:aboutUs animated:YES];
            
        }
            break;
            
        default:
            break;
    }
}

- (IBAction)backBtnAction:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
