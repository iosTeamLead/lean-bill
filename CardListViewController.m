//
//  CardListViewController.m
//  Leanbill
//
//  Created by eweba1-pc-87 on 02/06/17.
//  Copyright © 2017 eweba1-pc-87. All rights reserved.
//

#import "CardListViewController.h"
#import "CardListViewCell.h"
#import "EditCardViewController.h"

@interface CardListViewController ()

@end

@implementation CardListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.automaticallyAdjustsScrollViewInsets = NO;
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

- (IBAction)backBtnAction:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *simpleTableIdentifier = @"CardListViewCell";
    
    CardListViewCell *cell = (CardListViewCell *)[self.cardListTable dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CardListViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    EditCardViewController *editCard =[self.storyboard instantiateViewControllerWithIdentifier:@"EditCardViewController"];
    [self.navigationController pushViewController:editCard animated:YES];

}

- (IBAction)addcardBtnAction:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
