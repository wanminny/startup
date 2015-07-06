//
//  ViewController.m
//  导航页
//
//  Created by wan on 15/7/3.
//  Copyright (c) 2015年 wan. All rights reserved.
//

#import "ViewController.h"
#import "MainViewController.h"



#define SCREEN_FRAME ([UIScreen mainScreen].bounds)
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)



@interface ViewController ()
{
    UIScrollView *scroll;
    UIPageControl *page;
}

@end

@implementation ViewController



- (void)loadAppPics
{
    
    
    scroll = [[UIScrollView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    
    
    UIImageView *u1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    u1.image = [UIImage imageNamed:@"4.0_pg2@3x"];
    [scroll addSubview:u1];
    
    
    UIImageView *u2 = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height)];
    u2.image = [UIImage imageNamed:@"4.0_pg3@3x"];
    [scroll addSubview:u2];
    
    
    UIImageView *u3 = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.size.width*2, 0, self.view.frame.size.width, self.view.frame.size.height)];
    u3.image = [UIImage imageNamed:@"4.0_pg4@3x"];
    [scroll addSubview:u3];
    
    
    scroll.contentSize = CGSizeMake(self.view.frame.size.width*3, self.view.frame.size.height);
    scroll.pagingEnabled = YES;
    
    scroll.showsVerticalScrollIndicator = NO;
    scroll.showsHorizontalScrollIndicator = NO;
    
    //
    //    UIPageControl *page = [[UIPageControl alloc] initWithFrame:CGRectMake((self.view.frame.size.width*2 + self.view.frame.size.width/2 -50), self.view.frame.size.height-80, 100, 37)];
    page = [[UIPageControl alloc] initWithFrame:CGRectMake(SCREEN_WIDTH/2 - 50, SCREEN_HEIGHT-50,100, 37)];
    //    page.backgroundColor = [UIColor greenColor];
    //    page.backgroundColor = [UIColor whiteColor];
    
    page.currentPageIndicatorTintColor = [UIColor colorWithRed:0.153 green:0.533 blue:0.796 alpha:1.0];
    //    page.currentPage = 0;
    page.numberOfPages = 3;
    
    //    [scroll addSubview:page];
    
    
    
    //    UIImageView *u1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"4.0_pg2@3x"]];
    //    [scroll addSubview:u1];
    
    
    //    UIImageView *u2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"4.0_pg3@3x"]];
    //    [scroll addSubview:u2];
    //
    //
    //    UIImageView *u3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"4.0_pg4@3x"]];
    //    [scroll addSubview:u3];
    
    
    
    //    scroll.backgroundColor = [UIColor grayColor];
    
    scroll.delegate = self;
    [self.view addSubview:scroll];
    
    
    ///关键否则出不来；花时间很多！！
    [self.view addSubview:page]; ///代码应该 放在这里放在之前会有问题！！！看不到！！！
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width*2 + self.view.frame.size.width/2 -50), self.view.frame.size.height-120, 100, 50)];
    [btn setTitle:@"有货集团" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
//    [self.view addSubview:btn];
    [scroll addSubview:btn];
    [btn addTarget:self action:@selector(login:) forControlEvents:UIControlEventTouchUpInside];
    

    }


- (void)login:(id) sender
{
    NSLog(@"hello ,yoho ....");
    MainViewController *main = [[MainViewController alloc] init];
    
    
//    [[UIApplication sharedApplication] keyWindow];
//    self.view p
//    [self presentedViewController] = main;
//    [self presentViewController:main animated:YES completion:nil];
    
    main.modalTransitionStyle  = UIModalTransitionStyleCoverVertical;
     [self presentViewController:main animated:YES completion:nil];
 
    
    
    
    
//    UINavigationController *nag = [[UINavigationController alloc] initWithRootViewController:main];
//    self.navigationController = nag;
//    self.navigationController.navigationController
    
    
//    [self.view addSubview:nag];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    [self loadAppPics];
//    scroll = [[UIScrollView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    
//
//    
//    UIImageView *u1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    u1.image = [UIImage imageNamed:@"4.0_pg2@3x"];
//    [scroll addSubview:u1];
//    
//    
//    UIImageView *u2 = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    u2.image = [UIImage imageNamed:@"4.0_pg3@3x"];
//    [scroll addSubview:u2];
//    
//    
//    UIImageView *u3 = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.size.width*2, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    u3.image = [UIImage imageNamed:@"4.0_pg4@3x"];
//    [scroll addSubview:u3];
//    
//    
//    scroll.contentSize = CGSizeMake(self.view.frame.size.width*3, self.view.frame.size.height);
//    scroll.pagingEnabled = YES;
//    
//    scroll.showsVerticalScrollIndicator = NO;
//    scroll.showsHorizontalScrollIndicator = NO;
//    
////    
////    UIPageControl *page = [[UIPageControl alloc] initWithFrame:CGRectMake((self.view.frame.size.width*2 + self.view.frame.size.width/2 -50), self.view.frame.size.height-80, 100, 37)];
//     page = [[UIPageControl alloc] initWithFrame:CGRectMake(SCREEN_WIDTH/2 - 50, SCREEN_HEIGHT-50,100, 37)];
////    page.backgroundColor = [UIColor greenColor];
////    page.backgroundColor = [UIColor whiteColor];
//    
//    page.currentPageIndicatorTintColor = [UIColor colorWithRed:0.153 green:0.533 blue:0.796 alpha:1.0];
////    page.currentPage = 0;
//    page.numberOfPages = 3;
//    
////    [scroll addSubview:page];
//
//    
//    
//    //    UIImageView *u1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"4.0_pg2@3x"]];
////    [scroll addSubview:u1];
//    
//    
////    UIImageView *u2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"4.0_pg3@3x"]];
////    [scroll addSubview:u2];
////
////    
////    UIImageView *u3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"4.0_pg4@3x"]];
////    [scroll addSubview:u3];
//    
//
//    
////    scroll.backgroundColor = [UIColor grayColor];
//    
//    scroll.delegate = self;
//    [self.view addSubview:scroll];
//        [self.view addSubview:page]; ///代码应该 放在这里放在之前会有问题！！！看不到！！！
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark - 滚动代理事件
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat pageWidth = scroll.frame.size.width;
    int pageNums = floor((scroll.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    
    page.currentPage = pageNums;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
