//
//  AllHistoryViewController.h
//  Leanbill
//
//  Created by eweba1-pc-87 on 02/06/17.
//  Copyright © 2017 eweba1-pc-87. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AllHistoryViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *history_table;
- (IBAction)backBtnAction:(id)sender;
- (IBAction)allHistoryBtnAction:(id)sender;
- (IBAction)orderHistoryBtnAction:(id)sender;
- (IBAction)preOrderHistoryBtnAction:(id)sender;
- (IBAction)takeAwayHistoryBtnAction:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *allhistoryBtn;
@property (weak, nonatomic) IBOutlet UIButton *orderhistoryBtn;
@property (weak, nonatomic) IBOutlet UIButton *preOrderhistoryBtn;
@property (weak, nonatomic) IBOutlet UIButton *takeAwayhistoryBtn;

@property (weak, nonatomic) IBOutlet UILabel *allhistoryLabel;
@property (weak, nonatomic) IBOutlet UILabel *orderhistoryLabel;
@property (weak, nonatomic) IBOutlet UILabel *preorderhistoryLabel;
@property (weak, nonatomic) IBOutlet UILabel *takeAwayhistoryLabel;

- (IBAction)okBtnAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *billhistoryVIew;

@end
