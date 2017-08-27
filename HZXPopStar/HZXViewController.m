//
//  ViewController.m
//  HZXPopStar
//
//  Created by 何紫璇 on 2017/8/19.
//  Copyright © 2017年 何紫璇. All rights reserved.
//

#import "HZXViewController.h"

@interface HZXViewController ()

@end

@implementation HZXViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    NSLog(@"3.54");
    UIView *view = [[UIView alloc]init];
    view.height = 100;
    view.width = 100;
    view.x = 0;
    view.y = 0;
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
