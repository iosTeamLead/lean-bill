//
//  AddCardViewController.m
//  Leanbill
//
//  Created by eweba1-pc-87 on 02/06/17.
//  Copyright © 2017 eweba1-pc-87. All rights reserved.
//

#import "AddCardViewController.h"
#import "AddCardDetailViewController.h"

@interface AddCardViewController ()

@end

@implementation AddCardViewController

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

- (IBAction)addCardBtnAction:(id)sender {
    
    AddCardDetailViewController *cardDetail =[self.storyboard instantiateViewControllerWithIdentifier:@"AddCardDetailViewController"];
    [self.navigationController pushViewController:cardDetail animated:YES];
    
}

- (IBAction)backBtnAction:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
