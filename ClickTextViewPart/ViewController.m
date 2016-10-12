//
//  ViewController.m
//  ClickTextViewPart
//
//  Created by zhangyan on 16/10/11.
//  Copyright © 2016年 zhangyan. All rights reserved.
//

#import "ViewController.h"
#import "ClickTextView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ClickTextView *clickTextView = [[ClickTextView alloc] initWithFrame:CGRectMake(50, 50, 300, 300)];
    [self.view addSubview:clickTextView];
    
    // 方便测试，设置textView的边框已经背景
    clickTextView.backgroundColor = [UIColor cyanColor];
    clickTextView.layer.borderWidth = 1;
    clickTextView.layer.borderColor = [UIColor redColor].CGColor;
    clickTextView.font = [UIFont systemFontOfSize:30];
//    clickTextView.textColor = [UIColor redColor];
    
    
    NSString *content = @"1234567890承诺书都差不多岁尺布斗粟CBD死UC收不到催上半场低俗";
    // 设置文字
    clickTextView.text = content;
    
    // 设置期中的一段文字有下划线，下划线的颜色为蓝色，点击下划线文字有相关的点击效果
    NSRange range1 = [content rangeOfString:@"承诺书都差"];
    [clickTextView setUnderlineTextWithRange:range1 withUnderlineColor:[UIColor blueColor] withClickCoverColor:[UIColor greenColor] withBlock:^(NSString *clickText) {
        NSLog(@"clickText = %@",clickText);
    }];
    
    // 设置期中的一段文字有下划线，下划线的颜色没有设置，点击下划线文字没有点击效果
    NSRange range2 = [content rangeOfString:@"不到催上半场低俗"];
    [clickTextView setUnderlineTextWithRange:range2 withUnderlineColor:nil withClickCoverColor:nil withBlock:^(NSString *clickText) {
        NSLog(@"clickText = %@",clickText);
    }];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
