//
//  CardListViewController.h
//  Leanbill
//
//  Created by eweba1-pc-87 on 02/06/17.
//  Copyright © 2017 eweba1-pc-87. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CardListViewController : UIViewController
- (IBAction)backBtnAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *cardListTable;
- (IBAction)addcardBtnAction:(id)sender;

@end
