//
//  WalletViewController.m
//  Leanbill
//
//  Created by eweba1-pc-87 on 24/05/17.
//  Copyright © 2017 eweba1-pc-87. All rights reserved.
//

#import "WalletViewController.h"
#import "KYDrawerController.h"
#import "InviteViewController.h"

@interface WalletViewController ()

@end

@implementation WalletViewController

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

- (IBAction)sideMenuAction:(id)sender {
    
    KYDrawerController *elDrawer = (KYDrawerController*)self.navigationController.parentViewController;
    [elDrawer setDrawerState:KYDrawerControllerDrawerStateOpened animated:YES];
}

- (IBAction)inviteBtnAction:(id)sender {
    
    InviteViewController *invite =[self.storyboard instantiateViewControllerWithIdentifier:@"InviteViewController"];
    [self.navigationController pushViewController:invite animated:YES];
}
@end
