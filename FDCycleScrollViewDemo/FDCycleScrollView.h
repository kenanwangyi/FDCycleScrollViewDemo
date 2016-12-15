//
//  FDCycleScrollView.h
//  FDCycleScrollViewDemo
//
//  Created by 伏董 on 2016/12/15.
//  Copyright © 2016年 伏董. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SCRENN_WIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

/**
    轮播图view
 */
@interface FDCycleScrollView : UIView

@property (nonatomic,copy) NSArray *imageArray;//轮播图片数组

- (instancetype)initWithFrame:(CGRect)frame withView:(UIView *)view;



@end
