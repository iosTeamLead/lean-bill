//
//  HomeViewController.m
//  Leanbill
//
//  Created by eweba1-pc-87 on 16/05/17.
//  Copyright © 2017 eweba1-pc-87. All rights reserved.
//

#import "HomeViewController.h"
#import "KYDrawerController.h"
#import "AccountLoginViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

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

- (IBAction)sidemenuAction:(id)sender {
    
    KYDrawerController *elDrawer = (KYDrawerController*)self.navigationController.parentViewController;
    [elDrawer setDrawerState:KYDrawerControllerDrawerStateOpened animated:YES];
}

- (IBAction)myAccountAction:(id)sender {
    
    AccountLoginViewController *accountLogin =[self.storyboard instantiateViewControllerWithIdentifier:@"AccountLoginViewController"];
    [self.navigationController pushViewController:accountLogin animated:YES];
}
@end
