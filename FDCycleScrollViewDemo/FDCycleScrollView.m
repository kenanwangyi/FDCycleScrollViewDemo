//
//  FDCycleScrollView.m
//  FDCycleScrollViewDemo
//
//  Created by 伏董 on 2016/12/15.
//  Copyright © 2016年 伏董. All rights reserved.
//

#import "FDCycleScrollView.h"

@interface FDCycleScrollView ()<UIScrollViewDelegate>

@property (nonatomic,strong) UIScrollView *backScrollView;
@property (nonatomic,strong) UIPageControl *pageControl;//页码
@property (nonatomic,assign) NSInteger pageIndex;//当前页码

@end



@implementation FDCycleScrollView


- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        [self createUI];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame withView:(UIView *)view{
    
    self = [self initWithFrame:frame];
    [view addSubview:self];
    return self;
}

- (void)createUI{
    
    self.backScrollView = [[UIScrollView alloc] initWithFrame:self.bounds];
    self.backScrollView.delegate = self;
    self.backScrollView.showsVerticalScrollIndicator = NO;
    self.backScrollView.showsHorizontalScrollIndicator = NO;
    self.backScrollView.pagingEnabled = YES;
    [self addSubview:self.backScrollView];
    
    self.pageIndex = 0;
    self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(SCRENN_WIDTH/4.0f, self.bounds.size.height/5.0f*4.0f, SCRENN_WIDTH / 2.0f, self.bounds.size.height/5.0f)];
    self.pageControl.pageIndicatorTintColor = [UIColor lightGrayColor];
    self.pageControl.currentPageIndicatorTintColor = [UIColor whiteColor];
    self.pageControl.currentPage = self.pageIndex;
    [self addSubview:self.pageControl];
    
}

- (void)setImageArray:(NSArray *)imageArray{
    _imageArray = imageArray;
    
    self.pageControl.numberOfPages = imageArray.count;

    self.backScrollView.contentSize = CGSizeMake(SCRENN_WIDTH * imageArray.count, self.backScrollView.frame.size.height);
    for (int i = 0; i < imageArray.count; i++) {
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(SCRENN_WIDTH*i, 0, SCRENN_WIDTH, self.backScrollView.frame.size.height)];
        int R = (arc4random() % 256) ;
        int G = (arc4random() % 256) ;
        int B = (arc4random() % 256) ;
        [imageView setBackgroundColor:[UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1]];
        
        [self.backScrollView addSubview:imageView];
        
    }
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{

    self.pageIndex = scrollView.contentOffset.x / SCRENN_WIDTH;
    self.pageControl.currentPage = self.pageIndex;
}




/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
