//
//  AllHistoryViewController.m
//  Leanbill
//
//  Created by eweba1-pc-87 on 02/06/17.
//  Copyright © 2017 eweba1-pc-87. All rights reserved.
//

#import "AllHistoryViewController.h"
#import "OrderHistoryCell.h"

@interface AllHistoryViewController ()

@end

@implementation AllHistoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2 ;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section==0)
    {
        return 3;
    }
    else{
        return 3;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if(section == 0)
        return @"Today - 16 Mar 2017";
    else
        return @"Monday -13 Mar 2017";
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *simpleTableIdentifier = @"OrderHistoryCell";
    
    OrderHistoryCell *cell = (OrderHistoryCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"OrderHistoryCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    return cell;
}
-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UILabel *label = [[UILabel alloc] init];
    label.backgroundColor=[UIColor colorWithRed:0.96 green:0.96 blue:0.96 alpha:1.0];;
    label.textAlignment=NSTextAlignmentCenter;
    if(section == 0)
        label.text=@"Today - 16 Mar 2017";
    else
        label.text=@"Monday -13 Mar 2017";
    
    return label;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 35;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.billhistoryVIew setHidden:NO];
}

- (IBAction)backBtnAction:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)allHistoryBtnAction:(id)sender {
    if (![sender isSelected])
    {
        [self deSelectAllBtn];
        [sender setSelected:YES];
        [self.allhistoryLabel setBackgroundColor:[UIColor colorWithRed:0.25 green:0.56 blue:0.47 alpha:1.0]];
        [self.allhistoryLabel setTextColor:[UIColor whiteColor]];
      

    } else {
         [sender setSelected:NO];
    }
}

- (IBAction)orderHistoryBtnAction:(id)sender {
    if (![sender isSelected])
    {
        [self deSelectAllBtn];
        [sender setSelected:YES];
        [self.orderhistoryLabel setBackgroundColor:[UIColor colorWithRed:0.25 green:0.56 blue:0.47 alpha:1.0]];
        [self.orderhistoryLabel setTextColor:[UIColor whiteColor]];
        
    } else
    {
        [sender setSelected:NO];
    }
}

- (IBAction)preOrderHistoryBtnAction:(id)sender {
    if (![sender isSelected])
    {
        [self deSelectAllBtn];
        [sender setSelected:YES];
        [self.preorderhistoryLabel setBackgroundColor:[UIColor colorWithRed:0.25 green:0.56 blue:0.47 alpha:1.0]];
              [self.preorderhistoryLabel setTextColor:[UIColor whiteColor]];
        
    } else {
        [sender setSelected:NO];
    }
}

- (IBAction)takeAwayHistoryBtnAction:(id)sender {
    if (![sender isSelected])
    {
        [self deSelectAllBtn];
        [sender setSelected:YES];
        [self.takeAwayhistoryLabel setBackgroundColor:[UIColor colorWithRed:0.25 green:0.56 blue:0.47 alpha:1.0]];
        
        [self.takeAwayhistoryLabel setTextColor:[UIColor whiteColor]];
    } else {
        [sender setSelected:NO];
    }
}

-(void)deSelectAllBtn
{
    [self.allhistoryBtn setSelected:NO];
    [self.orderhistoryBtn setSelected:NO];
    [self.preOrderhistoryBtn setSelected:NO];
    [self.takeAwayhistoryBtn setSelected:NO];
    
    [self.allhistoryLabel setBackgroundColor:[UIColor clearColor]];
    [self.orderhistoryLabel setBackgroundColor:[UIColor clearColor]];
    [self.preorderhistoryLabel setBackgroundColor:[UIColor clearColor]];
    [self.takeAwayhistoryLabel setBackgroundColor:[UIColor clearColor]];
    
    [self.allhistoryLabel setTextColor:[UIColor blackColor]];
    [self.orderhistoryLabel setTextColor:[UIColor blackColor]];
    [self.preorderhistoryLabel setTextColor:[UIColor blackColor]];
    [self.takeAwayhistoryLabel setTextColor:[UIColor blackColor]];
}


- (IBAction)okBtnAction:(id)sender {
    
    [self.billhistoryVIew setHidden:YES];
}
@end






