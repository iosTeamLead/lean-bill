//
//  ChatViewController.h
//  Leanbill
//
//  Created by eweba1-pc-87 on 24/05/17.
//  Copyright © 2017 eweba1-pc-87. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatViewController : UIViewController
- (IBAction)backBtnAction:(id)sender;
- (IBAction)sendTextAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *sendTextBtn;

@end
