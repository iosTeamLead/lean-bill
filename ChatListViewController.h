//
//  ChatListViewController.h
//  Leanbill
//
//  Created by eweba1-pc-87 on 24/05/17.
//  Copyright © 2017 eweba1-pc-87. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatListViewController : UIViewController
- (IBAction)sidemenuAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *chatList_table;
@property (weak, nonatomic) IBOutlet UIView *chatSearchView;

@end
