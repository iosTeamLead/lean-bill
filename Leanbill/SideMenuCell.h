//
//  SideMenuCell.h
//  Leanbill
//
//  Created by eweba1-pc-87 on 17/05/17.
//  Copyright © 2017 eweba1-pc-87. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SideMenuCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIButton *activeOrderBtn;
@property (weak, nonatomic) IBOutlet UIButton *preOrderBtn;
@property (weak, nonatomic) IBOutlet UIButton *takeAwayBtn;
@property (weak, nonatomic) IBOutlet UIButton *orderBtn;
@property (weak, nonatomic) IBOutlet UIButton *notificationsBtn;
@property (weak, nonatomic) IBOutlet UIButton *promocodeBtn;
@property (weak, nonatomic) IBOutlet UIButton *walletBtn;
@property (weak, nonatomic) IBOutlet UIButton *chatBtn;


@end
