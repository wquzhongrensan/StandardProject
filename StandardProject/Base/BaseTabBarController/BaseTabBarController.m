//
//  BaseTabBarController.m
//  StandardProject
//
//  Created by AppsComm on 2017/9/15.
//  Copyright © 2017年 quzhongrensan. All rights reserved.
//

#import "BaseTabBarController.h"
#import "BaseNavigationController.h"

@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupSubviews];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setupSubviews{
    
    [self addChildViewControllerWithClassName:@"UIViewController" imageName:@"news" title:@"汽车"];
    [self addChildViewControllerWithClassName:@"UIViewController" imageName:@"text" title:@"搞笑"];
    [self addChildViewControllerWithClassName:@"UIViewController" imageName:@"live" title:@"视频"];
    [self addChildViewControllerWithClassName:@"UIViewController" imageName:@"mine" title:@"我的"];
    
}

#pragma mark - addChildViewController

- (void)addChildViewControllerWithClassName:(NSString *)className
                                  imageName:(NSString *)imgName
                                      title:(NSString *)title
{
    UIViewController *controller = [[NSClassFromString(className) alloc] init];
    BaseNavigationController *nav = [[BaseNavigationController alloc] initWithRootViewController:controller];
    nav.title = title;
    nav.tabBarItem.image = [UIImage imageNamed:imgName];
    //取消选中变色,使用原图
    nav.tabBarItem.selectedImage = [[UIImage imageNamed:[imgName stringByAppendingString:@"_s"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self addChildViewController:nav];
}

@end
