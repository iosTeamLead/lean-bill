//
//  AccountLoginViewController.m
//  Leanbill
//
//  Created by eweba1-pc-87 on 25/05/17.
//  Copyright © 2017 eweba1-pc-87. All rights reserved.
//

#import "AccountLoginViewController.h"
#import "LoginViewController.h"

@interface AccountLoginViewController ()

@end

@implementation AccountLoginViewController

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

- (IBAction)backBtnAction:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)loginpageAction:(id)sender {
    
    LoginViewController *loginpage =[self.storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];
    [self.navigationController pushViewController:loginpage animated:YES];
    
}
@end
