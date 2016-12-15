//
//  ViewController.m
//  FDCycleScrollViewDemo
//
//  Created by 伏董 on 2016/12/15.
//  Copyright © 2016年 伏董. All rights reserved.
//

#import "ViewController.h"
#import "FDCycleScrollView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    FDCycleScrollView *cycleView = [[FDCycleScrollView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200) withView:self.view];
    NSArray *imageArray = [NSArray arrayWithObjects:@"1",@"2",@"3", nil];
    cycleView.imageArray = imageArray;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
