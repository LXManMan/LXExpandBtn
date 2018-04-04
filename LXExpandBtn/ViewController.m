//
//  ViewController.m
//  LXExpandBtn
//
//  Created by 漫漫 on 2018/4/4.
//  Copyright © 2018年 漫漫. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+LXExpandBtn.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *topBtn;
@property (weak, nonatomic) IBOutlet UIButton *bottomBtn;
@property (weak, nonatomic) IBOutlet UIButton *leftBtn;
@property (weak, nonatomic) IBOutlet UIButton *rightBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button =[UIButton LXButtonWithTitle:@"点击了button1" titleFont:Font(15) Image:nil backgroundImage:nil backgroundColor:[UIColor whiteColor] titleColor:[UIColor blackColor] frame:CGRectMake(0, 0, 200, 200)];
    button.center = CGPointMake(self.view.center.x, self.view.center.y -200);
    button.layer.borderColor =[UIColor redColor].CGColor;
    button.layer.borderWidth = 5;
    [button setTitle:@"button1点到了" forState:UIControlStateHighlighted];

    [button setTitleColor:[UIColor purpleColor] forState:UIControlStateHighlighted];
    [self.view addSubview:button];
    
    [button addClickBlock:^(UIButton *button) {
        NSLog(@"点击了button1");
    }];
    
    
    UIView *view =[[UIView alloc]initWithFrame:CGRectMake(0, 0, 250, 250)];
    view.backgroundColor =[UIColor blueColor];
    
    view.center = CGPointMake(button.center.x, button.center.y +300);
    

    [self.view addSubview:view];
    
    
    
    //扩大点击区域
    UIButton *button2 =[UIButton LXButtonWithTitle:@"button2" titleFont:Font(15) Image:nil backgroundImage:nil backgroundColor:[UIColor whiteColor] titleColor:[UIColor blackColor] frame:CGRectMake(0, 0, 200, 200)];
    
    [button2 setTitleColor:[UIColor purpleColor] forState:UIControlStateHighlighted];

    [button2 setTitle:@"button2点到了" forState:UIControlStateHighlighted];
    button2.layer.borderColor =[UIColor redColor].CGColor;
    button2.layer.borderWidth = 5;
    button2.center = CGPointMake(125, 125);
    
    button2.hitTestEdgeInsets =UIEdgeInsetsMake(-50, -50, -50, -50);
    [view addSubview:button2];
    
    [button2 addClickBlock:^(UIButton *button) {
        NSLog(@"点击了button2");
    }];
    
    
    //布局方式
    
    [self.topBtn layoutButtonWithEdgeInsetsStyle:LXButtonEdgeInsetsStyleTop imageTitleSpace:10];
    
    [self.topBtn setTitleColor:[UIColor purpleColor] forState:UIControlStateHighlighted];

    [self.bottomBtn layoutButtonWithEdgeInsetsStyle:LXButtonEdgeInsetsStyleBottom imageTitleSpace:10];
    
    [self.bottomBtn setTitleColor:[UIColor purpleColor] forState:UIControlStateHighlighted];

      [self.leftBtn layoutButtonWithEdgeInsetsStyle:LXButtonEdgeInsetsStyleLeft imageTitleSpace:10];
    
    [self.leftBtn setTitleColor:[UIColor purpleColor] forState:UIControlStateHighlighted];

    [self.rightBtn layoutButtonWithEdgeInsetsStyle:LXButtonEdgeInsetsStyleRight imageTitleSpace:10];
    [self.rightBtn setTitleColor:[UIColor purpleColor] forState:UIControlStateHighlighted];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
