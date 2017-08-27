//
//  RXTabBarViewController.m
//  RenXing
//
//  Created by ycmedia_imac on 16/3/11.
//  Copyright © 2016年 ycmedia_imac. All rights reserved.
//

#import "HZXNavigationController.h"
#import "HZXTabbarController.h"
#import "HZXViewController.h"

//#import "HZXHomeViewController.h"
//#import "HZXMessageViewController.h"
//#import "HZXOrderViewController.h"
//#import "HZXLiveViewController.h"
//#import "HZXMeViewController.h"
//#import "HZXWillLoginViewController.h"
#import "HZXTabbarView.h"

//

@interface HZXTabbarController ()<tabbarViewDelegate, UITabBarControllerDelegate>

@property (nonatomic, strong) HZXTabbarView *tabbarView;
//- (void)testExtensionArr;
@end


@implementation HZXTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.delegate = self;
    [self initChildVcs];
    [self initTabBarView];
    //[RXUserDefaultTool removeObjectForKey:@"userLoginToken"];
//    [self test];
}

- (void)initChildVcs{
    [self setViewControllers:@[
                                [[HZXNavigationController alloc]initWithRootViewController:[[HZXViewController alloc]init]],
                                [[HZXNavigationController alloc]initWithRootViewController:[[HZXViewController  alloc]init]],
                                [[HZXNavigationController alloc]initWithRootViewController:[[HZXViewController alloc]init]],
                                [[HZXNavigationController alloc]initWithRootViewController:[[HZXViewController alloc]init]],
                                [[HZXNavigationController alloc]initWithRootViewController:[[HZXViewController alloc]init]],
                               ]];
}

- (void)initTabBarView{
    _tabbarView = [[HZXTabbarView alloc]initWithFrame:self.tabBar.bounds];
    _tabbarView.delegate = self;
    
    [_tabbarView addTabbarButtonWithTitle:@"首页" imageName:@"首页" selImageName:@"首页2"];
    [_tabbarView addTabbarButtonWithTitle:@"信息" imageName:@"信息" selImageName:@"信息2"];
    [_tabbarView addTabbarButtonWithTitle:@"订单" imageName:@"订单" selImageName:@"订单2"];
    [_tabbarView addTabbarButtonWithTitle:@"直播" imageName:@"直播" selImageName:@"直播2"];
    [_tabbarView addTabbarButtonWithTitle:@"我的" imageName:@"我的" selImageName:@"我的2"];
    [self.tabBar addSubview:_tabbarView];
}

//- (void)tabBarController:(UITabBarController *)tabBarController
//didSelectViewController:(UIViewController *)viewController{
//    HZXLog(@"当前的tabBar==%@", tabBarController);
//}

- (void)tabbar:(HZXTabbarView *)tabbarView selBtnFrom:(NSInteger)from to:(NSInteger)to{
//    HZXLog(@"from====%ld, to====%ld", from, to);
        self.selectedIndex = to;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
