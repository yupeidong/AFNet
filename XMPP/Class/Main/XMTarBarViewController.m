//
//  XMTarBarViewController.m
//  XMPP
//
//  Created by 喻沛 on 2017/8/17.
//  Copyright © 2017年 喻沛. All rights reserved.
//

#import "XMTarBarViewController.h"
#import "XMActiveViewController.h"
#import "XMHomeViewController.h"
#import "XMMineViewController.h"
#import "XMBusinessViewController.h"
#import "XMNavViewController.h"
@interface XMTarBarViewController ()

@end

@implementation XMTarBarViewController


+ (instancetype)creatTabbar
{
    static  XMTarBarViewController * tarbar = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        tarbar = [[[self class] alloc] init];
    });
    return tarbar;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setChildVC];
    [self setupItemTitleTextAttributes];
    // Do any additional setup after loading the view.
}
/**
 *  设置所有UITabBarItem的文字属性
 */
- (void)setupItemTitleTextAttributes
{
    UITabBarItem * item = [UITabBarItem appearance];
    NSMutableDictionary * dicNormal = [NSMutableDictionary dictionaryWithCapacity:1];
    dicNormal[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    dicNormal[NSForegroundColorAttributeName] = [UIColor grayColor];
    [item setTitleTextAttributes:dicNormal forState:UIControlStateNormal];
    
    NSMutableDictionary * dicSelect = [NSMutableDictionary dictionaryWithCapacity:1];
    dicSelect[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    dicSelect[NSForegroundColorAttributeName] = [UIColor redColor];
    [item setTitleTextAttributes:dicSelect forState:UIControlStateSelected];
}

- (void)setChildVC
{
    XMHomeViewController * homeVC = [[XMHomeViewController alloc] init];
    [self addChildVC:[[XMNavViewController alloc] initWithRootViewController:homeVC] title:@"首页" image:@"" selectedImage:@""];

    XMBusinessViewController * buVC = [[XMBusinessViewController alloc] init];
    [self addChildVC:[[XMNavViewController alloc] initWithRootViewController:buVC] title:@"理财" image:@"" selectedImage:@""];

    XMActiveViewController * acVC = [[XMActiveViewController alloc] init];
    [self addChildVC:[[XMNavViewController alloc] initWithRootViewController:acVC] title:@"活动" image:@"" selectedImage:@""];

    XMMineViewController * miVc = [[XMMineViewController alloc] init];
    [self addChildVC:[[XMNavViewController alloc] initWithRootViewController:miVc] title:@"我的" image:@"" selectedImage:@""];

}

/**
 *  添加一个子控制器
 *
 *  @param childVC       子控制器对象
 *  @param title         标题
 *  @param image         图标
 *  @param selectedImage 选中的图标
 */
- (void)addChildVC:(UIViewController *)childVC title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    childVC.tabBarItem.title = title;
    childVC.tabBarItem.selectedImage = [UIImage imageNamed:image];
    childVC.tabBarItem.image = [UIImage imageNamed:selectedImage];
    [self addChildViewController:childVC];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
