//
//  LoginViewController.m
//  Leanbill
//
//  Created by eweba1-pc-87 on 31/05/17.
//  Copyright © 2017 eweba1-pc-87. All rights reserved.
//

#import "LoginViewController.h"
#import "ForgotPasswordViewController.h"
#import "SignupViewController.h"
#import "MyProfileViewController.h"
#import "MyAccountViewController.h"
#import "AppDelegate.h"
#import "KYDrawerController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.automaticallyAdjustsScrollViewInsets =NO;
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

- (IBAction)forgetPasswordAction:(id)sender {
    
    ForgotPasswordViewController *forgetpassword =[self.storyboard instantiateViewControllerWithIdentifier:@"ForgotPasswordViewController"];
    [self.navigationController pushViewController:forgetpassword animated:YES];
}

- (IBAction)createAccountAction:(id)sender {
    
    SignupViewController *signUp =[self.storyboard instantiateViewControllerWithIdentifier:@"SignupViewController"];
    [self.navigationController pushViewController:signUp animated:YES];
}

- (IBAction)loginBtnAction:(id)sender {
    
    MyAccountViewController *myAccount =[self.storyboard instantiateViewControllerWithIdentifier:@"MyAccountViewController"];
    [self.navigationController pushViewController:myAccount animated:YES];
   
}
@end
