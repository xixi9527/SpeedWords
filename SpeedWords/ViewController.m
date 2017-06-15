//
//  ViewController.m
//  SpeedWords
//
//  Created by 喻佳珞 on 2017/6/15.
//  Copyright © 2017年 喻佳珞. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UILabel *_label;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    梯度layer
    
    NSString *str = @"我是一首歌我是一首歌我是一首歌我是一首歌";
    UILabel *label1 = [[UILabel alloc] init];
    label1.frame = CGRectMake(0, 40, [UIScreen mainScreen].bounds.size.width, 80);
    label1.text = str;
    label1.textAlignment = NSTextAlignmentCenter;
    label1.font = [UIFont systemFontOfSize:40];
    [self.view addSubview:label1];
    
    
    
    
    
    
    
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = label1.frame;
    gradientLayer.colors = @[(id)[UIColor greenColor].CGColor,(id)[UIColor clearColor].CGColor];//cgcolor
    gradientLayer.locations = @[@0,@0];
    gradientLayer.startPoint = CGPointMake(0, 0.5);
    gradientLayer.endPoint   = CGPointMake(1, 0.5);
    [self.view.layer addSublayer:gradientLayer];
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"locations"];
    animation.fromValue = @[@0,@0];
    animation.toValue = @[@1,@1];
    animation.repeatCount = HUGE;
    animation.duration = 3;
    
    [gradientLayer addAnimation:animation forKey:nil];
    
    
    UILabel *label2 = [[UILabel alloc] init];
    label2.frame = gradientLayer.bounds;
    label2.text = str;
    label2.textAlignment = NSTextAlignmentCenter;
    label2.font = [UIFont systemFontOfSize:40];
    _label = label2;//这里需要注意
    
    
    gradientLayer.mask = label2.layer;
    
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
