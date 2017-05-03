//
//  ViewController.m
//  第一个HTML文件
//
//  Created by MrWu on 16/2/23.
//  Copyright © 2016年 MrWu. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>

@interface ViewController ()<UIPageViewControllerDelegate,UIPageViewControllerDataSource>
@property (nonatomic, strong) UIPageViewController *page;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIPageViewController *page = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    self.page = page;
    page.doubleSided = YES;
    page.dataSource =self;
    page.delegate = self;
    [self addChildViewController:page];
    [self.view addSubview:self.page.view];
    
   
    [page setViewControllers:@[[UIViewController new]] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    
    UIViewController *vC1 = [UIViewController new];
    vC1.view.tag = 1;
    
    UIGraphicsBeginImageContext(viewController.view.bounds.size);

    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    [pageViewController.view.layer renderInContext:ref];

    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    
    UIImage *imagex = [UIImage imageWithCGImage:image.CGImage scale:[UIScreen mainScreen].scale orientation:UIImageOrientationUpMirrored];
    
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:viewController.view.bounds];
    imageview.alpha = 0.6;

    imageview.image = imagex;
    vC1.view.backgroundColor = [UIColor whiteColor];
    [vC1.view addSubview:imageview];
    
    
    UIViewController *vC2= [UIViewController new];
    
    UILabel *lab = [[UILabel alloc] initWithFrame:viewController.view.bounds];
    lab.numberOfLines = 0;
    lab.text = @"达到撒多撒多所大大大大多大二二发二多群奥多打底袜多哇大多达到瓦达瓦达瓦达瓦大飞啊飞个个工时费双丰收高为父亲阿尔法哇多哇多无多哇大无多哇发二哥哥色粉案发前带我去大额法尔飞啊飞阿法尔飞啊飞啊啊发飞啊飞案发前去的各个五哥公司格式故事改述如果认识认识果然是个人时光如梭改述如果认识认识如果还认识认识认识个人三个人达到撒多撒多所大大大大多大二二发二多群奥多打底袜多哇大多达到瓦达瓦达瓦达瓦大飞啊飞个个工时费双丰收高为父亲阿尔法哇多哇多无多哇大无多哇发二哥哥色粉案发前带我去大额法尔飞啊飞阿法尔飞啊飞啊啊发飞啊飞案发前去的各个五哥公司格式故事改述如果认识认识果然是个人时光如梭改述如果认识认识如果还认识认识认识个人三个人达到撒多撒多所大大大大多大二二发二多群奥多打底袜多哇大多达到瓦达瓦达瓦达瓦大飞啊飞个个工时费双丰收高为父亲阿尔法哇多哇多无多哇大无多哇发二哥哥色粉案发前带我去大额法尔飞啊飞阿法尔飞啊飞啊啊发飞啊飞案发前去的各个五哥公司格式故事改述如果认识认识果然是个人时光如梭改述如果认识认识如果还认识认识认识个人三个人达到撒多撒多所大大大大多大二二发二多群奥多打底袜多哇大多达到瓦达瓦达瓦达瓦大飞啊飞个个工时费双丰收高为父亲阿尔法哇多哇多无多哇大无多哇发二哥哥色粉案发前带我去大额法尔飞啊飞阿法尔飞啊飞啊啊发飞啊飞案发前去的各个五哥公司格式故事改述如果认识认识果然是个人时光如梭改述如果认识认识如果还认识认识认识个人三个人达到撒多撒多所大大大大多大二二发二多群奥多打底袜多哇大多达到瓦达瓦达瓦达瓦大飞啊飞个个工时费双丰收高为父亲阿尔法哇多哇多无多哇大无多哇发二哥哥色粉案发前带我去大额法尔飞啊飞阿法尔飞啊飞啊啊发飞啊飞案发前去的各个五哥公司格式故事改述如果认识认识果然是个人时光如梭改述如果认识认识如果还认识认识认识个人三个人达到撒多撒多所大大大大多大二二发二多群奥多打底袜多哇大多达到瓦达瓦达瓦达瓦大飞啊飞个个工时费双丰收高为父亲阿尔法哇多哇多无多哇大无多哇发二哥哥色粉案发前带我去大额法尔飞啊飞阿法尔飞啊飞啊啊发飞啊飞案发前去的各个五哥公司格式故事改述如果认识认识果然是个人时光如梭改述如果认识认识如果还认识认识认识个人三个人达到撒多撒多所大大大大多大二二发二多群奥多打底袜多哇大多达到瓦达瓦达瓦达瓦大飞啊飞个个工时费双丰收高为父亲阿尔法哇多哇多无多哇大无多哇发二哥哥色粉案发前带我去大额法尔飞啊飞阿法尔飞啊飞啊啊发飞啊飞案发前去的各个五哥公司格式故事改述如果认识认识果然是个人时光如梭改述如果认识认识如果还认识认识认识个人三个人";
    lab.textColor = [UIColor redColor];
    [vC2.view addSubview:lab];
    vC2.view.tag = 2;
    vC2.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Activity_head"]];
    if (viewController.view.tag == 1) {
        return vC2;
    }else {
        return vC1;
    }
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    UIViewController *vC1 = [UIViewController new];
    vC1.view.tag = 1;
    vC1.view.backgroundColor = [UIColor greenColor];
    
    
    UIViewController *vC2= [UIViewController new];
    vC2.view.backgroundColor = [UIColor redColor];
    vC2.view.tag = 2;
    
    if (viewController.view.tag == 1) {
        return vC2;
    }else {
        return vC1;
    }
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
