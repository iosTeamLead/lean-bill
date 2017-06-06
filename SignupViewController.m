//
//  SignupViewController.m
//  Leanbill
//
//  Created by eweba1-pc-87 on 25/05/17.
//  Copyright © 2017 eweba1-pc-87. All rights reserved.
//

#import "SignupViewController.h"
#import "EmailSignupViewController.h"

@interface SignupViewController ()

@end

@implementation SignupViewController

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

- (IBAction)registerEmailBtnAction:(id)sender {
    
    EmailSignupViewController *emailSignup =[self.storyboard instantiateViewControllerWithIdentifier:@"EmailSignupViewController"];
    [self.navigationController pushViewController:emailSignup animated:YES];
}
@end
