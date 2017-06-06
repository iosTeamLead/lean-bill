//
//  SideMenuViewController.m
//  Leanbill
//
//  Created by eweba1-pc-87 on 17/05/17.
//  Copyright © 2017 eweba1-pc-87. All rights reserved.
//

#import "SideMenuViewController.h"
#import "SideMenuCell.h"
#import "OrderNotification.h"
#import "PreOrderNotification.h"
#import "TakeAwayNotification.h"
#import "NotificationViewController.h"
#import "PromoCodeViewController.h"
#import "WalletViewController.h"
#import "ChatListViewController.h"
#import "KYDrawerController.h"
#import "HomeViewController.h"

@interface SideMenuViewController ()
{

    NSMutableArray *identifierArray;
    KYDrawerController *KyDrawer;
}

@end

@implementation SideMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    identifierArray=[[NSMutableArray alloc] initWithObjects:@"first",@"second",@"third",@"fourth",nil];
    KyDrawer = (KYDrawerController*)self.navigationController.parentViewController;
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return identifierArray.count;
    
    // Return the number of rows in the section.
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *simpleTableIdentifier = [identifierArray objectAtIndex:indexPath.row];
    
    SideMenuCell *cell =(SideMenuCell *) [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    [cell.activeOrderBtn addTarget:self action:@selector(activeOrder:) forControlEvents:UIControlEventTouchUpInside];
    [cell.preOrderBtn addTarget:self action:@selector(preOrder:) forControlEvents:UIControlEventTouchUpInside];
    [cell.takeAwayBtn addTarget:self action:@selector(takeAway:) forControlEvents:UIControlEventTouchUpInside];
    [cell.orderBtn addTarget:self action:@selector(order:) forControlEvents:UIControlEventTouchUpInside];
    [cell.notificationsBtn addTarget:self action:@selector(notifications:) forControlEvents:UIControlEventTouchUpInside];
    [cell.promocodeBtn addTarget:self action:@selector(promocode:) forControlEvents:UIControlEventTouchUpInside];
    [cell.walletBtn addTarget:self action:@selector(wallet:) forControlEvents:UIControlEventTouchUpInside];
    [cell.chatBtn addTarget:self action:@selector(chat:) forControlEvents:UIControlEventTouchUpInside];

    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}


-(void)deSelectAllBtn
{

    for (int i=0; i<8; i++)
    {
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:i inSection:0];
        SideMenuCell *cell = (SideMenuCell *)[self.sidemenu_table cellForRowAtIndexPath:indexPath];
        
        [cell.activeOrderBtn setSelected:NO];
        [cell.preOrderBtn setSelected:NO];
        [cell.takeAwayBtn setSelected:NO];
        [cell.orderBtn setSelected:NO];
        [cell.notificationsBtn setSelected:NO];
        [cell.promocodeBtn setSelected:NO];
        [cell.walletBtn setSelected:NO];
        [cell.chatBtn setSelected:NO];
    }
    

}

-(void)activeOrder:(UIButton*)sender
{
    [self deSelectAllBtn];
    [sender setSelected:YES];

}

-(void)preOrder:(UIButton*)sender
{
    [self deSelectAllBtn];
    [sender setSelected:YES];
    
    PreOrderNotification *preOrder=[self.storyboard instantiateViewControllerWithIdentifier:@"PreOrderNotification"];
    UINavigationController *_nav = [[UINavigationController alloc] initWithRootViewController:preOrder];
    _nav.navigationBarHidden=YES;
    //            [self.mm_drawerController setCenterViewController:_nav withCloseAnimation:YES
    //                                                   completion:nil];
    KyDrawer.mainViewController=_nav;
    [KyDrawer setDrawerState:KYDrawerControllerDrawerStateClosed animated:YES];
    
}
-(void)takeAway:(UIButton*)sender
{
    [self deSelectAllBtn];
    [sender setSelected:YES];
    
    TakeAwayNotification *takeAway=[self.storyboard instantiateViewControllerWithIdentifier:@"TakeAwayNotification"];
    UINavigationController *_nav = [[UINavigationController alloc] initWithRootViewController:takeAway];
    _nav.navigationBarHidden=YES;
    //            [self.mm_drawerController setCenterViewController:_nav withCloseAnimation:YES
    //                                                   completion:nil];
    KyDrawer.mainViewController=_nav;
    [KyDrawer setDrawerState:KYDrawerControllerDrawerStateClosed animated:YES];
}

-(void)order:(UIButton*)sender
{
    [self deSelectAllBtn];
    [sender setSelected:YES];
    
    OrderNotification *order=[self.storyboard instantiateViewControllerWithIdentifier:@"OrderNotification"];
    UINavigationController *_nav = [[UINavigationController alloc] initWithRootViewController:order];
    _nav.navigationBarHidden=YES;
    //            [self.mm_drawerController setCenterViewController:_nav withCloseAnimation:YES
    //                                                   completion:nil];
    KyDrawer.mainViewController=_nav;
    [KyDrawer setDrawerState:KYDrawerControllerDrawerStateClosed animated:YES];
    
}

-(void)notifications:(UIButton*)sender
{
    [self deSelectAllBtn];
    [sender setSelected:YES];
    
    NotificationViewController *notification=[self.storyboard instantiateViewControllerWithIdentifier:@"NotificationViewController"];
    UINavigationController *_nav = [[UINavigationController alloc] initWithRootViewController:notification];
    _nav.navigationBarHidden=YES;
    //            [self.mm_drawerController setCenterViewController:_nav withCloseAnimation:YES
    //                                                   completion:nil];
    KyDrawer.mainViewController=_nav;
    [KyDrawer setDrawerState:KYDrawerControllerDrawerStateClosed animated:YES];
    
}

-(void)promocode:(UIButton*)sender
{
    [self deSelectAllBtn];
    [sender setSelected:YES];
    
    PromoCodeViewController *promocode=[self.storyboard instantiateViewControllerWithIdentifier:@"PromoCodeViewController"];
    UINavigationController *_nav = [[UINavigationController alloc] initWithRootViewController:promocode];
    _nav.navigationBarHidden=YES;
    //            [self.mm_drawerController setCenterViewController:_nav withCloseAnimation:YES
    //                                                   completion:nil];
    KyDrawer.mainViewController=_nav;
    [KyDrawer setDrawerState:KYDrawerControllerDrawerStateClosed animated:YES];
    
}

-(void)wallet:(UIButton*)sender
{
    [self deSelectAllBtn];
    [sender setSelected:YES];
    
    WalletViewController *wallet=[self.storyboard instantiateViewControllerWithIdentifier:@"WalletViewController"];
    UINavigationController *_nav = [[UINavigationController alloc] initWithRootViewController:wallet];
    _nav.navigationBarHidden=YES;
    //            [self.mm_drawerController setCenterViewController:_nav withCloseAnimation:YES
    //                                                   completion:nil];
    KyDrawer.mainViewController=_nav;
    [KyDrawer setDrawerState:KYDrawerControllerDrawerStateClosed animated:YES];
    
}

-(void)chat:(UIButton*)sender
{
    [self deSelectAllBtn];
    [sender setSelected:YES];
    
    ChatListViewController *chatList=[self.storyboard instantiateViewControllerWithIdentifier:@"ChatListViewController"];
    UINavigationController *_nav = [[UINavigationController alloc] initWithRootViewController:chatList];
    _nav.navigationBarHidden=YES;
    //            [self.mm_drawerController setCenterViewController:_nav withCloseAnimation:YES
    //                                                   completion:nil];
    KyDrawer.mainViewController=_nav;
    [KyDrawer setDrawerState:KYDrawerControllerDrawerStateClosed animated:YES];
}


- (IBAction)homeBtnAction:(id)sender
{
    
    [self deSelectAllBtn];
    HomeViewController *home =[self.storyboard instantiateViewControllerWithIdentifier:@"HomeViewController"];
    UINavigationController *_nav = [[UINavigationController alloc] initWithRootViewController:home];
    _nav.navigationBarHidden=YES;
    //            [self.mm_drawerController setCenterViewController:_nav withCloseAnimation:YES
    //                                                   completion:nil];
    KyDrawer.mainViewController=_nav;
    [KyDrawer setDrawerState:KYDrawerControllerDrawerStateClosed animated:YES];
}
@end
