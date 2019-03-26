//
//  ViewController.m
//  EdgeInsetsLabel
//
//  Created by 蔡强 on 2017/12/6.
//  Copyright © 2017年 kuaijiankang. All rights reserved.
//

#import "ViewController.h"
#import "EdgeInsetsLabel.h"

@interface ViewController ()

@property (nonatomic, strong) EdgeInsetsLabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.label = [[EdgeInsetsLabel alloc] initWithFrame:CGRectMake(90, 90, 200, 100)];
    [self.view addSubview:self.label];
    self.label.text = @"人之初，性本善，我最喜欢吃鸡蛋。人之初，性本善，我最喜欢吃鸡蛋。人之初，性本善，我最喜欢吃鸡蛋。人之初，性本善，我最喜欢吃鸡蛋。";
    self.label.numberOfLines = 0;
    self.label.backgroundColor = [UIColor orangeColor];
    self.label.contentInset = UIEdgeInsetsMake(0, 20, 0, 20);
    
    // 3秒后改变contentInset
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.label.contentInset = UIEdgeInsetsMake(20, 50, 10, 20);
    });
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.label.contentInset = UIEdgeInsetsMake(0, 80, 0, 20);
    self.label.text = @"因缺思厅";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
