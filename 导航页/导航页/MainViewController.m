//
//  MainViewController.m
//  导航页
//
//  Created by wan on 15/7/3.
//  Copyright (c) 2015年 wan. All rights reserved.
//

#import "MainViewController.h"
#import "RootViewController.h"
#import "AllViewController.h"
#import "CartViewController.h"
#import "MyViewController.h"
#import "NewViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor =[UIColor orangeColor];
    
    
    
    
    UITabBarController *tc = [[UITabBarController alloc] init];
    
    
    RootViewController *rvc = [[RootViewController alloc] init];
    rvc.tabBarItem.title =@"首页";
    ///
    rvc.tabBarItem.image = [UIImage imageNamed:@"tab-home-s"];
    //    rvc.tabBarItem.image = [UIImage imageNamed:@"tab-home-"];
    
    
    AllViewController *vc = [[AllViewController alloc]init];
    vc.tabBarItem.title =@"所有商品";
    vc.tabBarItem.image = [UIImage imageNamed:@"tab-pro-s"];
    
    NewViewController *nc = [[NewViewController alloc] init];
    nc.tabBarItem.title =@"最新揭晓";
    nc.tabBarItem.image = [UIImage imageNamed:@"tab-new-s"];
    
    CartViewController *carc = [[CartViewController alloc] init];
    carc.tabBarItem.title =@"购物车";
    carc.tabBarItem.image = [UIImage imageNamed:@"tab-cart-s"];
    
    MyViewController *mc = [[MyViewController alloc] init];
    mc.tabBarItem.title =@"我的家纺";
    mc.tabBarItem.image = [UIImage imageNamed:@"tab-mine-s"];
    
    
    tc.viewControllers = @[rvc,vc,nc,carc,mc];
    
    
//        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:tc];
    
    
//    [self presentViewController:tc animated:YES completion:nil];
    
//    [self.view addSubview:tc];
    
    [UIApplication sharedApplication].delegate.window.rootViewController = tc;  ////关键否则出不来；花时间很多！！
    
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

@end
