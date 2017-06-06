//
//  EditProfileViewController.h
//  Leanbill
//
//  Created by eweba1-pc-87 on 31/05/17.
//  Copyright © 2017 eweba1-pc-87. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditProfileViewController : UIViewController
- (IBAction)backBtnAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *profileImage;
- (IBAction)profileImnageAction:(id)sender;

@end
