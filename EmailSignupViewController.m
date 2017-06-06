//
//  EmailSignupViewController.m
//  Leanbill
//
//  Created by eweba1-pc-87 on 01/06/17.
//  Copyright © 2017 eweba1-pc-87. All rights reserved.
//

#import "EmailSignupViewController.h"

@interface EmailSignupViewController ()

@end

@implementation EmailSignupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     _scrollView.contentSize = CGSizeMake(_scrollView.frame.size.width, self.view.frame.size.height+120);
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
@end
