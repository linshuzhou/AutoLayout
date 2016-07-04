//
//  ViewController.m
//  0604-01-AutoLayout
//
//  Created by qf on 16/6/3.
//  Copyright (c) 2016年 qf. All rights reserved.
//

#import "ViewController.h"
// 屏幕宽度
#define SCREEN_W ([UIScreen mainScreen].bounds.size.width)
// 屏幕高度
#define SCREEN_H ([UIScreen mainScreen].bounds.size.height)
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *ScrollView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *ViewLayout_W;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    for (int i=0;i<5; i++) {
        UIImageView *imageView = [[UIImageView alloc]init];
        imageView.frame = CGRectMake(SCREEN_W*i, 0, SCREEN_W, 130);
        NSString *imageName = [NSString stringWithFormat:@"img_%02d.png",i+1];
        imageView.image = [UIImage imageNamed:imageName];
        [self.ScrollView addSubview:imageView];
    }
    // 滚动范围
    self.ViewLayout_W.constant = SCREEN_W * 5;
    
}



@end
